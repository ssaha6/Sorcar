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
 b0023: bool,
 b0024: bool,
 b0025: bool,
 b0026: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$id"} {:global} {:elem_width 32} {:source_name "id"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$id: bool;

var {:source_name "od"} {:global} $$od: [int]int;

axiom {:array_info "$$od"} {:global} {:elem_width 32} {:source_name "od"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$od: bool;

axiom {:array_info "$$rgba.i15"} {:elem_width 32} {:source_name "rgba.i15"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i13"} {:elem_width 32} {:source_name "a.i13"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i14"} {:elem_width 32} {:source_name "b.i14"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i12"} {:elem_width 32} {:source_name "b.i12"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i10"} {:elem_width 32} {:source_name "a.i10"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i11"} {:elem_width 32} {:source_name "b.i11"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i8"} {:elem_width 32} {:source_name "a.i8"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i9"} {:elem_width 32} {:source_name "b.i9"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i7"} {:elem_width 32} {:source_name "a.i7"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i5"} {:elem_width 32} {:source_name "a.i5"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i6"} {:elem_width 32} {:source_name "b.i6"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i4"} {:elem_width 32} {:source_name "b.i4"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i"} {:elem_width 32} {:source_name "b.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$19"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$rgba.i"} {:elem_width 32} {:source_name "rgba.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$20"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$yp"} {:elem_width 32} {:source_name "yp"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$xc"} {:elem_width 32} {:source_name "xc"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$yc"} {:elem_width 32} {:source_name "yc"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$21"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$22"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$23"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$24"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$25"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$26"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$27"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$xc2"} {:elem_width 32} {:source_name "xc2"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$yc3"} {:elem_width 32} {:source_name "yc3"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$28"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$29"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$30"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$31"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$32"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$33"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$34"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$35"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$36"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FP32_TO_UI32(int) : int;

function FSUB32(int, int) : int;

function UI32_TO_FP32(int) : int;

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

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

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

function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "d_simpleRecursive_rgba"} {:kernel} $_Z22d_simpleRecursive_rgbaPjS_iif($w: int, $h: int, $a: int);
  requires {:sourceloc_num 0} {:thread 1} (if $w == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$id && !_WRITE_HAS_OCCURRED_$$id && !_ATOMIC_HAS_OCCURRED_$$id;
  requires !_READ_HAS_OCCURRED_$$od && !_WRITE_HAS_OCCURRED_$$od && !_ATOMIC_HAS_OCCURRED_$$od;
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
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _READ_HAS_OCCURRED_$$od;



implementation {:source_name "d_simpleRecursive_rgba"} {:kernel} $_Z22d_simpleRecursive_rgbaPjS_iif($w: int, $h: int, $a: int)
{
  var $.01$1: int;
  var $.01$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var $y.0$1: int;
  var $y.0$2: int;
  var $.12$1: int;
  var $.12$2: int;
  var $.1$1: int;
  var $.1$2: int;
  var $y1.0$1: int;
  var $y1.0$2: int;
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
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v7$1: bool;
  var v7$2: bool;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v79$1: int;
  var v79$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v2$1: int;
  var v2$2: int;
  var v33$1: int;
  var v33$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
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
  var v142$1: int;
  var v142$2: int;
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
  var v143$1: int;
  var v143$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v262$1: int;
  var v262$2: int;
  var v263$1: int;
  var v263$2: int;
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
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v8$1: int;
  var v8$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
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
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
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
  var v123$1: bool;
  var v123$2: bool;
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
  var v196$1: int;
  var v196$2: int;
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
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
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
  var v80$1: int;
  var v80$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v26$1: int;
  var v26$2: int;
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
  var v195$1: int;
  var v195$2: int;
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
  var v98$1: int;
  var v98$2: int;
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
  var v273$1: int;
  var v273$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$od$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$od$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$od$ghost$$7: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_UGE(v0$1, $w);
    v1$2 := BV32_UGE(v0$2, $w);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p4$1 := false;
    p4$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    $$20$0$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(v2$1, 255)), 1132396544) else $$20$0$1);
    $$20$0$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(v2$2, 255)), 1132396544) else $$20$0$2);
    $$20$1$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 8), 255)), 1132396544) else $$20$1$1);
    $$20$1$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 8), 255)), 1132396544) else $$20$1$2);
    $$20$2$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 16), 255)), 1132396544) else $$20$2$1);
    $$20$2$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 16), 255)), 1132396544) else $$20$2$2);
    $$20$3$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 24), 255)), 1132396544) else $$20$3$1);
    $$20$3$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 24), 255)), 1132396544) else $$20$3$2);
    v3$1 := (if p1$1 then $$20$0$1 else v3$1);
    v3$2 := (if p1$2 then $$20$0$2 else v3$2);
    v4$1 := (if p1$1 then $$20$1$1 else v4$1);
    v4$2 := (if p1$2 then $$20$1$2 else v4$2);
    v5$1 := (if p1$1 then $$20$2$1 else v5$1);
    v5$2 := (if p1$2 then $$20$2$2 else v5$2);
    v6$1 := (if p1$1 then $$20$3$1 else v6$1);
    v6$2 := (if p1$2 then $$20$3$2 else v6$2);
    $$yp$0$1 := (if p1$1 then v3$1 else $$yp$0$1);
    $$yp$0$2 := (if p1$2 then v3$2 else $$yp$0$2);
    $$yp$1$1 := (if p1$1 then v4$1 else $$yp$1$1);
    $$yp$1$2 := (if p1$2 then v4$2 else $$yp$1$2);
    $$yp$2$1 := (if p1$1 then v5$1 else $$yp$2$1);
    $$yp$2$2 := (if p1$2 then v5$2 else $$yp$2$2);
    $$yp$3$1 := (if p1$1 then v6$1 else $$yp$3$1);
    $$yp$3$2 := (if p1$2 then v6$2 else $$yp$3$2);
    $.01$1, $.0$1, $y.0$1 := (if p1$1 then v0$1 else $.01$1), (if p1$1 then v0$1 else $.0$1), (if p1$1 then 0 else $y.0$1);
    $.01$2, $.0$2, $y.0$2 := (if p1$2 then v0$2 else $.01$2), (if p1$2 then v0$2 else $.0$2), (if p1$2 then 0 else $y.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$od$ghost$$3 := _WRITE_HAS_OCCURRED_$$od;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$od ==> _WATCHED_OFFSET mod $w == v0$1 mod $w ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$od$ghost$$3 == _WRITE_HAS_OCCURRED_$$od ) ,  true ,  true ,  true ,  true  ); 


    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> $.01$1 mod $w == v0$1 mod $w )  && ( p2$2 ==> $.01$2 mod $w == v0$2 mod $w ) ,  ( p2$1 ==> $.0$1 mod $w == v0$1 mod $w )  && ( p2$2 ==> $.0$2 mod $w == v0$2 mod $w ) ,  ( p2$1 ==> $y.0$1 mod 1 == 0 mod 1 )  && ( p2$2 ==> $y.0$2 mod 1 == 0 mod 1 ) ,  ( p2$1 ==> BV32_SLE($y.0$1, 0) )  && ( p2$2 ==> BV32_SLE($y.0$2, 0) ) ,  ( p2$1 ==> BV32_SGE($y.0$1, 0) )  && ( p2$2 ==> BV32_SGE($y.0$2, 0) ) ,  ( p2$1 ==> BV32_ULE($y.0$1, 0) )  && ( p2$2 ==> BV32_ULE($y.0$2, 0) ) ,  ( p2$1 ==> BV32_UGE($y.0$1, 0) )  && ( p2$2 ==> BV32_UGE($y.0$2, 0) ) ,  ( p2$1 ==> p2$1 ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) )  && ( p2$2 ==> p2$2 ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $w) ) ,  (  !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) && BV32_SLT($y.0$1, $h) ==> p2$1 )  && (  !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $w) && BV32_SLT($y.0$2, $h) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$od ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 17} p2$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 18} {:thread 1} (if BV32_UREM(BV32_UDIV(BV32_MUL($.0$1, 4), 4), $w) == v0$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 18} {:thread 2} (if BV32_UREM(BV32_UDIV(BV32_MUL($.0$2, 4), 4), $w) == v0$2 then 1 else 0) != 0;
    v7$1 := (if p2$1 then BV32_SLT($y.0$1, $h) else v7$1);
    v7$2 := (if p2$2 then BV32_SLT($y.0$2, $h) else v7$2);
    p3$1 := false;
    p3$2 := false;
    p3$1 := (if p2$1 && v7$1 then v7$1 else p3$1);
    p3$2 := (if p2$2 && v7$2 then v7$2 else p3$2);
    p2$1 := (if p2$1 && !v7$1 then v7$1 else p2$1);
    p2$2 := (if p2$2 && !v7$2 then v7$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p3$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p3$2 then _HAVOC_int$2 else v8$2);
    $$19$0$1 := (if p3$1 then FDIV32(UI32_TO_FP32(BV32_AND(v8$1, 255)), 1132396544) else $$19$0$1);
    $$19$0$2 := (if p3$2 then FDIV32(UI32_TO_FP32(BV32_AND(v8$2, 255)), 1132396544) else $$19$0$2);
    $$19$1$1 := (if p3$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$1, 8), 255)), 1132396544) else $$19$1$1);
    $$19$1$2 := (if p3$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$2, 8), 255)), 1132396544) else $$19$1$2);
    $$19$2$1 := (if p3$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$1, 16), 255)), 1132396544) else $$19$2$1);
    $$19$2$2 := (if p3$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$2, 16), 255)), 1132396544) else $$19$2$2);
    $$19$3$1 := (if p3$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$1, 24), 255)), 1132396544) else $$19$3$1);
    $$19$3$2 := (if p3$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v8$2, 24), 255)), 1132396544) else $$19$3$2);
    v9$1 := (if p3$1 then $$19$0$1 else v9$1);
    v9$2 := (if p3$2 then $$19$0$2 else v9$2);
    v10$1 := (if p3$1 then $$19$1$1 else v10$1);
    v10$2 := (if p3$2 then $$19$1$2 else v10$2);
    v11$1 := (if p3$1 then $$19$2$1 else v11$1);
    v11$2 := (if p3$2 then $$19$2$2 else v11$2);
    v12$1 := (if p3$1 then $$19$3$1 else v12$1);
    v12$2 := (if p3$2 then $$19$3$2 else v12$2);
    $$xc$0$1 := (if p3$1 then v9$1 else $$xc$0$1);
    $$xc$0$2 := (if p3$2 then v9$2 else $$xc$0$2);
    $$xc$1$1 := (if p3$1 then v10$1 else $$xc$1$1);
    $$xc$1$2 := (if p3$2 then v10$2 else $$xc$1$2);
    $$xc$2$1 := (if p3$1 then v11$1 else $$xc$2$1);
    $$xc$2$2 := (if p3$2 then v11$2 else $$xc$2$2);
    $$xc$3$1 := (if p3$1 then v12$1 else $$xc$3$1);
    $$xc$3$2 := (if p3$2 then v12$2 else $$xc$3$2);
    v13$1 := (if p3$1 then $$xc$0$1 else v13$1);
    v13$2 := (if p3$2 then $$xc$0$2 else v13$2);
    $$21$0$1 := (if p3$1 then v13$1 else $$21$0$1);
    $$21$0$2 := (if p3$2 then v13$2 else $$21$0$2);
    v14$1 := (if p3$1 then $$xc$1$1 else v14$1);
    v14$2 := (if p3$2 then $$xc$1$2 else v14$2);
    $$21$1$1 := (if p3$1 then v14$1 else $$21$1$1);
    $$21$1$2 := (if p3$2 then v14$2 else $$21$1$2);
    v15$1 := (if p3$1 then $$xc$2$1 else v15$1);
    v15$2 := (if p3$2 then $$xc$2$2 else v15$2);
    $$21$2$1 := (if p3$1 then v15$1 else $$21$2$1);
    $$21$2$2 := (if p3$2 then v15$2 else $$21$2$2);
    v16$1 := (if p3$1 then $$xc$3$1 else v16$1);
    v16$2 := (if p3$2 then $$xc$3$2 else v16$2);
    $$21$3$1 := (if p3$1 then v16$1 else $$21$3$1);
    $$21$3$2 := (if p3$2 then v16$2 else $$21$3$2);
    v17$1 := (if p3$1 then $$yp$0$1 else v17$1);
    v17$2 := (if p3$2 then $$yp$0$2 else v17$2);
    $$24$0$1 := (if p3$1 then v17$1 else $$24$0$1);
    $$24$0$2 := (if p3$2 then v17$2 else $$24$0$2);
    v18$1 := (if p3$1 then $$yp$1$1 else v18$1);
    v18$2 := (if p3$2 then $$yp$1$2 else v18$2);
    $$24$1$1 := (if p3$1 then v18$1 else $$24$1$1);
    $$24$1$2 := (if p3$2 then v18$2 else $$24$1$2);
    v19$1 := (if p3$1 then $$yp$2$1 else v19$1);
    v19$2 := (if p3$2 then $$yp$2$2 else v19$2);
    $$24$2$1 := (if p3$1 then v19$1 else $$24$2$1);
    $$24$2$2 := (if p3$2 then v19$2 else $$24$2$2);
    v20$1 := (if p3$1 then $$yp$3$1 else v20$1);
    v20$2 := (if p3$2 then $$yp$3$2 else v20$2);
    $$24$3$1 := (if p3$1 then v20$1 else $$24$3$1);
    $$24$3$2 := (if p3$2 then v20$2 else $$24$3$2);
    v21$1 := (if p3$1 then $$xc$0$1 else v21$1);
    v21$2 := (if p3$2 then $$xc$0$2 else v21$2);
    $$25$0$1 := (if p3$1 then v21$1 else $$25$0$1);
    $$25$0$2 := (if p3$2 then v21$2 else $$25$0$2);
    v22$1 := (if p3$1 then $$xc$1$1 else v22$1);
    v22$2 := (if p3$2 then $$xc$1$2 else v22$2);
    $$25$1$1 := (if p3$1 then v22$1 else $$25$1$1);
    $$25$1$2 := (if p3$2 then v22$2 else $$25$1$2);
    v23$1 := (if p3$1 then $$xc$2$1 else v23$1);
    v23$2 := (if p3$2 then $$xc$2$2 else v23$2);
    $$25$2$1 := (if p3$1 then v23$1 else $$25$2$1);
    $$25$2$2 := (if p3$2 then v23$2 else $$25$2$2);
    v24$1 := (if p3$1 then $$xc$3$1 else v24$1);
    v24$2 := (if p3$2 then $$xc$3$2 else v24$2);
    $$25$3$1 := (if p3$1 then v24$1 else $$25$3$1);
    $$25$3$2 := (if p3$2 then v24$2 else $$25$3$2);
    v25$1 := (if p3$1 then $$24$0$1 else v25$1);
    v25$2 := (if p3$2 then $$24$0$2 else v25$2);
    v26$1 := (if p3$1 then $$24$1$1 else v26$1);
    v26$2 := (if p3$2 then $$24$1$2 else v26$2);
    v27$1 := (if p3$1 then $$24$2$1 else v27$1);
    v27$2 := (if p3$2 then $$24$2$2 else v27$2);
    v28$1 := (if p3$1 then $$24$3$1 else v28$1);
    v28$2 := (if p3$2 then $$24$3$2 else v28$2);
    v29$1 := (if p3$1 then $$25$0$1 else v29$1);
    v29$2 := (if p3$2 then $$25$0$2 else v29$2);
    v30$1 := (if p3$1 then $$25$1$1 else v30$1);
    v30$2 := (if p3$2 then $$25$1$2 else v30$2);
    v31$1 := (if p3$1 then $$25$2$1 else v31$1);
    v31$2 := (if p3$2 then $$25$2$2 else v31$2);
    v32$1 := (if p3$1 then $$25$3$1 else v32$1);
    v32$2 := (if p3$2 then $$25$3$2 else v32$2);
    $$a.i$0$1 := (if p3$1 then v25$1 else $$a.i$0$1);
    $$a.i$0$2 := (if p3$2 then v25$2 else $$a.i$0$2);
    $$a.i$1$1 := (if p3$1 then v26$1 else $$a.i$1$1);
    $$a.i$1$2 := (if p3$2 then v26$2 else $$a.i$1$2);
    $$a.i$2$1 := (if p3$1 then v27$1 else $$a.i$2$1);
    $$a.i$2$2 := (if p3$2 then v27$2 else $$a.i$2$2);
    $$a.i$3$1 := (if p3$1 then v28$1 else $$a.i$3$1);
    $$a.i$3$2 := (if p3$2 then v28$2 else $$a.i$3$2);
    $$b.i$0$1 := (if p3$1 then v29$1 else $$b.i$0$1);
    $$b.i$0$2 := (if p3$2 then v29$2 else $$b.i$0$2);
    $$b.i$1$1 := (if p3$1 then v30$1 else $$b.i$1$1);
    $$b.i$1$2 := (if p3$2 then v30$2 else $$b.i$1$2);
    $$b.i$2$1 := (if p3$1 then v31$1 else $$b.i$2$1);
    $$b.i$2$2 := (if p3$2 then v31$2 else $$b.i$2$2);
    $$b.i$3$1 := (if p3$1 then v32$1 else $$b.i$3$1);
    $$b.i$3$2 := (if p3$2 then v32$2 else $$b.i$3$2);
    v33$1 := (if p3$1 then $$a.i$0$1 else v33$1);
    v33$2 := (if p3$2 then $$a.i$0$2 else v33$2);
    v34$1 := (if p3$1 then $$b.i$0$1 else v34$1);
    v34$2 := (if p3$2 then $$b.i$0$2 else v34$2);
    v35$1 := (if p3$1 then $$a.i$1$1 else v35$1);
    v35$2 := (if p3$2 then $$a.i$1$2 else v35$2);
    v36$1 := (if p3$1 then $$b.i$1$1 else v36$1);
    v36$2 := (if p3$2 then $$b.i$1$2 else v36$2);
    v37$1 := (if p3$1 then $$a.i$2$1 else v37$1);
    v37$2 := (if p3$2 then $$a.i$2$2 else v37$2);
    v38$1 := (if p3$1 then $$b.i$2$1 else v38$1);
    v38$2 := (if p3$2 then $$b.i$2$2 else v38$2);
    v39$1 := (if p3$1 then $$a.i$3$1 else v39$1);
    v39$2 := (if p3$2 then $$a.i$3$2 else v39$2);
    v40$1 := (if p3$1 then $$b.i$3$1 else v40$1);
    v40$2 := (if p3$2 then $$b.i$3$2 else v40$2);
    $$17$0$1 := (if p3$1 then FSUB32(v33$1, v34$1) else $$17$0$1);
    $$17$0$2 := (if p3$2 then FSUB32(v33$2, v34$2) else $$17$0$2);
    $$17$1$1 := (if p3$1 then FSUB32(v35$1, v36$1) else $$17$1$1);
    $$17$1$2 := (if p3$2 then FSUB32(v35$2, v36$2) else $$17$1$2);
    $$17$2$1 := (if p3$1 then FSUB32(v37$1, v38$1) else $$17$2$1);
    $$17$2$2 := (if p3$2 then FSUB32(v37$2, v38$2) else $$17$2$2);
    $$17$3$1 := (if p3$1 then FSUB32(v39$1, v40$1) else $$17$3$1);
    $$17$3$2 := (if p3$2 then FSUB32(v39$2, v40$2) else $$17$3$2);
    v41$1 := (if p3$1 then $$17$0$1 else v41$1);
    v41$2 := (if p3$2 then $$17$0$2 else v41$2);
    v42$1 := (if p3$1 then $$17$1$1 else v42$1);
    v42$2 := (if p3$2 then $$17$1$2 else v42$2);
    v43$1 := (if p3$1 then $$17$2$1 else v43$1);
    v43$2 := (if p3$2 then $$17$2$2 else v43$2);
    v44$1 := (if p3$1 then $$17$3$1 else v44$1);
    v44$2 := (if p3$2 then $$17$3$2 else v44$2);
    $$18$0$1 := (if p3$1 then v41$1 else $$18$0$1);
    $$18$0$2 := (if p3$2 then v41$2 else $$18$0$2);
    $$18$1$1 := (if p3$1 then v42$1 else $$18$1$1);
    $$18$1$2 := (if p3$2 then v42$2 else $$18$1$2);
    $$18$2$1 := (if p3$1 then v43$1 else $$18$2$1);
    $$18$2$2 := (if p3$2 then v43$2 else $$18$2$2);
    $$18$3$1 := (if p3$1 then v44$1 else $$18$3$1);
    $$18$3$2 := (if p3$2 then v44$2 else $$18$3$2);
    v45$1 := (if p3$1 then $$18$0$1 else v45$1);
    v45$2 := (if p3$2 then $$18$0$2 else v45$2);
    v46$1 := (if p3$1 then $$18$1$1 else v46$1);
    v46$2 := (if p3$2 then $$18$1$2 else v46$2);
    v47$1 := (if p3$1 then $$18$2$1 else v47$1);
    v47$2 := (if p3$2 then $$18$2$2 else v47$2);
    v48$1 := (if p3$1 then $$18$3$1 else v48$1);
    v48$2 := (if p3$2 then $$18$3$2 else v48$2);
    $$23$0$1 := (if p3$1 then v45$1 else $$23$0$1);
    $$23$0$2 := (if p3$2 then v45$2 else $$23$0$2);
    $$23$1$1 := (if p3$1 then v46$1 else $$23$1$1);
    $$23$1$2 := (if p3$2 then v46$2 else $$23$1$2);
    $$23$2$1 := (if p3$1 then v47$1 else $$23$2$1);
    $$23$2$2 := (if p3$2 then v47$2 else $$23$2$2);
    $$23$3$1 := (if p3$1 then v48$1 else $$23$3$1);
    $$23$3$2 := (if p3$2 then v48$2 else $$23$3$2);
    v49$1 := (if p3$1 then $$23$0$1 else v49$1);
    v49$2 := (if p3$2 then $$23$0$2 else v49$2);
    v50$1 := (if p3$1 then $$23$1$1 else v50$1);
    v50$2 := (if p3$2 then $$23$1$2 else v50$2);
    v51$1 := (if p3$1 then $$23$2$1 else v51$1);
    v51$2 := (if p3$2 then $$23$2$2 else v51$2);
    v52$1 := (if p3$1 then $$23$3$1 else v52$1);
    v52$2 := (if p3$2 then $$23$3$2 else v52$2);
    $$b.i4$0$1 := (if p3$1 then v49$1 else $$b.i4$0$1);
    $$b.i4$0$2 := (if p3$2 then v49$2 else $$b.i4$0$2);
    $$b.i4$1$1 := (if p3$1 then v50$1 else $$b.i4$1$1);
    $$b.i4$1$2 := (if p3$2 then v50$2 else $$b.i4$1$2);
    $$b.i4$2$1 := (if p3$1 then v51$1 else $$b.i4$2$1);
    $$b.i4$2$2 := (if p3$2 then v51$2 else $$b.i4$2$2);
    $$b.i4$3$1 := (if p3$1 then v52$1 else $$b.i4$3$1);
    $$b.i4$3$2 := (if p3$2 then v52$2 else $$b.i4$3$2);
    v53$1 := (if p3$1 then $$b.i4$0$1 else v53$1);
    v53$2 := (if p3$2 then $$b.i4$0$2 else v53$2);
    v54$1 := (if p3$1 then $$b.i4$1$1 else v54$1);
    v54$2 := (if p3$2 then $$b.i4$1$2 else v54$2);
    v55$1 := (if p3$1 then $$b.i4$2$1 else v55$1);
    v55$2 := (if p3$2 then $$b.i4$2$2 else v55$2);
    v56$1 := (if p3$1 then $$b.i4$3$1 else v56$1);
    v56$2 := (if p3$2 then $$b.i4$3$2 else v56$2);
    $$15$0$1 := (if p3$1 then FMUL32($a, v53$1) else $$15$0$1);
    $$15$0$2 := (if p3$2 then FMUL32($a, v53$2) else $$15$0$2);
    $$15$1$1 := (if p3$1 then FMUL32($a, v54$1) else $$15$1$1);
    $$15$1$2 := (if p3$2 then FMUL32($a, v54$2) else $$15$1$2);
    $$15$2$1 := (if p3$1 then FMUL32($a, v55$1) else $$15$2$1);
    $$15$2$2 := (if p3$2 then FMUL32($a, v55$2) else $$15$2$2);
    $$15$3$1 := (if p3$1 then FMUL32($a, v56$1) else $$15$3$1);
    $$15$3$2 := (if p3$2 then FMUL32($a, v56$2) else $$15$3$2);
    v57$1 := (if p3$1 then $$15$0$1 else v57$1);
    v57$2 := (if p3$2 then $$15$0$2 else v57$2);
    v58$1 := (if p3$1 then $$15$1$1 else v58$1);
    v58$2 := (if p3$2 then $$15$1$2 else v58$2);
    v59$1 := (if p3$1 then $$15$2$1 else v59$1);
    v59$2 := (if p3$2 then $$15$2$2 else v59$2);
    v60$1 := (if p3$1 then $$15$3$1 else v60$1);
    v60$2 := (if p3$2 then $$15$3$2 else v60$2);
    $$16$0$1 := (if p3$1 then v57$1 else $$16$0$1);
    $$16$0$2 := (if p3$2 then v57$2 else $$16$0$2);
    $$16$1$1 := (if p3$1 then v58$1 else $$16$1$1);
    $$16$1$2 := (if p3$2 then v58$2 else $$16$1$2);
    $$16$2$1 := (if p3$1 then v59$1 else $$16$2$1);
    $$16$2$2 := (if p3$2 then v59$2 else $$16$2$2);
    $$16$3$1 := (if p3$1 then v60$1 else $$16$3$1);
    $$16$3$2 := (if p3$2 then v60$2 else $$16$3$2);
    v61$1 := (if p3$1 then $$16$0$1 else v61$1);
    v61$2 := (if p3$2 then $$16$0$2 else v61$2);
    v62$1 := (if p3$1 then $$16$1$1 else v62$1);
    v62$2 := (if p3$2 then $$16$1$2 else v62$2);
    v63$1 := (if p3$1 then $$16$2$1 else v63$1);
    v63$2 := (if p3$2 then $$16$2$2 else v63$2);
    v64$1 := (if p3$1 then $$16$3$1 else v64$1);
    v64$2 := (if p3$2 then $$16$3$2 else v64$2);
    $$22$0$1 := (if p3$1 then v61$1 else $$22$0$1);
    $$22$0$2 := (if p3$2 then v61$2 else $$22$0$2);
    $$22$1$1 := (if p3$1 then v62$1 else $$22$1$1);
    $$22$1$2 := (if p3$2 then v62$2 else $$22$1$2);
    $$22$2$1 := (if p3$1 then v63$1 else $$22$2$1);
    $$22$2$2 := (if p3$2 then v63$2 else $$22$2$2);
    $$22$3$1 := (if p3$1 then v64$1 else $$22$3$1);
    $$22$3$2 := (if p3$2 then v64$2 else $$22$3$2);
    v65$1 := (if p3$1 then $$21$0$1 else v65$1);
    v65$2 := (if p3$2 then $$21$0$2 else v65$2);
    v66$1 := (if p3$1 then $$21$1$1 else v66$1);
    v66$2 := (if p3$2 then $$21$1$2 else v66$2);
    v67$1 := (if p3$1 then $$21$2$1 else v67$1);
    v67$2 := (if p3$2 then $$21$2$2 else v67$2);
    v68$1 := (if p3$1 then $$21$3$1 else v68$1);
    v68$2 := (if p3$2 then $$21$3$2 else v68$2);
    v69$1 := (if p3$1 then $$22$0$1 else v69$1);
    v69$2 := (if p3$2 then $$22$0$2 else v69$2);
    v70$1 := (if p3$1 then $$22$1$1 else v70$1);
    v70$2 := (if p3$2 then $$22$1$2 else v70$2);
    v71$1 := (if p3$1 then $$22$2$1 else v71$1);
    v71$2 := (if p3$2 then $$22$2$2 else v71$2);
    v72$1 := (if p3$1 then $$22$3$1 else v72$1);
    v72$2 := (if p3$2 then $$22$3$2 else v72$2);
    $$a.i5$0$1 := (if p3$1 then v65$1 else $$a.i5$0$1);
    $$a.i5$0$2 := (if p3$2 then v65$2 else $$a.i5$0$2);
    $$a.i5$1$1 := (if p3$1 then v66$1 else $$a.i5$1$1);
    $$a.i5$1$2 := (if p3$2 then v66$2 else $$a.i5$1$2);
    $$a.i5$2$1 := (if p3$1 then v67$1 else $$a.i5$2$1);
    $$a.i5$2$2 := (if p3$2 then v67$2 else $$a.i5$2$2);
    $$a.i5$3$1 := (if p3$1 then v68$1 else $$a.i5$3$1);
    $$a.i5$3$2 := (if p3$2 then v68$2 else $$a.i5$3$2);
    $$b.i6$0$1 := (if p3$1 then v69$1 else $$b.i6$0$1);
    $$b.i6$0$2 := (if p3$2 then v69$2 else $$b.i6$0$2);
    $$b.i6$1$1 := (if p3$1 then v70$1 else $$b.i6$1$1);
    $$b.i6$1$2 := (if p3$2 then v70$2 else $$b.i6$1$2);
    $$b.i6$2$1 := (if p3$1 then v71$1 else $$b.i6$2$1);
    $$b.i6$2$2 := (if p3$2 then v71$2 else $$b.i6$2$2);
    $$b.i6$3$1 := (if p3$1 then v72$1 else $$b.i6$3$1);
    $$b.i6$3$2 := (if p3$2 then v72$2 else $$b.i6$3$2);
    v73$1 := (if p3$1 then $$a.i5$0$1 else v73$1);
    v73$2 := (if p3$2 then $$a.i5$0$2 else v73$2);
    v74$1 := (if p3$1 then $$b.i6$0$1 else v74$1);
    v74$2 := (if p3$2 then $$b.i6$0$2 else v74$2);
    v75$1 := (if p3$1 then $$a.i5$1$1 else v75$1);
    v75$2 := (if p3$2 then $$a.i5$1$2 else v75$2);
    v76$1 := (if p3$1 then $$b.i6$1$1 else v76$1);
    v76$2 := (if p3$2 then $$b.i6$1$2 else v76$2);
    v77$1 := (if p3$1 then $$a.i5$2$1 else v77$1);
    v77$2 := (if p3$2 then $$a.i5$2$2 else v77$2);
    v78$1 := (if p3$1 then $$b.i6$2$1 else v78$1);
    v78$2 := (if p3$2 then $$b.i6$2$2 else v78$2);
    v79$1 := (if p3$1 then $$a.i5$3$1 else v79$1);
    v79$2 := (if p3$2 then $$a.i5$3$2 else v79$2);
    v80$1 := (if p3$1 then $$b.i6$3$1 else v80$1);
    v80$2 := (if p3$2 then $$b.i6$3$2 else v80$2);
    $$13$0$1 := (if p3$1 then FADD32(v73$1, v74$1) else $$13$0$1);
    $$13$0$2 := (if p3$2 then FADD32(v73$2, v74$2) else $$13$0$2);
    $$13$1$1 := (if p3$1 then FADD32(v75$1, v76$1) else $$13$1$1);
    $$13$1$2 := (if p3$2 then FADD32(v75$2, v76$2) else $$13$1$2);
    $$13$2$1 := (if p3$1 then FADD32(v77$1, v78$1) else $$13$2$1);
    $$13$2$2 := (if p3$2 then FADD32(v77$2, v78$2) else $$13$2$2);
    $$13$3$1 := (if p3$1 then FADD32(v79$1, v80$1) else $$13$3$1);
    $$13$3$2 := (if p3$2 then FADD32(v79$2, v80$2) else $$13$3$2);
    v81$1 := (if p3$1 then $$13$0$1 else v81$1);
    v81$2 := (if p3$2 then $$13$0$2 else v81$2);
    v82$1 := (if p3$1 then $$13$1$1 else v82$1);
    v82$2 := (if p3$2 then $$13$1$2 else v82$2);
    v83$1 := (if p3$1 then $$13$2$1 else v83$1);
    v83$2 := (if p3$2 then $$13$2$2 else v83$2);
    v84$1 := (if p3$1 then $$13$3$1 else v84$1);
    v84$2 := (if p3$2 then $$13$3$2 else v84$2);
    $$14$0$1 := (if p3$1 then v81$1 else $$14$0$1);
    $$14$0$2 := (if p3$2 then v81$2 else $$14$0$2);
    $$14$1$1 := (if p3$1 then v82$1 else $$14$1$1);
    $$14$1$2 := (if p3$2 then v82$2 else $$14$1$2);
    $$14$2$1 := (if p3$1 then v83$1 else $$14$2$1);
    $$14$2$2 := (if p3$2 then v83$2 else $$14$2$2);
    $$14$3$1 := (if p3$1 then v84$1 else $$14$3$1);
    $$14$3$2 := (if p3$2 then v84$2 else $$14$3$2);
    v85$1 := (if p3$1 then $$14$0$1 else v85$1);
    v85$2 := (if p3$2 then $$14$0$2 else v85$2);
    v86$1 := (if p3$1 then $$14$1$1 else v86$1);
    v86$2 := (if p3$2 then $$14$1$2 else v86$2);
    v87$1 := (if p3$1 then $$14$2$1 else v87$1);
    v87$2 := (if p3$2 then $$14$2$2 else v87$2);
    v88$1 := (if p3$1 then $$14$3$1 else v88$1);
    v88$2 := (if p3$2 then $$14$3$2 else v88$2);
    $$yc$0$1 := (if p3$1 then v85$1 else $$yc$0$1);
    $$yc$0$2 := (if p3$2 then v85$2 else $$yc$0$2);
    $$yc$1$1 := (if p3$1 then v86$1 else $$yc$1$1);
    $$yc$1$2 := (if p3$2 then v86$2 else $$yc$1$2);
    $$yc$2$1 := (if p3$1 then v87$1 else $$yc$2$1);
    $$yc$2$2 := (if p3$2 then v87$2 else $$yc$2$2);
    $$yc$3$1 := (if p3$1 then v88$1 else $$yc$3$1);
    $$yc$3$2 := (if p3$2 then v88$2 else $$yc$3$2);
    v89$1 := (if p3$1 then $$yc$0$1 else v89$1);
    v89$2 := (if p3$2 then $$yc$0$2 else v89$2);
    $$26$0$1 := (if p3$1 then v89$1 else $$26$0$1);
    $$26$0$2 := (if p3$2 then v89$2 else $$26$0$2);
    v90$1 := (if p3$1 then $$yc$1$1 else v90$1);
    v90$2 := (if p3$2 then $$yc$1$2 else v90$2);
    $$26$1$1 := (if p3$1 then v90$1 else $$26$1$1);
    $$26$1$2 := (if p3$2 then v90$2 else $$26$1$2);
    v91$1 := (if p3$1 then $$yc$2$1 else v91$1);
    v91$2 := (if p3$2 then $$yc$2$2 else v91$2);
    $$26$2$1 := (if p3$1 then v91$1 else $$26$2$1);
    $$26$2$2 := (if p3$2 then v91$2 else $$26$2$2);
    v92$1 := (if p3$1 then $$yc$3$1 else v92$1);
    v92$2 := (if p3$2 then $$yc$3$2 else v92$2);
    $$26$3$1 := (if p3$1 then v92$1 else $$26$3$1);
    $$26$3$2 := (if p3$2 then v92$2 else $$26$3$2);
    v93$1 := (if p3$1 then $$26$0$1 else v93$1);
    v93$2 := (if p3$2 then $$26$0$2 else v93$2);
    v94$1 := (if p3$1 then $$26$1$1 else v94$1);
    v94$2 := (if p3$2 then $$26$1$2 else v94$2);
    v95$1 := (if p3$1 then $$26$2$1 else v95$1);
    v95$2 := (if p3$2 then $$26$2$2 else v95$2);
    v96$1 := (if p3$1 then $$26$3$1 else v96$1);
    v96$2 := (if p3$2 then $$26$3$2 else v96$2);
    $$rgba.i15$0$1 := (if p3$1 then v93$1 else $$rgba.i15$0$1);
    $$rgba.i15$0$2 := (if p3$2 then v93$2 else $$rgba.i15$0$2);
    $$rgba.i15$1$1 := (if p3$1 then v94$1 else $$rgba.i15$1$1);
    $$rgba.i15$1$2 := (if p3$2 then v94$2 else $$rgba.i15$1$2);
    $$rgba.i15$2$1 := (if p3$1 then v95$1 else $$rgba.i15$2$1);
    $$rgba.i15$2$2 := (if p3$2 then v95$2 else $$rgba.i15$2$2);
    $$rgba.i15$3$1 := (if p3$1 then v96$1 else $$rgba.i15$3$1);
    $$rgba.i15$3$2 := (if p3$2 then v96$2 else $$rgba.i15$3$2);
    v97$1 := (if p3$1 then $$rgba.i15$0$1 else v97$1);
    v97$2 := (if p3$2 then $$rgba.i15$0$2 else v97$2);
    call {:sourceloc_num 194} v98$1, v98$2 := $__saturatef(p3$1, v97$1, p3$2, v97$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i15$0$1 := (if p3$1 then v98$1 else $$rgba.i15$0$1);
    $$rgba.i15$0$2 := (if p3$2 then v98$2 else $$rgba.i15$0$2);
    v99$1 := (if p3$1 then $$rgba.i15$1$1 else v99$1);
    v99$2 := (if p3$2 then $$rgba.i15$1$2 else v99$2);
    call {:sourceloc_num 197} v100$1, v100$2 := $__saturatef(p3$1, v99$1, p3$2, v99$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i15$1$1 := (if p3$1 then v100$1 else $$rgba.i15$1$1);
    $$rgba.i15$1$2 := (if p3$2 then v100$2 else $$rgba.i15$1$2);
    v101$1 := (if p3$1 then $$rgba.i15$2$1 else v101$1);
    v101$2 := (if p3$2 then $$rgba.i15$2$2 else v101$2);
    call {:sourceloc_num 200} v102$1, v102$2 := $__saturatef(p3$1, v101$1, p3$2, v101$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i15$2$1 := (if p3$1 then v102$1 else $$rgba.i15$2$1);
    $$rgba.i15$2$2 := (if p3$2 then v102$2 else $$rgba.i15$2$2);
    v103$1 := (if p3$1 then $$rgba.i15$3$1 else v103$1);
    v103$2 := (if p3$2 then $$rgba.i15$3$2 else v103$2);
    call {:sourceloc_num 203} v104$1, v104$2 := $__saturatef(p3$1, v103$1, p3$2, v103$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i15$3$1 := (if p3$1 then v104$1 else $$rgba.i15$3$1);
    $$rgba.i15$3$2 := (if p3$2 then v104$2 else $$rgba.i15$3$2);
    v105$1 := (if p3$1 then $$rgba.i15$3$1 else v105$1);
    v105$2 := (if p3$2 then $$rgba.i15$3$2 else v105$2);
    v106$1 := (if p3$1 then $$rgba.i15$2$1 else v106$1);
    v106$2 := (if p3$2 then $$rgba.i15$2$2 else v106$2);
    v107$1 := (if p3$1 then $$rgba.i15$1$1 else v107$1);
    v107$2 := (if p3$2 then $$rgba.i15$1$2 else v107$2);
    v108$1 := (if p3$1 then $$rgba.i15$0$1 else v108$1);
    v108$2 := (if p3$2 then $$rgba.i15$0$2 else v108$2);
    call {:sourceloc} {:sourceloc_num 209} _LOG_WRITE_$$od(p3$1, $.0$1, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v105$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v106$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v107$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v108$1, 1132396544))), $$od[$.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(p3$2, $.0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 209} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 209} _CHECK_WRITE_$$od(p3$2, $.0$2, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v105$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v106$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v107$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v108$2, 1132396544))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[$.0$1] := (if p3$1 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v105$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v106$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v107$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v108$1, 1132396544))) else $$od[$.0$1]);
    $$od[$.0$2] := (if p3$2 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v105$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v106$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v107$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v108$2, 1132396544))) else $$od[$.0$2]);
    v109$1 := (if p3$1 then $$yc$0$1 else v109$1);
    v109$2 := (if p3$2 then $$yc$0$2 else v109$2);
    $$yp$0$1 := (if p3$1 then v109$1 else $$yp$0$1);
    $$yp$0$2 := (if p3$2 then v109$2 else $$yp$0$2);
    v110$1 := (if p3$1 then $$yc$1$1 else v110$1);
    v110$2 := (if p3$2 then $$yc$1$2 else v110$2);
    $$yp$1$1 := (if p3$1 then v110$1 else $$yp$1$1);
    $$yp$1$2 := (if p3$2 then v110$2 else $$yp$1$2);
    v111$1 := (if p3$1 then $$yc$2$1 else v111$1);
    v111$2 := (if p3$2 then $$yc$2$2 else v111$2);
    $$yp$2$1 := (if p3$1 then v111$1 else $$yp$2$1);
    $$yp$2$2 := (if p3$2 then v111$2 else $$yp$2$2);
    v112$1 := (if p3$1 then $$yc$3$1 else v112$1);
    v112$2 := (if p3$2 then $$yc$3$2 else v112$2);
    $$yp$3$1 := (if p3$1 then v112$1 else $$yp$3$1);
    $$yp$3$2 := (if p3$2 then v112$2 else $$yp$3$2);
    $.01$1, $.0$1, $y.0$1 := (if p3$1 then BV32_ADD($.01$1, $w) else $.01$1), (if p3$1 then BV32_ADD($.0$1, $w) else $.0$1), (if p3$1 then BV32_ADD($y.0$1, 1) else $y.0$1);
    $.01$2, $.0$2, $y.0$2 := (if p3$2 then BV32_ADD($.01$2, $w) else $.01$2), (if p3$2 then BV32_ADD($.0$2, $w) else $.0$2), (if p3$2 then BV32_ADD($y.0$2, 1) else $y.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    v113$1 := (if p1$1 then BV32_SUB(0, $w) else v113$1);
    v113$2 := (if p1$2 then BV32_SUB(0, $w) else v113$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v114$1 := (if p1$1 then _HAVOC_int$1 else v114$1);
    v114$2 := (if p1$2 then _HAVOC_int$2 else v114$2);
    $$0$0$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(v114$1, 255)), 1132396544) else $$0$0$1);
    $$0$0$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(v114$2, 255)), 1132396544) else $$0$0$2);
    $$0$1$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$1, 8), 255)), 1132396544) else $$0$1$1);
    $$0$1$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$2, 8), 255)), 1132396544) else $$0$1$2);
    $$0$2$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$1, 16), 255)), 1132396544) else $$0$2$1);
    $$0$2$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$2, 16), 255)), 1132396544) else $$0$2$2);
    $$0$3$1 := (if p1$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$1, 24), 255)), 1132396544) else $$0$3$1);
    $$0$3$2 := (if p1$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v114$2, 24), 255)), 1132396544) else $$0$3$2);
    v115$1 := (if p1$1 then $$0$0$1 else v115$1);
    v115$2 := (if p1$2 then $$0$0$2 else v115$2);
    v116$1 := (if p1$1 then $$0$1$1 else v116$1);
    v116$2 := (if p1$2 then $$0$1$2 else v116$2);
    v117$1 := (if p1$1 then $$0$2$1 else v117$1);
    v117$2 := (if p1$2 then $$0$2$2 else v117$2);
    v118$1 := (if p1$1 then $$0$3$1 else v118$1);
    v118$2 := (if p1$2 then $$0$3$2 else v118$2);
    $$27$0$1 := (if p1$1 then v115$1 else $$27$0$1);
    $$27$0$2 := (if p1$2 then v115$2 else $$27$0$2);
    $$27$1$1 := (if p1$1 then v116$1 else $$27$1$1);
    $$27$1$2 := (if p1$2 then v116$2 else $$27$1$2);
    $$27$2$1 := (if p1$1 then v117$1 else $$27$2$1);
    $$27$2$2 := (if p1$2 then v117$2 else $$27$2$2);
    $$27$3$1 := (if p1$1 then v118$1 else $$27$3$1);
    $$27$3$2 := (if p1$2 then v118$2 else $$27$3$2);
    v119$1 := (if p1$1 then $$27$0$1 else v119$1);
    v119$2 := (if p1$2 then $$27$0$2 else v119$2);
    $$yp$0$1 := (if p1$1 then v119$1 else $$yp$0$1);
    $$yp$0$2 := (if p1$2 then v119$2 else $$yp$0$2);
    v120$1 := (if p1$1 then $$27$1$1 else v120$1);
    v120$2 := (if p1$2 then $$27$1$2 else v120$2);
    $$yp$1$1 := (if p1$1 then v120$1 else $$yp$1$1);
    $$yp$1$2 := (if p1$2 then v120$2 else $$yp$1$2);
    v121$1 := (if p1$1 then $$27$2$1 else v121$1);
    v121$2 := (if p1$2 then $$27$2$2 else v121$2);
    $$yp$2$1 := (if p1$1 then v121$1 else $$yp$2$1);
    $$yp$2$2 := (if p1$2 then v121$2 else $$yp$2$2);
    v122$1 := (if p1$1 then $$27$3$1 else v122$1);
    v122$2 := (if p1$2 then $$27$3$2 else v122$2);
    $$yp$3$1 := (if p1$1 then v122$1 else $$yp$3$1);
    $$yp$3$2 := (if p1$2 then v122$2 else $$yp$3$2);
    $.12$1, $.1$1, $y1.0$1 := (if p1$1 then BV32_ADD($.01$1, v113$1) else $.12$1), (if p1$1 then BV32_ADD($.0$1, BV32_SUB(0, $w)) else $.1$1), (if p1$1 then BV32_SUB($h, 1) else $y1.0$1);
    $.12$2, $.1$2, $y1.0$2 := (if p1$2 then BV32_ADD($.01$2, v113$2) else $.12$2), (if p1$2 then BV32_ADD($.0$2, BV32_SUB(0, $w)) else $.1$2), (if p1$2 then BV32_SUB($h, 1) else $y1.0$2);
    p4$1 := (if p1$1 then true else p4$1);
    p4$2 := (if p1$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$od$ghost$$7 := _READ_HAS_OCCURRED_$$od;
    _WRITE_HAS_OCCURRED_$$od$ghost$$7 := _WRITE_HAS_OCCURRED_$$od;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$od ==> _WATCHED_OFFSET mod BV32_SUB(0, $w) == BV32_ADD($.0$1, BV32_SUB(0, $w)) mod BV32_SUB(0, $w) ) ,  (  _WRITE_HAS_OCCURRED_$$od ==> _WATCHED_OFFSET mod BV32_SUB(0, $w) == BV32_ADD($.0$1, BV32_SUB(0, $w)) mod BV32_SUB(0, $w) ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$od$ghost$$7 == _READ_HAS_OCCURRED_$$od ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$od$ghost$$7 == _WRITE_HAS_OCCURRED_$$od )  ); 


    assume {:predicate "p4"} {:dominator_predicate "p1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> $.12$1 mod BV32_SUB(0, $w) == BV32_ADD($.01$1, v113$1) mod BV32_SUB(0, $w) )  && ( p4$2 ==> $.12$2 mod BV32_SUB(0, $w) == BV32_ADD($.01$2, v113$2) mod BV32_SUB(0, $w) ) ,  ( p4$1 ==> $.1$1 mod BV32_SUB(0, $w) == BV32_ADD($.0$1, BV32_SUB(0, $w)) mod BV32_SUB(0, $w) )  && ( p4$2 ==> $.1$2 mod BV32_SUB(0, $w) == BV32_ADD($.0$2, BV32_SUB(0, $w)) mod BV32_SUB(0, $w) ) ,  ( p4$1 ==> $y1.0$1 mod -1 == BV32_SUB($h, 1) mod -1 )  && ( p4$2 ==> $y1.0$2 mod -1 == BV32_SUB($h, 1) mod -1 ) ,  ( p4$1 ==> BV32_SLE($y1.0$1, BV32_SUB($h, 1)) )  && ( p4$2 ==> BV32_SLE($y1.0$2, BV32_SUB($h, 1)) ) ,  ( p4$1 ==> BV32_SGE($y1.0$1, BV32_SUB($h, 1)) )  && ( p4$2 ==> BV32_SGE($y1.0$2, BV32_SUB($h, 1)) ) ,  ( p4$1 ==> BV32_ULE($y1.0$1, BV32_SUB($h, 1)) )  && ( p4$2 ==> BV32_ULE($y1.0$2, BV32_SUB($h, 1)) ) ,  ( p4$1 ==> BV32_UGE($y1.0$1, BV32_SUB($h, 1)) )  && ( p4$2 ==> BV32_UGE($y1.0$2, BV32_SUB($h, 1)) ) ,  ( p4$1 ==> p4$1 ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) )  && ( p4$2 ==> p4$2 ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $w) ) ,  (  !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) && BV32_SGE($y1.0$1, 0) ==> p4$1 )  && (  !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $w) && BV32_SGE($y1.0$2, 0) ==> p4$2 ) ,  (  _READ_HAS_OCCURRED_$$od ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) ) ,  (  _WRITE_HAS_OCCURRED_$$od ==> !BV32_UGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w) ) ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 241} p4$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 242} {:thread 1} (if BV32_UREM(BV32_UDIV(BV32_MUL($.1$1, 4), 4), $w) == v0$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 242} {:thread 2} (if BV32_UREM(BV32_UDIV(BV32_MUL($.1$2, 4), 4), $w) == v0$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 243} {:thread 1} (if _WRITE_HAS_OCCURRED_$$od ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $w) == v0$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 244} {:thread 1} (if _READ_HAS_OCCURRED_$$od ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $w) == v0$1 then 1 else 0) != 0;
    v123$1 := (if p4$1 then BV32_SGE($y1.0$1, 0) else v123$1);
    v123$2 := (if p4$2 then BV32_SGE($y1.0$2, 0) else v123$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v123$1 then v123$1 else p5$1);
    p5$2 := (if p4$2 && v123$2 then v123$2 else p5$2);
    p4$1 := (if p4$1 && !v123$1 then v123$1 else p4$1);
    p4$2 := (if p4$2 && !v123$2 then v123$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p5$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p5$2 then _HAVOC_int$2 else v124$2);
    $$1$0$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(v124$1, 255)), 1132396544) else $$1$0$1);
    $$1$0$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(v124$2, 255)), 1132396544) else $$1$0$2);
    $$1$1$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$1, 8), 255)), 1132396544) else $$1$1$1);
    $$1$1$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$2, 8), 255)), 1132396544) else $$1$1$2);
    $$1$2$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$1, 16), 255)), 1132396544) else $$1$2$1);
    $$1$2$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$2, 16), 255)), 1132396544) else $$1$2$2);
    $$1$3$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$1, 24), 255)), 1132396544) else $$1$3$1);
    $$1$3$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v124$2, 24), 255)), 1132396544) else $$1$3$2);
    v125$1 := (if p5$1 then $$1$0$1 else v125$1);
    v125$2 := (if p5$2 then $$1$0$2 else v125$2);
    v126$1 := (if p5$1 then $$1$1$1 else v126$1);
    v126$2 := (if p5$2 then $$1$1$2 else v126$2);
    v127$1 := (if p5$1 then $$1$2$1 else v127$1);
    v127$2 := (if p5$2 then $$1$2$2 else v127$2);
    v128$1 := (if p5$1 then $$1$3$1 else v128$1);
    v128$2 := (if p5$2 then $$1$3$2 else v128$2);
    $$xc2$0$1 := (if p5$1 then v125$1 else $$xc2$0$1);
    $$xc2$0$2 := (if p5$2 then v125$2 else $$xc2$0$2);
    $$xc2$1$1 := (if p5$1 then v126$1 else $$xc2$1$1);
    $$xc2$1$2 := (if p5$2 then v126$2 else $$xc2$1$2);
    $$xc2$2$1 := (if p5$1 then v127$1 else $$xc2$2$1);
    $$xc2$2$2 := (if p5$2 then v127$2 else $$xc2$2$2);
    $$xc2$3$1 := (if p5$1 then v128$1 else $$xc2$3$1);
    $$xc2$3$2 := (if p5$2 then v128$2 else $$xc2$3$2);
    v129$1 := (if p5$1 then $$xc2$0$1 else v129$1);
    v129$2 := (if p5$2 then $$xc2$0$2 else v129$2);
    $$28$0$1 := (if p5$1 then v129$1 else $$28$0$1);
    $$28$0$2 := (if p5$2 then v129$2 else $$28$0$2);
    v130$1 := (if p5$1 then $$xc2$1$1 else v130$1);
    v130$2 := (if p5$2 then $$xc2$1$2 else v130$2);
    $$28$1$1 := (if p5$1 then v130$1 else $$28$1$1);
    $$28$1$2 := (if p5$2 then v130$2 else $$28$1$2);
    v131$1 := (if p5$1 then $$xc2$2$1 else v131$1);
    v131$2 := (if p5$2 then $$xc2$2$2 else v131$2);
    $$28$2$1 := (if p5$1 then v131$1 else $$28$2$1);
    $$28$2$2 := (if p5$2 then v131$2 else $$28$2$2);
    v132$1 := (if p5$1 then $$xc2$3$1 else v132$1);
    v132$2 := (if p5$2 then $$xc2$3$2 else v132$2);
    $$28$3$1 := (if p5$1 then v132$1 else $$28$3$1);
    $$28$3$2 := (if p5$2 then v132$2 else $$28$3$2);
    v133$1 := (if p5$1 then $$yp$0$1 else v133$1);
    v133$2 := (if p5$2 then $$yp$0$2 else v133$2);
    $$31$0$1 := (if p5$1 then v133$1 else $$31$0$1);
    $$31$0$2 := (if p5$2 then v133$2 else $$31$0$2);
    v134$1 := (if p5$1 then $$yp$1$1 else v134$1);
    v134$2 := (if p5$2 then $$yp$1$2 else v134$2);
    $$31$1$1 := (if p5$1 then v134$1 else $$31$1$1);
    $$31$1$2 := (if p5$2 then v134$2 else $$31$1$2);
    v135$1 := (if p5$1 then $$yp$2$1 else v135$1);
    v135$2 := (if p5$2 then $$yp$2$2 else v135$2);
    $$31$2$1 := (if p5$1 then v135$1 else $$31$2$1);
    $$31$2$2 := (if p5$2 then v135$2 else $$31$2$2);
    v136$1 := (if p5$1 then $$yp$3$1 else v136$1);
    v136$2 := (if p5$2 then $$yp$3$2 else v136$2);
    $$31$3$1 := (if p5$1 then v136$1 else $$31$3$1);
    $$31$3$2 := (if p5$2 then v136$2 else $$31$3$2);
    v137$1 := (if p5$1 then $$xc2$0$1 else v137$1);
    v137$2 := (if p5$2 then $$xc2$0$2 else v137$2);
    $$32$0$1 := (if p5$1 then v137$1 else $$32$0$1);
    $$32$0$2 := (if p5$2 then v137$2 else $$32$0$2);
    v138$1 := (if p5$1 then $$xc2$1$1 else v138$1);
    v138$2 := (if p5$2 then $$xc2$1$2 else v138$2);
    $$32$1$1 := (if p5$1 then v138$1 else $$32$1$1);
    $$32$1$2 := (if p5$2 then v138$2 else $$32$1$2);
    v139$1 := (if p5$1 then $$xc2$2$1 else v139$1);
    v139$2 := (if p5$2 then $$xc2$2$2 else v139$2);
    $$32$2$1 := (if p5$1 then v139$1 else $$32$2$1);
    $$32$2$2 := (if p5$2 then v139$2 else $$32$2$2);
    v140$1 := (if p5$1 then $$xc2$3$1 else v140$1);
    v140$2 := (if p5$2 then $$xc2$3$2 else v140$2);
    $$32$3$1 := (if p5$1 then v140$1 else $$32$3$1);
    $$32$3$2 := (if p5$2 then v140$2 else $$32$3$2);
    v141$1 := (if p5$1 then $$31$0$1 else v141$1);
    v141$2 := (if p5$2 then $$31$0$2 else v141$2);
    v142$1 := (if p5$1 then $$31$1$1 else v142$1);
    v142$2 := (if p5$2 then $$31$1$2 else v142$2);
    v143$1 := (if p5$1 then $$31$2$1 else v143$1);
    v143$2 := (if p5$2 then $$31$2$2 else v143$2);
    v144$1 := (if p5$1 then $$31$3$1 else v144$1);
    v144$2 := (if p5$2 then $$31$3$2 else v144$2);
    v145$1 := (if p5$1 then $$32$0$1 else v145$1);
    v145$2 := (if p5$2 then $$32$0$2 else v145$2);
    v146$1 := (if p5$1 then $$32$1$1 else v146$1);
    v146$2 := (if p5$2 then $$32$1$2 else v146$2);
    v147$1 := (if p5$1 then $$32$2$1 else v147$1);
    v147$2 := (if p5$2 then $$32$2$2 else v147$2);
    v148$1 := (if p5$1 then $$32$3$1 else v148$1);
    v148$2 := (if p5$2 then $$32$3$2 else v148$2);
    $$a.i13$0$1 := (if p5$1 then v141$1 else $$a.i13$0$1);
    $$a.i13$0$2 := (if p5$2 then v141$2 else $$a.i13$0$2);
    $$a.i13$1$1 := (if p5$1 then v142$1 else $$a.i13$1$1);
    $$a.i13$1$2 := (if p5$2 then v142$2 else $$a.i13$1$2);
    $$a.i13$2$1 := (if p5$1 then v143$1 else $$a.i13$2$1);
    $$a.i13$2$2 := (if p5$2 then v143$2 else $$a.i13$2$2);
    $$a.i13$3$1 := (if p5$1 then v144$1 else $$a.i13$3$1);
    $$a.i13$3$2 := (if p5$2 then v144$2 else $$a.i13$3$2);
    $$b.i14$0$1 := (if p5$1 then v145$1 else $$b.i14$0$1);
    $$b.i14$0$2 := (if p5$2 then v145$2 else $$b.i14$0$2);
    $$b.i14$1$1 := (if p5$1 then v146$1 else $$b.i14$1$1);
    $$b.i14$1$2 := (if p5$2 then v146$2 else $$b.i14$1$2);
    $$b.i14$2$1 := (if p5$1 then v147$1 else $$b.i14$2$1);
    $$b.i14$2$2 := (if p5$2 then v147$2 else $$b.i14$2$2);
    $$b.i14$3$1 := (if p5$1 then v148$1 else $$b.i14$3$1);
    $$b.i14$3$2 := (if p5$2 then v148$2 else $$b.i14$3$2);
    v149$1 := (if p5$1 then $$a.i13$0$1 else v149$1);
    v149$2 := (if p5$2 then $$a.i13$0$2 else v149$2);
    v150$1 := (if p5$1 then $$b.i14$0$1 else v150$1);
    v150$2 := (if p5$2 then $$b.i14$0$2 else v150$2);
    v151$1 := (if p5$1 then $$a.i13$1$1 else v151$1);
    v151$2 := (if p5$2 then $$a.i13$1$2 else v151$2);
    v152$1 := (if p5$1 then $$b.i14$1$1 else v152$1);
    v152$2 := (if p5$2 then $$b.i14$1$2 else v152$2);
    v153$1 := (if p5$1 then $$a.i13$2$1 else v153$1);
    v153$2 := (if p5$2 then $$a.i13$2$2 else v153$2);
    v154$1 := (if p5$1 then $$b.i14$2$1 else v154$1);
    v154$2 := (if p5$2 then $$b.i14$2$2 else v154$2);
    v155$1 := (if p5$1 then $$a.i13$3$1 else v155$1);
    v155$2 := (if p5$2 then $$a.i13$3$2 else v155$2);
    v156$1 := (if p5$1 then $$b.i14$3$1 else v156$1);
    v156$2 := (if p5$2 then $$b.i14$3$2 else v156$2);
    $$2$0$1 := (if p5$1 then FSUB32(v149$1, v150$1) else $$2$0$1);
    $$2$0$2 := (if p5$2 then FSUB32(v149$2, v150$2) else $$2$0$2);
    $$2$1$1 := (if p5$1 then FSUB32(v151$1, v152$1) else $$2$1$1);
    $$2$1$2 := (if p5$2 then FSUB32(v151$2, v152$2) else $$2$1$2);
    $$2$2$1 := (if p5$1 then FSUB32(v153$1, v154$1) else $$2$2$1);
    $$2$2$2 := (if p5$2 then FSUB32(v153$2, v154$2) else $$2$2$2);
    $$2$3$1 := (if p5$1 then FSUB32(v155$1, v156$1) else $$2$3$1);
    $$2$3$2 := (if p5$2 then FSUB32(v155$2, v156$2) else $$2$3$2);
    v157$1 := (if p5$1 then $$2$0$1 else v157$1);
    v157$2 := (if p5$2 then $$2$0$2 else v157$2);
    v158$1 := (if p5$1 then $$2$1$1 else v158$1);
    v158$2 := (if p5$2 then $$2$1$2 else v158$2);
    v159$1 := (if p5$1 then $$2$2$1 else v159$1);
    v159$2 := (if p5$2 then $$2$2$2 else v159$2);
    v160$1 := (if p5$1 then $$2$3$1 else v160$1);
    v160$2 := (if p5$2 then $$2$3$2 else v160$2);
    $$3$0$1 := (if p5$1 then v157$1 else $$3$0$1);
    $$3$0$2 := (if p5$2 then v157$2 else $$3$0$2);
    $$3$1$1 := (if p5$1 then v158$1 else $$3$1$1);
    $$3$1$2 := (if p5$2 then v158$2 else $$3$1$2);
    $$3$2$1 := (if p5$1 then v159$1 else $$3$2$1);
    $$3$2$2 := (if p5$2 then v159$2 else $$3$2$2);
    $$3$3$1 := (if p5$1 then v160$1 else $$3$3$1);
    $$3$3$2 := (if p5$2 then v160$2 else $$3$3$2);
    v161$1 := (if p5$1 then $$3$0$1 else v161$1);
    v161$2 := (if p5$2 then $$3$0$2 else v161$2);
    v162$1 := (if p5$1 then $$3$1$1 else v162$1);
    v162$2 := (if p5$2 then $$3$1$2 else v162$2);
    v163$1 := (if p5$1 then $$3$2$1 else v163$1);
    v163$2 := (if p5$2 then $$3$2$2 else v163$2);
    v164$1 := (if p5$1 then $$3$3$1 else v164$1);
    v164$2 := (if p5$2 then $$3$3$2 else v164$2);
    $$30$0$1 := (if p5$1 then v161$1 else $$30$0$1);
    $$30$0$2 := (if p5$2 then v161$2 else $$30$0$2);
    $$30$1$1 := (if p5$1 then v162$1 else $$30$1$1);
    $$30$1$2 := (if p5$2 then v162$2 else $$30$1$2);
    $$30$2$1 := (if p5$1 then v163$1 else $$30$2$1);
    $$30$2$2 := (if p5$2 then v163$2 else $$30$2$2);
    $$30$3$1 := (if p5$1 then v164$1 else $$30$3$1);
    $$30$3$2 := (if p5$2 then v164$2 else $$30$3$2);
    v165$1 := (if p5$1 then $$30$0$1 else v165$1);
    v165$2 := (if p5$2 then $$30$0$2 else v165$2);
    v166$1 := (if p5$1 then $$30$1$1 else v166$1);
    v166$2 := (if p5$2 then $$30$1$2 else v166$2);
    v167$1 := (if p5$1 then $$30$2$1 else v167$1);
    v167$2 := (if p5$2 then $$30$2$2 else v167$2);
    v168$1 := (if p5$1 then $$30$3$1 else v168$1);
    v168$2 := (if p5$2 then $$30$3$2 else v168$2);
    $$b.i12$0$1 := (if p5$1 then v165$1 else $$b.i12$0$1);
    $$b.i12$0$2 := (if p5$2 then v165$2 else $$b.i12$0$2);
    $$b.i12$1$1 := (if p5$1 then v166$1 else $$b.i12$1$1);
    $$b.i12$1$2 := (if p5$2 then v166$2 else $$b.i12$1$2);
    $$b.i12$2$1 := (if p5$1 then v167$1 else $$b.i12$2$1);
    $$b.i12$2$2 := (if p5$2 then v167$2 else $$b.i12$2$2);
    $$b.i12$3$1 := (if p5$1 then v168$1 else $$b.i12$3$1);
    $$b.i12$3$2 := (if p5$2 then v168$2 else $$b.i12$3$2);
    v169$1 := (if p5$1 then $$b.i12$0$1 else v169$1);
    v169$2 := (if p5$2 then $$b.i12$0$2 else v169$2);
    v170$1 := (if p5$1 then $$b.i12$1$1 else v170$1);
    v170$2 := (if p5$2 then $$b.i12$1$2 else v170$2);
    v171$1 := (if p5$1 then $$b.i12$2$1 else v171$1);
    v171$2 := (if p5$2 then $$b.i12$2$2 else v171$2);
    v172$1 := (if p5$1 then $$b.i12$3$1 else v172$1);
    v172$2 := (if p5$2 then $$b.i12$3$2 else v172$2);
    $$4$0$1 := (if p5$1 then FMUL32($a, v169$1) else $$4$0$1);
    $$4$0$2 := (if p5$2 then FMUL32($a, v169$2) else $$4$0$2);
    $$4$1$1 := (if p5$1 then FMUL32($a, v170$1) else $$4$1$1);
    $$4$1$2 := (if p5$2 then FMUL32($a, v170$2) else $$4$1$2);
    $$4$2$1 := (if p5$1 then FMUL32($a, v171$1) else $$4$2$1);
    $$4$2$2 := (if p5$2 then FMUL32($a, v171$2) else $$4$2$2);
    $$4$3$1 := (if p5$1 then FMUL32($a, v172$1) else $$4$3$1);
    $$4$3$2 := (if p5$2 then FMUL32($a, v172$2) else $$4$3$2);
    v173$1 := (if p5$1 then $$4$0$1 else v173$1);
    v173$2 := (if p5$2 then $$4$0$2 else v173$2);
    v174$1 := (if p5$1 then $$4$1$1 else v174$1);
    v174$2 := (if p5$2 then $$4$1$2 else v174$2);
    v175$1 := (if p5$1 then $$4$2$1 else v175$1);
    v175$2 := (if p5$2 then $$4$2$2 else v175$2);
    v176$1 := (if p5$1 then $$4$3$1 else v176$1);
    v176$2 := (if p5$2 then $$4$3$2 else v176$2);
    $$5$0$1 := (if p5$1 then v173$1 else $$5$0$1);
    $$5$0$2 := (if p5$2 then v173$2 else $$5$0$2);
    $$5$1$1 := (if p5$1 then v174$1 else $$5$1$1);
    $$5$1$2 := (if p5$2 then v174$2 else $$5$1$2);
    $$5$2$1 := (if p5$1 then v175$1 else $$5$2$1);
    $$5$2$2 := (if p5$2 then v175$2 else $$5$2$2);
    $$5$3$1 := (if p5$1 then v176$1 else $$5$3$1);
    $$5$3$2 := (if p5$2 then v176$2 else $$5$3$2);
    v177$1 := (if p5$1 then $$5$0$1 else v177$1);
    v177$2 := (if p5$2 then $$5$0$2 else v177$2);
    v178$1 := (if p5$1 then $$5$1$1 else v178$1);
    v178$2 := (if p5$2 then $$5$1$2 else v178$2);
    v179$1 := (if p5$1 then $$5$2$1 else v179$1);
    v179$2 := (if p5$2 then $$5$2$2 else v179$2);
    v180$1 := (if p5$1 then $$5$3$1 else v180$1);
    v180$2 := (if p5$2 then $$5$3$2 else v180$2);
    $$29$0$1 := (if p5$1 then v177$1 else $$29$0$1);
    $$29$0$2 := (if p5$2 then v177$2 else $$29$0$2);
    $$29$1$1 := (if p5$1 then v178$1 else $$29$1$1);
    $$29$1$2 := (if p5$2 then v178$2 else $$29$1$2);
    $$29$2$1 := (if p5$1 then v179$1 else $$29$2$1);
    $$29$2$2 := (if p5$2 then v179$2 else $$29$2$2);
    $$29$3$1 := (if p5$1 then v180$1 else $$29$3$1);
    $$29$3$2 := (if p5$2 then v180$2 else $$29$3$2);
    v181$1 := (if p5$1 then $$28$0$1 else v181$1);
    v181$2 := (if p5$2 then $$28$0$2 else v181$2);
    v182$1 := (if p5$1 then $$28$1$1 else v182$1);
    v182$2 := (if p5$2 then $$28$1$2 else v182$2);
    v183$1 := (if p5$1 then $$28$2$1 else v183$1);
    v183$2 := (if p5$2 then $$28$2$2 else v183$2);
    v184$1 := (if p5$1 then $$28$3$1 else v184$1);
    v184$2 := (if p5$2 then $$28$3$2 else v184$2);
    v185$1 := (if p5$1 then $$29$0$1 else v185$1);
    v185$2 := (if p5$2 then $$29$0$2 else v185$2);
    v186$1 := (if p5$1 then $$29$1$1 else v186$1);
    v186$2 := (if p5$2 then $$29$1$2 else v186$2);
    v187$1 := (if p5$1 then $$29$2$1 else v187$1);
    v187$2 := (if p5$2 then $$29$2$2 else v187$2);
    v188$1 := (if p5$1 then $$29$3$1 else v188$1);
    v188$2 := (if p5$2 then $$29$3$2 else v188$2);
    $$a.i10$0$1 := (if p5$1 then v181$1 else $$a.i10$0$1);
    $$a.i10$0$2 := (if p5$2 then v181$2 else $$a.i10$0$2);
    $$a.i10$1$1 := (if p5$1 then v182$1 else $$a.i10$1$1);
    $$a.i10$1$2 := (if p5$2 then v182$2 else $$a.i10$1$2);
    $$a.i10$2$1 := (if p5$1 then v183$1 else $$a.i10$2$1);
    $$a.i10$2$2 := (if p5$2 then v183$2 else $$a.i10$2$2);
    $$a.i10$3$1 := (if p5$1 then v184$1 else $$a.i10$3$1);
    $$a.i10$3$2 := (if p5$2 then v184$2 else $$a.i10$3$2);
    $$b.i11$0$1 := (if p5$1 then v185$1 else $$b.i11$0$1);
    $$b.i11$0$2 := (if p5$2 then v185$2 else $$b.i11$0$2);
    $$b.i11$1$1 := (if p5$1 then v186$1 else $$b.i11$1$1);
    $$b.i11$1$2 := (if p5$2 then v186$2 else $$b.i11$1$2);
    $$b.i11$2$1 := (if p5$1 then v187$1 else $$b.i11$2$1);
    $$b.i11$2$2 := (if p5$2 then v187$2 else $$b.i11$2$2);
    $$b.i11$3$1 := (if p5$1 then v188$1 else $$b.i11$3$1);
    $$b.i11$3$2 := (if p5$2 then v188$2 else $$b.i11$3$2);
    v189$1 := (if p5$1 then $$a.i10$0$1 else v189$1);
    v189$2 := (if p5$2 then $$a.i10$0$2 else v189$2);
    v190$1 := (if p5$1 then $$b.i11$0$1 else v190$1);
    v190$2 := (if p5$2 then $$b.i11$0$2 else v190$2);
    v191$1 := (if p5$1 then $$a.i10$1$1 else v191$1);
    v191$2 := (if p5$2 then $$a.i10$1$2 else v191$2);
    v192$1 := (if p5$1 then $$b.i11$1$1 else v192$1);
    v192$2 := (if p5$2 then $$b.i11$1$2 else v192$2);
    v193$1 := (if p5$1 then $$a.i10$2$1 else v193$1);
    v193$2 := (if p5$2 then $$a.i10$2$2 else v193$2);
    v194$1 := (if p5$1 then $$b.i11$2$1 else v194$1);
    v194$2 := (if p5$2 then $$b.i11$2$2 else v194$2);
    v195$1 := (if p5$1 then $$a.i10$3$1 else v195$1);
    v195$2 := (if p5$2 then $$a.i10$3$2 else v195$2);
    v196$1 := (if p5$1 then $$b.i11$3$1 else v196$1);
    v196$2 := (if p5$2 then $$b.i11$3$2 else v196$2);
    $$6$0$1 := (if p5$1 then FADD32(v189$1, v190$1) else $$6$0$1);
    $$6$0$2 := (if p5$2 then FADD32(v189$2, v190$2) else $$6$0$2);
    $$6$1$1 := (if p5$1 then FADD32(v191$1, v192$1) else $$6$1$1);
    $$6$1$2 := (if p5$2 then FADD32(v191$2, v192$2) else $$6$1$2);
    $$6$2$1 := (if p5$1 then FADD32(v193$1, v194$1) else $$6$2$1);
    $$6$2$2 := (if p5$2 then FADD32(v193$2, v194$2) else $$6$2$2);
    $$6$3$1 := (if p5$1 then FADD32(v195$1, v196$1) else $$6$3$1);
    $$6$3$2 := (if p5$2 then FADD32(v195$2, v196$2) else $$6$3$2);
    v197$1 := (if p5$1 then $$6$0$1 else v197$1);
    v197$2 := (if p5$2 then $$6$0$2 else v197$2);
    v198$1 := (if p5$1 then $$6$1$1 else v198$1);
    v198$2 := (if p5$2 then $$6$1$2 else v198$2);
    v199$1 := (if p5$1 then $$6$2$1 else v199$1);
    v199$2 := (if p5$2 then $$6$2$2 else v199$2);
    v200$1 := (if p5$1 then $$6$3$1 else v200$1);
    v200$2 := (if p5$2 then $$6$3$2 else v200$2);
    $$7$0$1 := (if p5$1 then v197$1 else $$7$0$1);
    $$7$0$2 := (if p5$2 then v197$2 else $$7$0$2);
    $$7$1$1 := (if p5$1 then v198$1 else $$7$1$1);
    $$7$1$2 := (if p5$2 then v198$2 else $$7$1$2);
    $$7$2$1 := (if p5$1 then v199$1 else $$7$2$1);
    $$7$2$2 := (if p5$2 then v199$2 else $$7$2$2);
    $$7$3$1 := (if p5$1 then v200$1 else $$7$3$1);
    $$7$3$2 := (if p5$2 then v200$2 else $$7$3$2);
    v201$1 := (if p5$1 then $$7$0$1 else v201$1);
    v201$2 := (if p5$2 then $$7$0$2 else v201$2);
    v202$1 := (if p5$1 then $$7$1$1 else v202$1);
    v202$2 := (if p5$2 then $$7$1$2 else v202$2);
    v203$1 := (if p5$1 then $$7$2$1 else v203$1);
    v203$2 := (if p5$2 then $$7$2$2 else v203$2);
    v204$1 := (if p5$1 then $$7$3$1 else v204$1);
    v204$2 := (if p5$2 then $$7$3$2 else v204$2);
    $$yc3$0$1 := (if p5$1 then v201$1 else $$yc3$0$1);
    $$yc3$0$2 := (if p5$2 then v201$2 else $$yc3$0$2);
    $$yc3$1$1 := (if p5$1 then v202$1 else $$yc3$1$1);
    $$yc3$1$2 := (if p5$2 then v202$2 else $$yc3$1$2);
    $$yc3$2$1 := (if p5$1 then v203$1 else $$yc3$2$1);
    $$yc3$2$2 := (if p5$2 then v203$2 else $$yc3$2$2);
    $$yc3$3$1 := (if p5$1 then v204$1 else $$yc3$3$1);
    $$yc3$3$2 := (if p5$2 then v204$2 else $$yc3$3$2);
    call {:sourceloc} {:sourceloc_num 403} _LOG_READ_$$od(p5$1, $.1$1, $$od[$.1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 403} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 403} _CHECK_READ_$$od(p5$2, $.1$2, $$od[$.1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$od"} true;
    v205$1 := (if p5$1 then $$od[$.1$1] else v205$1);
    v205$2 := (if p5$2 then $$od[$.1$2] else v205$2);
    $$8$0$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(v205$1, 255)), 1132396544) else $$8$0$1);
    $$8$0$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(v205$2, 255)), 1132396544) else $$8$0$2);
    $$8$1$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$1, 8), 255)), 1132396544) else $$8$1$1);
    $$8$1$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$2, 8), 255)), 1132396544) else $$8$1$2);
    $$8$2$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$1, 16), 255)), 1132396544) else $$8$2$1);
    $$8$2$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$2, 16), 255)), 1132396544) else $$8$2$2);
    $$8$3$1 := (if p5$1 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$1, 24), 255)), 1132396544) else $$8$3$1);
    $$8$3$2 := (if p5$2 then FDIV32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v205$2, 24), 255)), 1132396544) else $$8$3$2);
    v206$1 := (if p5$1 then $$8$0$1 else v206$1);
    v206$2 := (if p5$2 then $$8$0$2 else v206$2);
    v207$1 := (if p5$1 then $$8$1$1 else v207$1);
    v207$2 := (if p5$2 then $$8$1$2 else v207$2);
    v208$1 := (if p5$1 then $$8$2$1 else v208$1);
    v208$2 := (if p5$2 then $$8$2$2 else v208$2);
    v209$1 := (if p5$1 then $$8$3$1 else v209$1);
    v209$2 := (if p5$2 then $$8$3$2 else v209$2);
    $$35$0$1 := (if p5$1 then v206$1 else $$35$0$1);
    $$35$0$2 := (if p5$2 then v206$2 else $$35$0$2);
    $$35$1$1 := (if p5$1 then v207$1 else $$35$1$1);
    $$35$1$2 := (if p5$2 then v207$2 else $$35$1$2);
    $$35$2$1 := (if p5$1 then v208$1 else $$35$2$1);
    $$35$2$2 := (if p5$2 then v208$2 else $$35$2$2);
    $$35$3$1 := (if p5$1 then v209$1 else $$35$3$1);
    $$35$3$2 := (if p5$2 then v209$2 else $$35$3$2);
    v210$1 := (if p5$1 then $$yc3$0$1 else v210$1);
    v210$2 := (if p5$2 then $$yc3$0$2 else v210$2);
    $$36$0$1 := (if p5$1 then v210$1 else $$36$0$1);
    $$36$0$2 := (if p5$2 then v210$2 else $$36$0$2);
    v211$1 := (if p5$1 then $$yc3$1$1 else v211$1);
    v211$2 := (if p5$2 then $$yc3$1$2 else v211$2);
    $$36$1$1 := (if p5$1 then v211$1 else $$36$1$1);
    $$36$1$2 := (if p5$2 then v211$2 else $$36$1$2);
    v212$1 := (if p5$1 then $$yc3$2$1 else v212$1);
    v212$2 := (if p5$2 then $$yc3$2$2 else v212$2);
    $$36$2$1 := (if p5$1 then v212$1 else $$36$2$1);
    $$36$2$2 := (if p5$2 then v212$2 else $$36$2$2);
    v213$1 := (if p5$1 then $$yc3$3$1 else v213$1);
    v213$2 := (if p5$2 then $$yc3$3$2 else v213$2);
    $$36$3$1 := (if p5$1 then v213$1 else $$36$3$1);
    $$36$3$2 := (if p5$2 then v213$2 else $$36$3$2);
    v214$1 := (if p5$1 then $$35$0$1 else v214$1);
    v214$2 := (if p5$2 then $$35$0$2 else v214$2);
    v215$1 := (if p5$1 then $$35$1$1 else v215$1);
    v215$2 := (if p5$2 then $$35$1$2 else v215$2);
    v216$1 := (if p5$1 then $$35$2$1 else v216$1);
    v216$2 := (if p5$2 then $$35$2$2 else v216$2);
    v217$1 := (if p5$1 then $$35$3$1 else v217$1);
    v217$2 := (if p5$2 then $$35$3$2 else v217$2);
    v218$1 := (if p5$1 then $$36$0$1 else v218$1);
    v218$2 := (if p5$2 then $$36$0$2 else v218$2);
    v219$1 := (if p5$1 then $$36$1$1 else v219$1);
    v219$2 := (if p5$2 then $$36$1$2 else v219$2);
    v220$1 := (if p5$1 then $$36$2$1 else v220$1);
    v220$2 := (if p5$2 then $$36$2$2 else v220$2);
    v221$1 := (if p5$1 then $$36$3$1 else v221$1);
    v221$2 := (if p5$2 then $$36$3$2 else v221$2);
    $$a.i8$0$1 := (if p5$1 then v214$1 else $$a.i8$0$1);
    $$a.i8$0$2 := (if p5$2 then v214$2 else $$a.i8$0$2);
    $$a.i8$1$1 := (if p5$1 then v215$1 else $$a.i8$1$1);
    $$a.i8$1$2 := (if p5$2 then v215$2 else $$a.i8$1$2);
    $$a.i8$2$1 := (if p5$1 then v216$1 else $$a.i8$2$1);
    $$a.i8$2$2 := (if p5$2 then v216$2 else $$a.i8$2$2);
    $$a.i8$3$1 := (if p5$1 then v217$1 else $$a.i8$3$1);
    $$a.i8$3$2 := (if p5$2 then v217$2 else $$a.i8$3$2);
    $$b.i9$0$1 := (if p5$1 then v218$1 else $$b.i9$0$1);
    $$b.i9$0$2 := (if p5$2 then v218$2 else $$b.i9$0$2);
    $$b.i9$1$1 := (if p5$1 then v219$1 else $$b.i9$1$1);
    $$b.i9$1$2 := (if p5$2 then v219$2 else $$b.i9$1$2);
    $$b.i9$2$1 := (if p5$1 then v220$1 else $$b.i9$2$1);
    $$b.i9$2$2 := (if p5$2 then v220$2 else $$b.i9$2$2);
    $$b.i9$3$1 := (if p5$1 then v221$1 else $$b.i9$3$1);
    $$b.i9$3$2 := (if p5$2 then v221$2 else $$b.i9$3$2);
    v222$1 := (if p5$1 then $$a.i8$0$1 else v222$1);
    v222$2 := (if p5$2 then $$a.i8$0$2 else v222$2);
    v223$1 := (if p5$1 then $$b.i9$0$1 else v223$1);
    v223$2 := (if p5$2 then $$b.i9$0$2 else v223$2);
    v224$1 := (if p5$1 then $$a.i8$1$1 else v224$1);
    v224$2 := (if p5$2 then $$a.i8$1$2 else v224$2);
    v225$1 := (if p5$1 then $$b.i9$1$1 else v225$1);
    v225$2 := (if p5$2 then $$b.i9$1$2 else v225$2);
    v226$1 := (if p5$1 then $$a.i8$2$1 else v226$1);
    v226$2 := (if p5$2 then $$a.i8$2$2 else v226$2);
    v227$1 := (if p5$1 then $$b.i9$2$1 else v227$1);
    v227$2 := (if p5$2 then $$b.i9$2$2 else v227$2);
    v228$1 := (if p5$1 then $$a.i8$3$1 else v228$1);
    v228$2 := (if p5$2 then $$a.i8$3$2 else v228$2);
    v229$1 := (if p5$1 then $$b.i9$3$1 else v229$1);
    v229$2 := (if p5$2 then $$b.i9$3$2 else v229$2);
    $$9$0$1 := (if p5$1 then FADD32(v222$1, v223$1) else $$9$0$1);
    $$9$0$2 := (if p5$2 then FADD32(v222$2, v223$2) else $$9$0$2);
    $$9$1$1 := (if p5$1 then FADD32(v224$1, v225$1) else $$9$1$1);
    $$9$1$2 := (if p5$2 then FADD32(v224$2, v225$2) else $$9$1$2);
    $$9$2$1 := (if p5$1 then FADD32(v226$1, v227$1) else $$9$2$1);
    $$9$2$2 := (if p5$2 then FADD32(v226$2, v227$2) else $$9$2$2);
    $$9$3$1 := (if p5$1 then FADD32(v228$1, v229$1) else $$9$3$1);
    $$9$3$2 := (if p5$2 then FADD32(v228$2, v229$2) else $$9$3$2);
    v230$1 := (if p5$1 then $$9$0$1 else v230$1);
    v230$2 := (if p5$2 then $$9$0$2 else v230$2);
    v231$1 := (if p5$1 then $$9$1$1 else v231$1);
    v231$2 := (if p5$2 then $$9$1$2 else v231$2);
    v232$1 := (if p5$1 then $$9$2$1 else v232$1);
    v232$2 := (if p5$2 then $$9$2$2 else v232$2);
    v233$1 := (if p5$1 then $$9$3$1 else v233$1);
    v233$2 := (if p5$2 then $$9$3$2 else v233$2);
    $$10$0$1 := (if p5$1 then v230$1 else $$10$0$1);
    $$10$0$2 := (if p5$2 then v230$2 else $$10$0$2);
    $$10$1$1 := (if p5$1 then v231$1 else $$10$1$1);
    $$10$1$2 := (if p5$2 then v231$2 else $$10$1$2);
    $$10$2$1 := (if p5$1 then v232$1 else $$10$2$1);
    $$10$2$2 := (if p5$2 then v232$2 else $$10$2$2);
    $$10$3$1 := (if p5$1 then v233$1 else $$10$3$1);
    $$10$3$2 := (if p5$2 then v233$2 else $$10$3$2);
    v234$1 := (if p5$1 then $$10$0$1 else v234$1);
    v234$2 := (if p5$2 then $$10$0$2 else v234$2);
    v235$1 := (if p5$1 then $$10$1$1 else v235$1);
    v235$2 := (if p5$2 then $$10$1$2 else v235$2);
    v236$1 := (if p5$1 then $$10$2$1 else v236$1);
    v236$2 := (if p5$2 then $$10$2$2 else v236$2);
    v237$1 := (if p5$1 then $$10$3$1 else v237$1);
    v237$2 := (if p5$2 then $$10$3$2 else v237$2);
    $$34$0$1 := (if p5$1 then v234$1 else $$34$0$1);
    $$34$0$2 := (if p5$2 then v234$2 else $$34$0$2);
    $$34$1$1 := (if p5$1 then v235$1 else $$34$1$1);
    $$34$1$2 := (if p5$2 then v235$2 else $$34$1$2);
    $$34$2$1 := (if p5$1 then v236$1 else $$34$2$1);
    $$34$2$2 := (if p5$2 then v236$2 else $$34$2$2);
    $$34$3$1 := (if p5$1 then v237$1 else $$34$3$1);
    $$34$3$2 := (if p5$2 then v237$2 else $$34$3$2);
    v238$1 := (if p5$1 then $$34$0$1 else v238$1);
    v238$2 := (if p5$2 then $$34$0$2 else v238$2);
    v239$1 := (if p5$1 then $$34$1$1 else v239$1);
    v239$2 := (if p5$2 then $$34$1$2 else v239$2);
    v240$1 := (if p5$1 then $$34$2$1 else v240$1);
    v240$2 := (if p5$2 then $$34$2$2 else v240$2);
    v241$1 := (if p5$1 then $$34$3$1 else v241$1);
    v241$2 := (if p5$2 then $$34$3$2 else v241$2);
    $$a.i7$0$1 := (if p5$1 then v238$1 else $$a.i7$0$1);
    $$a.i7$0$2 := (if p5$2 then v238$2 else $$a.i7$0$2);
    $$a.i7$1$1 := (if p5$1 then v239$1 else $$a.i7$1$1);
    $$a.i7$1$2 := (if p5$2 then v239$2 else $$a.i7$1$2);
    $$a.i7$2$1 := (if p5$1 then v240$1 else $$a.i7$2$1);
    $$a.i7$2$2 := (if p5$2 then v240$2 else $$a.i7$2$2);
    $$a.i7$3$1 := (if p5$1 then v241$1 else $$a.i7$3$1);
    $$a.i7$3$2 := (if p5$2 then v241$2 else $$a.i7$3$2);
    v242$1 := (if p5$1 then $$a.i7$0$1 else v242$1);
    v242$2 := (if p5$2 then $$a.i7$0$2 else v242$2);
    v243$1 := (if p5$1 then $$a.i7$1$1 else v243$1);
    v243$2 := (if p5$2 then $$a.i7$1$2 else v243$2);
    v244$1 := (if p5$1 then $$a.i7$2$1 else v244$1);
    v244$2 := (if p5$2 then $$a.i7$2$2 else v244$2);
    v245$1 := (if p5$1 then $$a.i7$3$1 else v245$1);
    v245$2 := (if p5$2 then $$a.i7$3$2 else v245$2);
    $$11$0$1 := (if p5$1 then FMUL32(v242$1, 1056964608) else $$11$0$1);
    $$11$0$2 := (if p5$2 then FMUL32(v242$2, 1056964608) else $$11$0$2);
    $$11$1$1 := (if p5$1 then FMUL32(v243$1, 1056964608) else $$11$1$1);
    $$11$1$2 := (if p5$2 then FMUL32(v243$2, 1056964608) else $$11$1$2);
    $$11$2$1 := (if p5$1 then FMUL32(v244$1, 1056964608) else $$11$2$1);
    $$11$2$2 := (if p5$2 then FMUL32(v244$2, 1056964608) else $$11$2$2);
    $$11$3$1 := (if p5$1 then FMUL32(v245$1, 1056964608) else $$11$3$1);
    $$11$3$2 := (if p5$2 then FMUL32(v245$2, 1056964608) else $$11$3$2);
    v246$1 := (if p5$1 then $$11$0$1 else v246$1);
    v246$2 := (if p5$2 then $$11$0$2 else v246$2);
    v247$1 := (if p5$1 then $$11$1$1 else v247$1);
    v247$2 := (if p5$2 then $$11$1$2 else v247$2);
    v248$1 := (if p5$1 then $$11$2$1 else v248$1);
    v248$2 := (if p5$2 then $$11$2$2 else v248$2);
    v249$1 := (if p5$1 then $$11$3$1 else v249$1);
    v249$2 := (if p5$2 then $$11$3$2 else v249$2);
    $$12$0$1 := (if p5$1 then v246$1 else $$12$0$1);
    $$12$0$2 := (if p5$2 then v246$2 else $$12$0$2);
    $$12$1$1 := (if p5$1 then v247$1 else $$12$1$1);
    $$12$1$2 := (if p5$2 then v247$2 else $$12$1$2);
    $$12$2$1 := (if p5$1 then v248$1 else $$12$2$1);
    $$12$2$2 := (if p5$2 then v248$2 else $$12$2$2);
    $$12$3$1 := (if p5$1 then v249$1 else $$12$3$1);
    $$12$3$2 := (if p5$2 then v249$2 else $$12$3$2);
    v250$1 := (if p5$1 then $$12$0$1 else v250$1);
    v250$2 := (if p5$2 then $$12$0$2 else v250$2);
    v251$1 := (if p5$1 then $$12$1$1 else v251$1);
    v251$2 := (if p5$2 then $$12$1$2 else v251$2);
    v252$1 := (if p5$1 then $$12$2$1 else v252$1);
    v252$2 := (if p5$2 then $$12$2$2 else v252$2);
    v253$1 := (if p5$1 then $$12$3$1 else v253$1);
    v253$2 := (if p5$2 then $$12$3$2 else v253$2);
    $$33$0$1 := (if p5$1 then v250$1 else $$33$0$1);
    $$33$0$2 := (if p5$2 then v250$2 else $$33$0$2);
    $$33$1$1 := (if p5$1 then v251$1 else $$33$1$1);
    $$33$1$2 := (if p5$2 then v251$2 else $$33$1$2);
    $$33$2$1 := (if p5$1 then v252$1 else $$33$2$1);
    $$33$2$2 := (if p5$2 then v252$2 else $$33$2$2);
    $$33$3$1 := (if p5$1 then v253$1 else $$33$3$1);
    $$33$3$2 := (if p5$2 then v253$2 else $$33$3$2);
    v254$1 := (if p5$1 then $$33$0$1 else v254$1);
    v254$2 := (if p5$2 then $$33$0$2 else v254$2);
    v255$1 := (if p5$1 then $$33$1$1 else v255$1);
    v255$2 := (if p5$2 then $$33$1$2 else v255$2);
    v256$1 := (if p5$1 then $$33$2$1 else v256$1);
    v256$2 := (if p5$2 then $$33$2$2 else v256$2);
    v257$1 := (if p5$1 then $$33$3$1 else v257$1);
    v257$2 := (if p5$2 then $$33$3$2 else v257$2);
    $$rgba.i$0$1 := (if p5$1 then v254$1 else $$rgba.i$0$1);
    $$rgba.i$0$2 := (if p5$2 then v254$2 else $$rgba.i$0$2);
    $$rgba.i$1$1 := (if p5$1 then v255$1 else $$rgba.i$1$1);
    $$rgba.i$1$2 := (if p5$2 then v255$2 else $$rgba.i$1$2);
    $$rgba.i$2$1 := (if p5$1 then v256$1 else $$rgba.i$2$1);
    $$rgba.i$2$2 := (if p5$2 then v256$2 else $$rgba.i$2$2);
    $$rgba.i$3$1 := (if p5$1 then v257$1 else $$rgba.i$3$1);
    $$rgba.i$3$2 := (if p5$2 then v257$2 else $$rgba.i$3$2);
    v258$1 := (if p5$1 then $$rgba.i$0$1 else v258$1);
    v258$2 := (if p5$2 then $$rgba.i$0$2 else v258$2);
    call {:sourceloc_num 509} v259$1, v259$2 := $__saturatef(p5$1, v258$1, p5$2, v258$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$0$1 := (if p5$1 then v259$1 else $$rgba.i$0$1);
    $$rgba.i$0$2 := (if p5$2 then v259$2 else $$rgba.i$0$2);
    v260$1 := (if p5$1 then $$rgba.i$1$1 else v260$1);
    v260$2 := (if p5$2 then $$rgba.i$1$2 else v260$2);
    call {:sourceloc_num 512} v261$1, v261$2 := $__saturatef(p5$1, v260$1, p5$2, v260$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$1$1 := (if p5$1 then v261$1 else $$rgba.i$1$1);
    $$rgba.i$1$2 := (if p5$2 then v261$2 else $$rgba.i$1$2);
    v262$1 := (if p5$1 then $$rgba.i$2$1 else v262$1);
    v262$2 := (if p5$2 then $$rgba.i$2$2 else v262$2);
    call {:sourceloc_num 515} v263$1, v263$2 := $__saturatef(p5$1, v262$1, p5$2, v262$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$2$1 := (if p5$1 then v263$1 else $$rgba.i$2$1);
    $$rgba.i$2$2 := (if p5$2 then v263$2 else $$rgba.i$2$2);
    v264$1 := (if p5$1 then $$rgba.i$3$1 else v264$1);
    v264$2 := (if p5$2 then $$rgba.i$3$2 else v264$2);
    call {:sourceloc_num 518} v265$1, v265$2 := $__saturatef(p5$1, v264$1, p5$2, v264$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$rgba.i$3$1 := (if p5$1 then v265$1 else $$rgba.i$3$1);
    $$rgba.i$3$2 := (if p5$2 then v265$2 else $$rgba.i$3$2);
    v266$1 := (if p5$1 then $$rgba.i$3$1 else v266$1);
    v266$2 := (if p5$2 then $$rgba.i$3$2 else v266$2);
    v267$1 := (if p5$1 then $$rgba.i$2$1 else v267$1);
    v267$2 := (if p5$2 then $$rgba.i$2$2 else v267$2);
    v268$1 := (if p5$1 then $$rgba.i$1$1 else v268$1);
    v268$2 := (if p5$2 then $$rgba.i$1$2 else v268$2);
    v269$1 := (if p5$1 then $$rgba.i$0$1 else v269$1);
    v269$2 := (if p5$2 then $$rgba.i$0$2 else v269$2);
    call {:sourceloc} {:sourceloc_num 524} _LOG_WRITE_$$od(p5$1, $.1$1, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v266$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v267$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v268$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v269$1, 1132396544))), $$od[$.1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(p5$2, $.1$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 524} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 524} _CHECK_WRITE_$$od(p5$2, $.1$2, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v266$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v267$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v268$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v269$2, 1132396544))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[$.1$1] := (if p5$1 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v266$1, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v267$1, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v268$1, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v269$1, 1132396544))) else $$od[$.1$1]);
    $$od[$.1$2] := (if p5$2 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v266$2, 1132396544)), 24), BV32_SHL(FP32_TO_UI32(FMUL32(v267$2, 1132396544)), 16)), BV32_SHL(FP32_TO_UI32(FMUL32(v268$2, 1132396544)), 8)), FP32_TO_UI32(FMUL32(v269$2, 1132396544))) else $$od[$.1$2]);
    v270$1 := (if p5$1 then $$yc3$0$1 else v270$1);
    v270$2 := (if p5$2 then $$yc3$0$2 else v270$2);
    $$yp$0$1 := (if p5$1 then v270$1 else $$yp$0$1);
    $$yp$0$2 := (if p5$2 then v270$2 else $$yp$0$2);
    v271$1 := (if p5$1 then $$yc3$1$1 else v271$1);
    v271$2 := (if p5$2 then $$yc3$1$2 else v271$2);
    $$yp$1$1 := (if p5$1 then v271$1 else $$yp$1$1);
    $$yp$1$2 := (if p5$2 then v271$2 else $$yp$1$2);
    v272$1 := (if p5$1 then $$yc3$2$1 else v272$1);
    v272$2 := (if p5$2 then $$yc3$2$2 else v272$2);
    $$yp$2$1 := (if p5$1 then v272$1 else $$yp$2$1);
    $$yp$2$2 := (if p5$2 then v272$2 else $$yp$2$2);
    v273$1 := (if p5$1 then $$yc3$3$1 else v273$1);
    v273$2 := (if p5$2 then $$yc3$3$2 else v273$2);
    $$yp$3$1 := (if p5$1 then v273$1 else $$yp$3$1);
    $$yp$3$2 := (if p5$2 then v273$2 else $$yp$3$2);
    $.12$1, $.1$1, $y1.0$1 := (if p5$1 then BV32_ADD($.12$1, BV32_SUB(0, $w)) else $.12$1), (if p5$1 then BV32_ADD($.1$1, BV32_SUB(0, $w)) else $.1$1), (if p5$1 then BV32_ADD($y1.0$1, -1) else $y1.0$1);
    $.12$2, $.1$2, $y1.0$2 := (if p5$2 then BV32_ADD($.12$2, BV32_SUB(0, $w)) else $.12$2), (if p5$2 then BV32_ADD($.1$2, BV32_SUB(0, $w)) else $.1$2), (if p5$2 then BV32_ADD($y1.0$2, -1) else $y1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p4$1 && !p4$2;
    return;

  $7.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $7;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



procedure {:source_name "__saturatef"} $__saturatef(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$rgba.i15$0$1: int;

var $$rgba.i15$0$2: int;

var $$rgba.i15$1$1: int;

var $$rgba.i15$1$2: int;

var $$rgba.i15$2$1: int;

var $$rgba.i15$2$2: int;

var $$rgba.i15$3$1: int;

var $$rgba.i15$3$2: int;

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

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$a.i13$0$1: int;

var $$a.i13$0$2: int;

var $$a.i13$1$1: int;

var $$a.i13$1$2: int;

var $$a.i13$2$1: int;

var $$a.i13$2$2: int;

var $$a.i13$3$1: int;

var $$a.i13$3$2: int;

var $$b.i14$0$1: int;

var $$b.i14$0$2: int;

var $$b.i14$1$1: int;

var $$b.i14$1$2: int;

var $$b.i14$2$1: int;

var $$b.i14$2$2: int;

var $$b.i14$3$1: int;

var $$b.i14$3$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$5$3$1: int;

var $$5$3$2: int;

var $$b.i12$0$1: int;

var $$b.i12$0$2: int;

var $$b.i12$1$1: int;

var $$b.i12$1$2: int;

var $$b.i12$2$1: int;

var $$b.i12$2$2: int;

var $$b.i12$3$1: int;

var $$b.i12$3$2: int;

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

var $$a.i10$0$1: int;

var $$a.i10$0$2: int;

var $$a.i10$1$1: int;

var $$a.i10$1$2: int;

var $$a.i10$2$1: int;

var $$a.i10$2$2: int;

var $$a.i10$3$1: int;

var $$a.i10$3$2: int;

var $$b.i11$0$1: int;

var $$b.i11$0$2: int;

var $$b.i11$1$1: int;

var $$b.i11$1$2: int;

var $$b.i11$2$1: int;

var $$b.i11$2$2: int;

var $$b.i11$3$1: int;

var $$b.i11$3$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$8$3$1: int;

var $$8$3$2: int;

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

var $$a.i8$0$1: int;

var $$a.i8$0$2: int;

var $$a.i8$1$1: int;

var $$a.i8$1$2: int;

var $$a.i8$2$1: int;

var $$a.i8$2$2: int;

var $$a.i8$3$1: int;

var $$a.i8$3$2: int;

var $$b.i9$0$1: int;

var $$b.i9$0$2: int;

var $$b.i9$1$1: int;

var $$b.i9$1$2: int;

var $$b.i9$2$1: int;

var $$b.i9$2$2: int;

var $$b.i9$3$1: int;

var $$b.i9$3$2: int;

var $$11$0$1: int;

var $$11$0$2: int;

var $$11$1$1: int;

var $$11$1$2: int;

var $$11$2$1: int;

var $$11$2$2: int;

var $$11$3$1: int;

var $$11$3$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

var $$12$3$1: int;

var $$12$3$2: int;

var $$a.i7$0$1: int;

var $$a.i7$0$2: int;

var $$a.i7$1$1: int;

var $$a.i7$1$2: int;

var $$a.i7$2$1: int;

var $$a.i7$2$2: int;

var $$a.i7$3$1: int;

var $$a.i7$3$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

var $$13$2$1: int;

var $$13$2$2: int;

var $$13$3$1: int;

var $$13$3$2: int;

var $$14$0$1: int;

var $$14$0$2: int;

var $$14$1$1: int;

var $$14$1$2: int;

var $$14$2$1: int;

var $$14$2$2: int;

var $$14$3$1: int;

var $$14$3$2: int;

var $$a.i5$0$1: int;

var $$a.i5$0$2: int;

var $$a.i5$1$1: int;

var $$a.i5$1$2: int;

var $$a.i5$2$1: int;

var $$a.i5$2$2: int;

var $$a.i5$3$1: int;

var $$a.i5$3$2: int;

var $$b.i6$0$1: int;

var $$b.i6$0$2: int;

var $$b.i6$1$1: int;

var $$b.i6$1$2: int;

var $$b.i6$2$1: int;

var $$b.i6$2$2: int;

var $$b.i6$3$1: int;

var $$b.i6$3$2: int;

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

var $$b.i4$0$1: int;

var $$b.i4$0$2: int;

var $$b.i4$1$1: int;

var $$b.i4$1$2: int;

var $$b.i4$2$1: int;

var $$b.i4$2$2: int;

var $$b.i4$3$1: int;

var $$b.i4$3$2: int;

var $$17$0$1: int;

var $$17$0$2: int;

var $$17$1$1: int;

var $$17$1$2: int;

var $$17$2$1: int;

var $$17$2$2: int;

var $$17$3$1: int;

var $$17$3$2: int;

var $$18$0$1: int;

var $$18$0$2: int;

var $$18$1$1: int;

var $$18$1$2: int;

var $$18$2$1: int;

var $$18$2$2: int;

var $$18$3$1: int;

var $$18$3$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$a.i$3$1: int;

var $$a.i$3$2: int;

var $$b.i$0$1: int;

var $$b.i$0$2: int;

var $$b.i$1$1: int;

var $$b.i$1$2: int;

var $$b.i$2$1: int;

var $$b.i$2$2: int;

var $$b.i$3$1: int;

var $$b.i$3$2: int;

var $$19$0$1: int;

var $$19$0$2: int;

var $$19$1$1: int;

var $$19$1$2: int;

var $$19$2$1: int;

var $$19$2$2: int;

var $$19$3$1: int;

var $$19$3$2: int;

var $$rgba.i$0$1: int;

var $$rgba.i$0$2: int;

var $$rgba.i$1$1: int;

var $$rgba.i$1$2: int;

var $$rgba.i$2$1: int;

var $$rgba.i$2$2: int;

var $$rgba.i$3$1: int;

var $$rgba.i$3$2: int;

var $$20$0$1: int;

var $$20$0$2: int;

var $$20$1$1: int;

var $$20$1$2: int;

var $$20$2$1: int;

var $$20$2$2: int;

var $$20$3$1: int;

var $$20$3$2: int;

var $$yp$0$1: int;

var $$yp$0$2: int;

var $$yp$1$1: int;

var $$yp$1$2: int;

var $$yp$2$1: int;

var $$yp$2$2: int;

var $$yp$3$1: int;

var $$yp$3$2: int;

var $$xc$0$1: int;

var $$xc$0$2: int;

var $$xc$1$1: int;

var $$xc$1$2: int;

var $$xc$2$1: int;

var $$xc$2$2: int;

var $$xc$3$1: int;

var $$xc$3$2: int;

var $$yc$0$1: int;

var $$yc$0$2: int;

var $$yc$1$1: int;

var $$yc$1$2: int;

var $$yc$2$1: int;

var $$yc$2$2: int;

var $$yc$3$1: int;

var $$yc$3$2: int;

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

var $$23$0$1: int;

var $$23$0$2: int;

var $$23$1$1: int;

var $$23$1$2: int;

var $$23$2$1: int;

var $$23$2$2: int;

var $$23$3$1: int;

var $$23$3$2: int;

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

var $$26$0$1: int;

var $$26$0$2: int;

var $$26$1$1: int;

var $$26$1$2: int;

var $$26$2$1: int;

var $$26$2$2: int;

var $$26$3$1: int;

var $$26$3$2: int;

var $$27$0$1: int;

var $$27$0$2: int;

var $$27$1$1: int;

var $$27$1$2: int;

var $$27$2$1: int;

var $$27$2$2: int;

var $$27$3$1: int;

var $$27$3$2: int;

var $$xc2$0$1: int;

var $$xc2$0$2: int;

var $$xc2$1$1: int;

var $$xc2$1$2: int;

var $$xc2$2$1: int;

var $$xc2$2$2: int;

var $$xc2$3$1: int;

var $$xc2$3$2: int;

var $$yc3$0$1: int;

var $$yc3$0$2: int;

var $$yc3$1$1: int;

var $$yc3$1$2: int;

var $$yc3$2$1: int;

var $$yc3$2$2: int;

var $$yc3$3$1: int;

var $$yc3$3$2: int;

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

var $$36$0$1: int;

var $$36$0$2: int;

var $$36$1$1: int;

var $$36$1$2: int;

var $$36$2$1: int;

var $$36$2$2: int;

var $$36$3$1: int;

var $$36$3$2: int;







function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}





function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

































const _WATCHED_VALUE_$$id: int;

procedure {:inline 1} _LOG_READ_$$id(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_READ_$$id(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _READ_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_READ_$$id(_P: bool, _offset: int, _value: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$id);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$id: bool;

procedure {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$id, _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _WRITE_HAS_OCCURRED_$$id);
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



procedure _CHECK_WRITE_$$id(_P: bool, _offset: int, _value: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_ATOMIC_$$id(_P: bool, _offset: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



const _WATCHED_VALUE_$$od: int;

procedure {:inline 1} _LOG_READ_$$od(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_READ_$$od(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _READ_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_READ_$$od(_P: bool, _offset: int, _value: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$od);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$od: bool;

procedure {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _WRITE_HAS_OCCURRED_$$od);
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



procedure _CHECK_WRITE_$$od(_P: bool, _offset: int, _value: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_ATOMIC_$$od(_P: bool, _offset: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}












