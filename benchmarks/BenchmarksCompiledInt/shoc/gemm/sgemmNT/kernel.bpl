type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$A"} {:global} {:elem_width 32} {:source_name "A"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$B"} {:global} {:elem_width 32} {:source_name "B"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$B: bool;

var {:source_name "C"} {:global} $$C: [int]int;

axiom {:array_info "$$C"} {:global} {:elem_width 32} {:source_name "C"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$C: bool;

var {:source_name "a"} $$a$1: [int]int;

var {:source_name "a"} $$a$2: [int]int;

axiom {:array_info "$$a"} {:elem_width 32} {:source_name "a"} {:source_elem_width 32} {:source_dimensions "4"} true;

var {:source_name "c"} $$c$1: [int]int;

var {:source_name "c"} $$c$2: [int]int;

axiom {:array_info "$$c"} {:elem_width 32} {:source_name "c"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:source_name "as"} $$as$1: [int]int;

var {:source_name "as"} $$as$2: [int]int;

axiom {:array_info "$$as"} {:elem_width 32} {:source_name "as"} {:source_elem_width 32} {:source_dimensions "4"} true;

var {:source_name "bs"} {:group_shared} $$sgemmNT.bs: [bv1][int]int;

axiom {:array_info "$$sgemmNT.bs"} {:group_shared} {:elem_width 32} {:source_name "bs"} {:source_elem_width 32} {:source_dimensions "4,16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _READ_HAS_OCCURRED_$$sgemmNT.bs: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,16"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs: bool;

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

procedure {:source_name "sgemmNT"} {:kernel} $sgemmNT($lda: int, $ldb: int, $ldc: int, $k: int, $alpha: int, $beta: int);
  requires {:sourceloc_num 0} {:thread 1} (if $ldc == 256 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$B && !_WRITE_HAS_OCCURRED_$$B && !_ATOMIC_HAS_OCCURRED_$$B;
  requires !_READ_HAS_OCCURRED_$$C && !_WRITE_HAS_OCCURRED_$$C && !_ATOMIC_HAS_OCCURRED_$$C;
  requires !_READ_HAS_OCCURRED_$$sgemmNT.bs && !_WRITE_HAS_OCCURRED_$$sgemmNT.bs && !_ATOMIC_HAS_OCCURRED_$$sgemmNT.bs;
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
  modifies $$sgemmNT.bs, _WRITE_HAS_OCCURRED_$$sgemmNT.bs, _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs, _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs, $$C, _TRACKING, _READ_HAS_OCCURRED_$$sgemmNT.bs, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$C, _WRITE_HAS_OCCURRED_$$C, _WRITE_READ_BENIGN_FLAG_$$C, _WRITE_READ_BENIGN_FLAG_$$C;



implementation {:source_name "sgemmNT"} {:kernel} $sgemmNT($lda: int, $ldb: int, $ldc: int, $k: int, $alpha: int, $beta: int)
{
  var $i.0: int;
  var $i.1: int;
  var $.02$1: int;
  var $.02$2: int;
  var $.01$1: int;
  var $.01$2: int;
  var $counter.0: int;
  var $b.0$1: int;
  var $b.0$2: int;
  var $i.2: int;
  var $.0$1: int;
  var $.0$2: int;
  var $i1.0: int;
  var v12$1: int;
  var v12$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v23$1: int;
  var v23$2: int;
  var v11: bool;
  var v15$1: int;
  var v15$2: int;
  var v8$1: int;
  var v8$2: int;
  var v1$1: int;
  var v1$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v2$1: int;
  var v2$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v0$1: int;
  var v0$2: int;
  var v6$1: int;
  var v6$2: int;
  var v14$1: int;
  var v14$2: int;
  var v13$1: int;
  var v13$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v9$1: int;
  var v9$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
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
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
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
  var v404: bool;
  var v405$1: int;
  var v405$2: int;
  var v406$1: int;
  var v406$2: int;
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
  var v363$1: int;
  var v363$2: int;
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
  var v364$1: int;
  var v364$2: int;
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
  var v388$1: int;
  var v388$2: int;
  var v389$1: int;
  var v389$2: int;
  var v390$1: int;
  var v390$2: int;
  var v7: bool;
  var v3$1: int;
  var v3$2: int;
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
  var v210: int;
  var v211: bool;
  var v212$1: int;
  var v212$2: int;
  var v213$1: int;
  var v213$2: int;
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
  var v125$1: int;
  var v125$2: int;
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
  var v10: bool;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := local_id_y$1;
    v1$2 := local_id_y$2;
    v2$1 := BV32_MUL(group_id_x$1, 64);
    v2$2 := BV32_MUL(group_id_x$2, 64);
    v3$1 := BV32_MUL(group_id_y$1, 16);
    v3$2 := BV32_MUL(group_id_y$2, 16);
    v4$1 := BV32_ADD(v0$1, BV32_MUL(v1$1, 16));
    v4$2 := BV32_ADD(v0$2, BV32_MUL(v1$2, 16));
    v5$1 := BV32_ADD(v2$1, v4$1);
    v5$2 := BV32_ADD(v2$2, v4$2);
    v6$1 := BV32_ADD(BV32_ADD(v3$1, v0$1), BV32_MUL(v1$1, $ldb));
    v6$2 := BV32_ADD(BV32_ADD(v3$2, v0$2), BV32_MUL(v1$2, $ldb));
    $i.0 := 0;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v7 := BV32_SLT($i.0, 4);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v7;
    havoc v9$1, v9$2;
    $i.1 := 0;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 9} true;
    v10 := BV32_SLT($i.1, 16);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v10;
    $.02$1, $.01$1, $counter.0, $b.0$1 := BV32_ADD(v6$1, BV32_MUL(4, $ldb)), BV32_ADD(v5$1, BV32_MUL(4, $lda)), BV32_MUL(4, $ldb), v9$1;
    $.02$2, $.01$2, $b.0$2 := BV32_ADD(v6$2, BV32_MUL(4, $ldb)), BV32_ADD(v5$2, BV32_MUL(4, $lda)), v9$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b16 ==> _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b15 ==> _READ_HAS_OCCURRED_$$sgemmNT.bs ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET == 1 || _WATCHED_OFFSET == 2 || _WATCHED_OFFSET == 3 || _WATCHED_OFFSET == 4 || _WATCHED_OFFSET == 5 || _WATCHED_OFFSET == 6 || _WATCHED_OFFSET == 7 || _WATCHED_OFFSET == 8 || _WATCHED_OFFSET == 9 || _WATCHED_OFFSET == 10 || _WATCHED_OFFSET == 11 || _WATCHED_OFFSET == 12 || _WATCHED_OFFSET == 13 || _WATCHED_OFFSET == 14 || _WATCHED_OFFSET == 15 || _WATCHED_OFFSET == 16 || _WATCHED_OFFSET == 17 || _WATCHED_OFFSET == 18 || _WATCHED_OFFSET == 19 || _WATCHED_OFFSET == 20 || _WATCHED_OFFSET == 21 || _WATCHED_OFFSET == 22 || _WATCHED_OFFSET == 23 || _WATCHED_OFFSET == 24 || _WATCHED_OFFSET == 25 || _WATCHED_OFFSET == 26 || _WATCHED_OFFSET == 27 || _WATCHED_OFFSET == 28 || _WATCHED_OFFSET == 29 || _WATCHED_OFFSET == 30 || _WATCHED_OFFSET == 31 || _WATCHED_OFFSET == 32 || _WATCHED_OFFSET == 33 || _WATCHED_OFFSET == 34 || _WATCHED_OFFSET == 35 || _WATCHED_OFFSET == 36 || _WATCHED_OFFSET == 37 || _WATCHED_OFFSET == 38 || _WATCHED_OFFSET == 39 || _WATCHED_OFFSET == 40 || _WATCHED_OFFSET == 41 || _WATCHED_OFFSET == 42 || _WATCHED_OFFSET == 43 || _WATCHED_OFFSET == 44 || _WATCHED_OFFSET == 45 || _WATCHED_OFFSET == 46 || _WATCHED_OFFSET == 47 || _WATCHED_OFFSET == 48 || _WATCHED_OFFSET == 49 || _WATCHED_OFFSET == 50 || _WATCHED_OFFSET == 51 || _WATCHED_OFFSET == 52 || _WATCHED_OFFSET == 53 || _WATCHED_OFFSET == 54 || _WATCHED_OFFSET == 55 || _WATCHED_OFFSET == 56 || _WATCHED_OFFSET == 57 || _WATCHED_OFFSET == 58 || _WATCHED_OFFSET == 59 || _WATCHED_OFFSET == 60 || _WATCHED_OFFSET == 61 || _WATCHED_OFFSET == 62 || _WATCHED_OFFSET == 63;
    assert {:tag "nowrite"} _b14 ==> !_WRITE_HAS_OCCURRED_$$sgemmNT.bs;
    assert {:tag "noread"} _b13 ==> !_READ_HAS_OCCURRED_$$sgemmNT.bs;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_UGE($counter.0, BV32_MUL(4, $ldb));
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_ULE($counter.0, BV32_MUL(4, $ldb));
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_SGE($counter.0, BV32_MUL(4, $ldb));
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_SLE($counter.0, BV32_MUL(4, $ldb));
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b2 ==> $counter.0 mod BV32_MUL(4, $ldb) == BV32_MUL(4, $ldb) mod BV32_MUL(4, $ldb);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b1 ==> $.01$1 mod BV32_MUL(4, $lda) == BV32_ADD(v5$1, BV32_MUL(4, $lda)) mod BV32_MUL(4, $lda);
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b1 ==> $.01$2 mod BV32_MUL(4, $lda) == BV32_ADD(v5$2, BV32_MUL(4, $lda)) mod BV32_MUL(4, $lda);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $.02$1 mod BV32_MUL(4, $ldb) == BV32_ADD(v6$1, BV32_MUL(4, $ldb)) mod BV32_MUL(4, $ldb);
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b0 ==> $.02$2 mod BV32_MUL(4, $ldb) == BV32_ADD(v6$2, BV32_MUL(4, $ldb)) mod BV32_MUL(4, $ldb);
    assert {:block_sourceloc} {:sourceloc_num 14} true;
    $i.2 := 0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 15} true;
    v11 := BV32_SLT($i.2, 4);
    goto $truebb1, __partitioned_block_$falsebb1_0;

  __partitioned_block_$falsebb1_0:
    assume {:partition} !v11;
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$1, 16), v0$1), $b.0$1, $$sgemmNT.bs[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$2, 16), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$2, 16), v0$2), $b.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sgemmNT.bs"} true;
    $$sgemmNT.bs[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v0$1)] := $b.0$1;
    $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v1$2, 16), v0$2)] := $b.0$2;
    goto __partitioned_block_$falsebb1_1;

  __partitioned_block_$falsebb1_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_0(-1, 0);
    havoc v13$1, v13$2;
    $$a$1[0] := v13$1;
    $$a$2[0] := v13$2;
    havoc v14$1, v14$2;
    $$a$1[1] := v14$1;
    $$a$2[1] := v14$2;
    havoc v15$1, v15$2;
    $$a$1[2] := v15$1;
    $$a$2[2] := v15$2;
    havoc v16$1, v16$2;
    $$a$1[3] := v16$1;
    $$a$2[3] := v16$2;
    havoc v17$1, v17$2;
    v18$1 := $$as$1[0];
    v18$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$sgemmNT.bs(true, 0, $$sgemmNT.bs[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$sgemmNT.bs(true, 0, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v19$1 := $$sgemmNT.bs[1bv1][0];
    v19$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v20$1 := $$c$1[0];
    v20$2 := $$c$2[0];
    $$c$1[0] := FADD32(v20$1, FMUL32(v18$1, v19$1));
    $$c$2[0] := FADD32(v20$2, FMUL32(v18$2, v19$2));
    v21$1 := $$as$1[0];
    v21$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$sgemmNT.bs(true, 1, $$sgemmNT.bs[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$sgemmNT.bs(true, 1, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v22$1 := $$sgemmNT.bs[1bv1][1];
    v22$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1];
    v23$1 := $$c$1[1];
    v23$2 := $$c$2[1];
    $$c$1[1] := FADD32(v23$1, FMUL32(v21$1, v22$1));
    $$c$2[1] := FADD32(v23$2, FMUL32(v21$2, v22$2));
    v24$1 := $$as$1[0];
    v24$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$sgemmNT.bs(true, 2, $$sgemmNT.bs[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$sgemmNT.bs(true, 2, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v25$1 := $$sgemmNT.bs[1bv1][2];
    v25$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2];
    v26$1 := $$c$1[2];
    v26$2 := $$c$2[2];
    $$c$1[2] := FADD32(v26$1, FMUL32(v24$1, v25$1));
    $$c$2[2] := FADD32(v26$2, FMUL32(v24$2, v25$2));
    v27$1 := $$as$1[0];
    v27$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$sgemmNT.bs(true, 3, $$sgemmNT.bs[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$sgemmNT.bs(true, 3, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v28$1 := $$sgemmNT.bs[1bv1][3];
    v28$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3];
    v29$1 := $$c$1[3];
    v29$2 := $$c$2[3];
    $$c$1[3] := FADD32(v29$1, FMUL32(v27$1, v28$1));
    $$c$2[3] := FADD32(v29$2, FMUL32(v27$2, v28$2));
    v30$1 := $$as$1[0];
    v30$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$sgemmNT.bs(true, 4, $$sgemmNT.bs[1bv1][4]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$sgemmNT.bs(true, 4, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][4]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v31$1 := $$sgemmNT.bs[1bv1][4];
    v31$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][4];
    v32$1 := $$c$1[4];
    v32$2 := $$c$2[4];
    $$c$1[4] := FADD32(v32$1, FMUL32(v30$1, v31$1));
    $$c$2[4] := FADD32(v32$2, FMUL32(v30$2, v31$2));
    v33$1 := $$as$1[0];
    v33$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$sgemmNT.bs(true, 5, $$sgemmNT.bs[1bv1][5]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$sgemmNT.bs(true, 5, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][5]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v34$1 := $$sgemmNT.bs[1bv1][5];
    v34$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][5];
    v35$1 := $$c$1[5];
    v35$2 := $$c$2[5];
    $$c$1[5] := FADD32(v35$1, FMUL32(v33$1, v34$1));
    $$c$2[5] := FADD32(v35$2, FMUL32(v33$2, v34$2));
    v36$1 := $$as$1[0];
    v36$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$sgemmNT.bs(true, 6, $$sgemmNT.bs[1bv1][6]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$sgemmNT.bs(true, 6, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][6]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v37$1 := $$sgemmNT.bs[1bv1][6];
    v37$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][6];
    v38$1 := $$c$1[6];
    v38$2 := $$c$2[6];
    $$c$1[6] := FADD32(v38$1, FMUL32(v36$1, v37$1));
    $$c$2[6] := FADD32(v38$2, FMUL32(v36$2, v37$2));
    v39$1 := $$as$1[0];
    v39$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$sgemmNT.bs(true, 7, $$sgemmNT.bs[1bv1][7]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$sgemmNT.bs(true, 7, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][7]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v40$1 := $$sgemmNT.bs[1bv1][7];
    v40$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][7];
    v41$1 := $$c$1[7];
    v41$2 := $$c$2[7];
    $$c$1[7] := FADD32(v41$1, FMUL32(v39$1, v40$1));
    $$c$2[7] := FADD32(v41$2, FMUL32(v39$2, v40$2));
    v42$1 := $$as$1[0];
    v42$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$sgemmNT.bs(true, 8, $$sgemmNT.bs[1bv1][8]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$sgemmNT.bs(true, 8, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v43$1 := $$sgemmNT.bs[1bv1][8];
    v43$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][8];
    v44$1 := $$c$1[8];
    v44$2 := $$c$2[8];
    $$c$1[8] := FADD32(v44$1, FMUL32(v42$1, v43$1));
    $$c$2[8] := FADD32(v44$2, FMUL32(v42$2, v43$2));
    v45$1 := $$as$1[0];
    v45$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$sgemmNT.bs(true, 9, $$sgemmNT.bs[1bv1][9]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$sgemmNT.bs(true, 9, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][9]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v46$1 := $$sgemmNT.bs[1bv1][9];
    v46$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][9];
    v47$1 := $$c$1[9];
    v47$2 := $$c$2[9];
    $$c$1[9] := FADD32(v47$1, FMUL32(v45$1, v46$1));
    $$c$2[9] := FADD32(v47$2, FMUL32(v45$2, v46$2));
    v48$1 := $$as$1[0];
    v48$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 74} _LOG_READ_$$sgemmNT.bs(true, 10, $$sgemmNT.bs[1bv1][10]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 74} _CHECK_READ_$$sgemmNT.bs(true, 10, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][10]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v49$1 := $$sgemmNT.bs[1bv1][10];
    v49$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][10];
    v50$1 := $$c$1[10];
    v50$2 := $$c$2[10];
    $$c$1[10] := FADD32(v50$1, FMUL32(v48$1, v49$1));
    $$c$2[10] := FADD32(v50$2, FMUL32(v48$2, v49$2));
    v51$1 := $$as$1[0];
    v51$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$sgemmNT.bs(true, 11, $$sgemmNT.bs[1bv1][11]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$sgemmNT.bs(true, 11, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][11]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v52$1 := $$sgemmNT.bs[1bv1][11];
    v52$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][11];
    v53$1 := $$c$1[11];
    v53$2 := $$c$2[11];
    $$c$1[11] := FADD32(v53$1, FMUL32(v51$1, v52$1));
    $$c$2[11] := FADD32(v53$2, FMUL32(v51$2, v52$2));
    v54$1 := $$as$1[0];
    v54$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 82} _LOG_READ_$$sgemmNT.bs(true, 12, $$sgemmNT.bs[1bv1][12]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 82} _CHECK_READ_$$sgemmNT.bs(true, 12, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][12]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v55$1 := $$sgemmNT.bs[1bv1][12];
    v55$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][12];
    v56$1 := $$c$1[12];
    v56$2 := $$c$2[12];
    $$c$1[12] := FADD32(v56$1, FMUL32(v54$1, v55$1));
    $$c$2[12] := FADD32(v56$2, FMUL32(v54$2, v55$2));
    v57$1 := $$as$1[0];
    v57$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 86} _LOG_READ_$$sgemmNT.bs(true, 13, $$sgemmNT.bs[1bv1][13]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 86} _CHECK_READ_$$sgemmNT.bs(true, 13, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][13]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v58$1 := $$sgemmNT.bs[1bv1][13];
    v58$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][13];
    v59$1 := $$c$1[13];
    v59$2 := $$c$2[13];
    $$c$1[13] := FADD32(v59$1, FMUL32(v57$1, v58$1));
    $$c$2[13] := FADD32(v59$2, FMUL32(v57$2, v58$2));
    v60$1 := $$as$1[0];
    v60$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 90} _LOG_READ_$$sgemmNT.bs(true, 14, $$sgemmNT.bs[1bv1][14]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 90} _CHECK_READ_$$sgemmNT.bs(true, 14, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][14]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v61$1 := $$sgemmNT.bs[1bv1][14];
    v61$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][14];
    v62$1 := $$c$1[14];
    v62$2 := $$c$2[14];
    $$c$1[14] := FADD32(v62$1, FMUL32(v60$1, v61$1));
    $$c$2[14] := FADD32(v62$2, FMUL32(v60$2, v61$2));
    v63$1 := $$as$1[0];
    v63$2 := $$as$2[0];
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$sgemmNT.bs(true, 15, $$sgemmNT.bs[1bv1][15]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$sgemmNT.bs(true, 15, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][15]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v64$1 := $$sgemmNT.bs[1bv1][15];
    v64$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][15];
    v65$1 := $$c$1[15];
    v65$2 := $$c$2[15];
    $$c$1[15] := FADD32(v65$1, FMUL32(v63$1, v64$1));
    $$c$2[15] := FADD32(v65$2, FMUL32(v63$2, v64$2));
    v66$1 := $$as$1[1];
    v66$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$sgemmNT.bs(true, 16, $$sgemmNT.bs[1bv1][16]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$sgemmNT.bs(true, 16, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v67$1 := $$sgemmNT.bs[1bv1][16];
    v67$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][16];
    v68$1 := $$c$1[0];
    v68$2 := $$c$2[0];
    $$c$1[0] := FADD32(v68$1, FMUL32(v66$1, v67$1));
    $$c$2[0] := FADD32(v68$2, FMUL32(v66$2, v67$2));
    v69$1 := $$as$1[1];
    v69$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 104} _LOG_READ_$$sgemmNT.bs(true, 17, $$sgemmNT.bs[1bv1][17]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 104} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 104} _CHECK_READ_$$sgemmNT.bs(true, 17, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][17]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v70$1 := $$sgemmNT.bs[1bv1][17];
    v70$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][17];
    v71$1 := $$c$1[1];
    v71$2 := $$c$2[1];
    $$c$1[1] := FADD32(v71$1, FMUL32(v69$1, v70$1));
    $$c$2[1] := FADD32(v71$2, FMUL32(v69$2, v70$2));
    v72$1 := $$as$1[1];
    v72$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 108} _LOG_READ_$$sgemmNT.bs(true, 18, $$sgemmNT.bs[1bv1][18]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 108} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 108} _CHECK_READ_$$sgemmNT.bs(true, 18, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][18]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v73$1 := $$sgemmNT.bs[1bv1][18];
    v73$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][18];
    v74$1 := $$c$1[2];
    v74$2 := $$c$2[2];
    $$c$1[2] := FADD32(v74$1, FMUL32(v72$1, v73$1));
    $$c$2[2] := FADD32(v74$2, FMUL32(v72$2, v73$2));
    v75$1 := $$as$1[1];
    v75$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 112} _LOG_READ_$$sgemmNT.bs(true, 19, $$sgemmNT.bs[1bv1][19]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 112} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 112} _CHECK_READ_$$sgemmNT.bs(true, 19, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][19]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v76$1 := $$sgemmNT.bs[1bv1][19];
    v76$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][19];
    v77$1 := $$c$1[3];
    v77$2 := $$c$2[3];
    $$c$1[3] := FADD32(v77$1, FMUL32(v75$1, v76$1));
    $$c$2[3] := FADD32(v77$2, FMUL32(v75$2, v76$2));
    v78$1 := $$as$1[1];
    v78$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 116} _LOG_READ_$$sgemmNT.bs(true, 20, $$sgemmNT.bs[1bv1][20]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 116} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 116} _CHECK_READ_$$sgemmNT.bs(true, 20, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][20]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v79$1 := $$sgemmNT.bs[1bv1][20];
    v79$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][20];
    v80$1 := $$c$1[4];
    v80$2 := $$c$2[4];
    $$c$1[4] := FADD32(v80$1, FMUL32(v78$1, v79$1));
    $$c$2[4] := FADD32(v80$2, FMUL32(v78$2, v79$2));
    v81$1 := $$as$1[1];
    v81$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 120} _LOG_READ_$$sgemmNT.bs(true, 21, $$sgemmNT.bs[1bv1][21]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 120} _CHECK_READ_$$sgemmNT.bs(true, 21, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][21]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v82$1 := $$sgemmNT.bs[1bv1][21];
    v82$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][21];
    v83$1 := $$c$1[5];
    v83$2 := $$c$2[5];
    $$c$1[5] := FADD32(v83$1, FMUL32(v81$1, v82$1));
    $$c$2[5] := FADD32(v83$2, FMUL32(v81$2, v82$2));
    v84$1 := $$as$1[1];
    v84$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 124} _LOG_READ_$$sgemmNT.bs(true, 22, $$sgemmNT.bs[1bv1][22]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 124} _CHECK_READ_$$sgemmNT.bs(true, 22, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][22]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v85$1 := $$sgemmNT.bs[1bv1][22];
    v85$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][22];
    v86$1 := $$c$1[6];
    v86$2 := $$c$2[6];
    $$c$1[6] := FADD32(v86$1, FMUL32(v84$1, v85$1));
    $$c$2[6] := FADD32(v86$2, FMUL32(v84$2, v85$2));
    v87$1 := $$as$1[1];
    v87$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 128} _LOG_READ_$$sgemmNT.bs(true, 23, $$sgemmNT.bs[1bv1][23]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 128} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 128} _CHECK_READ_$$sgemmNT.bs(true, 23, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][23]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v88$1 := $$sgemmNT.bs[1bv1][23];
    v88$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][23];
    v89$1 := $$c$1[7];
    v89$2 := $$c$2[7];
    $$c$1[7] := FADD32(v89$1, FMUL32(v87$1, v88$1));
    $$c$2[7] := FADD32(v89$2, FMUL32(v87$2, v88$2));
    v90$1 := $$as$1[1];
    v90$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 132} _LOG_READ_$$sgemmNT.bs(true, 24, $$sgemmNT.bs[1bv1][24]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 132} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 132} _CHECK_READ_$$sgemmNT.bs(true, 24, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v91$1 := $$sgemmNT.bs[1bv1][24];
    v91$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][24];
    v92$1 := $$c$1[8];
    v92$2 := $$c$2[8];
    $$c$1[8] := FADD32(v92$1, FMUL32(v90$1, v91$1));
    $$c$2[8] := FADD32(v92$2, FMUL32(v90$2, v91$2));
    v93$1 := $$as$1[1];
    v93$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 136} _LOG_READ_$$sgemmNT.bs(true, 25, $$sgemmNT.bs[1bv1][25]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 136} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 136} _CHECK_READ_$$sgemmNT.bs(true, 25, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][25]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v94$1 := $$sgemmNT.bs[1bv1][25];
    v94$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][25];
    v95$1 := $$c$1[9];
    v95$2 := $$c$2[9];
    $$c$1[9] := FADD32(v95$1, FMUL32(v93$1, v94$1));
    $$c$2[9] := FADD32(v95$2, FMUL32(v93$2, v94$2));
    v96$1 := $$as$1[1];
    v96$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 140} _LOG_READ_$$sgemmNT.bs(true, 26, $$sgemmNT.bs[1bv1][26]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 140} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 140} _CHECK_READ_$$sgemmNT.bs(true, 26, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][26]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v97$1 := $$sgemmNT.bs[1bv1][26];
    v97$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][26];
    v98$1 := $$c$1[10];
    v98$2 := $$c$2[10];
    $$c$1[10] := FADD32(v98$1, FMUL32(v96$1, v97$1));
    $$c$2[10] := FADD32(v98$2, FMUL32(v96$2, v97$2));
    v99$1 := $$as$1[1];
    v99$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 144} _LOG_READ_$$sgemmNT.bs(true, 27, $$sgemmNT.bs[1bv1][27]);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 144} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 144} _CHECK_READ_$$sgemmNT.bs(true, 27, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][27]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v100$1 := $$sgemmNT.bs[1bv1][27];
    v100$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][27];
    v101$1 := $$c$1[11];
    v101$2 := $$c$2[11];
    $$c$1[11] := FADD32(v101$1, FMUL32(v99$1, v100$1));
    $$c$2[11] := FADD32(v101$2, FMUL32(v99$2, v100$2));
    v102$1 := $$as$1[1];
    v102$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 148} _LOG_READ_$$sgemmNT.bs(true, 28, $$sgemmNT.bs[1bv1][28]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 148} _CHECK_READ_$$sgemmNT.bs(true, 28, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][28]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v103$1 := $$sgemmNT.bs[1bv1][28];
    v103$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][28];
    v104$1 := $$c$1[12];
    v104$2 := $$c$2[12];
    $$c$1[12] := FADD32(v104$1, FMUL32(v102$1, v103$1));
    $$c$2[12] := FADD32(v104$2, FMUL32(v102$2, v103$2));
    v105$1 := $$as$1[1];
    v105$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 152} _LOG_READ_$$sgemmNT.bs(true, 29, $$sgemmNT.bs[1bv1][29]);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 152} _CHECK_READ_$$sgemmNT.bs(true, 29, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][29]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v106$1 := $$sgemmNT.bs[1bv1][29];
    v106$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][29];
    v107$1 := $$c$1[13];
    v107$2 := $$c$2[13];
    $$c$1[13] := FADD32(v107$1, FMUL32(v105$1, v106$1));
    $$c$2[13] := FADD32(v107$2, FMUL32(v105$2, v106$2));
    v108$1 := $$as$1[1];
    v108$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 156} _LOG_READ_$$sgemmNT.bs(true, 30, $$sgemmNT.bs[1bv1][30]);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 156} _CHECK_READ_$$sgemmNT.bs(true, 30, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][30]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v109$1 := $$sgemmNT.bs[1bv1][30];
    v109$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][30];
    v110$1 := $$c$1[14];
    v110$2 := $$c$2[14];
    $$c$1[14] := FADD32(v110$1, FMUL32(v108$1, v109$1));
    $$c$2[14] := FADD32(v110$2, FMUL32(v108$2, v109$2));
    v111$1 := $$as$1[1];
    v111$2 := $$as$2[1];
    call {:sourceloc} {:sourceloc_num 160} _LOG_READ_$$sgemmNT.bs(true, 31, $$sgemmNT.bs[1bv1][31]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 160} _CHECK_READ_$$sgemmNT.bs(true, 31, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][31]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v112$1 := $$sgemmNT.bs[1bv1][31];
    v112$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][31];
    v113$1 := $$c$1[15];
    v113$2 := $$c$2[15];
    $$c$1[15] := FADD32(v113$1, FMUL32(v111$1, v112$1));
    $$c$2[15] := FADD32(v113$2, FMUL32(v111$2, v112$2));
    v114$1 := $$as$1[2];
    v114$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 166} _LOG_READ_$$sgemmNT.bs(true, 32, $$sgemmNT.bs[1bv1][32]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 166} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 166} _CHECK_READ_$$sgemmNT.bs(true, 32, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v115$1 := $$sgemmNT.bs[1bv1][32];
    v115$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][32];
    v116$1 := $$c$1[0];
    v116$2 := $$c$2[0];
    $$c$1[0] := FADD32(v116$1, FMUL32(v114$1, v115$1));
    $$c$2[0] := FADD32(v116$2, FMUL32(v114$2, v115$2));
    v117$1 := $$as$1[2];
    v117$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 170} _LOG_READ_$$sgemmNT.bs(true, 33, $$sgemmNT.bs[1bv1][33]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 170} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 170} _CHECK_READ_$$sgemmNT.bs(true, 33, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][33]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v118$1 := $$sgemmNT.bs[1bv1][33];
    v118$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][33];
    v119$1 := $$c$1[1];
    v119$2 := $$c$2[1];
    $$c$1[1] := FADD32(v119$1, FMUL32(v117$1, v118$1));
    $$c$2[1] := FADD32(v119$2, FMUL32(v117$2, v118$2));
    v120$1 := $$as$1[2];
    v120$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 174} _LOG_READ_$$sgemmNT.bs(true, 34, $$sgemmNT.bs[1bv1][34]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 174} _CHECK_READ_$$sgemmNT.bs(true, 34, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][34]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v121$1 := $$sgemmNT.bs[1bv1][34];
    v121$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][34];
    v122$1 := $$c$1[2];
    v122$2 := $$c$2[2];
    $$c$1[2] := FADD32(v122$1, FMUL32(v120$1, v121$1));
    $$c$2[2] := FADD32(v122$2, FMUL32(v120$2, v121$2));
    v123$1 := $$as$1[2];
    v123$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 178} _LOG_READ_$$sgemmNT.bs(true, 35, $$sgemmNT.bs[1bv1][35]);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 178} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 178} _CHECK_READ_$$sgemmNT.bs(true, 35, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][35]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v124$1 := $$sgemmNT.bs[1bv1][35];
    v124$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][35];
    v125$1 := $$c$1[3];
    v125$2 := $$c$2[3];
    $$c$1[3] := FADD32(v125$1, FMUL32(v123$1, v124$1));
    $$c$2[3] := FADD32(v125$2, FMUL32(v123$2, v124$2));
    v126$1 := $$as$1[2];
    v126$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 182} _LOG_READ_$$sgemmNT.bs(true, 36, $$sgemmNT.bs[1bv1][36]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 182} _CHECK_READ_$$sgemmNT.bs(true, 36, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][36]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v127$1 := $$sgemmNT.bs[1bv1][36];
    v127$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][36];
    v128$1 := $$c$1[4];
    v128$2 := $$c$2[4];
    $$c$1[4] := FADD32(v128$1, FMUL32(v126$1, v127$1));
    $$c$2[4] := FADD32(v128$2, FMUL32(v126$2, v127$2));
    v129$1 := $$as$1[2];
    v129$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 186} _LOG_READ_$$sgemmNT.bs(true, 37, $$sgemmNT.bs[1bv1][37]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 186} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 186} _CHECK_READ_$$sgemmNT.bs(true, 37, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][37]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v130$1 := $$sgemmNT.bs[1bv1][37];
    v130$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][37];
    v131$1 := $$c$1[5];
    v131$2 := $$c$2[5];
    $$c$1[5] := FADD32(v131$1, FMUL32(v129$1, v130$1));
    $$c$2[5] := FADD32(v131$2, FMUL32(v129$2, v130$2));
    v132$1 := $$as$1[2];
    v132$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 190} _LOG_READ_$$sgemmNT.bs(true, 38, $$sgemmNT.bs[1bv1][38]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 190} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 190} _CHECK_READ_$$sgemmNT.bs(true, 38, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][38]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v133$1 := $$sgemmNT.bs[1bv1][38];
    v133$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][38];
    v134$1 := $$c$1[6];
    v134$2 := $$c$2[6];
    $$c$1[6] := FADD32(v134$1, FMUL32(v132$1, v133$1));
    $$c$2[6] := FADD32(v134$2, FMUL32(v132$2, v133$2));
    v135$1 := $$as$1[2];
    v135$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 194} _LOG_READ_$$sgemmNT.bs(true, 39, $$sgemmNT.bs[1bv1][39]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 194} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 194} _CHECK_READ_$$sgemmNT.bs(true, 39, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][39]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v136$1 := $$sgemmNT.bs[1bv1][39];
    v136$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][39];
    v137$1 := $$c$1[7];
    v137$2 := $$c$2[7];
    $$c$1[7] := FADD32(v137$1, FMUL32(v135$1, v136$1));
    $$c$2[7] := FADD32(v137$2, FMUL32(v135$2, v136$2));
    v138$1 := $$as$1[2];
    v138$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 198} _LOG_READ_$$sgemmNT.bs(true, 40, $$sgemmNT.bs[1bv1][40]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 198} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 198} _CHECK_READ_$$sgemmNT.bs(true, 40, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][40]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v139$1 := $$sgemmNT.bs[1bv1][40];
    v139$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][40];
    v140$1 := $$c$1[8];
    v140$2 := $$c$2[8];
    $$c$1[8] := FADD32(v140$1, FMUL32(v138$1, v139$1));
    $$c$2[8] := FADD32(v140$2, FMUL32(v138$2, v139$2));
    v141$1 := $$as$1[2];
    v141$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 202} _LOG_READ_$$sgemmNT.bs(true, 41, $$sgemmNT.bs[1bv1][41]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 202} _CHECK_READ_$$sgemmNT.bs(true, 41, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][41]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v142$1 := $$sgemmNT.bs[1bv1][41];
    v142$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][41];
    v143$1 := $$c$1[9];
    v143$2 := $$c$2[9];
    $$c$1[9] := FADD32(v143$1, FMUL32(v141$1, v142$1));
    $$c$2[9] := FADD32(v143$2, FMUL32(v141$2, v142$2));
    v144$1 := $$as$1[2];
    v144$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 206} _LOG_READ_$$sgemmNT.bs(true, 42, $$sgemmNT.bs[1bv1][42]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 206} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 206} _CHECK_READ_$$sgemmNT.bs(true, 42, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][42]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v145$1 := $$sgemmNT.bs[1bv1][42];
    v145$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][42];
    v146$1 := $$c$1[10];
    v146$2 := $$c$2[10];
    $$c$1[10] := FADD32(v146$1, FMUL32(v144$1, v145$1));
    $$c$2[10] := FADD32(v146$2, FMUL32(v144$2, v145$2));
    v147$1 := $$as$1[2];
    v147$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 210} _LOG_READ_$$sgemmNT.bs(true, 43, $$sgemmNT.bs[1bv1][43]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 210} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 210} _CHECK_READ_$$sgemmNT.bs(true, 43, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][43]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v148$1 := $$sgemmNT.bs[1bv1][43];
    v148$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][43];
    v149$1 := $$c$1[11];
    v149$2 := $$c$2[11];
    $$c$1[11] := FADD32(v149$1, FMUL32(v147$1, v148$1));
    $$c$2[11] := FADD32(v149$2, FMUL32(v147$2, v148$2));
    v150$1 := $$as$1[2];
    v150$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 214} _LOG_READ_$$sgemmNT.bs(true, 44, $$sgemmNT.bs[1bv1][44]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 214} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 214} _CHECK_READ_$$sgemmNT.bs(true, 44, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][44]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v151$1 := $$sgemmNT.bs[1bv1][44];
    v151$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][44];
    v152$1 := $$c$1[12];
    v152$2 := $$c$2[12];
    $$c$1[12] := FADD32(v152$1, FMUL32(v150$1, v151$1));
    $$c$2[12] := FADD32(v152$2, FMUL32(v150$2, v151$2));
    v153$1 := $$as$1[2];
    v153$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 218} _LOG_READ_$$sgemmNT.bs(true, 45, $$sgemmNT.bs[1bv1][45]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 218} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 218} _CHECK_READ_$$sgemmNT.bs(true, 45, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][45]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v154$1 := $$sgemmNT.bs[1bv1][45];
    v154$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][45];
    v155$1 := $$c$1[13];
    v155$2 := $$c$2[13];
    $$c$1[13] := FADD32(v155$1, FMUL32(v153$1, v154$1));
    $$c$2[13] := FADD32(v155$2, FMUL32(v153$2, v154$2));
    v156$1 := $$as$1[2];
    v156$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 222} _LOG_READ_$$sgemmNT.bs(true, 46, $$sgemmNT.bs[1bv1][46]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 222} _CHECK_READ_$$sgemmNT.bs(true, 46, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][46]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v157$1 := $$sgemmNT.bs[1bv1][46];
    v157$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][46];
    v158$1 := $$c$1[14];
    v158$2 := $$c$2[14];
    $$c$1[14] := FADD32(v158$1, FMUL32(v156$1, v157$1));
    $$c$2[14] := FADD32(v158$2, FMUL32(v156$2, v157$2));
    v159$1 := $$as$1[2];
    v159$2 := $$as$2[2];
    call {:sourceloc} {:sourceloc_num 226} _LOG_READ_$$sgemmNT.bs(true, 47, $$sgemmNT.bs[1bv1][47]);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 226} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 226} _CHECK_READ_$$sgemmNT.bs(true, 47, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][47]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v160$1 := $$sgemmNT.bs[1bv1][47];
    v160$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][47];
    v161$1 := $$c$1[15];
    v161$2 := $$c$2[15];
    $$c$1[15] := FADD32(v161$1, FMUL32(v159$1, v160$1));
    $$c$2[15] := FADD32(v161$2, FMUL32(v159$2, v160$2));
    v162$1 := $$as$1[3];
    v162$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 232} _LOG_READ_$$sgemmNT.bs(true, 48, $$sgemmNT.bs[1bv1][48]);
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 232} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 232} _CHECK_READ_$$sgemmNT.bs(true, 48, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][48]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v163$1 := $$sgemmNT.bs[1bv1][48];
    v163$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][48];
    v164$1 := $$c$1[0];
    v164$2 := $$c$2[0];
    $$c$1[0] := FADD32(v164$1, FMUL32(v162$1, v163$1));
    $$c$2[0] := FADD32(v164$2, FMUL32(v162$2, v163$2));
    v165$1 := $$as$1[3];
    v165$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 236} _LOG_READ_$$sgemmNT.bs(true, 49, $$sgemmNT.bs[1bv1][49]);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 236} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 236} _CHECK_READ_$$sgemmNT.bs(true, 49, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][49]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v166$1 := $$sgemmNT.bs[1bv1][49];
    v166$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][49];
    v167$1 := $$c$1[1];
    v167$2 := $$c$2[1];
    $$c$1[1] := FADD32(v167$1, FMUL32(v165$1, v166$1));
    $$c$2[1] := FADD32(v167$2, FMUL32(v165$2, v166$2));
    v168$1 := $$as$1[3];
    v168$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 240} _LOG_READ_$$sgemmNT.bs(true, 50, $$sgemmNT.bs[1bv1][50]);
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 240} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 240} _CHECK_READ_$$sgemmNT.bs(true, 50, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][50]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v169$1 := $$sgemmNT.bs[1bv1][50];
    v169$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][50];
    v170$1 := $$c$1[2];
    v170$2 := $$c$2[2];
    $$c$1[2] := FADD32(v170$1, FMUL32(v168$1, v169$1));
    $$c$2[2] := FADD32(v170$2, FMUL32(v168$2, v169$2));
    v171$1 := $$as$1[3];
    v171$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 244} _LOG_READ_$$sgemmNT.bs(true, 51, $$sgemmNT.bs[1bv1][51]);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 244} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 244} _CHECK_READ_$$sgemmNT.bs(true, 51, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][51]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v172$1 := $$sgemmNT.bs[1bv1][51];
    v172$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][51];
    v173$1 := $$c$1[3];
    v173$2 := $$c$2[3];
    $$c$1[3] := FADD32(v173$1, FMUL32(v171$1, v172$1));
    $$c$2[3] := FADD32(v173$2, FMUL32(v171$2, v172$2));
    v174$1 := $$as$1[3];
    v174$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 248} _LOG_READ_$$sgemmNT.bs(true, 52, $$sgemmNT.bs[1bv1][52]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 248} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 248} _CHECK_READ_$$sgemmNT.bs(true, 52, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][52]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v175$1 := $$sgemmNT.bs[1bv1][52];
    v175$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][52];
    v176$1 := $$c$1[4];
    v176$2 := $$c$2[4];
    $$c$1[4] := FADD32(v176$1, FMUL32(v174$1, v175$1));
    $$c$2[4] := FADD32(v176$2, FMUL32(v174$2, v175$2));
    v177$1 := $$as$1[3];
    v177$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 252} _LOG_READ_$$sgemmNT.bs(true, 53, $$sgemmNT.bs[1bv1][53]);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 252} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 252} _CHECK_READ_$$sgemmNT.bs(true, 53, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][53]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v178$1 := $$sgemmNT.bs[1bv1][53];
    v178$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][53];
    v179$1 := $$c$1[5];
    v179$2 := $$c$2[5];
    $$c$1[5] := FADD32(v179$1, FMUL32(v177$1, v178$1));
    $$c$2[5] := FADD32(v179$2, FMUL32(v177$2, v178$2));
    v180$1 := $$as$1[3];
    v180$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 256} _LOG_READ_$$sgemmNT.bs(true, 54, $$sgemmNT.bs[1bv1][54]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 256} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 256} _CHECK_READ_$$sgemmNT.bs(true, 54, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][54]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v181$1 := $$sgemmNT.bs[1bv1][54];
    v181$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][54];
    v182$1 := $$c$1[6];
    v182$2 := $$c$2[6];
    $$c$1[6] := FADD32(v182$1, FMUL32(v180$1, v181$1));
    $$c$2[6] := FADD32(v182$2, FMUL32(v180$2, v181$2));
    v183$1 := $$as$1[3];
    v183$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 260} _LOG_READ_$$sgemmNT.bs(true, 55, $$sgemmNT.bs[1bv1][55]);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 260} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 260} _CHECK_READ_$$sgemmNT.bs(true, 55, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][55]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v184$1 := $$sgemmNT.bs[1bv1][55];
    v184$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][55];
    v185$1 := $$c$1[7];
    v185$2 := $$c$2[7];
    $$c$1[7] := FADD32(v185$1, FMUL32(v183$1, v184$1));
    $$c$2[7] := FADD32(v185$2, FMUL32(v183$2, v184$2));
    v186$1 := $$as$1[3];
    v186$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 264} _LOG_READ_$$sgemmNT.bs(true, 56, $$sgemmNT.bs[1bv1][56]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 264} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 264} _CHECK_READ_$$sgemmNT.bs(true, 56, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][56]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v187$1 := $$sgemmNT.bs[1bv1][56];
    v187$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][56];
    v188$1 := $$c$1[8];
    v188$2 := $$c$2[8];
    $$c$1[8] := FADD32(v188$1, FMUL32(v186$1, v187$1));
    $$c$2[8] := FADD32(v188$2, FMUL32(v186$2, v187$2));
    v189$1 := $$as$1[3];
    v189$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 268} _LOG_READ_$$sgemmNT.bs(true, 57, $$sgemmNT.bs[1bv1][57]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 268} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 268} _CHECK_READ_$$sgemmNT.bs(true, 57, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][57]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v190$1 := $$sgemmNT.bs[1bv1][57];
    v190$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][57];
    v191$1 := $$c$1[9];
    v191$2 := $$c$2[9];
    $$c$1[9] := FADD32(v191$1, FMUL32(v189$1, v190$1));
    $$c$2[9] := FADD32(v191$2, FMUL32(v189$2, v190$2));
    v192$1 := $$as$1[3];
    v192$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 272} _LOG_READ_$$sgemmNT.bs(true, 58, $$sgemmNT.bs[1bv1][58]);
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 272} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 272} _CHECK_READ_$$sgemmNT.bs(true, 58, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][58]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v193$1 := $$sgemmNT.bs[1bv1][58];
    v193$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][58];
    v194$1 := $$c$1[10];
    v194$2 := $$c$2[10];
    $$c$1[10] := FADD32(v194$1, FMUL32(v192$1, v193$1));
    $$c$2[10] := FADD32(v194$2, FMUL32(v192$2, v193$2));
    v195$1 := $$as$1[3];
    v195$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 276} _LOG_READ_$$sgemmNT.bs(true, 59, $$sgemmNT.bs[1bv1][59]);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 276} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 276} _CHECK_READ_$$sgemmNT.bs(true, 59, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][59]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v196$1 := $$sgemmNT.bs[1bv1][59];
    v196$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][59];
    v197$1 := $$c$1[11];
    v197$2 := $$c$2[11];
    $$c$1[11] := FADD32(v197$1, FMUL32(v195$1, v196$1));
    $$c$2[11] := FADD32(v197$2, FMUL32(v195$2, v196$2));
    v198$1 := $$as$1[3];
    v198$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 280} _LOG_READ_$$sgemmNT.bs(true, 60, $$sgemmNT.bs[1bv1][60]);
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 280} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 280} _CHECK_READ_$$sgemmNT.bs(true, 60, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][60]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v199$1 := $$sgemmNT.bs[1bv1][60];
    v199$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][60];
    v200$1 := $$c$1[12];
    v200$2 := $$c$2[12];
    $$c$1[12] := FADD32(v200$1, FMUL32(v198$1, v199$1));
    $$c$2[12] := FADD32(v200$2, FMUL32(v198$2, v199$2));
    v201$1 := $$as$1[3];
    v201$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 284} _LOG_READ_$$sgemmNT.bs(true, 61, $$sgemmNT.bs[1bv1][61]);
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 284} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 284} _CHECK_READ_$$sgemmNT.bs(true, 61, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][61]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v202$1 := $$sgemmNT.bs[1bv1][61];
    v202$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][61];
    v203$1 := $$c$1[13];
    v203$2 := $$c$2[13];
    $$c$1[13] := FADD32(v203$1, FMUL32(v201$1, v202$1));
    $$c$2[13] := FADD32(v203$2, FMUL32(v201$2, v202$2));
    v204$1 := $$as$1[3];
    v204$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 288} _LOG_READ_$$sgemmNT.bs(true, 62, $$sgemmNT.bs[1bv1][62]);
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 288} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 288} _CHECK_READ_$$sgemmNT.bs(true, 62, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][62]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v205$1 := $$sgemmNT.bs[1bv1][62];
    v205$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][62];
    v206$1 := $$c$1[14];
    v206$2 := $$c$2[14];
    $$c$1[14] := FADD32(v206$1, FMUL32(v204$1, v205$1));
    $$c$2[14] := FADD32(v206$2, FMUL32(v204$2, v205$2));
    v207$1 := $$as$1[3];
    v207$2 := $$as$2[3];
    call {:sourceloc} {:sourceloc_num 292} _LOG_READ_$$sgemmNT.bs(true, 63, $$sgemmNT.bs[1bv1][63]);
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 292} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 292} _CHECK_READ_$$sgemmNT.bs(true, 63, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][63]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v208$1 := $$sgemmNT.bs[1bv1][63];
    v208$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][63];
    v209$1 := $$c$1[15];
    v209$2 := $$c$2[15];
    $$c$1[15] := FADD32(v209$1, FMUL32(v207$1, v208$1));
    $$c$2[15] := FADD32(v209$2, FMUL32(v207$2, v208$2));
    v210 := BV32_ADD($counter.0, BV32_MUL(4, $ldb));
    goto __partitioned_block_$falsebb1_2;

  __partitioned_block_$falsebb1_2:
    call {:sourceloc_num 296} $bugle_barrier_duplicated_1(-1, 0);
    v211 := BV32_SLT(v210, BV32_MUL($k, $ldb));
    goto $truebb2, __partitioned_block_$falsebb2_0;

  __partitioned_block_$falsebb2_0:
    assume {:partition} !v211;
    call {:sourceloc} {:sourceloc_num 299} _LOG_WRITE_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$1, 16), v0$1), v17$1, $$sgemmNT.bs[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$2, 16), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 299} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 299} _CHECK_WRITE_$$sgemmNT.bs(true, BV32_ADD(BV32_MUL(v1$2, 16), v0$2), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sgemmNT.bs"} true;
    $$sgemmNT.bs[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v0$1)] := v17$1;
    $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v1$2, 16), v0$2)] := v17$2;
    goto __partitioned_block_$falsebb2_1;

  __partitioned_block_$falsebb2_1:
    call {:sourceloc_num 300} $bugle_barrier_duplicated_2(-1, 0);
    v212$1 := $$a$1[0];
    v212$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 303} _LOG_READ_$$sgemmNT.bs(true, 0, $$sgemmNT.bs[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 303} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 303} _CHECK_READ_$$sgemmNT.bs(true, 0, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v213$1 := $$sgemmNT.bs[1bv1][0];
    v213$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v214$1 := $$c$1[0];
    v214$2 := $$c$2[0];
    $$c$1[0] := FADD32(v214$1, FMUL32(v212$1, v213$1));
    $$c$2[0] := FADD32(v214$2, FMUL32(v212$2, v213$2));
    v215$1 := $$a$1[0];
    v215$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 307} _LOG_READ_$$sgemmNT.bs(true, 1, $$sgemmNT.bs[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 307} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 307} _CHECK_READ_$$sgemmNT.bs(true, 1, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v216$1 := $$sgemmNT.bs[1bv1][1];
    v216$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1];
    v217$1 := $$c$1[1];
    v217$2 := $$c$2[1];
    $$c$1[1] := FADD32(v217$1, FMUL32(v215$1, v216$1));
    $$c$2[1] := FADD32(v217$2, FMUL32(v215$2, v216$2));
    v218$1 := $$a$1[0];
    v218$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 311} _LOG_READ_$$sgemmNT.bs(true, 2, $$sgemmNT.bs[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 311} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 311} _CHECK_READ_$$sgemmNT.bs(true, 2, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v219$1 := $$sgemmNT.bs[1bv1][2];
    v219$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2];
    v220$1 := $$c$1[2];
    v220$2 := $$c$2[2];
    $$c$1[2] := FADD32(v220$1, FMUL32(v218$1, v219$1));
    $$c$2[2] := FADD32(v220$2, FMUL32(v218$2, v219$2));
    v221$1 := $$a$1[0];
    v221$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 315} _LOG_READ_$$sgemmNT.bs(true, 3, $$sgemmNT.bs[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 315} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 315} _CHECK_READ_$$sgemmNT.bs(true, 3, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v222$1 := $$sgemmNT.bs[1bv1][3];
    v222$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3];
    v223$1 := $$c$1[3];
    v223$2 := $$c$2[3];
    $$c$1[3] := FADD32(v223$1, FMUL32(v221$1, v222$1));
    $$c$2[3] := FADD32(v223$2, FMUL32(v221$2, v222$2));
    v224$1 := $$a$1[0];
    v224$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 319} _LOG_READ_$$sgemmNT.bs(true, 4, $$sgemmNT.bs[1bv1][4]);
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 319} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 319} _CHECK_READ_$$sgemmNT.bs(true, 4, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][4]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v225$1 := $$sgemmNT.bs[1bv1][4];
    v225$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][4];
    v226$1 := $$c$1[4];
    v226$2 := $$c$2[4];
    $$c$1[4] := FADD32(v226$1, FMUL32(v224$1, v225$1));
    $$c$2[4] := FADD32(v226$2, FMUL32(v224$2, v225$2));
    v227$1 := $$a$1[0];
    v227$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 323} _LOG_READ_$$sgemmNT.bs(true, 5, $$sgemmNT.bs[1bv1][5]);
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 323} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 323} _CHECK_READ_$$sgemmNT.bs(true, 5, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][5]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v228$1 := $$sgemmNT.bs[1bv1][5];
    v228$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][5];
    v229$1 := $$c$1[5];
    v229$2 := $$c$2[5];
    $$c$1[5] := FADD32(v229$1, FMUL32(v227$1, v228$1));
    $$c$2[5] := FADD32(v229$2, FMUL32(v227$2, v228$2));
    v230$1 := $$a$1[0];
    v230$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 327} _LOG_READ_$$sgemmNT.bs(true, 6, $$sgemmNT.bs[1bv1][6]);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 327} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 327} _CHECK_READ_$$sgemmNT.bs(true, 6, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][6]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v231$1 := $$sgemmNT.bs[1bv1][6];
    v231$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][6];
    v232$1 := $$c$1[6];
    v232$2 := $$c$2[6];
    $$c$1[6] := FADD32(v232$1, FMUL32(v230$1, v231$1));
    $$c$2[6] := FADD32(v232$2, FMUL32(v230$2, v231$2));
    v233$1 := $$a$1[0];
    v233$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 331} _LOG_READ_$$sgemmNT.bs(true, 7, $$sgemmNT.bs[1bv1][7]);
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 331} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 331} _CHECK_READ_$$sgemmNT.bs(true, 7, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][7]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v234$1 := $$sgemmNT.bs[1bv1][7];
    v234$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][7];
    v235$1 := $$c$1[7];
    v235$2 := $$c$2[7];
    $$c$1[7] := FADD32(v235$1, FMUL32(v233$1, v234$1));
    $$c$2[7] := FADD32(v235$2, FMUL32(v233$2, v234$2));
    v236$1 := $$a$1[0];
    v236$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 335} _LOG_READ_$$sgemmNT.bs(true, 8, $$sgemmNT.bs[1bv1][8]);
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 335} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 335} _CHECK_READ_$$sgemmNT.bs(true, 8, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v237$1 := $$sgemmNT.bs[1bv1][8];
    v237$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][8];
    v238$1 := $$c$1[8];
    v238$2 := $$c$2[8];
    $$c$1[8] := FADD32(v238$1, FMUL32(v236$1, v237$1));
    $$c$2[8] := FADD32(v238$2, FMUL32(v236$2, v237$2));
    v239$1 := $$a$1[0];
    v239$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 339} _LOG_READ_$$sgemmNT.bs(true, 9, $$sgemmNT.bs[1bv1][9]);
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 339} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 339} _CHECK_READ_$$sgemmNT.bs(true, 9, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][9]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v240$1 := $$sgemmNT.bs[1bv1][9];
    v240$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][9];
    v241$1 := $$c$1[9];
    v241$2 := $$c$2[9];
    $$c$1[9] := FADD32(v241$1, FMUL32(v239$1, v240$1));
    $$c$2[9] := FADD32(v241$2, FMUL32(v239$2, v240$2));
    v242$1 := $$a$1[0];
    v242$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 343} _LOG_READ_$$sgemmNT.bs(true, 10, $$sgemmNT.bs[1bv1][10]);
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 343} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 343} _CHECK_READ_$$sgemmNT.bs(true, 10, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][10]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v243$1 := $$sgemmNT.bs[1bv1][10];
    v243$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][10];
    v244$1 := $$c$1[10];
    v244$2 := $$c$2[10];
    $$c$1[10] := FADD32(v244$1, FMUL32(v242$1, v243$1));
    $$c$2[10] := FADD32(v244$2, FMUL32(v242$2, v243$2));
    v245$1 := $$a$1[0];
    v245$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 347} _LOG_READ_$$sgemmNT.bs(true, 11, $$sgemmNT.bs[1bv1][11]);
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 347} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 347} _CHECK_READ_$$sgemmNT.bs(true, 11, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][11]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v246$1 := $$sgemmNT.bs[1bv1][11];
    v246$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][11];
    v247$1 := $$c$1[11];
    v247$2 := $$c$2[11];
    $$c$1[11] := FADD32(v247$1, FMUL32(v245$1, v246$1));
    $$c$2[11] := FADD32(v247$2, FMUL32(v245$2, v246$2));
    v248$1 := $$a$1[0];
    v248$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 351} _LOG_READ_$$sgemmNT.bs(true, 12, $$sgemmNT.bs[1bv1][12]);
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 351} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 351} _CHECK_READ_$$sgemmNT.bs(true, 12, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][12]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v249$1 := $$sgemmNT.bs[1bv1][12];
    v249$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][12];
    v250$1 := $$c$1[12];
    v250$2 := $$c$2[12];
    $$c$1[12] := FADD32(v250$1, FMUL32(v248$1, v249$1));
    $$c$2[12] := FADD32(v250$2, FMUL32(v248$2, v249$2));
    v251$1 := $$a$1[0];
    v251$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 355} _LOG_READ_$$sgemmNT.bs(true, 13, $$sgemmNT.bs[1bv1][13]);
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 355} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 355} _CHECK_READ_$$sgemmNT.bs(true, 13, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][13]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v252$1 := $$sgemmNT.bs[1bv1][13];
    v252$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][13];
    v253$1 := $$c$1[13];
    v253$2 := $$c$2[13];
    $$c$1[13] := FADD32(v253$1, FMUL32(v251$1, v252$1));
    $$c$2[13] := FADD32(v253$2, FMUL32(v251$2, v252$2));
    v254$1 := $$a$1[0];
    v254$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 359} _LOG_READ_$$sgemmNT.bs(true, 14, $$sgemmNT.bs[1bv1][14]);
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 359} true;
    call {:check_id "check_state_80"} {:sourceloc} {:sourceloc_num 359} _CHECK_READ_$$sgemmNT.bs(true, 14, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][14]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v255$1 := $$sgemmNT.bs[1bv1][14];
    v255$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][14];
    v256$1 := $$c$1[14];
    v256$2 := $$c$2[14];
    $$c$1[14] := FADD32(v256$1, FMUL32(v254$1, v255$1));
    $$c$2[14] := FADD32(v256$2, FMUL32(v254$2, v255$2));
    v257$1 := $$a$1[0];
    v257$2 := $$a$2[0];
    call {:sourceloc} {:sourceloc_num 363} _LOG_READ_$$sgemmNT.bs(true, 15, $$sgemmNT.bs[1bv1][15]);
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 363} true;
    call {:check_id "check_state_81"} {:sourceloc} {:sourceloc_num 363} _CHECK_READ_$$sgemmNT.bs(true, 15, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][15]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v258$1 := $$sgemmNT.bs[1bv1][15];
    v258$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][15];
    v259$1 := $$c$1[15];
    v259$2 := $$c$2[15];
    $$c$1[15] := FADD32(v259$1, FMUL32(v257$1, v258$1));
    $$c$2[15] := FADD32(v259$2, FMUL32(v257$2, v258$2));
    v260$1 := $$a$1[1];
    v260$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 369} _LOG_READ_$$sgemmNT.bs(true, 16, $$sgemmNT.bs[1bv1][16]);
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 369} true;
    call {:check_id "check_state_82"} {:sourceloc} {:sourceloc_num 369} _CHECK_READ_$$sgemmNT.bs(true, 16, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v261$1 := $$sgemmNT.bs[1bv1][16];
    v261$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][16];
    v262$1 := $$c$1[0];
    v262$2 := $$c$2[0];
    $$c$1[0] := FADD32(v262$1, FMUL32(v260$1, v261$1));
    $$c$2[0] := FADD32(v262$2, FMUL32(v260$2, v261$2));
    v263$1 := $$a$1[1];
    v263$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 373} _LOG_READ_$$sgemmNT.bs(true, 17, $$sgemmNT.bs[1bv1][17]);
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 373} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 373} _CHECK_READ_$$sgemmNT.bs(true, 17, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][17]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v264$1 := $$sgemmNT.bs[1bv1][17];
    v264$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][17];
    v265$1 := $$c$1[1];
    v265$2 := $$c$2[1];
    $$c$1[1] := FADD32(v265$1, FMUL32(v263$1, v264$1));
    $$c$2[1] := FADD32(v265$2, FMUL32(v263$2, v264$2));
    v266$1 := $$a$1[1];
    v266$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 377} _LOG_READ_$$sgemmNT.bs(true, 18, $$sgemmNT.bs[1bv1][18]);
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 377} true;
    call {:check_id "check_state_84"} {:sourceloc} {:sourceloc_num 377} _CHECK_READ_$$sgemmNT.bs(true, 18, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][18]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v267$1 := $$sgemmNT.bs[1bv1][18];
    v267$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][18];
    v268$1 := $$c$1[2];
    v268$2 := $$c$2[2];
    $$c$1[2] := FADD32(v268$1, FMUL32(v266$1, v267$1));
    $$c$2[2] := FADD32(v268$2, FMUL32(v266$2, v267$2));
    v269$1 := $$a$1[1];
    v269$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 381} _LOG_READ_$$sgemmNT.bs(true, 19, $$sgemmNT.bs[1bv1][19]);
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 381} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 381} _CHECK_READ_$$sgemmNT.bs(true, 19, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][19]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v270$1 := $$sgemmNT.bs[1bv1][19];
    v270$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][19];
    v271$1 := $$c$1[3];
    v271$2 := $$c$2[3];
    $$c$1[3] := FADD32(v271$1, FMUL32(v269$1, v270$1));
    $$c$2[3] := FADD32(v271$2, FMUL32(v269$2, v270$2));
    v272$1 := $$a$1[1];
    v272$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 385} _LOG_READ_$$sgemmNT.bs(true, 20, $$sgemmNT.bs[1bv1][20]);
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 385} true;
    call {:check_id "check_state_86"} {:sourceloc} {:sourceloc_num 385} _CHECK_READ_$$sgemmNT.bs(true, 20, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][20]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v273$1 := $$sgemmNT.bs[1bv1][20];
    v273$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][20];
    v274$1 := $$c$1[4];
    v274$2 := $$c$2[4];
    $$c$1[4] := FADD32(v274$1, FMUL32(v272$1, v273$1));
    $$c$2[4] := FADD32(v274$2, FMUL32(v272$2, v273$2));
    v275$1 := $$a$1[1];
    v275$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 389} _LOG_READ_$$sgemmNT.bs(true, 21, $$sgemmNT.bs[1bv1][21]);
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 389} true;
    call {:check_id "check_state_87"} {:sourceloc} {:sourceloc_num 389} _CHECK_READ_$$sgemmNT.bs(true, 21, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][21]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v276$1 := $$sgemmNT.bs[1bv1][21];
    v276$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][21];
    v277$1 := $$c$1[5];
    v277$2 := $$c$2[5];
    $$c$1[5] := FADD32(v277$1, FMUL32(v275$1, v276$1));
    $$c$2[5] := FADD32(v277$2, FMUL32(v275$2, v276$2));
    v278$1 := $$a$1[1];
    v278$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 393} _LOG_READ_$$sgemmNT.bs(true, 22, $$sgemmNT.bs[1bv1][22]);
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 393} true;
    call {:check_id "check_state_88"} {:sourceloc} {:sourceloc_num 393} _CHECK_READ_$$sgemmNT.bs(true, 22, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][22]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v279$1 := $$sgemmNT.bs[1bv1][22];
    v279$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][22];
    v280$1 := $$c$1[6];
    v280$2 := $$c$2[6];
    $$c$1[6] := FADD32(v280$1, FMUL32(v278$1, v279$1));
    $$c$2[6] := FADD32(v280$2, FMUL32(v278$2, v279$2));
    v281$1 := $$a$1[1];
    v281$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 397} _LOG_READ_$$sgemmNT.bs(true, 23, $$sgemmNT.bs[1bv1][23]);
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 397} true;
    call {:check_id "check_state_89"} {:sourceloc} {:sourceloc_num 397} _CHECK_READ_$$sgemmNT.bs(true, 23, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][23]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v282$1 := $$sgemmNT.bs[1bv1][23];
    v282$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][23];
    v283$1 := $$c$1[7];
    v283$2 := $$c$2[7];
    $$c$1[7] := FADD32(v283$1, FMUL32(v281$1, v282$1));
    $$c$2[7] := FADD32(v283$2, FMUL32(v281$2, v282$2));
    v284$1 := $$a$1[1];
    v284$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 401} _LOG_READ_$$sgemmNT.bs(true, 24, $$sgemmNT.bs[1bv1][24]);
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 401} true;
    call {:check_id "check_state_90"} {:sourceloc} {:sourceloc_num 401} _CHECK_READ_$$sgemmNT.bs(true, 24, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v285$1 := $$sgemmNT.bs[1bv1][24];
    v285$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][24];
    v286$1 := $$c$1[8];
    v286$2 := $$c$2[8];
    $$c$1[8] := FADD32(v286$1, FMUL32(v284$1, v285$1));
    $$c$2[8] := FADD32(v286$2, FMUL32(v284$2, v285$2));
    v287$1 := $$a$1[1];
    v287$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 405} _LOG_READ_$$sgemmNT.bs(true, 25, $$sgemmNT.bs[1bv1][25]);
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 405} true;
    call {:check_id "check_state_91"} {:sourceloc} {:sourceloc_num 405} _CHECK_READ_$$sgemmNT.bs(true, 25, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][25]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v288$1 := $$sgemmNT.bs[1bv1][25];
    v288$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][25];
    v289$1 := $$c$1[9];
    v289$2 := $$c$2[9];
    $$c$1[9] := FADD32(v289$1, FMUL32(v287$1, v288$1));
    $$c$2[9] := FADD32(v289$2, FMUL32(v287$2, v288$2));
    v290$1 := $$a$1[1];
    v290$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 409} _LOG_READ_$$sgemmNT.bs(true, 26, $$sgemmNT.bs[1bv1][26]);
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 409} true;
    call {:check_id "check_state_92"} {:sourceloc} {:sourceloc_num 409} _CHECK_READ_$$sgemmNT.bs(true, 26, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][26]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v291$1 := $$sgemmNT.bs[1bv1][26];
    v291$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][26];
    v292$1 := $$c$1[10];
    v292$2 := $$c$2[10];
    $$c$1[10] := FADD32(v292$1, FMUL32(v290$1, v291$1));
    $$c$2[10] := FADD32(v292$2, FMUL32(v290$2, v291$2));
    v293$1 := $$a$1[1];
    v293$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 413} _LOG_READ_$$sgemmNT.bs(true, 27, $$sgemmNT.bs[1bv1][27]);
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 413} true;
    call {:check_id "check_state_93"} {:sourceloc} {:sourceloc_num 413} _CHECK_READ_$$sgemmNT.bs(true, 27, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][27]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v294$1 := $$sgemmNT.bs[1bv1][27];
    v294$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][27];
    v295$1 := $$c$1[11];
    v295$2 := $$c$2[11];
    $$c$1[11] := FADD32(v295$1, FMUL32(v293$1, v294$1));
    $$c$2[11] := FADD32(v295$2, FMUL32(v293$2, v294$2));
    v296$1 := $$a$1[1];
    v296$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 417} _LOG_READ_$$sgemmNT.bs(true, 28, $$sgemmNT.bs[1bv1][28]);
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 417} true;
    call {:check_id "check_state_94"} {:sourceloc} {:sourceloc_num 417} _CHECK_READ_$$sgemmNT.bs(true, 28, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][28]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v297$1 := $$sgemmNT.bs[1bv1][28];
    v297$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][28];
    v298$1 := $$c$1[12];
    v298$2 := $$c$2[12];
    $$c$1[12] := FADD32(v298$1, FMUL32(v296$1, v297$1));
    $$c$2[12] := FADD32(v298$2, FMUL32(v296$2, v297$2));
    v299$1 := $$a$1[1];
    v299$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 421} _LOG_READ_$$sgemmNT.bs(true, 29, $$sgemmNT.bs[1bv1][29]);
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 421} true;
    call {:check_id "check_state_95"} {:sourceloc} {:sourceloc_num 421} _CHECK_READ_$$sgemmNT.bs(true, 29, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][29]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v300$1 := $$sgemmNT.bs[1bv1][29];
    v300$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][29];
    v301$1 := $$c$1[13];
    v301$2 := $$c$2[13];
    $$c$1[13] := FADD32(v301$1, FMUL32(v299$1, v300$1));
    $$c$2[13] := FADD32(v301$2, FMUL32(v299$2, v300$2));
    v302$1 := $$a$1[1];
    v302$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 425} _LOG_READ_$$sgemmNT.bs(true, 30, $$sgemmNT.bs[1bv1][30]);
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 425} true;
    call {:check_id "check_state_96"} {:sourceloc} {:sourceloc_num 425} _CHECK_READ_$$sgemmNT.bs(true, 30, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][30]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v303$1 := $$sgemmNT.bs[1bv1][30];
    v303$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][30];
    v304$1 := $$c$1[14];
    v304$2 := $$c$2[14];
    $$c$1[14] := FADD32(v304$1, FMUL32(v302$1, v303$1));
    $$c$2[14] := FADD32(v304$2, FMUL32(v302$2, v303$2));
    v305$1 := $$a$1[1];
    v305$2 := $$a$2[1];
    call {:sourceloc} {:sourceloc_num 429} _LOG_READ_$$sgemmNT.bs(true, 31, $$sgemmNT.bs[1bv1][31]);
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 429} true;
    call {:check_id "check_state_97"} {:sourceloc} {:sourceloc_num 429} _CHECK_READ_$$sgemmNT.bs(true, 31, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][31]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v306$1 := $$sgemmNT.bs[1bv1][31];
    v306$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][31];
    v307$1 := $$c$1[15];
    v307$2 := $$c$2[15];
    $$c$1[15] := FADD32(v307$1, FMUL32(v305$1, v306$1));
    $$c$2[15] := FADD32(v307$2, FMUL32(v305$2, v306$2));
    v308$1 := $$a$1[2];
    v308$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 435} _LOG_READ_$$sgemmNT.bs(true, 32, $$sgemmNT.bs[1bv1][32]);
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 435} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 435} _CHECK_READ_$$sgemmNT.bs(true, 32, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v309$1 := $$sgemmNT.bs[1bv1][32];
    v309$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][32];
    v310$1 := $$c$1[0];
    v310$2 := $$c$2[0];
    $$c$1[0] := FADD32(v310$1, FMUL32(v308$1, v309$1));
    $$c$2[0] := FADD32(v310$2, FMUL32(v308$2, v309$2));
    v311$1 := $$a$1[2];
    v311$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 439} _LOG_READ_$$sgemmNT.bs(true, 33, $$sgemmNT.bs[1bv1][33]);
    assume {:do_not_predicate} {:check_id "check_state_99"} {:captureState "check_state_99"} {:sourceloc} {:sourceloc_num 439} true;
    call {:check_id "check_state_99"} {:sourceloc} {:sourceloc_num 439} _CHECK_READ_$$sgemmNT.bs(true, 33, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][33]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v312$1 := $$sgemmNT.bs[1bv1][33];
    v312$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][33];
    v313$1 := $$c$1[1];
    v313$2 := $$c$2[1];
    $$c$1[1] := FADD32(v313$1, FMUL32(v311$1, v312$1));
    $$c$2[1] := FADD32(v313$2, FMUL32(v311$2, v312$2));
    v314$1 := $$a$1[2];
    v314$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 443} _LOG_READ_$$sgemmNT.bs(true, 34, $$sgemmNT.bs[1bv1][34]);
    assume {:do_not_predicate} {:check_id "check_state_100"} {:captureState "check_state_100"} {:sourceloc} {:sourceloc_num 443} true;
    call {:check_id "check_state_100"} {:sourceloc} {:sourceloc_num 443} _CHECK_READ_$$sgemmNT.bs(true, 34, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][34]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v315$1 := $$sgemmNT.bs[1bv1][34];
    v315$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][34];
    v316$1 := $$c$1[2];
    v316$2 := $$c$2[2];
    $$c$1[2] := FADD32(v316$1, FMUL32(v314$1, v315$1));
    $$c$2[2] := FADD32(v316$2, FMUL32(v314$2, v315$2));
    v317$1 := $$a$1[2];
    v317$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 447} _LOG_READ_$$sgemmNT.bs(true, 35, $$sgemmNT.bs[1bv1][35]);
    assume {:do_not_predicate} {:check_id "check_state_101"} {:captureState "check_state_101"} {:sourceloc} {:sourceloc_num 447} true;
    call {:check_id "check_state_101"} {:sourceloc} {:sourceloc_num 447} _CHECK_READ_$$sgemmNT.bs(true, 35, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][35]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v318$1 := $$sgemmNT.bs[1bv1][35];
    v318$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][35];
    v319$1 := $$c$1[3];
    v319$2 := $$c$2[3];
    $$c$1[3] := FADD32(v319$1, FMUL32(v317$1, v318$1));
    $$c$2[3] := FADD32(v319$2, FMUL32(v317$2, v318$2));
    v320$1 := $$a$1[2];
    v320$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 451} _LOG_READ_$$sgemmNT.bs(true, 36, $$sgemmNT.bs[1bv1][36]);
    assume {:do_not_predicate} {:check_id "check_state_102"} {:captureState "check_state_102"} {:sourceloc} {:sourceloc_num 451} true;
    call {:check_id "check_state_102"} {:sourceloc} {:sourceloc_num 451} _CHECK_READ_$$sgemmNT.bs(true, 36, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][36]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v321$1 := $$sgemmNT.bs[1bv1][36];
    v321$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][36];
    v322$1 := $$c$1[4];
    v322$2 := $$c$2[4];
    $$c$1[4] := FADD32(v322$1, FMUL32(v320$1, v321$1));
    $$c$2[4] := FADD32(v322$2, FMUL32(v320$2, v321$2));
    v323$1 := $$a$1[2];
    v323$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 455} _LOG_READ_$$sgemmNT.bs(true, 37, $$sgemmNT.bs[1bv1][37]);
    assume {:do_not_predicate} {:check_id "check_state_103"} {:captureState "check_state_103"} {:sourceloc} {:sourceloc_num 455} true;
    call {:check_id "check_state_103"} {:sourceloc} {:sourceloc_num 455} _CHECK_READ_$$sgemmNT.bs(true, 37, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][37]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v324$1 := $$sgemmNT.bs[1bv1][37];
    v324$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][37];
    v325$1 := $$c$1[5];
    v325$2 := $$c$2[5];
    $$c$1[5] := FADD32(v325$1, FMUL32(v323$1, v324$1));
    $$c$2[5] := FADD32(v325$2, FMUL32(v323$2, v324$2));
    v326$1 := $$a$1[2];
    v326$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 459} _LOG_READ_$$sgemmNT.bs(true, 38, $$sgemmNT.bs[1bv1][38]);
    assume {:do_not_predicate} {:check_id "check_state_104"} {:captureState "check_state_104"} {:sourceloc} {:sourceloc_num 459} true;
    call {:check_id "check_state_104"} {:sourceloc} {:sourceloc_num 459} _CHECK_READ_$$sgemmNT.bs(true, 38, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][38]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v327$1 := $$sgemmNT.bs[1bv1][38];
    v327$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][38];
    v328$1 := $$c$1[6];
    v328$2 := $$c$2[6];
    $$c$1[6] := FADD32(v328$1, FMUL32(v326$1, v327$1));
    $$c$2[6] := FADD32(v328$2, FMUL32(v326$2, v327$2));
    v329$1 := $$a$1[2];
    v329$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 463} _LOG_READ_$$sgemmNT.bs(true, 39, $$sgemmNT.bs[1bv1][39]);
    assume {:do_not_predicate} {:check_id "check_state_105"} {:captureState "check_state_105"} {:sourceloc} {:sourceloc_num 463} true;
    call {:check_id "check_state_105"} {:sourceloc} {:sourceloc_num 463} _CHECK_READ_$$sgemmNT.bs(true, 39, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][39]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v330$1 := $$sgemmNT.bs[1bv1][39];
    v330$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][39];
    v331$1 := $$c$1[7];
    v331$2 := $$c$2[7];
    $$c$1[7] := FADD32(v331$1, FMUL32(v329$1, v330$1));
    $$c$2[7] := FADD32(v331$2, FMUL32(v329$2, v330$2));
    v332$1 := $$a$1[2];
    v332$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 467} _LOG_READ_$$sgemmNT.bs(true, 40, $$sgemmNT.bs[1bv1][40]);
    assume {:do_not_predicate} {:check_id "check_state_106"} {:captureState "check_state_106"} {:sourceloc} {:sourceloc_num 467} true;
    call {:check_id "check_state_106"} {:sourceloc} {:sourceloc_num 467} _CHECK_READ_$$sgemmNT.bs(true, 40, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][40]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v333$1 := $$sgemmNT.bs[1bv1][40];
    v333$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][40];
    v334$1 := $$c$1[8];
    v334$2 := $$c$2[8];
    $$c$1[8] := FADD32(v334$1, FMUL32(v332$1, v333$1));
    $$c$2[8] := FADD32(v334$2, FMUL32(v332$2, v333$2));
    v335$1 := $$a$1[2];
    v335$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 471} _LOG_READ_$$sgemmNT.bs(true, 41, $$sgemmNT.bs[1bv1][41]);
    assume {:do_not_predicate} {:check_id "check_state_107"} {:captureState "check_state_107"} {:sourceloc} {:sourceloc_num 471} true;
    call {:check_id "check_state_107"} {:sourceloc} {:sourceloc_num 471} _CHECK_READ_$$sgemmNT.bs(true, 41, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][41]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v336$1 := $$sgemmNT.bs[1bv1][41];
    v336$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][41];
    v337$1 := $$c$1[9];
    v337$2 := $$c$2[9];
    $$c$1[9] := FADD32(v337$1, FMUL32(v335$1, v336$1));
    $$c$2[9] := FADD32(v337$2, FMUL32(v335$2, v336$2));
    v338$1 := $$a$1[2];
    v338$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 475} _LOG_READ_$$sgemmNT.bs(true, 42, $$sgemmNT.bs[1bv1][42]);
    assume {:do_not_predicate} {:check_id "check_state_108"} {:captureState "check_state_108"} {:sourceloc} {:sourceloc_num 475} true;
    call {:check_id "check_state_108"} {:sourceloc} {:sourceloc_num 475} _CHECK_READ_$$sgemmNT.bs(true, 42, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][42]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v339$1 := $$sgemmNT.bs[1bv1][42];
    v339$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][42];
    v340$1 := $$c$1[10];
    v340$2 := $$c$2[10];
    $$c$1[10] := FADD32(v340$1, FMUL32(v338$1, v339$1));
    $$c$2[10] := FADD32(v340$2, FMUL32(v338$2, v339$2));
    v341$1 := $$a$1[2];
    v341$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 479} _LOG_READ_$$sgemmNT.bs(true, 43, $$sgemmNT.bs[1bv1][43]);
    assume {:do_not_predicate} {:check_id "check_state_109"} {:captureState "check_state_109"} {:sourceloc} {:sourceloc_num 479} true;
    call {:check_id "check_state_109"} {:sourceloc} {:sourceloc_num 479} _CHECK_READ_$$sgemmNT.bs(true, 43, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][43]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v342$1 := $$sgemmNT.bs[1bv1][43];
    v342$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][43];
    v343$1 := $$c$1[11];
    v343$2 := $$c$2[11];
    $$c$1[11] := FADD32(v343$1, FMUL32(v341$1, v342$1));
    $$c$2[11] := FADD32(v343$2, FMUL32(v341$2, v342$2));
    v344$1 := $$a$1[2];
    v344$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 483} _LOG_READ_$$sgemmNT.bs(true, 44, $$sgemmNT.bs[1bv1][44]);
    assume {:do_not_predicate} {:check_id "check_state_110"} {:captureState "check_state_110"} {:sourceloc} {:sourceloc_num 483} true;
    call {:check_id "check_state_110"} {:sourceloc} {:sourceloc_num 483} _CHECK_READ_$$sgemmNT.bs(true, 44, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][44]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v345$1 := $$sgemmNT.bs[1bv1][44];
    v345$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][44];
    v346$1 := $$c$1[12];
    v346$2 := $$c$2[12];
    $$c$1[12] := FADD32(v346$1, FMUL32(v344$1, v345$1));
    $$c$2[12] := FADD32(v346$2, FMUL32(v344$2, v345$2));
    v347$1 := $$a$1[2];
    v347$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 487} _LOG_READ_$$sgemmNT.bs(true, 45, $$sgemmNT.bs[1bv1][45]);
    assume {:do_not_predicate} {:check_id "check_state_111"} {:captureState "check_state_111"} {:sourceloc} {:sourceloc_num 487} true;
    call {:check_id "check_state_111"} {:sourceloc} {:sourceloc_num 487} _CHECK_READ_$$sgemmNT.bs(true, 45, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][45]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v348$1 := $$sgemmNT.bs[1bv1][45];
    v348$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][45];
    v349$1 := $$c$1[13];
    v349$2 := $$c$2[13];
    $$c$1[13] := FADD32(v349$1, FMUL32(v347$1, v348$1));
    $$c$2[13] := FADD32(v349$2, FMUL32(v347$2, v348$2));
    v350$1 := $$a$1[2];
    v350$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 491} _LOG_READ_$$sgemmNT.bs(true, 46, $$sgemmNT.bs[1bv1][46]);
    assume {:do_not_predicate} {:check_id "check_state_112"} {:captureState "check_state_112"} {:sourceloc} {:sourceloc_num 491} true;
    call {:check_id "check_state_112"} {:sourceloc} {:sourceloc_num 491} _CHECK_READ_$$sgemmNT.bs(true, 46, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][46]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v351$1 := $$sgemmNT.bs[1bv1][46];
    v351$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][46];
    v352$1 := $$c$1[14];
    v352$2 := $$c$2[14];
    $$c$1[14] := FADD32(v352$1, FMUL32(v350$1, v351$1));
    $$c$2[14] := FADD32(v352$2, FMUL32(v350$2, v351$2));
    v353$1 := $$a$1[2];
    v353$2 := $$a$2[2];
    call {:sourceloc} {:sourceloc_num 495} _LOG_READ_$$sgemmNT.bs(true, 47, $$sgemmNT.bs[1bv1][47]);
    assume {:do_not_predicate} {:check_id "check_state_113"} {:captureState "check_state_113"} {:sourceloc} {:sourceloc_num 495} true;
    call {:check_id "check_state_113"} {:sourceloc} {:sourceloc_num 495} _CHECK_READ_$$sgemmNT.bs(true, 47, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][47]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v354$1 := $$sgemmNT.bs[1bv1][47];
    v354$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][47];
    v355$1 := $$c$1[15];
    v355$2 := $$c$2[15];
    $$c$1[15] := FADD32(v355$1, FMUL32(v353$1, v354$1));
    $$c$2[15] := FADD32(v355$2, FMUL32(v353$2, v354$2));
    v356$1 := $$a$1[3];
    v356$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 501} _LOG_READ_$$sgemmNT.bs(true, 48, $$sgemmNT.bs[1bv1][48]);
    assume {:do_not_predicate} {:check_id "check_state_114"} {:captureState "check_state_114"} {:sourceloc} {:sourceloc_num 501} true;
    call {:check_id "check_state_114"} {:sourceloc} {:sourceloc_num 501} _CHECK_READ_$$sgemmNT.bs(true, 48, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][48]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v357$1 := $$sgemmNT.bs[1bv1][48];
    v357$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][48];
    v358$1 := $$c$1[0];
    v358$2 := $$c$2[0];
    $$c$1[0] := FADD32(v358$1, FMUL32(v356$1, v357$1));
    $$c$2[0] := FADD32(v358$2, FMUL32(v356$2, v357$2));
    v359$1 := $$a$1[3];
    v359$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 505} _LOG_READ_$$sgemmNT.bs(true, 49, $$sgemmNT.bs[1bv1][49]);
    assume {:do_not_predicate} {:check_id "check_state_115"} {:captureState "check_state_115"} {:sourceloc} {:sourceloc_num 505} true;
    call {:check_id "check_state_115"} {:sourceloc} {:sourceloc_num 505} _CHECK_READ_$$sgemmNT.bs(true, 49, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][49]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v360$1 := $$sgemmNT.bs[1bv1][49];
    v360$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][49];
    v361$1 := $$c$1[1];
    v361$2 := $$c$2[1];
    $$c$1[1] := FADD32(v361$1, FMUL32(v359$1, v360$1));
    $$c$2[1] := FADD32(v361$2, FMUL32(v359$2, v360$2));
    v362$1 := $$a$1[3];
    v362$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 509} _LOG_READ_$$sgemmNT.bs(true, 50, $$sgemmNT.bs[1bv1][50]);
    assume {:do_not_predicate} {:check_id "check_state_116"} {:captureState "check_state_116"} {:sourceloc} {:sourceloc_num 509} true;
    call {:check_id "check_state_116"} {:sourceloc} {:sourceloc_num 509} _CHECK_READ_$$sgemmNT.bs(true, 50, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][50]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v363$1 := $$sgemmNT.bs[1bv1][50];
    v363$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][50];
    v364$1 := $$c$1[2];
    v364$2 := $$c$2[2];
    $$c$1[2] := FADD32(v364$1, FMUL32(v362$1, v363$1));
    $$c$2[2] := FADD32(v364$2, FMUL32(v362$2, v363$2));
    v365$1 := $$a$1[3];
    v365$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 513} _LOG_READ_$$sgemmNT.bs(true, 51, $$sgemmNT.bs[1bv1][51]);
    assume {:do_not_predicate} {:check_id "check_state_117"} {:captureState "check_state_117"} {:sourceloc} {:sourceloc_num 513} true;
    call {:check_id "check_state_117"} {:sourceloc} {:sourceloc_num 513} _CHECK_READ_$$sgemmNT.bs(true, 51, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][51]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v366$1 := $$sgemmNT.bs[1bv1][51];
    v366$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][51];
    v367$1 := $$c$1[3];
    v367$2 := $$c$2[3];
    $$c$1[3] := FADD32(v367$1, FMUL32(v365$1, v366$1));
    $$c$2[3] := FADD32(v367$2, FMUL32(v365$2, v366$2));
    v368$1 := $$a$1[3];
    v368$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 517} _LOG_READ_$$sgemmNT.bs(true, 52, $$sgemmNT.bs[1bv1][52]);
    assume {:do_not_predicate} {:check_id "check_state_118"} {:captureState "check_state_118"} {:sourceloc} {:sourceloc_num 517} true;
    call {:check_id "check_state_118"} {:sourceloc} {:sourceloc_num 517} _CHECK_READ_$$sgemmNT.bs(true, 52, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][52]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v369$1 := $$sgemmNT.bs[1bv1][52];
    v369$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][52];
    v370$1 := $$c$1[4];
    v370$2 := $$c$2[4];
    $$c$1[4] := FADD32(v370$1, FMUL32(v368$1, v369$1));
    $$c$2[4] := FADD32(v370$2, FMUL32(v368$2, v369$2));
    v371$1 := $$a$1[3];
    v371$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 521} _LOG_READ_$$sgemmNT.bs(true, 53, $$sgemmNT.bs[1bv1][53]);
    assume {:do_not_predicate} {:check_id "check_state_119"} {:captureState "check_state_119"} {:sourceloc} {:sourceloc_num 521} true;
    call {:check_id "check_state_119"} {:sourceloc} {:sourceloc_num 521} _CHECK_READ_$$sgemmNT.bs(true, 53, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][53]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v372$1 := $$sgemmNT.bs[1bv1][53];
    v372$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][53];
    v373$1 := $$c$1[5];
    v373$2 := $$c$2[5];
    $$c$1[5] := FADD32(v373$1, FMUL32(v371$1, v372$1));
    $$c$2[5] := FADD32(v373$2, FMUL32(v371$2, v372$2));
    v374$1 := $$a$1[3];
    v374$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 525} _LOG_READ_$$sgemmNT.bs(true, 54, $$sgemmNT.bs[1bv1][54]);
    assume {:do_not_predicate} {:check_id "check_state_120"} {:captureState "check_state_120"} {:sourceloc} {:sourceloc_num 525} true;
    call {:check_id "check_state_120"} {:sourceloc} {:sourceloc_num 525} _CHECK_READ_$$sgemmNT.bs(true, 54, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][54]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v375$1 := $$sgemmNT.bs[1bv1][54];
    v375$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][54];
    v376$1 := $$c$1[6];
    v376$2 := $$c$2[6];
    $$c$1[6] := FADD32(v376$1, FMUL32(v374$1, v375$1));
    $$c$2[6] := FADD32(v376$2, FMUL32(v374$2, v375$2));
    v377$1 := $$a$1[3];
    v377$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 529} _LOG_READ_$$sgemmNT.bs(true, 55, $$sgemmNT.bs[1bv1][55]);
    assume {:do_not_predicate} {:check_id "check_state_121"} {:captureState "check_state_121"} {:sourceloc} {:sourceloc_num 529} true;
    call {:check_id "check_state_121"} {:sourceloc} {:sourceloc_num 529} _CHECK_READ_$$sgemmNT.bs(true, 55, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][55]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v378$1 := $$sgemmNT.bs[1bv1][55];
    v378$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][55];
    v379$1 := $$c$1[7];
    v379$2 := $$c$2[7];
    $$c$1[7] := FADD32(v379$1, FMUL32(v377$1, v378$1));
    $$c$2[7] := FADD32(v379$2, FMUL32(v377$2, v378$2));
    v380$1 := $$a$1[3];
    v380$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 533} _LOG_READ_$$sgemmNT.bs(true, 56, $$sgemmNT.bs[1bv1][56]);
    assume {:do_not_predicate} {:check_id "check_state_122"} {:captureState "check_state_122"} {:sourceloc} {:sourceloc_num 533} true;
    call {:check_id "check_state_122"} {:sourceloc} {:sourceloc_num 533} _CHECK_READ_$$sgemmNT.bs(true, 56, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][56]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v381$1 := $$sgemmNT.bs[1bv1][56];
    v381$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][56];
    v382$1 := $$c$1[8];
    v382$2 := $$c$2[8];
    $$c$1[8] := FADD32(v382$1, FMUL32(v380$1, v381$1));
    $$c$2[8] := FADD32(v382$2, FMUL32(v380$2, v381$2));
    v383$1 := $$a$1[3];
    v383$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 537} _LOG_READ_$$sgemmNT.bs(true, 57, $$sgemmNT.bs[1bv1][57]);
    assume {:do_not_predicate} {:check_id "check_state_123"} {:captureState "check_state_123"} {:sourceloc} {:sourceloc_num 537} true;
    call {:check_id "check_state_123"} {:sourceloc} {:sourceloc_num 537} _CHECK_READ_$$sgemmNT.bs(true, 57, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][57]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v384$1 := $$sgemmNT.bs[1bv1][57];
    v384$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][57];
    v385$1 := $$c$1[9];
    v385$2 := $$c$2[9];
    $$c$1[9] := FADD32(v385$1, FMUL32(v383$1, v384$1));
    $$c$2[9] := FADD32(v385$2, FMUL32(v383$2, v384$2));
    v386$1 := $$a$1[3];
    v386$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 541} _LOG_READ_$$sgemmNT.bs(true, 58, $$sgemmNT.bs[1bv1][58]);
    assume {:do_not_predicate} {:check_id "check_state_124"} {:captureState "check_state_124"} {:sourceloc} {:sourceloc_num 541} true;
    call {:check_id "check_state_124"} {:sourceloc} {:sourceloc_num 541} _CHECK_READ_$$sgemmNT.bs(true, 58, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][58]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v387$1 := $$sgemmNT.bs[1bv1][58];
    v387$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][58];
    v388$1 := $$c$1[10];
    v388$2 := $$c$2[10];
    $$c$1[10] := FADD32(v388$1, FMUL32(v386$1, v387$1));
    $$c$2[10] := FADD32(v388$2, FMUL32(v386$2, v387$2));
    v389$1 := $$a$1[3];
    v389$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 545} _LOG_READ_$$sgemmNT.bs(true, 59, $$sgemmNT.bs[1bv1][59]);
    assume {:do_not_predicate} {:check_id "check_state_125"} {:captureState "check_state_125"} {:sourceloc} {:sourceloc_num 545} true;
    call {:check_id "check_state_125"} {:sourceloc} {:sourceloc_num 545} _CHECK_READ_$$sgemmNT.bs(true, 59, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][59]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v390$1 := $$sgemmNT.bs[1bv1][59];
    v390$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][59];
    v391$1 := $$c$1[11];
    v391$2 := $$c$2[11];
    $$c$1[11] := FADD32(v391$1, FMUL32(v389$1, v390$1));
    $$c$2[11] := FADD32(v391$2, FMUL32(v389$2, v390$2));
    v392$1 := $$a$1[3];
    v392$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 549} _LOG_READ_$$sgemmNT.bs(true, 60, $$sgemmNT.bs[1bv1][60]);
    assume {:do_not_predicate} {:check_id "check_state_126"} {:captureState "check_state_126"} {:sourceloc} {:sourceloc_num 549} true;
    call {:check_id "check_state_126"} {:sourceloc} {:sourceloc_num 549} _CHECK_READ_$$sgemmNT.bs(true, 60, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][60]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v393$1 := $$sgemmNT.bs[1bv1][60];
    v393$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][60];
    v394$1 := $$c$1[12];
    v394$2 := $$c$2[12];
    $$c$1[12] := FADD32(v394$1, FMUL32(v392$1, v393$1));
    $$c$2[12] := FADD32(v394$2, FMUL32(v392$2, v393$2));
    v395$1 := $$a$1[3];
    v395$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 553} _LOG_READ_$$sgemmNT.bs(true, 61, $$sgemmNT.bs[1bv1][61]);
    assume {:do_not_predicate} {:check_id "check_state_127"} {:captureState "check_state_127"} {:sourceloc} {:sourceloc_num 553} true;
    call {:check_id "check_state_127"} {:sourceloc} {:sourceloc_num 553} _CHECK_READ_$$sgemmNT.bs(true, 61, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][61]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v396$1 := $$sgemmNT.bs[1bv1][61];
    v396$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][61];
    v397$1 := $$c$1[13];
    v397$2 := $$c$2[13];
    $$c$1[13] := FADD32(v397$1, FMUL32(v395$1, v396$1));
    $$c$2[13] := FADD32(v397$2, FMUL32(v395$2, v396$2));
    v398$1 := $$a$1[3];
    v398$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 557} _LOG_READ_$$sgemmNT.bs(true, 62, $$sgemmNT.bs[1bv1][62]);
    assume {:do_not_predicate} {:check_id "check_state_128"} {:captureState "check_state_128"} {:sourceloc} {:sourceloc_num 557} true;
    call {:check_id "check_state_128"} {:sourceloc} {:sourceloc_num 557} _CHECK_READ_$$sgemmNT.bs(true, 62, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][62]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v399$1 := $$sgemmNT.bs[1bv1][62];
    v399$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][62];
    v400$1 := $$c$1[14];
    v400$2 := $$c$2[14];
    $$c$1[14] := FADD32(v400$1, FMUL32(v398$1, v399$1));
    $$c$2[14] := FADD32(v400$2, FMUL32(v398$2, v399$2));
    v401$1 := $$a$1[3];
    v401$2 := $$a$2[3];
    call {:sourceloc} {:sourceloc_num 561} _LOG_READ_$$sgemmNT.bs(true, 63, $$sgemmNT.bs[1bv1][63]);
    assume {:do_not_predicate} {:check_id "check_state_129"} {:captureState "check_state_129"} {:sourceloc} {:sourceloc_num 561} true;
    call {:check_id "check_state_129"} {:sourceloc} {:sourceloc_num 561} _CHECK_READ_$$sgemmNT.bs(true, 63, $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][63]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sgemmNT.bs"} true;
    v402$1 := $$sgemmNT.bs[1bv1][63];
    v402$2 := $$sgemmNT.bs[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][63];
    v403$1 := $$c$1[15];
    v403$2 := $$c$2[15];
    $$c$1[15] := FADD32(v403$1, FMUL32(v401$1, v402$1));
    $$c$2[15] := FADD32(v403$2, FMUL32(v401$2, v402$2));
    $.0$1, $i1.0 := BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc)), 0;
    $.0$2 := BV32_ADD(BV32_ADD(v2$2, v4$2), BV32_MUL(v3$2, $ldc));
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $32;

  $32:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b18 ==> _WRITE_HAS_OCCURRED_$$C ==> _WATCHED_OFFSET mod $ldc == BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc)) mod $ldc;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _READ_HAS_OCCURRED_$$C ==> _WATCHED_OFFSET mod $ldc == BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc)) mod $ldc;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sgemmNT.bs ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_UGE($i1.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_ULE($i1.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_SGE($i1.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_SLE($i1.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b8 ==> $i1.0 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b7 ==> $.0$1 mod $ldc == BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc)) mod $ldc;
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b7 ==> $.0$2 mod $ldc == BV32_ADD(BV32_ADD(v2$2, v4$2), BV32_MUL(v3$2, $ldc)) mod $ldc;
    assert {:block_sourceloc} {:sourceloc_num 565} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 566} {:thread 1} (if BV32_SUB(BV32_UDIV(BV32_MUL($.0$1, 4), 4), BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc))) == BV32_MUL($ldc, $i1.0) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 566} {:thread 2} (if BV32_SUB(BV32_UDIV(BV32_MUL($.0$2, 4), 4), BV32_ADD(BV32_ADD(v2$2, v4$2), BV32_MUL(v3$2, $ldc))) == BV32_MUL($ldc, $i1.0) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 567} {:thread 1} (if _WRITE_HAS_OCCURRED_$$C ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc))), $ldc), 16) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 568} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_ADD(BV32_ADD(v2$1, v4$1), BV32_MUL(v3$1, $ldc))), $ldc), 16) then 1 else 0) != 0;
    v404 := BV32_SLT($i1.0, 16);
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} !v404;
    return;

  $truebb3:
    assume {:partition} v404;
    v405$1 := $$c$1[$i1.0];
    v405$2 := $$c$2[$i1.0];
    call {:sourceloc} {:sourceloc_num 571} _LOG_READ_$$C(true, $.0$1, $$C[$.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_130"} {:captureState "check_state_130"} {:sourceloc} {:sourceloc_num 571} true;
    call {:check_id "check_state_130"} {:sourceloc} {:sourceloc_num 571} _CHECK_READ_$$C(true, $.0$2, $$C[$.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$C"} true;
    v406$1 := $$C[$.0$1];
    v406$2 := $$C[$.0$2];
    call {:sourceloc} {:sourceloc_num 572} _LOG_WRITE_$$C(true, $.0$1, FADD32(FMUL32($alpha, v405$1), FMUL32($beta, v406$1)), $$C[$.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$C(true, $.0$2);
    assume {:do_not_predicate} {:check_id "check_state_131"} {:captureState "check_state_131"} {:sourceloc} {:sourceloc_num 572} true;
    call {:check_id "check_state_131"} {:sourceloc} {:sourceloc_num 572} _CHECK_WRITE_$$C(true, $.0$2, FADD32(FMUL32($alpha, v405$2), FMUL32($beta, v406$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$C"} true;
    $$C[$.0$1] := FADD32(FMUL32($alpha, v405$1), FMUL32($beta, v406$1));
    $$C[$.0$2] := FADD32(FMUL32($alpha, v405$2), FMUL32($beta, v406$2));
    $.0$1, $i1.0 := BV32_ADD($.0$1, $ldc), BV32_ADD($i1.0, 1);
    $.0$2 := BV32_ADD($.0$2, $ldc);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $32;

  $truebb2:
    assume {:partition} v211;
    $.02$1, $.01$1, $counter.0, $b.0$1 := BV32_ADD($.02$1, BV32_MUL(4, $ldb)), BV32_ADD($.01$1, BV32_MUL(4, $lda)), v210, v17$1;
    $.02$2, $.01$2, $b.0$2 := BV32_ADD($.02$2, BV32_MUL(4, $ldb)), BV32_ADD($.01$2, BV32_MUL(4, $lda)), v17$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $9;

  $truebb1:
    assume {:partition} v11;
    v12$1 := $$a$1[$i.2];
    v12$2 := $$a$2[$i.2];
    $$as$1[$i.2] := v12$1;
    $$as$2[$i.2] := v12$2;
    $i.2 := BV32_ADD($i.2, 1);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $10;

  $truebb0:
    assume {:partition} v10;
    $$c$1[$i.1] := 0;
    $$c$2[$i.1] := 0;
    $i.1 := BV32_ADD($i.1, 1);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v7;
    havoc v8$1, v8$2;
    $$a$1[$i.0] := v8$1;
    $$a$2[$i.0] := v8$2;
    $i.0 := BV32_ADD($i.0, 1);
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 4 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 16 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$sgemmNT.bs, $$C, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$sgemmNT.bs, $$C, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  requires $1 == 0;
  modifies $$sgemmNT.bs, $$C, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b5: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const _WATCHED_VALUE_$$A: int;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$B: int;

procedure {:inline 1} _LOG_READ_$$B(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_READ_$$B(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _READ_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_READ_$$B(_P: bool, _offset: int, _value: int);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$B);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$B: bool;

procedure {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$B, _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _WRITE_HAS_OCCURRED_$$B);
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



procedure _CHECK_WRITE_$$B(_P: bool, _offset: int, _value: int);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_ATOMIC_$$B(_P: bool, _offset: int);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



const _WATCHED_VALUE_$$C: int;

procedure {:inline 1} _LOG_READ_$$C(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$C;



implementation {:inline 1} _LOG_READ_$$C(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then true else _READ_HAS_OCCURRED_$$C);
    return;
}



procedure _CHECK_READ_$$C(_P: bool, _offset: int, _value: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$C);
  requires {:source_name "C"} {:array "$$C"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$C: bool;

procedure {:inline 1} _LOG_WRITE_$$C(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$C, _WRITE_READ_BENIGN_FLAG_$$C;



implementation {:inline 1} _LOG_WRITE_$$C(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then true else _WRITE_HAS_OCCURRED_$$C);
    _WRITE_READ_BENIGN_FLAG_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$C);
    return;
}



procedure _CHECK_WRITE_$$C(_P: bool, _offset: int, _value: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C != _value);
  requires {:source_name "C"} {:array "$$C"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C != _value);
  requires {:source_name "C"} {:array "$$C"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$C(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$C;



implementation {:inline 1} _LOG_ATOMIC_$$C(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$C);
    return;
}



procedure _CHECK_ATOMIC_$$C(_P: bool, _offset: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);
  requires {:source_name "C"} {:array "$$C"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$C(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$C;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$C(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$C := (if _P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$C);
    return;
}



const _WATCHED_VALUE_$$sgemmNT.bs: int;

procedure {:inline 1} _LOG_READ_$$sgemmNT.bs(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sgemmNT.bs;



implementation {:inline 1} _LOG_READ_$$sgemmNT.bs(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sgemmNT.bs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sgemmNT.bs == _value then true else _READ_HAS_OCCURRED_$$sgemmNT.bs);
    return;
}



procedure _CHECK_READ_$$sgemmNT.bs(_P: bool, _offset: int, _value: int);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs: bool;

procedure {:inline 1} _LOG_WRITE_$$sgemmNT.bs(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sgemmNT.bs, _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs;



implementation {:inline 1} _LOG_WRITE_$$sgemmNT.bs(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sgemmNT.bs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sgemmNT.bs == _value then true else _WRITE_HAS_OCCURRED_$$sgemmNT.bs);
    _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sgemmNT.bs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs);
    return;
}



procedure _CHECK_WRITE_$$sgemmNT.bs(_P: bool, _offset: int, _value: int);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sgemmNT.bs != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sgemmNT.bs != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sgemmNT.bs(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs;



implementation {:inline 1} _LOG_ATOMIC_$$sgemmNT.bs(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sgemmNT.bs);
    return;
}



procedure _CHECK_ATOMIC_$$sgemmNT.bs(_P: bool, _offset: int);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "bs"} {:array "$$sgemmNT.bs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs := (if _P && _WRITE_HAS_OCCURRED_$$sgemmNT.bs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sgemmNT.bs);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sgemmNT.bs;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$C;
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
    havoc $$C;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sgemmNT.bs;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sgemmNT.bs;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$C;
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
    havoc $$C;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sgemmNT.bs;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sgemmNT.bs;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sgemmNT.bs;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$C;
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
    havoc $$C;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sgemmNT.bs;
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

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;
