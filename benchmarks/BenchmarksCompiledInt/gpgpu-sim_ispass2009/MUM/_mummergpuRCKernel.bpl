type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "match_coords"} {:global} $$match_coords: [int]int;

axiom {:array_info "$$match_coords"} {:global} {:elem_width 8} {:source_name "match_coords"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$match_coords: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$match_coords: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$match_coords: bool;

var {:source_name "queries"} {:global} $$queries: [int]int;

axiom {:array_info "$$queries"} {:global} {:elem_width 8} {:source_name "queries"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queries: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queries: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queries: bool;

var {:source_name "queryAddrs"} {:global} $$queryAddrs: [int]int;

axiom {:array_info "$$queryAddrs"} {:global} {:elem_width 32} {:source_name "queryAddrs"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queryAddrs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queryAddrs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queryAddrs: bool;

var {:source_name "queryLengths"} {:global} $$queryLengths: [int]int;

axiom {:array_info "$$queryLengths"} {:global} {:elem_width 32} {:source_name "queryLengths"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queryLengths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queryLengths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queryLengths: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$cur"} {:elem_width 8} {:source_name "cur"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$node"} {:elem_width 8} {:source_name "node"} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$prev"} {:elem_width 8} {:source_name "prev"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$children"} {:elem_width 8} {:source_name "children"} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 320} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 320} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 256} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 320} {:source_dimensions "1"} true;

axiom {:array_info "$$childrentex"} {:global} {:elem_width 8} {:source_name "childrentex"} {:source_elem_width 320} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$childrentex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$childrentex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$childrentex: bool;

axiom {:array_info "$$nodetex"} {:global} {:elem_width 8} {:source_name "nodetex"} {:source_elem_width 320} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$nodetex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$nodetex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 320} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$nodetex: bool;

axiom {:array_info "$$reftex"} {:global} {:elem_width 8} {:source_name "reftex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$reftex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$reftex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$reftex: bool;

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

function BV32_ASHR(int, int) : int;

function BV32_LSHR(int, int) : int;

function BV8_SEXT32(int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function SI32_TO_FP32(int) : int;

function UI16_TO_FP32(int) : int;

function {:inline true} BV16_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

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

procedure {:source_name "_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "mummergpuRCKernel"} {:kernel} $_Z17mummergpuRCKernelP10MatchCoordPcPKiS3_ii($numQueries: int, $min_match_len: int);
  requires !_READ_HAS_OCCURRED_$$match_coords && !_WRITE_HAS_OCCURRED_$$match_coords && !_ATOMIC_HAS_OCCURRED_$$match_coords;
  requires !_READ_HAS_OCCURRED_$$queries && !_WRITE_HAS_OCCURRED_$$queries && !_ATOMIC_HAS_OCCURRED_$$queries;
  requires !_READ_HAS_OCCURRED_$$queryAddrs && !_WRITE_HAS_OCCURRED_$$queryAddrs && !_ATOMIC_HAS_OCCURRED_$$queryAddrs;
  requires !_READ_HAS_OCCURRED_$$queryLengths && !_WRITE_HAS_OCCURRED_$$queryLengths && !_ATOMIC_HAS_OCCURRED_$$queryLengths;
  requires !_READ_HAS_OCCURRED_$$childrentex && !_WRITE_HAS_OCCURRED_$$childrentex && !_ATOMIC_HAS_OCCURRED_$$childrentex;
  requires !_READ_HAS_OCCURRED_$$nodetex && !_WRITE_HAS_OCCURRED_$$nodetex && !_ATOMIC_HAS_OCCURRED_$$nodetex;
  requires !_READ_HAS_OCCURRED_$$reftex && !_WRITE_HAS_OCCURRED_$$reftex && !_ATOMIC_HAS_OCCURRED_$$reftex;
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
  modifies _WRITE_HAS_OCCURRED_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:source_name "mummergpuRCKernel"} {:kernel} $_Z17mummergpuRCKernelP10MatchCoordPcPKiS3_ii($numQueries: int, $min_match_len: int)
{
  var $mustmatch.0$1: int;
  var $mustmatch.0$2: int;
  var $qry_match_len.0$1: int;
  var $qry_match_len.0$2: int;
  var $result.0$1: int;
  var $result.0$2: int;
  var $qrystart.0$1: int;
  var $qrystart.0$2: int;
  var $mustmatch.1$1: int;
  var $mustmatch.1$2: int;
  var $qry_match_len.1$1: int;
  var $qry_match_len.1$2: int;
  var $.0.i$1: int;
  var $.0.i$2: int;
  var $mustmatch.2$1: int;
  var $mustmatch.2$2: int;
  var $qry_match_len.2$1: int;
  var $qry_match_len.2$2: int;
  var $c.0$1: int;
  var $c.0$2: int;
  var $refpos.0$1: int;
  var $refpos.0$2: int;
  var $mustmatch.5$1: int;
  var $mustmatch.5$2: int;
  var $qry_match_len.7$1: int;
  var $qry_match_len.7$2: int;
  var $mustmatch.3$1: int;
  var $mustmatch.3$2: int;
  var $qry_match_len.3$1: int;
  var $qry_match_len.3$2: int;
  var $refpos.1$1: int;
  var $refpos.1$2: int;
  var $mustmatch.4$1: int;
  var $mustmatch.4$2: int;
  var $qry_match_len.4$1: int;
  var $qry_match_len.4$2: int;
  var $refpos.2$1: int;
  var $refpos.2$2: int;
  var $.0.i1$1: int;
  var $.0.i1$2: int;
  var $qry_match_len.5$1: int;
  var $qry_match_len.5$2: int;
  var $c.1$1: int;
  var $c.1$2: int;
  var $refpos.3$1: int;
  var $refpos.3$2: int;
  var $0$1: int;
  var $0$2: int;
  var $qry_match_len.6$1: int;
  var $qry_match_len.6$2: int;
  var $refpos.4$1: int;
  var $refpos.4$2: int;
  var $.0.i3$1: int;
  var $.0.i3$2: int;
  var v4$1: bool;
  var v4$2: bool;
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
  var v325$1: int;
  var v325$2: int;
  var v326$1: int;
  var v326$2: int;
  var v331$1: int;
  var v331$2: int;
  var v327$1: int;
  var v327$2: int;
  var v328$1: int;
  var v328$2: int;
  var v329$1: int;
  var v329$2: int;
  var v330$1: int;
  var v330$2: int;
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
  var v100$1: int;
  var v100$2: int;
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
  var v148$1: int;
  var v148$2: int;
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
  var v151$1: int;
  var v151$2: int;
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
  var v45$1: int;
  var v45$2: int;
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
  var v247$1: int;
  var v247$2: int;
  var v248$1: int;
  var v248$2: int;
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
  var v102$1: int;
  var v102$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v98$1: int;
  var v98$2: int;
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
  var v3$1: int;
  var v3$2: int;
  var v2$1: int;
  var v2$2: int;
  var v347$1: int;
  var v347$2: int;
  var v348$1: bool;
  var v348$2: bool;
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
  var v356$1: bool;
  var v356$2: bool;
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
  var v304$1: bool;
  var v304$2: bool;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
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
  var v101$1: int;
  var v101$2: int;
  var v161$1: bool;
  var v161$2: bool;
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
  var v13$1: bool;
  var v13$2: bool;
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
  var v164$1: int;
  var v164$2: int;
  var v165$1: int;
  var v165$2: int;
  var v166$1: int;
  var v166$2: int;
  var v167$1: int;
  var v167$2: int;
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
  var v402$1: int;
  var v402$2: int;
  var v449$1: int;
  var v449$2: int;
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
  var v386$1: int;
  var v386$2: int;
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
  var v403$1: int;
  var v403$2: int;
  var v404$1: int;
  var v404$2: int;
  var v387$1: int;
  var v387$2: int;
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
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v46$1: int;
  var v46$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: int;
  var v142$2: int;
  var v143$1: int;
  var v143$2: int;
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
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
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
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
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
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
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
  var v173$1: int;
  var v173$2: int;
  var v174$1: int;
  var v174$2: int;
  var v175$1: int;
  var v175$2: int;
  var v176$1: int;
  var v176$2: int;
  var v185$1: int;
  var v185$2: int;
  var v99$1: int;
  var v99$2: int;
  var v159$1: int;
  var v159$2: int;
  var v160$1: bool;
  var v160$2: bool;
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
  var v162$1: int;
  var v162$2: int;
  var v163$1: int;
  var v163$2: int;
  var v21$1: int;
  var v21$2: int;
  var v30$1: int;
  var v30$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
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
  var v128$1: int;
  var v128$2: int;
  var v129$1: int;
  var v129$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v201$1: int;
  var v201$2: int;
  var v202$1: int;
  var v202$2: int;
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
  var v294$1: bool;
  var v294$2: bool;
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
  var v147$1: int;
  var v147$2: int;
  var v319$1: int;
  var v319$2: int;
  var v320$1: int;
  var v320$2: int;
  var v321$1: int;
  var v321$2: int;
  var v322$1: int;
  var v322$2: int;
  var v323$1: bool;
  var v323$2: bool;
  var v324$1: bool;
  var v324$2: bool;
  var v259$1: int;
  var v259$2: int;
  var v260$1: int;
  var v260$2: int;
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
  var v446$1: int;
  var v446$2: int;
  var v447$1: int;
  var v447$2: int;
  var v448$1: int;
  var v448$2: int;
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
  var v445$1: int;
  var v445$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$match_coords$ghost$$5: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SGE(v0$1, $numQueries);
    v1$2 := BV32_SGE(v0$2, $numQueries);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    v2$1 := (if p1$1 then $$queryLengths[v0$1] else v2$1);
    v2$2 := (if p1$2 then $$queryLengths[v0$2] else v2$2);
    v3$1 := (if p1$1 then $$queryAddrs[v0$1] else v3$1);
    v3$2 := (if p1$2 then $$queryAddrs[v0$2] else v3$2);
    $mustmatch.0$1, $qry_match_len.0$1, $result.0$1, $qrystart.0$1 := (if p1$1 then 0 else $mustmatch.0$1), (if p1$1 then 0 else $qry_match_len.0$1), (if p1$1 then BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)) else $result.0$1), (if p1$1 then v2$1 else $qrystart.0$1);
    $mustmatch.0$2, $qry_match_len.0$2, $result.0$2, $qrystart.0$2 := (if p1$2 then 0 else $mustmatch.0$2), (if p1$2 then 0 else $qry_match_len.0$2), (if p1$2 then BV32_ADD(BV32_MUL(v3$2, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$2, BV32_ADD($min_match_len, 1))), 8)) else $result.0$2), (if p1$2 then v2$2 else $qrystart.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$match_coords$ghost$$5 := _WRITE_HAS_OCCURRED_$$match_coords;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b14 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$match_coords$ghost$$5 == _WRITE_HAS_OCCURRED_$$match_coords;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b13 ==> _WRITE_HAS_OCCURRED_$$match_coords ==> _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 1) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 2) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 3) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 4) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 5) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 1) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 2) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 3) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 4) mod 8 || _WATCHED_OFFSET mod 8 == BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)), 5) mod 8;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b12 ==> _WRITE_HAS_OCCURRED_$$match_coords ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b11 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries) && BV32_SGE($qrystart.0$1, $min_match_len) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b11 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $numQueries) && BV32_SGE($qrystart.0$2, $min_match_len) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b10 ==> p2$1 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b10 ==> p2$2 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $numQueries);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b9 ==> BV32_UGE($qry_match_len.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b9 ==> BV32_UGE($qry_match_len.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b8 ==> BV32_ULE($qry_match_len.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b8 ==> BV32_ULE($qry_match_len.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b7 ==> BV32_SGE($qry_match_len.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b7 ==> BV32_SGE($qry_match_len.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b6 ==> BV32_SLE($qry_match_len.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b6 ==> BV32_SLE($qry_match_len.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b5 ==> BV32_UGE($qrystart.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b5 ==> BV32_UGE($qrystart.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_ULE($qrystart.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_ULE($qrystart.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_SGE($qrystart.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_SGE($qrystart.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SLE($qrystart.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SLE($qrystart.0$2, v2$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b1 ==> $qrystart.0$1 mod -1 == v2$1 mod -1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b1 ==> $qrystart.0$2 mod -1 == v2$2 mod -1;
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $result.0$1 mod 8 == BV32_ADD(BV32_MUL(v3$1, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1))), 8)) mod 8;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $result.0$2 mod 8 == BV32_ADD(BV32_MUL(v3$2, 8), BV32_MUL(BV32_SUB(0, BV32_MUL(v0$2, BV32_ADD($min_match_len, 1))), 8)) mod 8;
    assert {:block_sourceloc} {:sourceloc_num 7} p2$1 ==> true;
    v4$1 := (if p2$1 then BV32_SGE($qrystart.0$1, $min_match_len) else v4$1);
    v4$2 := (if p2$2 then BV32_SGE($qrystart.0$2, $min_match_len) else v4$2);
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
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then $$cur$0$1 else v5$1);
    v5$2 := (if p3$2 then $$cur$0$2 else v5$2);
    v6$1 := (if p3$1 then $$cur$1$1 else v6$1);
    v6$2 := (if p3$2 then $$cur$1$2 else v6$2);
    v7$1 := (if p3$1 then $$cur$2$1 else v7$1);
    v7$2 := (if p3$2 then $$cur$2$2 else v7$2);
    v8$1 := (if p3$1 then $$cur$3$1 else v8$1);
    v8$2 := (if p3$2 then $$cur$3$2 else v8$2);
    v9$1 := (if p3$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v8$1, v7$1), v6$1), v5$1) == 0 else v9$1);
    v9$2 := (if p3$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v8$2, v7$2), v6$2), v5$2) == 0 else v9$2);
    p8$1 := (if p3$1 && v9$1 then v9$1 else p8$1);
    p8$2 := (if p3$2 && v9$2 then v9$2 else p8$2);
    p5$1 := (if p3$1 && !v9$1 then !v9$1 else p5$1);
    p5$2 := (if p3$2 && !v9$2 then !v9$2 else p5$2);
    p8$1 := (if p4$1 then true else p8$1);
    p8$2 := (if p4$2 then true else p8$2);
    v10$1 := (if p5$1 then BV32_SLT($qry_match_len.0$1, 1) else v10$1);
    v10$2 := (if p5$2 then BV32_SLT($qry_match_len.0$2, 1) else v10$2);
    p8$1 := (if p5$1 && v10$1 then v10$1 else p8$1);
    p8$2 := (if p5$2 && v10$2 then v10$2 else p8$2);
    p6$1 := (if p5$1 && !v10$1 then !v10$1 else p6$1);
    p6$2 := (if p5$2 && !v10$2 then !v10$2 else p6$2);
    $mustmatch.1$1, $qry_match_len.1$1 := (if p6$1 then $mustmatch.0$1 else $mustmatch.1$1), (if p6$1 then $qry_match_len.0$1 else $qry_match_len.1$1);
    $mustmatch.1$2, $qry_match_len.1$2 := (if p6$2 then $mustmatch.0$2 else $mustmatch.1$2), (if p6$2 then $qry_match_len.0$2 else $qry_match_len.1$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    $$cur$0$1 := (if p8$1 then 0 else $$cur$0$1);
    $$cur$0$2 := (if p8$2 then 0 else $$cur$0$2);
    $$cur$1$1 := (if p8$1 then 0 else $$cur$1$1);
    $$cur$1$2 := (if p8$2 then 0 else $$cur$1$2);
    $$cur$2$1 := (if p8$1 then 1 else $$cur$2$1);
    $$cur$2$2 := (if p8$2 then 1 else $$cur$2$2);
    $$cur$3$1 := (if p8$1 then 0 else $$cur$3$1);
    $$cur$3$2 := (if p8$2 then 0 else $$cur$3$2);
    $mustmatch.1$1, $qry_match_len.1$1 := (if p8$1 then 0 else $mustmatch.1$1), (if p8$1 then 1 else $qry_match_len.1$1);
    $mustmatch.1$2, $qry_match_len.1$2 := (if p8$2 then 0 else $mustmatch.1$2), (if p8$2 then 1 else $qry_match_len.1$2);
    v11$1 := (if p3$1 then $$queries[BV32_ADD(BV32_ADD(1, v3$1), BV32_SUB($qrystart.0$1, $qry_match_len.1$1))] else v11$1);
    v11$2 := (if p3$2 then $$queries[BV32_ADD(BV32_ADD(1, v3$2), BV32_SUB($qrystart.0$2, $qry_match_len.1$2))] else v11$2);
    v12$1 := (if p3$1 then BV8_SEXT32(v11$1) else v12$1);
    v12$2 := (if p3$2 then BV8_SEXT32(v11$2) else v12$2);
    p14$1 := (if p3$1 && v12$1 == 65 then v12$1 == 65 else p14$1);
    p14$2 := (if p3$2 && v12$2 == 65 then v12$2 == 65 else p14$2);
    p13$1 := (if p3$1 && v12$1 == 67 then v12$1 == 67 else p13$1);
    p13$2 := (if p3$2 && v12$2 == 67 then v12$2 == 67 else p13$2);
    p12$1 := (if p3$1 && v12$1 == 71 then v12$1 == 71 else p12$1);
    p12$2 := (if p3$2 && v12$2 == 71 then v12$2 == 71 else p12$2);
    p11$1 := (if p3$1 && v12$1 == 84 then v12$1 == 84 else p11$1);
    p11$2 := (if p3$2 && v12$2 == 84 then v12$2 == 84 else p11$2);
    p10$1 := (if p3$1 && v12$1 == 113 then v12$1 == 113 else p10$1);
    p10$2 := (if p3$2 && v12$2 == 113 then v12$2 == 113 else p10$2);
    p9$1 := (if p3$1 && v12$1 != 65 && v12$1 != 67 && v12$1 != 71 && v12$1 != 84 && v12$1 != 113 then v12$1 != 65 && v12$1 != 67 && v12$1 != 71 && v12$1 != 84 && v12$1 != 113 else p9$1);
    p9$2 := (if p3$2 && v12$2 != 65 && v12$2 != 67 && v12$2 != 71 && v12$2 != 84 && v12$2 != 113 then v12$2 != 65 && v12$2 != 67 && v12$2 != 71 && v12$2 != 84 && v12$2 != 113 else p9$2);
    $.0.i$1 := (if p9$1 then v11$1 else $.0.i$1);
    $.0.i$2 := (if p9$2 then v11$2 else $.0.i$2);
    $.0.i$1 := (if p10$1 then 0 else $.0.i$1);
    $.0.i$2 := (if p10$2 then 0 else $.0.i$2);
    $.0.i$1 := (if p11$1 then 65 else $.0.i$1);
    $.0.i$2 := (if p11$2 then 65 else $.0.i$2);
    $.0.i$1 := (if p12$1 then 67 else $.0.i$1);
    $.0.i$2 := (if p12$2 then 67 else $.0.i$2);
    $.0.i$1 := (if p13$1 then 71 else $.0.i$1);
    $.0.i$2 := (if p13$2 then 71 else $.0.i$2);
    $.0.i$1 := (if p14$1 then 84 else $.0.i$1);
    $.0.i$2 := (if p14$2 then 84 else $.0.i$2);
    $mustmatch.2$1, $qry_match_len.2$1, $c.0$1, $refpos.0$1 := (if p3$1 then $mustmatch.1$1 else $mustmatch.2$1), (if p3$1 then $qry_match_len.1$1 else $qry_match_len.2$1), (if p3$1 then $.0.i$1 else $c.0$1), (if p3$1 then 0 else $refpos.0$1);
    $mustmatch.2$2, $qry_match_len.2$2, $c.0$2, $refpos.0$2 := (if p3$2 then $mustmatch.1$2 else $mustmatch.2$2), (if p3$2 then $qry_match_len.1$2 else $qry_match_len.2$2), (if p3$2 then $.0.i$2 else $c.0$2), (if p3$2 then 0 else $refpos.0$2);
    p15$1 := (if p3$1 then true else p15$1);
    p15$2 := (if p3$2 then true else p15$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $18;

  $18:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p15"} {:dominator_predicate "p3"} true;
    assert p15$1 ==> p2$1;
    assert p15$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 30} p15$1 ==> true;
    v13$1 := (if p15$1 then BV8_SEXT32($c.0$1) != 0 else v13$1);
    v13$2 := (if p15$2 then BV8_SEXT32($c.0$2) != 0 else v13$2);
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
    p45$1 := false;
    p45$2 := false;
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
    p16$1 := (if p15$1 && v13$1 then v13$1 else p16$1);
    p16$2 := (if p15$2 && v13$2 then v13$2 else p16$2);
    p45$1 := (if p15$1 && !v13$1 then !v13$1 else p45$1);
    p45$2 := (if p15$2 && !v13$2 then !v13$2 else p45$2);
    p15$1 := (if p15$1 && !v13$1 then v13$1 else p15$1);
    p15$2 := (if p15$2 && !v13$2 then v13$2 else p15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p16$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p16$2 then _HAVOC_int$2 else v14$2);
    $$2$0$1 := (if p16$1 then v14$1 else $$2$0$1);
    $$2$0$2 := (if p16$2 then v14$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p16$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p16$2 then _HAVOC_int$2 else v15$2);
    $$2$1$1 := (if p16$1 then v15$1 else $$2$1$1);
    $$2$1$2 := (if p16$2 then v15$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p16$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p16$2 then _HAVOC_int$2 else v16$2);
    $$2$2$1 := (if p16$1 then v16$1 else $$2$2$1);
    $$2$2$2 := (if p16$2 then v16$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p16$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p16$2 then _HAVOC_int$2 else v17$2);
    $$2$3$1 := (if p16$1 then v17$1 else $$2$3$1);
    $$2$3$2 := (if p16$2 then v17$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p16$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p16$2 then _HAVOC_int$2 else v18$2);
    $$2$4$1 := (if p16$1 then v18$1 else $$2$4$1);
    $$2$4$2 := (if p16$2 then v18$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p16$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p16$2 then _HAVOC_int$2 else v19$2);
    $$2$5$1 := (if p16$1 then v19$1 else $$2$5$1);
    $$2$5$2 := (if p16$2 then v19$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p16$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p16$2 then _HAVOC_int$2 else v20$2);
    $$2$6$1 := (if p16$1 then v20$1 else $$2$6$1);
    $$2$6$2 := (if p16$2 then v20$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p16$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p16$2 then _HAVOC_int$2 else v21$2);
    $$2$7$1 := (if p16$1 then v21$1 else $$2$7$1);
    $$2$7$2 := (if p16$2 then v21$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v22$1 := (if p16$1 then _HAVOC_int$1 else v22$1);
    v22$2 := (if p16$2 then _HAVOC_int$2 else v22$2);
    $$2$8$1 := (if p16$1 then v22$1 else $$2$8$1);
    $$2$8$2 := (if p16$2 then v22$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p16$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p16$2 then _HAVOC_int$2 else v23$2);
    $$2$9$1 := (if p16$1 then v23$1 else $$2$9$1);
    $$2$9$2 := (if p16$2 then v23$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p16$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p16$2 then _HAVOC_int$2 else v24$2);
    $$2$10$1 := (if p16$1 then v24$1 else $$2$10$1);
    $$2$10$2 := (if p16$2 then v24$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p16$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p16$2 then _HAVOC_int$2 else v25$2);
    $$2$11$1 := (if p16$1 then v25$1 else $$2$11$1);
    $$2$11$2 := (if p16$2 then v25$2 else $$2$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p16$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p16$2 then _HAVOC_int$2 else v26$2);
    $$2$12$1 := (if p16$1 then v26$1 else $$2$12$1);
    $$2$12$2 := (if p16$2 then v26$2 else $$2$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v27$1 := (if p16$1 then _HAVOC_int$1 else v27$1);
    v27$2 := (if p16$2 then _HAVOC_int$2 else v27$2);
    $$2$13$1 := (if p16$1 then v27$1 else $$2$13$1);
    $$2$13$2 := (if p16$2 then v27$2 else $$2$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p16$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p16$2 then _HAVOC_int$2 else v28$2);
    $$2$14$1 := (if p16$1 then v28$1 else $$2$14$1);
    $$2$14$2 := (if p16$2 then v28$2 else $$2$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p16$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p16$2 then _HAVOC_int$2 else v29$2);
    $$2$15$1 := (if p16$1 then v29$1 else $$2$15$1);
    $$2$15$2 := (if p16$2 then v29$2 else $$2$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p16$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p16$2 then _HAVOC_int$2 else v30$2);
    $$2$16$1 := (if p16$1 then v30$1 else $$2$16$1);
    $$2$16$2 := (if p16$2 then v30$2 else $$2$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p16$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p16$2 then _HAVOC_int$2 else v31$2);
    $$2$17$1 := (if p16$1 then v31$1 else $$2$17$1);
    $$2$17$2 := (if p16$2 then v31$2 else $$2$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p16$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p16$2 then _HAVOC_int$2 else v32$2);
    $$2$18$1 := (if p16$1 then v32$1 else $$2$18$1);
    $$2$18$2 := (if p16$2 then v32$2 else $$2$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p16$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p16$2 then _HAVOC_int$2 else v33$2);
    $$2$19$1 := (if p16$1 then v33$1 else $$2$19$1);
    $$2$19$2 := (if p16$2 then v33$2 else $$2$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p16$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p16$2 then _HAVOC_int$2 else v34$2);
    $$2$20$1 := (if p16$1 then v34$1 else $$2$20$1);
    $$2$20$2 := (if p16$2 then v34$2 else $$2$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p16$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p16$2 then _HAVOC_int$2 else v35$2);
    $$2$21$1 := (if p16$1 then v35$1 else $$2$21$1);
    $$2$21$2 := (if p16$2 then v35$2 else $$2$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p16$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p16$2 then _HAVOC_int$2 else v36$2);
    $$2$22$1 := (if p16$1 then v36$1 else $$2$22$1);
    $$2$22$2 := (if p16$2 then v36$2 else $$2$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p16$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p16$2 then _HAVOC_int$2 else v37$2);
    $$2$23$1 := (if p16$1 then v37$1 else $$2$23$1);
    $$2$23$2 := (if p16$2 then v37$2 else $$2$23$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p16$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p16$2 then _HAVOC_int$2 else v38$2);
    $$2$24$1 := (if p16$1 then v38$1 else $$2$24$1);
    $$2$24$2 := (if p16$2 then v38$2 else $$2$24$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p16$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p16$2 then _HAVOC_int$2 else v39$2);
    $$2$25$1 := (if p16$1 then v39$1 else $$2$25$1);
    $$2$25$2 := (if p16$2 then v39$2 else $$2$25$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p16$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p16$2 then _HAVOC_int$2 else v40$2);
    $$2$26$1 := (if p16$1 then v40$1 else $$2$26$1);
    $$2$26$2 := (if p16$2 then v40$2 else $$2$26$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p16$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p16$2 then _HAVOC_int$2 else v41$2);
    $$2$27$1 := (if p16$1 then v41$1 else $$2$27$1);
    $$2$27$2 := (if p16$2 then v41$2 else $$2$27$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p16$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p16$2 then _HAVOC_int$2 else v42$2);
    $$2$28$1 := (if p16$1 then v42$1 else $$2$28$1);
    $$2$28$2 := (if p16$2 then v42$2 else $$2$28$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p16$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p16$2 then _HAVOC_int$2 else v43$2);
    $$2$29$1 := (if p16$1 then v43$1 else $$2$29$1);
    $$2$29$2 := (if p16$2 then v43$2 else $$2$29$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p16$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p16$2 then _HAVOC_int$2 else v44$2);
    $$2$30$1 := (if p16$1 then v44$1 else $$2$30$1);
    $$2$30$2 := (if p16$2 then v44$2 else $$2$30$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v45$1 := (if p16$1 then _HAVOC_int$1 else v45$1);
    v45$2 := (if p16$2 then _HAVOC_int$2 else v45$2);
    $$2$31$1 := (if p16$1 then v45$1 else $$2$31$1);
    $$2$31$2 := (if p16$2 then v45$2 else $$2$31$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v46$1 := (if p16$1 then _HAVOC_int$1 else v46$1);
    v46$2 := (if p16$2 then _HAVOC_int$2 else v46$2);
    $$2$32$1 := (if p16$1 then v46$1 else $$2$32$1);
    $$2$32$2 := (if p16$2 then v46$2 else $$2$32$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v47$1 := (if p16$1 then _HAVOC_int$1 else v47$1);
    v47$2 := (if p16$2 then _HAVOC_int$2 else v47$2);
    $$2$33$1 := (if p16$1 then v47$1 else $$2$33$1);
    $$2$33$2 := (if p16$2 then v47$2 else $$2$33$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v48$1 := (if p16$1 then _HAVOC_int$1 else v48$1);
    v48$2 := (if p16$2 then _HAVOC_int$2 else v48$2);
    $$2$34$1 := (if p16$1 then v48$1 else $$2$34$1);
    $$2$34$2 := (if p16$2 then v48$2 else $$2$34$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p16$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p16$2 then _HAVOC_int$2 else v49$2);
    $$2$35$1 := (if p16$1 then v49$1 else $$2$35$1);
    $$2$35$2 := (if p16$2 then v49$2 else $$2$35$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p16$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p16$2 then _HAVOC_int$2 else v50$2);
    $$2$36$1 := (if p16$1 then v50$1 else $$2$36$1);
    $$2$36$2 := (if p16$2 then v50$2 else $$2$36$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p16$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p16$2 then _HAVOC_int$2 else v51$2);
    $$2$37$1 := (if p16$1 then v51$1 else $$2$37$1);
    $$2$37$2 := (if p16$2 then v51$2 else $$2$37$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p16$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p16$2 then _HAVOC_int$2 else v52$2);
    $$2$38$1 := (if p16$1 then v52$1 else $$2$38$1);
    $$2$38$2 := (if p16$2 then v52$2 else $$2$38$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v53$1 := (if p16$1 then _HAVOC_int$1 else v53$1);
    v53$2 := (if p16$2 then _HAVOC_int$2 else v53$2);
    $$2$39$1 := (if p16$1 then v53$1 else $$2$39$1);
    $$2$39$2 := (if p16$2 then v53$2 else $$2$39$2);
    v54$1 := (if p16$1 then $$cur$0$1 else v54$1);
    v54$2 := (if p16$2 then $$cur$0$2 else v54$2);
    v55$1 := (if p16$1 then $$cur$1$1 else v55$1);
    v55$2 := (if p16$2 then $$cur$1$2 else v55$2);
    v56$1 := (if p16$1 then $$cur$2$1 else v56$1);
    v56$2 := (if p16$2 then $$cur$2$2 else v56$2);
    v57$1 := (if p16$1 then $$cur$3$1 else v57$1);
    v57$2 := (if p16$2 then $$cur$3$2 else v57$2);
    v58$1 := (if p16$1 then $$2$0$1 else v58$1);
    v58$2 := (if p16$2 then $$2$0$2 else v58$2);
    v59$1 := (if p16$1 then $$2$1$1 else v59$1);
    v59$2 := (if p16$2 then $$2$1$2 else v59$2);
    v60$1 := (if p16$1 then $$2$2$1 else v60$1);
    v60$2 := (if p16$2 then $$2$2$2 else v60$2);
    v61$1 := (if p16$1 then $$2$3$1 else v61$1);
    v61$2 := (if p16$2 then $$2$3$2 else v61$2);
    v62$1 := (if p16$1 then $$2$4$1 else v62$1);
    v62$2 := (if p16$2 then $$2$4$2 else v62$2);
    v63$1 := (if p16$1 then $$2$5$1 else v63$1);
    v63$2 := (if p16$2 then $$2$5$2 else v63$2);
    v64$1 := (if p16$1 then $$2$6$1 else v64$1);
    v64$2 := (if p16$2 then $$2$6$2 else v64$2);
    v65$1 := (if p16$1 then $$2$7$1 else v65$1);
    v65$2 := (if p16$2 then $$2$7$2 else v65$2);
    v66$1 := (if p16$1 then $$2$8$1 else v66$1);
    v66$2 := (if p16$2 then $$2$8$2 else v66$2);
    v67$1 := (if p16$1 then $$2$9$1 else v67$1);
    v67$2 := (if p16$2 then $$2$9$2 else v67$2);
    v68$1 := (if p16$1 then $$2$10$1 else v68$1);
    v68$2 := (if p16$2 then $$2$10$2 else v68$2);
    v69$1 := (if p16$1 then $$2$11$1 else v69$1);
    v69$2 := (if p16$2 then $$2$11$2 else v69$2);
    v70$1 := (if p16$1 then $$2$12$1 else v70$1);
    v70$2 := (if p16$2 then $$2$12$2 else v70$2);
    v71$1 := (if p16$1 then $$2$13$1 else v71$1);
    v71$2 := (if p16$2 then $$2$13$2 else v71$2);
    v72$1 := (if p16$1 then $$2$14$1 else v72$1);
    v72$2 := (if p16$2 then $$2$14$2 else v72$2);
    v73$1 := (if p16$1 then $$2$15$1 else v73$1);
    v73$2 := (if p16$2 then $$2$15$2 else v73$2);
    v74$1 := (if p16$1 then $$2$16$1 else v74$1);
    v74$2 := (if p16$2 then $$2$16$2 else v74$2);
    v75$1 := (if p16$1 then $$2$17$1 else v75$1);
    v75$2 := (if p16$2 then $$2$17$2 else v75$2);
    v76$1 := (if p16$1 then $$2$18$1 else v76$1);
    v76$2 := (if p16$2 then $$2$18$2 else v76$2);
    v77$1 := (if p16$1 then $$2$19$1 else v77$1);
    v77$2 := (if p16$2 then $$2$19$2 else v77$2);
    v78$1 := (if p16$1 then $$2$20$1 else v78$1);
    v78$2 := (if p16$2 then $$2$20$2 else v78$2);
    v79$1 := (if p16$1 then $$2$21$1 else v79$1);
    v79$2 := (if p16$2 then $$2$21$2 else v79$2);
    v80$1 := (if p16$1 then $$2$22$1 else v80$1);
    v80$2 := (if p16$2 then $$2$22$2 else v80$2);
    v81$1 := (if p16$1 then $$2$23$1 else v81$1);
    v81$2 := (if p16$2 then $$2$23$2 else v81$2);
    v82$1 := (if p16$1 then $$2$24$1 else v82$1);
    v82$2 := (if p16$2 then $$2$24$2 else v82$2);
    v83$1 := (if p16$1 then $$2$25$1 else v83$1);
    v83$2 := (if p16$2 then $$2$25$2 else v83$2);
    v84$1 := (if p16$1 then $$2$26$1 else v84$1);
    v84$2 := (if p16$2 then $$2$26$2 else v84$2);
    v85$1 := (if p16$1 then $$2$27$1 else v85$1);
    v85$2 := (if p16$2 then $$2$27$2 else v85$2);
    v86$1 := (if p16$1 then $$2$28$1 else v86$1);
    v86$2 := (if p16$2 then $$2$28$2 else v86$2);
    v87$1 := (if p16$1 then $$2$29$1 else v87$1);
    v87$2 := (if p16$2 then $$2$29$2 else v87$2);
    v88$1 := (if p16$1 then $$2$30$1 else v88$1);
    v88$2 := (if p16$2 then $$2$30$2 else v88$2);
    v89$1 := (if p16$1 then $$2$31$1 else v89$1);
    v89$2 := (if p16$2 then $$2$31$2 else v89$2);
    v90$1 := (if p16$1 then $$2$32$1 else v90$1);
    v90$2 := (if p16$2 then $$2$32$2 else v90$2);
    v91$1 := (if p16$1 then $$2$33$1 else v91$1);
    v91$2 := (if p16$2 then $$2$33$2 else v91$2);
    v92$1 := (if p16$1 then $$2$34$1 else v92$1);
    v92$2 := (if p16$2 then $$2$34$2 else v92$2);
    v93$1 := (if p16$1 then $$2$35$1 else v93$1);
    v93$2 := (if p16$2 then $$2$35$2 else v93$2);
    v94$1 := (if p16$1 then $$2$36$1 else v94$1);
    v94$2 := (if p16$2 then $$2$36$2 else v94$2);
    v95$1 := (if p16$1 then $$2$37$1 else v95$1);
    v95$2 := (if p16$2 then $$2$37$2 else v95$2);
    v96$1 := (if p16$1 then $$2$38$1 else v96$1);
    v96$2 := (if p16$2 then $$2$38$2 else v96$2);
    v97$1 := (if p16$1 then $$2$39$1 else v97$1);
    v97$2 := (if p16$2 then $$2$39$2 else v97$2);
    call {:sourceloc_num 158} v98$1, v98$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p16$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v89$1, v88$1), v87$1), v86$1), v85$1), v84$1), v83$1), v82$1), v81$1), v80$1), v79$1), v78$1), v77$1), v76$1), v75$1), v74$1), v73$1), v72$1), v71$1), v70$1), v69$1), v68$1), v67$1), v66$1), v65$1), v64$1), v63$1), v62$1), v61$1), v60$1), v59$1), v58$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v93$1, v92$1), v91$1), v90$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v97$1, v96$1), v95$1), v94$1), UI16_TO_FP32(BV_CONCAT(v55$1, v54$1)), UI16_TO_FP32(BV_CONCAT(v57$1, v56$1)), p16$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v89$2, v88$2), v87$2), v86$2), v85$2), v84$2), v83$2), v82$2), v81$2), v80$2), v79$2), v78$2), v77$2), v76$2), v75$2), v74$2), v73$2), v72$2), v71$2), v70$2), v69$2), v68$2), v67$2), v66$2), v65$2), v64$2), v63$2), v62$2), v61$2), v60$2), v59$2), v58$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v93$2, v92$2), v91$2), v90$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v97$2, v96$2), v95$2), v94$2), UI16_TO_FP32(BV_CONCAT(v55$2, v54$2)), UI16_TO_FP32(BV_CONCAT(v57$2, v56$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v99$1 := (if p16$1 then BV_EXTRACT(v98$1, 64, 0) else v99$1);
    v99$2 := (if p16$2 then BV_EXTRACT(v98$2, 64, 0) else v99$2);
    $$1$0$1 := (if p16$1 then BV_EXTRACT(v99$1, 8, 0) else $$1$0$1);
    $$1$0$2 := (if p16$2 then BV_EXTRACT(v99$2, 8, 0) else $$1$0$2);
    $$1$1$1 := (if p16$1 then BV_EXTRACT(v99$1, 16, 8) else $$1$1$1);
    $$1$1$2 := (if p16$2 then BV_EXTRACT(v99$2, 16, 8) else $$1$1$2);
    $$1$2$1 := (if p16$1 then BV_EXTRACT(v99$1, 24, 16) else $$1$2$1);
    $$1$2$2 := (if p16$2 then BV_EXTRACT(v99$2, 24, 16) else $$1$2$2);
    $$1$3$1 := (if p16$1 then BV_EXTRACT(v99$1, 32, 24) else $$1$3$1);
    $$1$3$2 := (if p16$2 then BV_EXTRACT(v99$2, 32, 24) else $$1$3$2);
    $$1$4$1 := (if p16$1 then BV_EXTRACT(v99$1, 40, 32) else $$1$4$1);
    $$1$4$2 := (if p16$2 then BV_EXTRACT(v99$2, 40, 32) else $$1$4$2);
    $$1$5$1 := (if p16$1 then BV_EXTRACT(v99$1, 48, 40) else $$1$5$1);
    $$1$5$2 := (if p16$2 then BV_EXTRACT(v99$2, 48, 40) else $$1$5$2);
    $$1$6$1 := (if p16$1 then BV_EXTRACT(v99$1, 56, 48) else $$1$6$1);
    $$1$6$2 := (if p16$2 then BV_EXTRACT(v99$2, 56, 48) else $$1$6$2);
    $$1$7$1 := (if p16$1 then BV_EXTRACT(v99$1, 64, 56) else $$1$7$1);
    $$1$7$2 := (if p16$2 then BV_EXTRACT(v99$2, 64, 56) else $$1$7$2);
    v100$1 := (if p16$1 then BV_EXTRACT(v98$1, 128, 64) else v100$1);
    v100$2 := (if p16$2 then BV_EXTRACT(v98$2, 128, 64) else v100$2);
    $$1$8$1 := (if p16$1 then BV_EXTRACT(v100$1, 8, 0) else $$1$8$1);
    $$1$8$2 := (if p16$2 then BV_EXTRACT(v100$2, 8, 0) else $$1$8$2);
    $$1$9$1 := (if p16$1 then BV_EXTRACT(v100$1, 16, 8) else $$1$9$1);
    $$1$9$2 := (if p16$2 then BV_EXTRACT(v100$2, 16, 8) else $$1$9$2);
    $$1$10$1 := (if p16$1 then BV_EXTRACT(v100$1, 24, 16) else $$1$10$1);
    $$1$10$2 := (if p16$2 then BV_EXTRACT(v100$2, 24, 16) else $$1$10$2);
    $$1$11$1 := (if p16$1 then BV_EXTRACT(v100$1, 32, 24) else $$1$11$1);
    $$1$11$2 := (if p16$2 then BV_EXTRACT(v100$2, 32, 24) else $$1$11$2);
    $$1$12$1 := (if p16$1 then BV_EXTRACT(v100$1, 40, 32) else $$1$12$1);
    $$1$12$2 := (if p16$2 then BV_EXTRACT(v100$2, 40, 32) else $$1$12$2);
    $$1$13$1 := (if p16$1 then BV_EXTRACT(v100$1, 48, 40) else $$1$13$1);
    $$1$13$2 := (if p16$2 then BV_EXTRACT(v100$2, 48, 40) else $$1$13$2);
    $$1$14$1 := (if p16$1 then BV_EXTRACT(v100$1, 56, 48) else $$1$14$1);
    $$1$14$2 := (if p16$2 then BV_EXTRACT(v100$2, 56, 48) else $$1$14$2);
    $$1$15$1 := (if p16$1 then BV_EXTRACT(v100$1, 64, 56) else $$1$15$1);
    $$1$15$2 := (if p16$2 then BV_EXTRACT(v100$2, 64, 56) else $$1$15$2);
    v101$1 := (if p16$1 then BV_EXTRACT(v98$1, 192, 128) else v101$1);
    v101$2 := (if p16$2 then BV_EXTRACT(v98$2, 192, 128) else v101$2);
    $$1$16$1 := (if p16$1 then BV_EXTRACT(v101$1, 8, 0) else $$1$16$1);
    $$1$16$2 := (if p16$2 then BV_EXTRACT(v101$2, 8, 0) else $$1$16$2);
    $$1$17$1 := (if p16$1 then BV_EXTRACT(v101$1, 16, 8) else $$1$17$1);
    $$1$17$2 := (if p16$2 then BV_EXTRACT(v101$2, 16, 8) else $$1$17$2);
    $$1$18$1 := (if p16$1 then BV_EXTRACT(v101$1, 24, 16) else $$1$18$1);
    $$1$18$2 := (if p16$2 then BV_EXTRACT(v101$2, 24, 16) else $$1$18$2);
    $$1$19$1 := (if p16$1 then BV_EXTRACT(v101$1, 32, 24) else $$1$19$1);
    $$1$19$2 := (if p16$2 then BV_EXTRACT(v101$2, 32, 24) else $$1$19$2);
    $$1$20$1 := (if p16$1 then BV_EXTRACT(v101$1, 40, 32) else $$1$20$1);
    $$1$20$2 := (if p16$2 then BV_EXTRACT(v101$2, 40, 32) else $$1$20$2);
    $$1$21$1 := (if p16$1 then BV_EXTRACT(v101$1, 48, 40) else $$1$21$1);
    $$1$21$2 := (if p16$2 then BV_EXTRACT(v101$2, 48, 40) else $$1$21$2);
    $$1$22$1 := (if p16$1 then BV_EXTRACT(v101$1, 56, 48) else $$1$22$1);
    $$1$22$2 := (if p16$2 then BV_EXTRACT(v101$2, 56, 48) else $$1$22$2);
    $$1$23$1 := (if p16$1 then BV_EXTRACT(v101$1, 64, 56) else $$1$23$1);
    $$1$23$2 := (if p16$2 then BV_EXTRACT(v101$2, 64, 56) else $$1$23$2);
    v102$1 := (if p16$1 then BV_EXTRACT(v98$1, 256, 192) else v102$1);
    v102$2 := (if p16$2 then BV_EXTRACT(v98$2, 256, 192) else v102$2);
    $$1$24$1 := (if p16$1 then BV_EXTRACT(v102$1, 8, 0) else $$1$24$1);
    $$1$24$2 := (if p16$2 then BV_EXTRACT(v102$2, 8, 0) else $$1$24$2);
    $$1$25$1 := (if p16$1 then BV_EXTRACT(v102$1, 16, 8) else $$1$25$1);
    $$1$25$2 := (if p16$2 then BV_EXTRACT(v102$2, 16, 8) else $$1$25$2);
    $$1$26$1 := (if p16$1 then BV_EXTRACT(v102$1, 24, 16) else $$1$26$1);
    $$1$26$2 := (if p16$2 then BV_EXTRACT(v102$2, 24, 16) else $$1$26$2);
    $$1$27$1 := (if p16$1 then BV_EXTRACT(v102$1, 32, 24) else $$1$27$1);
    $$1$27$2 := (if p16$2 then BV_EXTRACT(v102$2, 32, 24) else $$1$27$2);
    $$1$28$1 := (if p16$1 then BV_EXTRACT(v102$1, 40, 32) else $$1$28$1);
    $$1$28$2 := (if p16$2 then BV_EXTRACT(v102$2, 40, 32) else $$1$28$2);
    $$1$29$1 := (if p16$1 then BV_EXTRACT(v102$1, 48, 40) else $$1$29$1);
    $$1$29$2 := (if p16$2 then BV_EXTRACT(v102$2, 48, 40) else $$1$29$2);
    $$1$30$1 := (if p16$1 then BV_EXTRACT(v102$1, 56, 48) else $$1$30$1);
    $$1$30$2 := (if p16$2 then BV_EXTRACT(v102$2, 56, 48) else $$1$30$2);
    $$1$31$1 := (if p16$1 then BV_EXTRACT(v102$1, 64, 56) else $$1$31$1);
    $$1$31$2 := (if p16$2 then BV_EXTRACT(v102$2, 64, 56) else $$1$31$2);
    v103$1 := (if p16$1 then $$1$0$1 else v103$1);
    v103$2 := (if p16$2 then $$1$0$2 else v103$2);
    $$children$0$1 := (if p16$1 then v103$1 else $$children$0$1);
    $$children$0$2 := (if p16$2 then v103$2 else $$children$0$2);
    v104$1 := (if p16$1 then $$1$1$1 else v104$1);
    v104$2 := (if p16$2 then $$1$1$2 else v104$2);
    $$children$1$1 := (if p16$1 then v104$1 else $$children$1$1);
    $$children$1$2 := (if p16$2 then v104$2 else $$children$1$2);
    v105$1 := (if p16$1 then $$1$2$1 else v105$1);
    v105$2 := (if p16$2 then $$1$2$2 else v105$2);
    $$children$2$1 := (if p16$1 then v105$1 else $$children$2$1);
    $$children$2$2 := (if p16$2 then v105$2 else $$children$2$2);
    v106$1 := (if p16$1 then $$1$3$1 else v106$1);
    v106$2 := (if p16$2 then $$1$3$2 else v106$2);
    $$children$3$1 := (if p16$1 then v106$1 else $$children$3$1);
    $$children$3$2 := (if p16$2 then v106$2 else $$children$3$2);
    v107$1 := (if p16$1 then $$1$4$1 else v107$1);
    v107$2 := (if p16$2 then $$1$4$2 else v107$2);
    $$children$4$1 := (if p16$1 then v107$1 else $$children$4$1);
    $$children$4$2 := (if p16$2 then v107$2 else $$children$4$2);
    v108$1 := (if p16$1 then $$1$5$1 else v108$1);
    v108$2 := (if p16$2 then $$1$5$2 else v108$2);
    $$children$5$1 := (if p16$1 then v108$1 else $$children$5$1);
    $$children$5$2 := (if p16$2 then v108$2 else $$children$5$2);
    v109$1 := (if p16$1 then $$1$6$1 else v109$1);
    v109$2 := (if p16$2 then $$1$6$2 else v109$2);
    $$children$6$1 := (if p16$1 then v109$1 else $$children$6$1);
    $$children$6$2 := (if p16$2 then v109$2 else $$children$6$2);
    v110$1 := (if p16$1 then $$1$7$1 else v110$1);
    v110$2 := (if p16$2 then $$1$7$2 else v110$2);
    $$children$7$1 := (if p16$1 then v110$1 else $$children$7$1);
    $$children$7$2 := (if p16$2 then v110$2 else $$children$7$2);
    v111$1 := (if p16$1 then $$1$8$1 else v111$1);
    v111$2 := (if p16$2 then $$1$8$2 else v111$2);
    $$children$8$1 := (if p16$1 then v111$1 else $$children$8$1);
    $$children$8$2 := (if p16$2 then v111$2 else $$children$8$2);
    v112$1 := (if p16$1 then $$1$9$1 else v112$1);
    v112$2 := (if p16$2 then $$1$9$2 else v112$2);
    $$children$9$1 := (if p16$1 then v112$1 else $$children$9$1);
    $$children$9$2 := (if p16$2 then v112$2 else $$children$9$2);
    v113$1 := (if p16$1 then $$1$10$1 else v113$1);
    v113$2 := (if p16$2 then $$1$10$2 else v113$2);
    $$children$10$1 := (if p16$1 then v113$1 else $$children$10$1);
    $$children$10$2 := (if p16$2 then v113$2 else $$children$10$2);
    v114$1 := (if p16$1 then $$1$11$1 else v114$1);
    v114$2 := (if p16$2 then $$1$11$2 else v114$2);
    $$children$11$1 := (if p16$1 then v114$1 else $$children$11$1);
    $$children$11$2 := (if p16$2 then v114$2 else $$children$11$2);
    v115$1 := (if p16$1 then $$1$12$1 else v115$1);
    v115$2 := (if p16$2 then $$1$12$2 else v115$2);
    $$children$12$1 := (if p16$1 then v115$1 else $$children$12$1);
    $$children$12$2 := (if p16$2 then v115$2 else $$children$12$2);
    v116$1 := (if p16$1 then $$1$13$1 else v116$1);
    v116$2 := (if p16$2 then $$1$13$2 else v116$2);
    $$children$13$1 := (if p16$1 then v116$1 else $$children$13$1);
    $$children$13$2 := (if p16$2 then v116$2 else $$children$13$2);
    v117$1 := (if p16$1 then $$1$14$1 else v117$1);
    v117$2 := (if p16$2 then $$1$14$2 else v117$2);
    $$children$14$1 := (if p16$1 then v117$1 else $$children$14$1);
    $$children$14$2 := (if p16$2 then v117$2 else $$children$14$2);
    v118$1 := (if p16$1 then $$1$15$1 else v118$1);
    v118$2 := (if p16$2 then $$1$15$2 else v118$2);
    $$children$15$1 := (if p16$1 then v118$1 else $$children$15$1);
    $$children$15$2 := (if p16$2 then v118$2 else $$children$15$2);
    v119$1 := (if p16$1 then $$1$16$1 else v119$1);
    v119$2 := (if p16$2 then $$1$16$2 else v119$2);
    $$children$16$1 := (if p16$1 then v119$1 else $$children$16$1);
    $$children$16$2 := (if p16$2 then v119$2 else $$children$16$2);
    v120$1 := (if p16$1 then $$1$17$1 else v120$1);
    v120$2 := (if p16$2 then $$1$17$2 else v120$2);
    $$children$17$1 := (if p16$1 then v120$1 else $$children$17$1);
    $$children$17$2 := (if p16$2 then v120$2 else $$children$17$2);
    v121$1 := (if p16$1 then $$1$18$1 else v121$1);
    v121$2 := (if p16$2 then $$1$18$2 else v121$2);
    $$children$18$1 := (if p16$1 then v121$1 else $$children$18$1);
    $$children$18$2 := (if p16$2 then v121$2 else $$children$18$2);
    v122$1 := (if p16$1 then $$1$19$1 else v122$1);
    v122$2 := (if p16$2 then $$1$19$2 else v122$2);
    $$children$19$1 := (if p16$1 then v122$1 else $$children$19$1);
    $$children$19$2 := (if p16$2 then v122$2 else $$children$19$2);
    v123$1 := (if p16$1 then $$1$20$1 else v123$1);
    v123$2 := (if p16$2 then $$1$20$2 else v123$2);
    $$children$20$1 := (if p16$1 then v123$1 else $$children$20$1);
    $$children$20$2 := (if p16$2 then v123$2 else $$children$20$2);
    v124$1 := (if p16$1 then $$1$21$1 else v124$1);
    v124$2 := (if p16$2 then $$1$21$2 else v124$2);
    $$children$21$1 := (if p16$1 then v124$1 else $$children$21$1);
    $$children$21$2 := (if p16$2 then v124$2 else $$children$21$2);
    v125$1 := (if p16$1 then $$1$22$1 else v125$1);
    v125$2 := (if p16$2 then $$1$22$2 else v125$2);
    $$children$22$1 := (if p16$1 then v125$1 else $$children$22$1);
    $$children$22$2 := (if p16$2 then v125$2 else $$children$22$2);
    v126$1 := (if p16$1 then $$1$23$1 else v126$1);
    v126$2 := (if p16$2 then $$1$23$2 else v126$2);
    $$children$23$1 := (if p16$1 then v126$1 else $$children$23$1);
    $$children$23$2 := (if p16$2 then v126$2 else $$children$23$2);
    v127$1 := (if p16$1 then $$1$24$1 else v127$1);
    v127$2 := (if p16$2 then $$1$24$2 else v127$2);
    $$children$24$1 := (if p16$1 then v127$1 else $$children$24$1);
    $$children$24$2 := (if p16$2 then v127$2 else $$children$24$2);
    v128$1 := (if p16$1 then $$1$25$1 else v128$1);
    v128$2 := (if p16$2 then $$1$25$2 else v128$2);
    $$children$25$1 := (if p16$1 then v128$1 else $$children$25$1);
    $$children$25$2 := (if p16$2 then v128$2 else $$children$25$2);
    v129$1 := (if p16$1 then $$1$26$1 else v129$1);
    v129$2 := (if p16$2 then $$1$26$2 else v129$2);
    $$children$26$1 := (if p16$1 then v129$1 else $$children$26$1);
    $$children$26$2 := (if p16$2 then v129$2 else $$children$26$2);
    v130$1 := (if p16$1 then $$1$27$1 else v130$1);
    v130$2 := (if p16$2 then $$1$27$2 else v130$2);
    $$children$27$1 := (if p16$1 then v130$1 else $$children$27$1);
    $$children$27$2 := (if p16$2 then v130$2 else $$children$27$2);
    v131$1 := (if p16$1 then $$1$28$1 else v131$1);
    v131$2 := (if p16$2 then $$1$28$2 else v131$2);
    $$children$28$1 := (if p16$1 then v131$1 else $$children$28$1);
    $$children$28$2 := (if p16$2 then v131$2 else $$children$28$2);
    v132$1 := (if p16$1 then $$1$29$1 else v132$1);
    v132$2 := (if p16$2 then $$1$29$2 else v132$2);
    $$children$29$1 := (if p16$1 then v132$1 else $$children$29$1);
    $$children$29$2 := (if p16$2 then v132$2 else $$children$29$2);
    v133$1 := (if p16$1 then $$1$30$1 else v133$1);
    v133$2 := (if p16$2 then $$1$30$2 else v133$2);
    $$children$30$1 := (if p16$1 then v133$1 else $$children$30$1);
    $$children$30$2 := (if p16$2 then v133$2 else $$children$30$2);
    v134$1 := (if p16$1 then $$1$31$1 else v134$1);
    v134$2 := (if p16$2 then $$1$31$2 else v134$2);
    $$children$31$1 := (if p16$1 then v134$1 else $$children$31$1);
    $$children$31$2 := (if p16$2 then v134$2 else $$children$31$2);
    v135$1 := (if p16$1 then $$cur$0$1 else v135$1);
    v135$2 := (if p16$2 then $$cur$0$2 else v135$2);
    $$prev$0$1 := (if p16$1 then v135$1 else $$prev$0$1);
    $$prev$0$2 := (if p16$2 then v135$2 else $$prev$0$2);
    v136$1 := (if p16$1 then $$cur$1$1 else v136$1);
    v136$2 := (if p16$2 then $$cur$1$2 else v136$2);
    $$prev$1$1 := (if p16$1 then v136$1 else $$prev$1$1);
    $$prev$1$2 := (if p16$2 then v136$2 else $$prev$1$2);
    v137$1 := (if p16$1 then $$cur$2$1 else v137$1);
    v137$2 := (if p16$2 then $$cur$2$2 else v137$2);
    $$prev$2$1 := (if p16$1 then v137$1 else $$prev$2$1);
    $$prev$2$2 := (if p16$2 then v137$2 else $$prev$2$2);
    v138$1 := (if p16$1 then $$cur$3$1 else v138$1);
    v138$2 := (if p16$2 then $$cur$3$2 else v138$2);
    $$prev$3$1 := (if p16$1 then v138$1 else $$prev$3$1);
    $$prev$3$2 := (if p16$2 then v138$2 else $$prev$3$2);
    v139$1 := (if p16$1 then BV8_SEXT32($c.0$1) else v139$1);
    v139$2 := (if p16$2 then BV8_SEXT32($c.0$2) else v139$2);
    p21$1 := (if p16$1 && v139$1 == 65 then v139$1 == 65 else p21$1);
    p21$2 := (if p16$2 && v139$2 == 65 then v139$2 == 65 else p21$2);
    p20$1 := (if p16$1 && v139$1 == 67 then v139$1 == 67 else p20$1);
    p20$2 := (if p16$2 && v139$2 == 67 then v139$2 == 67 else p20$2);
    p19$1 := (if p16$1 && v139$1 == 71 then v139$1 == 71 else p19$1);
    p19$2 := (if p16$2 && v139$2 == 71 then v139$2 == 71 else p19$2);
    p18$1 := (if p16$1 && v139$1 == 84 then v139$1 == 84 else p18$1);
    p18$2 := (if p16$2 && v139$2 == 84 then v139$2 == 84 else p18$2);
    p17$1 := (if p16$1 && v139$1 != 65 && v139$1 != 67 && v139$1 != 71 && v139$1 != 84 then v139$1 != 65 && v139$1 != 67 && v139$1 != 71 && v139$1 != 84 else p17$1);
    p17$2 := (if p16$2 && v139$2 != 65 && v139$2 != 67 && v139$2 != 71 && v139$2 != 84 then v139$2 != 65 && v139$2 != 67 && v139$2 != 71 && v139$2 != 84 else p17$2);
    $$cur$0$1 := (if p17$1 then 0 else $$cur$0$1);
    $$cur$0$2 := (if p17$2 then 0 else $$cur$0$2);
    $$cur$1$1 := (if p17$1 then 0 else $$cur$1$1);
    $$cur$1$2 := (if p17$2 then 0 else $$cur$1$2);
    $$cur$2$1 := (if p17$1 then 0 else $$cur$2$1);
    $$cur$2$2 := (if p17$2 then 0 else $$cur$2$2);
    $$cur$3$1 := (if p17$1 then 0 else $$cur$3$1);
    $$cur$3$2 := (if p17$2 then 0 else $$cur$3$2);
    v152$1 := (if p18$1 then $$children$12$1 else v152$1);
    v152$2 := (if p18$2 then $$children$12$2 else v152$2);
    $$cur$0$1 := (if p18$1 then v152$1 else $$cur$0$1);
    $$cur$0$2 := (if p18$2 then v152$2 else $$cur$0$2);
    v153$1 := (if p18$1 then $$children$13$1 else v153$1);
    v153$2 := (if p18$2 then $$children$13$2 else v153$2);
    $$cur$1$1 := (if p18$1 then v153$1 else $$cur$1$1);
    $$cur$1$2 := (if p18$2 then v153$2 else $$cur$1$2);
    v154$1 := (if p18$1 then $$children$14$1 else v154$1);
    v154$2 := (if p18$2 then $$children$14$2 else v154$2);
    $$cur$2$1 := (if p18$1 then v154$1 else $$cur$2$1);
    $$cur$2$2 := (if p18$2 then v154$2 else $$cur$2$2);
    v155$1 := (if p18$1 then $$children$15$1 else v155$1);
    v155$2 := (if p18$2 then $$children$15$2 else v155$2);
    $$cur$3$1 := (if p18$1 then v155$1 else $$cur$3$1);
    $$cur$3$2 := (if p18$2 then v155$2 else $$cur$3$2);
    v148$1 := (if p19$1 then $$children$8$1 else v148$1);
    v148$2 := (if p19$2 then $$children$8$2 else v148$2);
    $$cur$0$1 := (if p19$1 then v148$1 else $$cur$0$1);
    $$cur$0$2 := (if p19$2 then v148$2 else $$cur$0$2);
    v149$1 := (if p19$1 then $$children$9$1 else v149$1);
    v149$2 := (if p19$2 then $$children$9$2 else v149$2);
    $$cur$1$1 := (if p19$1 then v149$1 else $$cur$1$1);
    $$cur$1$2 := (if p19$2 then v149$2 else $$cur$1$2);
    v150$1 := (if p19$1 then $$children$10$1 else v150$1);
    v150$2 := (if p19$2 then $$children$10$2 else v150$2);
    $$cur$2$1 := (if p19$1 then v150$1 else $$cur$2$1);
    $$cur$2$2 := (if p19$2 then v150$2 else $$cur$2$2);
    v151$1 := (if p19$1 then $$children$11$1 else v151$1);
    v151$2 := (if p19$2 then $$children$11$2 else v151$2);
    $$cur$3$1 := (if p19$1 then v151$1 else $$cur$3$1);
    $$cur$3$2 := (if p19$2 then v151$2 else $$cur$3$2);
    v144$1 := (if p20$1 then $$children$4$1 else v144$1);
    v144$2 := (if p20$2 then $$children$4$2 else v144$2);
    $$cur$0$1 := (if p20$1 then v144$1 else $$cur$0$1);
    $$cur$0$2 := (if p20$2 then v144$2 else $$cur$0$2);
    v145$1 := (if p20$1 then $$children$5$1 else v145$1);
    v145$2 := (if p20$2 then $$children$5$2 else v145$2);
    $$cur$1$1 := (if p20$1 then v145$1 else $$cur$1$1);
    $$cur$1$2 := (if p20$2 then v145$2 else $$cur$1$2);
    v146$1 := (if p20$1 then $$children$6$1 else v146$1);
    v146$2 := (if p20$2 then $$children$6$2 else v146$2);
    $$cur$2$1 := (if p20$1 then v146$1 else $$cur$2$1);
    $$cur$2$2 := (if p20$2 then v146$2 else $$cur$2$2);
    v147$1 := (if p20$1 then $$children$7$1 else v147$1);
    v147$2 := (if p20$2 then $$children$7$2 else v147$2);
    $$cur$3$1 := (if p20$1 then v147$1 else $$cur$3$1);
    $$cur$3$2 := (if p20$2 then v147$2 else $$cur$3$2);
    v140$1 := (if p21$1 then $$children$0$1 else v140$1);
    v140$2 := (if p21$2 then $$children$0$2 else v140$2);
    $$cur$0$1 := (if p21$1 then v140$1 else $$cur$0$1);
    $$cur$0$2 := (if p21$2 then v140$2 else $$cur$0$2);
    v141$1 := (if p21$1 then $$children$1$1 else v141$1);
    v141$2 := (if p21$2 then $$children$1$2 else v141$2);
    $$cur$1$1 := (if p21$1 then v141$1 else $$cur$1$1);
    $$cur$1$2 := (if p21$2 then v141$2 else $$cur$1$2);
    v142$1 := (if p21$1 then $$children$2$1 else v142$1);
    v142$2 := (if p21$2 then $$children$2$2 else v142$2);
    $$cur$2$1 := (if p21$1 then v142$1 else $$cur$2$1);
    $$cur$2$2 := (if p21$2 then v142$2 else $$cur$2$2);
    v143$1 := (if p21$1 then $$children$3$1 else v143$1);
    v143$2 := (if p21$2 then $$children$3$2 else v143$2);
    $$cur$3$1 := (if p21$1 then v143$1 else $$cur$3$1);
    $$cur$3$2 := (if p21$2 then v143$2 else $$cur$3$2);
    v156$1 := (if p16$1 then $$cur$0$1 else v156$1);
    v156$2 := (if p16$2 then $$cur$0$2 else v156$2);
    v157$1 := (if p16$1 then $$cur$1$1 else v157$1);
    v157$2 := (if p16$2 then $$cur$1$2 else v157$2);
    v158$1 := (if p16$1 then $$cur$2$1 else v158$1);
    v158$2 := (if p16$2 then $$cur$2$2 else v158$2);
    v159$1 := (if p16$1 then $$cur$3$1 else v159$1);
    v159$2 := (if p16$2 then $$cur$3$2 else v159$2);
    v160$1 := (if p16$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$1, v158$1), v157$1), v156$1) == 0 else v160$1);
    v160$2 := (if p16$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$2, v158$2), v157$2), v156$2) == 0 else v160$2);
    p50$1 := (if p16$1 && v160$1 then v160$1 else p50$1);
    p50$2 := (if p16$2 && v160$2 then v160$2 else p50$2);
    p15$1 := (if p16$1 && v160$1 then !v160$1 else p15$1);
    p15$2 := (if p16$2 && v160$2 then !v160$2 else p15$2);
    p22$1 := (if p16$1 && !v160$1 then !v160$1 else p22$1);
    p22$2 := (if p16$2 && !v160$2 then !v160$2 else p22$2);
    v169$1 := (if p22$1 then $$cur$0$1 else v169$1);
    v169$2 := (if p22$2 then $$cur$0$2 else v169$2);
    v170$1 := (if p22$1 then $$cur$1$1 else v170$1);
    v170$2 := (if p22$2 then $$cur$1$2 else v170$2);
    v171$1 := (if p22$1 then $$cur$2$1 else v171$1);
    v171$2 := (if p22$2 then $$cur$2$2 else v171$2);
    v172$1 := (if p22$1 then $$cur$3$1 else v172$1);
    v172$2 := (if p22$2 then $$cur$3$2 else v172$2);
    v173$1 := (if p22$1 then $$cur$0$1 else v173$1);
    v173$2 := (if p22$2 then $$cur$0$2 else v173$2);
    v174$1 := (if p22$1 then $$cur$1$1 else v174$1);
    v174$2 := (if p22$2 then $$cur$1$2 else v174$2);
    v175$1 := (if p22$1 then $$cur$2$1 else v175$1);
    v175$2 := (if p22$2 then $$cur$2$2 else v175$2);
    v176$1 := (if p22$1 then $$cur$3$1 else v176$1);
    v176$2 := (if p22$2 then $$cur$3$2 else v176$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v177$1 := (if p22$1 then _HAVOC_int$1 else v177$1);
    v177$2 := (if p22$2 then _HAVOC_int$2 else v177$2);
    $$4$0$1 := (if p22$1 then v177$1 else $$4$0$1);
    $$4$0$2 := (if p22$2 then v177$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v178$1 := (if p22$1 then _HAVOC_int$1 else v178$1);
    v178$2 := (if p22$2 then _HAVOC_int$2 else v178$2);
    $$4$1$1 := (if p22$1 then v178$1 else $$4$1$1);
    $$4$1$2 := (if p22$2 then v178$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v179$1 := (if p22$1 then _HAVOC_int$1 else v179$1);
    v179$2 := (if p22$2 then _HAVOC_int$2 else v179$2);
    $$4$2$1 := (if p22$1 then v179$1 else $$4$2$1);
    $$4$2$2 := (if p22$2 then v179$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v180$1 := (if p22$1 then _HAVOC_int$1 else v180$1);
    v180$2 := (if p22$2 then _HAVOC_int$2 else v180$2);
    $$4$3$1 := (if p22$1 then v180$1 else $$4$3$1);
    $$4$3$2 := (if p22$2 then v180$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v181$1 := (if p22$1 then _HAVOC_int$1 else v181$1);
    v181$2 := (if p22$2 then _HAVOC_int$2 else v181$2);
    $$4$4$1 := (if p22$1 then v181$1 else $$4$4$1);
    $$4$4$2 := (if p22$2 then v181$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v182$1 := (if p22$1 then _HAVOC_int$1 else v182$1);
    v182$2 := (if p22$2 then _HAVOC_int$2 else v182$2);
    $$4$5$1 := (if p22$1 then v182$1 else $$4$5$1);
    $$4$5$2 := (if p22$2 then v182$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v183$1 := (if p22$1 then _HAVOC_int$1 else v183$1);
    v183$2 := (if p22$2 then _HAVOC_int$2 else v183$2);
    $$4$6$1 := (if p22$1 then v183$1 else $$4$6$1);
    $$4$6$2 := (if p22$2 then v183$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v184$1 := (if p22$1 then _HAVOC_int$1 else v184$1);
    v184$2 := (if p22$2 then _HAVOC_int$2 else v184$2);
    $$4$7$1 := (if p22$1 then v184$1 else $$4$7$1);
    $$4$7$2 := (if p22$2 then v184$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v185$1 := (if p22$1 then _HAVOC_int$1 else v185$1);
    v185$2 := (if p22$2 then _HAVOC_int$2 else v185$2);
    $$4$8$1 := (if p22$1 then v185$1 else $$4$8$1);
    $$4$8$2 := (if p22$2 then v185$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v186$1 := (if p22$1 then _HAVOC_int$1 else v186$1);
    v186$2 := (if p22$2 then _HAVOC_int$2 else v186$2);
    $$4$9$1 := (if p22$1 then v186$1 else $$4$9$1);
    $$4$9$2 := (if p22$2 then v186$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v187$1 := (if p22$1 then _HAVOC_int$1 else v187$1);
    v187$2 := (if p22$2 then _HAVOC_int$2 else v187$2);
    $$4$10$1 := (if p22$1 then v187$1 else $$4$10$1);
    $$4$10$2 := (if p22$2 then v187$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v188$1 := (if p22$1 then _HAVOC_int$1 else v188$1);
    v188$2 := (if p22$2 then _HAVOC_int$2 else v188$2);
    $$4$11$1 := (if p22$1 then v188$1 else $$4$11$1);
    $$4$11$2 := (if p22$2 then v188$2 else $$4$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v189$1 := (if p22$1 then _HAVOC_int$1 else v189$1);
    v189$2 := (if p22$2 then _HAVOC_int$2 else v189$2);
    $$4$12$1 := (if p22$1 then v189$1 else $$4$12$1);
    $$4$12$2 := (if p22$2 then v189$2 else $$4$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v190$1 := (if p22$1 then _HAVOC_int$1 else v190$1);
    v190$2 := (if p22$2 then _HAVOC_int$2 else v190$2);
    $$4$13$1 := (if p22$1 then v190$1 else $$4$13$1);
    $$4$13$2 := (if p22$2 then v190$2 else $$4$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v191$1 := (if p22$1 then _HAVOC_int$1 else v191$1);
    v191$2 := (if p22$2 then _HAVOC_int$2 else v191$2);
    $$4$14$1 := (if p22$1 then v191$1 else $$4$14$1);
    $$4$14$2 := (if p22$2 then v191$2 else $$4$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v192$1 := (if p22$1 then _HAVOC_int$1 else v192$1);
    v192$2 := (if p22$2 then _HAVOC_int$2 else v192$2);
    $$4$15$1 := (if p22$1 then v192$1 else $$4$15$1);
    $$4$15$2 := (if p22$2 then v192$2 else $$4$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v193$1 := (if p22$1 then _HAVOC_int$1 else v193$1);
    v193$2 := (if p22$2 then _HAVOC_int$2 else v193$2);
    $$4$16$1 := (if p22$1 then v193$1 else $$4$16$1);
    $$4$16$2 := (if p22$2 then v193$2 else $$4$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v194$1 := (if p22$1 then _HAVOC_int$1 else v194$1);
    v194$2 := (if p22$2 then _HAVOC_int$2 else v194$2);
    $$4$17$1 := (if p22$1 then v194$1 else $$4$17$1);
    $$4$17$2 := (if p22$2 then v194$2 else $$4$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v195$1 := (if p22$1 then _HAVOC_int$1 else v195$1);
    v195$2 := (if p22$2 then _HAVOC_int$2 else v195$2);
    $$4$18$1 := (if p22$1 then v195$1 else $$4$18$1);
    $$4$18$2 := (if p22$2 then v195$2 else $$4$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v196$1 := (if p22$1 then _HAVOC_int$1 else v196$1);
    v196$2 := (if p22$2 then _HAVOC_int$2 else v196$2);
    $$4$19$1 := (if p22$1 then v196$1 else $$4$19$1);
    $$4$19$2 := (if p22$2 then v196$2 else $$4$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v197$1 := (if p22$1 then _HAVOC_int$1 else v197$1);
    v197$2 := (if p22$2 then _HAVOC_int$2 else v197$2);
    $$4$20$1 := (if p22$1 then v197$1 else $$4$20$1);
    $$4$20$2 := (if p22$2 then v197$2 else $$4$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v198$1 := (if p22$1 then _HAVOC_int$1 else v198$1);
    v198$2 := (if p22$2 then _HAVOC_int$2 else v198$2);
    $$4$21$1 := (if p22$1 then v198$1 else $$4$21$1);
    $$4$21$2 := (if p22$2 then v198$2 else $$4$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v199$1 := (if p22$1 then _HAVOC_int$1 else v199$1);
    v199$2 := (if p22$2 then _HAVOC_int$2 else v199$2);
    $$4$22$1 := (if p22$1 then v199$1 else $$4$22$1);
    $$4$22$2 := (if p22$2 then v199$2 else $$4$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v200$1 := (if p22$1 then _HAVOC_int$1 else v200$1);
    v200$2 := (if p22$2 then _HAVOC_int$2 else v200$2);
    $$4$23$1 := (if p22$1 then v200$1 else $$4$23$1);
    $$4$23$2 := (if p22$2 then v200$2 else $$4$23$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v201$1 := (if p22$1 then _HAVOC_int$1 else v201$1);
    v201$2 := (if p22$2 then _HAVOC_int$2 else v201$2);
    $$4$24$1 := (if p22$1 then v201$1 else $$4$24$1);
    $$4$24$2 := (if p22$2 then v201$2 else $$4$24$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v202$1 := (if p22$1 then _HAVOC_int$1 else v202$1);
    v202$2 := (if p22$2 then _HAVOC_int$2 else v202$2);
    $$4$25$1 := (if p22$1 then v202$1 else $$4$25$1);
    $$4$25$2 := (if p22$2 then v202$2 else $$4$25$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v203$1 := (if p22$1 then _HAVOC_int$1 else v203$1);
    v203$2 := (if p22$2 then _HAVOC_int$2 else v203$2);
    $$4$26$1 := (if p22$1 then v203$1 else $$4$26$1);
    $$4$26$2 := (if p22$2 then v203$2 else $$4$26$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v204$1 := (if p22$1 then _HAVOC_int$1 else v204$1);
    v204$2 := (if p22$2 then _HAVOC_int$2 else v204$2);
    $$4$27$1 := (if p22$1 then v204$1 else $$4$27$1);
    $$4$27$2 := (if p22$2 then v204$2 else $$4$27$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v205$1 := (if p22$1 then _HAVOC_int$1 else v205$1);
    v205$2 := (if p22$2 then _HAVOC_int$2 else v205$2);
    $$4$28$1 := (if p22$1 then v205$1 else $$4$28$1);
    $$4$28$2 := (if p22$2 then v205$2 else $$4$28$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v206$1 := (if p22$1 then _HAVOC_int$1 else v206$1);
    v206$2 := (if p22$2 then _HAVOC_int$2 else v206$2);
    $$4$29$1 := (if p22$1 then v206$1 else $$4$29$1);
    $$4$29$2 := (if p22$2 then v206$2 else $$4$29$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v207$1 := (if p22$1 then _HAVOC_int$1 else v207$1);
    v207$2 := (if p22$2 then _HAVOC_int$2 else v207$2);
    $$4$30$1 := (if p22$1 then v207$1 else $$4$30$1);
    $$4$30$2 := (if p22$2 then v207$2 else $$4$30$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v208$1 := (if p22$1 then _HAVOC_int$1 else v208$1);
    v208$2 := (if p22$2 then _HAVOC_int$2 else v208$2);
    $$4$31$1 := (if p22$1 then v208$1 else $$4$31$1);
    $$4$31$2 := (if p22$2 then v208$2 else $$4$31$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v209$1 := (if p22$1 then _HAVOC_int$1 else v209$1);
    v209$2 := (if p22$2 then _HAVOC_int$2 else v209$2);
    $$4$32$1 := (if p22$1 then v209$1 else $$4$32$1);
    $$4$32$2 := (if p22$2 then v209$2 else $$4$32$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v210$1 := (if p22$1 then _HAVOC_int$1 else v210$1);
    v210$2 := (if p22$2 then _HAVOC_int$2 else v210$2);
    $$4$33$1 := (if p22$1 then v210$1 else $$4$33$1);
    $$4$33$2 := (if p22$2 then v210$2 else $$4$33$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v211$1 := (if p22$1 then _HAVOC_int$1 else v211$1);
    v211$2 := (if p22$2 then _HAVOC_int$2 else v211$2);
    $$4$34$1 := (if p22$1 then v211$1 else $$4$34$1);
    $$4$34$2 := (if p22$2 then v211$2 else $$4$34$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v212$1 := (if p22$1 then _HAVOC_int$1 else v212$1);
    v212$2 := (if p22$2 then _HAVOC_int$2 else v212$2);
    $$4$35$1 := (if p22$1 then v212$1 else $$4$35$1);
    $$4$35$2 := (if p22$2 then v212$2 else $$4$35$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v213$1 := (if p22$1 then _HAVOC_int$1 else v213$1);
    v213$2 := (if p22$2 then _HAVOC_int$2 else v213$2);
    $$4$36$1 := (if p22$1 then v213$1 else $$4$36$1);
    $$4$36$2 := (if p22$2 then v213$2 else $$4$36$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v214$1 := (if p22$1 then _HAVOC_int$1 else v214$1);
    v214$2 := (if p22$2 then _HAVOC_int$2 else v214$2);
    $$4$37$1 := (if p22$1 then v214$1 else $$4$37$1);
    $$4$37$2 := (if p22$2 then v214$2 else $$4$37$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v215$1 := (if p22$1 then _HAVOC_int$1 else v215$1);
    v215$2 := (if p22$2 then _HAVOC_int$2 else v215$2);
    $$4$38$1 := (if p22$1 then v215$1 else $$4$38$1);
    $$4$38$2 := (if p22$2 then v215$2 else $$4$38$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v216$1 := (if p22$1 then _HAVOC_int$1 else v216$1);
    v216$2 := (if p22$2 then _HAVOC_int$2 else v216$2);
    $$4$39$1 := (if p22$1 then v216$1 else $$4$39$1);
    $$4$39$2 := (if p22$2 then v216$2 else $$4$39$2);
    v217$1 := (if p22$1 then $$4$0$1 else v217$1);
    v217$2 := (if p22$2 then $$4$0$2 else v217$2);
    v218$1 := (if p22$1 then $$4$1$1 else v218$1);
    v218$2 := (if p22$2 then $$4$1$2 else v218$2);
    v219$1 := (if p22$1 then $$4$2$1 else v219$1);
    v219$2 := (if p22$2 then $$4$2$2 else v219$2);
    v220$1 := (if p22$1 then $$4$3$1 else v220$1);
    v220$2 := (if p22$2 then $$4$3$2 else v220$2);
    v221$1 := (if p22$1 then $$4$4$1 else v221$1);
    v221$2 := (if p22$2 then $$4$4$2 else v221$2);
    v222$1 := (if p22$1 then $$4$5$1 else v222$1);
    v222$2 := (if p22$2 then $$4$5$2 else v222$2);
    v223$1 := (if p22$1 then $$4$6$1 else v223$1);
    v223$2 := (if p22$2 then $$4$6$2 else v223$2);
    v224$1 := (if p22$1 then $$4$7$1 else v224$1);
    v224$2 := (if p22$2 then $$4$7$2 else v224$2);
    v225$1 := (if p22$1 then $$4$8$1 else v225$1);
    v225$2 := (if p22$2 then $$4$8$2 else v225$2);
    v226$1 := (if p22$1 then $$4$9$1 else v226$1);
    v226$2 := (if p22$2 then $$4$9$2 else v226$2);
    v227$1 := (if p22$1 then $$4$10$1 else v227$1);
    v227$2 := (if p22$2 then $$4$10$2 else v227$2);
    v228$1 := (if p22$1 then $$4$11$1 else v228$1);
    v228$2 := (if p22$2 then $$4$11$2 else v228$2);
    v229$1 := (if p22$1 then $$4$12$1 else v229$1);
    v229$2 := (if p22$2 then $$4$12$2 else v229$2);
    v230$1 := (if p22$1 then $$4$13$1 else v230$1);
    v230$2 := (if p22$2 then $$4$13$2 else v230$2);
    v231$1 := (if p22$1 then $$4$14$1 else v231$1);
    v231$2 := (if p22$2 then $$4$14$2 else v231$2);
    v232$1 := (if p22$1 then $$4$15$1 else v232$1);
    v232$2 := (if p22$2 then $$4$15$2 else v232$2);
    v233$1 := (if p22$1 then $$4$16$1 else v233$1);
    v233$2 := (if p22$2 then $$4$16$2 else v233$2);
    v234$1 := (if p22$1 then $$4$17$1 else v234$1);
    v234$2 := (if p22$2 then $$4$17$2 else v234$2);
    v235$1 := (if p22$1 then $$4$18$1 else v235$1);
    v235$2 := (if p22$2 then $$4$18$2 else v235$2);
    v236$1 := (if p22$1 then $$4$19$1 else v236$1);
    v236$2 := (if p22$2 then $$4$19$2 else v236$2);
    v237$1 := (if p22$1 then $$4$20$1 else v237$1);
    v237$2 := (if p22$2 then $$4$20$2 else v237$2);
    v238$1 := (if p22$1 then $$4$21$1 else v238$1);
    v238$2 := (if p22$2 then $$4$21$2 else v238$2);
    v239$1 := (if p22$1 then $$4$22$1 else v239$1);
    v239$2 := (if p22$2 then $$4$22$2 else v239$2);
    v240$1 := (if p22$1 then $$4$23$1 else v240$1);
    v240$2 := (if p22$2 then $$4$23$2 else v240$2);
    v241$1 := (if p22$1 then $$4$24$1 else v241$1);
    v241$2 := (if p22$2 then $$4$24$2 else v241$2);
    v242$1 := (if p22$1 then $$4$25$1 else v242$1);
    v242$2 := (if p22$2 then $$4$25$2 else v242$2);
    v243$1 := (if p22$1 then $$4$26$1 else v243$1);
    v243$2 := (if p22$2 then $$4$26$2 else v243$2);
    v244$1 := (if p22$1 then $$4$27$1 else v244$1);
    v244$2 := (if p22$2 then $$4$27$2 else v244$2);
    v245$1 := (if p22$1 then $$4$28$1 else v245$1);
    v245$2 := (if p22$2 then $$4$28$2 else v245$2);
    v246$1 := (if p22$1 then $$4$29$1 else v246$1);
    v246$2 := (if p22$2 then $$4$29$2 else v246$2);
    v247$1 := (if p22$1 then $$4$30$1 else v247$1);
    v247$2 := (if p22$2 then $$4$30$2 else v247$2);
    v248$1 := (if p22$1 then $$4$31$1 else v248$1);
    v248$2 := (if p22$2 then $$4$31$2 else v248$2);
    v249$1 := (if p22$1 then $$4$32$1 else v249$1);
    v249$2 := (if p22$2 then $$4$32$2 else v249$2);
    v250$1 := (if p22$1 then $$4$33$1 else v250$1);
    v250$2 := (if p22$2 then $$4$33$2 else v250$2);
    v251$1 := (if p22$1 then $$4$34$1 else v251$1);
    v251$2 := (if p22$2 then $$4$34$2 else v251$2);
    v252$1 := (if p22$1 then $$4$35$1 else v252$1);
    v252$2 := (if p22$2 then $$4$35$2 else v252$2);
    v253$1 := (if p22$1 then $$4$36$1 else v253$1);
    v253$2 := (if p22$2 then $$4$36$2 else v253$2);
    v254$1 := (if p22$1 then $$4$37$1 else v254$1);
    v254$2 := (if p22$2 then $$4$37$2 else v254$2);
    v255$1 := (if p22$1 then $$4$38$1 else v255$1);
    v255$2 := (if p22$2 then $$4$38$2 else v255$2);
    v256$1 := (if p22$1 then $$4$39$1 else v256$1);
    v256$2 := (if p22$2 then $$4$39$2 else v256$2);
    call {:sourceloc_num 457} v257$1, v257$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p22$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v248$1, v247$1), v246$1), v245$1), v244$1), v243$1), v242$1), v241$1), v240$1), v239$1), v238$1), v237$1), v236$1), v235$1), v234$1), v233$1), v232$1), v231$1), v230$1), v229$1), v228$1), v227$1), v226$1), v225$1), v224$1), v223$1), v222$1), v221$1), v220$1), v219$1), v218$1), v217$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v252$1, v251$1), v250$1), v249$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v256$1, v255$1), v254$1), v253$1), UI16_TO_FP32(BV_EXTRACT(BV32_AND(BV_CONCAT(BV_CONCAT(BV_CONCAT(v172$1, v171$1), v170$1), v169$1), 65535), 16, 0)), UI16_TO_FP32(BV_EXTRACT(BV32_LSHR(BV32_AND(BV_CONCAT(BV_CONCAT(BV_CONCAT(v176$1, v175$1), v174$1), v173$1), -65536), 16), 16, 0)), p22$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v248$2, v247$2), v246$2), v245$2), v244$2), v243$2), v242$2), v241$2), v240$2), v239$2), v238$2), v237$2), v236$2), v235$2), v234$2), v233$2), v232$2), v231$2), v230$2), v229$2), v228$2), v227$2), v226$2), v225$2), v224$2), v223$2), v222$2), v221$2), v220$2), v219$2), v218$2), v217$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v252$2, v251$2), v250$2), v249$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v256$2, v255$2), v254$2), v253$2), UI16_TO_FP32(BV_EXTRACT(BV32_AND(BV_CONCAT(BV_CONCAT(BV_CONCAT(v172$2, v171$2), v170$2), v169$2), 65535), 16, 0)), UI16_TO_FP32(BV_EXTRACT(BV32_LSHR(BV32_AND(BV_CONCAT(BV_CONCAT(BV_CONCAT(v176$2, v175$2), v174$2), v173$2), -65536), 16), 16, 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v258$1 := (if p22$1 then BV_EXTRACT(v257$1, 64, 0) else v258$1);
    v258$2 := (if p22$2 then BV_EXTRACT(v257$2, 64, 0) else v258$2);
    $$3$0$1 := (if p22$1 then BV_EXTRACT(v258$1, 8, 0) else $$3$0$1);
    $$3$0$2 := (if p22$2 then BV_EXTRACT(v258$2, 8, 0) else $$3$0$2);
    $$3$1$1 := (if p22$1 then BV_EXTRACT(v258$1, 16, 8) else $$3$1$1);
    $$3$1$2 := (if p22$2 then BV_EXTRACT(v258$2, 16, 8) else $$3$1$2);
    $$3$2$1 := (if p22$1 then BV_EXTRACT(v258$1, 24, 16) else $$3$2$1);
    $$3$2$2 := (if p22$2 then BV_EXTRACT(v258$2, 24, 16) else $$3$2$2);
    $$3$3$1 := (if p22$1 then BV_EXTRACT(v258$1, 32, 24) else $$3$3$1);
    $$3$3$2 := (if p22$2 then BV_EXTRACT(v258$2, 32, 24) else $$3$3$2);
    $$3$4$1 := (if p22$1 then BV_EXTRACT(v258$1, 40, 32) else $$3$4$1);
    $$3$4$2 := (if p22$2 then BV_EXTRACT(v258$2, 40, 32) else $$3$4$2);
    $$3$5$1 := (if p22$1 then BV_EXTRACT(v258$1, 48, 40) else $$3$5$1);
    $$3$5$2 := (if p22$2 then BV_EXTRACT(v258$2, 48, 40) else $$3$5$2);
    $$3$6$1 := (if p22$1 then BV_EXTRACT(v258$1, 56, 48) else $$3$6$1);
    $$3$6$2 := (if p22$2 then BV_EXTRACT(v258$2, 56, 48) else $$3$6$2);
    $$3$7$1 := (if p22$1 then BV_EXTRACT(v258$1, 64, 56) else $$3$7$1);
    $$3$7$2 := (if p22$2 then BV_EXTRACT(v258$2, 64, 56) else $$3$7$2);
    v259$1 := (if p22$1 then BV_EXTRACT(v257$1, 128, 64) else v259$1);
    v259$2 := (if p22$2 then BV_EXTRACT(v257$2, 128, 64) else v259$2);
    $$3$8$1 := (if p22$1 then BV_EXTRACT(v259$1, 8, 0) else $$3$8$1);
    $$3$8$2 := (if p22$2 then BV_EXTRACT(v259$2, 8, 0) else $$3$8$2);
    $$3$9$1 := (if p22$1 then BV_EXTRACT(v259$1, 16, 8) else $$3$9$1);
    $$3$9$2 := (if p22$2 then BV_EXTRACT(v259$2, 16, 8) else $$3$9$2);
    $$3$10$1 := (if p22$1 then BV_EXTRACT(v259$1, 24, 16) else $$3$10$1);
    $$3$10$2 := (if p22$2 then BV_EXTRACT(v259$2, 24, 16) else $$3$10$2);
    $$3$11$1 := (if p22$1 then BV_EXTRACT(v259$1, 32, 24) else $$3$11$1);
    $$3$11$2 := (if p22$2 then BV_EXTRACT(v259$2, 32, 24) else $$3$11$2);
    $$3$12$1 := (if p22$1 then BV_EXTRACT(v259$1, 40, 32) else $$3$12$1);
    $$3$12$2 := (if p22$2 then BV_EXTRACT(v259$2, 40, 32) else $$3$12$2);
    $$3$13$1 := (if p22$1 then BV_EXTRACT(v259$1, 48, 40) else $$3$13$1);
    $$3$13$2 := (if p22$2 then BV_EXTRACT(v259$2, 48, 40) else $$3$13$2);
    $$3$14$1 := (if p22$1 then BV_EXTRACT(v259$1, 56, 48) else $$3$14$1);
    $$3$14$2 := (if p22$2 then BV_EXTRACT(v259$2, 56, 48) else $$3$14$2);
    $$3$15$1 := (if p22$1 then BV_EXTRACT(v259$1, 64, 56) else $$3$15$1);
    $$3$15$2 := (if p22$2 then BV_EXTRACT(v259$2, 64, 56) else $$3$15$2);
    v260$1 := (if p22$1 then BV_EXTRACT(v257$1, 192, 128) else v260$1);
    v260$2 := (if p22$2 then BV_EXTRACT(v257$2, 192, 128) else v260$2);
    $$3$16$1 := (if p22$1 then BV_EXTRACT(v260$1, 8, 0) else $$3$16$1);
    $$3$16$2 := (if p22$2 then BV_EXTRACT(v260$2, 8, 0) else $$3$16$2);
    $$3$17$1 := (if p22$1 then BV_EXTRACT(v260$1, 16, 8) else $$3$17$1);
    $$3$17$2 := (if p22$2 then BV_EXTRACT(v260$2, 16, 8) else $$3$17$2);
    $$3$18$1 := (if p22$1 then BV_EXTRACT(v260$1, 24, 16) else $$3$18$1);
    $$3$18$2 := (if p22$2 then BV_EXTRACT(v260$2, 24, 16) else $$3$18$2);
    $$3$19$1 := (if p22$1 then BV_EXTRACT(v260$1, 32, 24) else $$3$19$1);
    $$3$19$2 := (if p22$2 then BV_EXTRACT(v260$2, 32, 24) else $$3$19$2);
    $$3$20$1 := (if p22$1 then BV_EXTRACT(v260$1, 40, 32) else $$3$20$1);
    $$3$20$2 := (if p22$2 then BV_EXTRACT(v260$2, 40, 32) else $$3$20$2);
    $$3$21$1 := (if p22$1 then BV_EXTRACT(v260$1, 48, 40) else $$3$21$1);
    $$3$21$2 := (if p22$2 then BV_EXTRACT(v260$2, 48, 40) else $$3$21$2);
    $$3$22$1 := (if p22$1 then BV_EXTRACT(v260$1, 56, 48) else $$3$22$1);
    $$3$22$2 := (if p22$2 then BV_EXTRACT(v260$2, 56, 48) else $$3$22$2);
    $$3$23$1 := (if p22$1 then BV_EXTRACT(v260$1, 64, 56) else $$3$23$1);
    $$3$23$2 := (if p22$2 then BV_EXTRACT(v260$2, 64, 56) else $$3$23$2);
    v261$1 := (if p22$1 then BV_EXTRACT(v257$1, 256, 192) else v261$1);
    v261$2 := (if p22$2 then BV_EXTRACT(v257$2, 256, 192) else v261$2);
    $$3$24$1 := (if p22$1 then BV_EXTRACT(v261$1, 8, 0) else $$3$24$1);
    $$3$24$2 := (if p22$2 then BV_EXTRACT(v261$2, 8, 0) else $$3$24$2);
    $$3$25$1 := (if p22$1 then BV_EXTRACT(v261$1, 16, 8) else $$3$25$1);
    $$3$25$2 := (if p22$2 then BV_EXTRACT(v261$2, 16, 8) else $$3$25$2);
    $$3$26$1 := (if p22$1 then BV_EXTRACT(v261$1, 24, 16) else $$3$26$1);
    $$3$26$2 := (if p22$2 then BV_EXTRACT(v261$2, 24, 16) else $$3$26$2);
    $$3$27$1 := (if p22$1 then BV_EXTRACT(v261$1, 32, 24) else $$3$27$1);
    $$3$27$2 := (if p22$2 then BV_EXTRACT(v261$2, 32, 24) else $$3$27$2);
    $$3$28$1 := (if p22$1 then BV_EXTRACT(v261$1, 40, 32) else $$3$28$1);
    $$3$28$2 := (if p22$2 then BV_EXTRACT(v261$2, 40, 32) else $$3$28$2);
    $$3$29$1 := (if p22$1 then BV_EXTRACT(v261$1, 48, 40) else $$3$29$1);
    $$3$29$2 := (if p22$2 then BV_EXTRACT(v261$2, 48, 40) else $$3$29$2);
    $$3$30$1 := (if p22$1 then BV_EXTRACT(v261$1, 56, 48) else $$3$30$1);
    $$3$30$2 := (if p22$2 then BV_EXTRACT(v261$2, 56, 48) else $$3$30$2);
    $$3$31$1 := (if p22$1 then BV_EXTRACT(v261$1, 64, 56) else $$3$31$1);
    $$3$31$2 := (if p22$2 then BV_EXTRACT(v261$2, 64, 56) else $$3$31$2);
    v262$1 := (if p22$1 then $$3$0$1 else v262$1);
    v262$2 := (if p22$2 then $$3$0$2 else v262$2);
    $$node$0$1 := (if p22$1 then v262$1 else $$node$0$1);
    $$node$0$2 := (if p22$2 then v262$2 else $$node$0$2);
    v263$1 := (if p22$1 then $$3$1$1 else v263$1);
    v263$2 := (if p22$2 then $$3$1$2 else v263$2);
    $$node$1$1 := (if p22$1 then v263$1 else $$node$1$1);
    $$node$1$2 := (if p22$2 then v263$2 else $$node$1$2);
    v264$1 := (if p22$1 then $$3$2$1 else v264$1);
    v264$2 := (if p22$2 then $$3$2$2 else v264$2);
    $$node$2$1 := (if p22$1 then v264$1 else $$node$2$1);
    $$node$2$2 := (if p22$2 then v264$2 else $$node$2$2);
    v265$1 := (if p22$1 then $$3$3$1 else v265$1);
    v265$2 := (if p22$2 then $$3$3$2 else v265$2);
    $$node$3$1 := (if p22$1 then v265$1 else $$node$3$1);
    $$node$3$2 := (if p22$2 then v265$2 else $$node$3$2);
    v266$1 := (if p22$1 then $$3$4$1 else v266$1);
    v266$2 := (if p22$2 then $$3$4$2 else v266$2);
    $$node$4$1 := (if p22$1 then v266$1 else $$node$4$1);
    $$node$4$2 := (if p22$2 then v266$2 else $$node$4$2);
    v267$1 := (if p22$1 then $$3$5$1 else v267$1);
    v267$2 := (if p22$2 then $$3$5$2 else v267$2);
    $$node$5$1 := (if p22$1 then v267$1 else $$node$5$1);
    $$node$5$2 := (if p22$2 then v267$2 else $$node$5$2);
    v268$1 := (if p22$1 then $$3$6$1 else v268$1);
    v268$2 := (if p22$2 then $$3$6$2 else v268$2);
    $$node$6$1 := (if p22$1 then v268$1 else $$node$6$1);
    $$node$6$2 := (if p22$2 then v268$2 else $$node$6$2);
    v269$1 := (if p22$1 then $$3$7$1 else v269$1);
    v269$2 := (if p22$2 then $$3$7$2 else v269$2);
    $$node$7$1 := (if p22$1 then v269$1 else $$node$7$1);
    $$node$7$2 := (if p22$2 then v269$2 else $$node$7$2);
    v270$1 := (if p22$1 then $$3$8$1 else v270$1);
    v270$2 := (if p22$2 then $$3$8$2 else v270$2);
    $$node$8$1 := (if p22$1 then v270$1 else $$node$8$1);
    $$node$8$2 := (if p22$2 then v270$2 else $$node$8$2);
    v271$1 := (if p22$1 then $$3$9$1 else v271$1);
    v271$2 := (if p22$2 then $$3$9$2 else v271$2);
    $$node$9$1 := (if p22$1 then v271$1 else $$node$9$1);
    $$node$9$2 := (if p22$2 then v271$2 else $$node$9$2);
    v272$1 := (if p22$1 then $$3$10$1 else v272$1);
    v272$2 := (if p22$2 then $$3$10$2 else v272$2);
    $$node$10$1 := (if p22$1 then v272$1 else $$node$10$1);
    $$node$10$2 := (if p22$2 then v272$2 else $$node$10$2);
    v273$1 := (if p22$1 then $$3$11$1 else v273$1);
    v273$2 := (if p22$2 then $$3$11$2 else v273$2);
    $$node$11$1 := (if p22$1 then v273$1 else $$node$11$1);
    $$node$11$2 := (if p22$2 then v273$2 else $$node$11$2);
    v274$1 := (if p22$1 then $$3$12$1 else v274$1);
    v274$2 := (if p22$2 then $$3$12$2 else v274$2);
    $$node$12$1 := (if p22$1 then v274$1 else $$node$12$1);
    $$node$12$2 := (if p22$2 then v274$2 else $$node$12$2);
    v275$1 := (if p22$1 then $$3$13$1 else v275$1);
    v275$2 := (if p22$2 then $$3$13$2 else v275$2);
    $$node$13$1 := (if p22$1 then v275$1 else $$node$13$1);
    $$node$13$2 := (if p22$2 then v275$2 else $$node$13$2);
    v276$1 := (if p22$1 then $$3$14$1 else v276$1);
    v276$2 := (if p22$2 then $$3$14$2 else v276$2);
    $$node$14$1 := (if p22$1 then v276$1 else $$node$14$1);
    $$node$14$2 := (if p22$2 then v276$2 else $$node$14$2);
    v277$1 := (if p22$1 then $$3$15$1 else v277$1);
    v277$2 := (if p22$2 then $$3$15$2 else v277$2);
    $$node$15$1 := (if p22$1 then v277$1 else $$node$15$1);
    $$node$15$2 := (if p22$2 then v277$2 else $$node$15$2);
    v278$1 := (if p22$1 then $$3$16$1 else v278$1);
    v278$2 := (if p22$2 then $$3$16$2 else v278$2);
    $$node$16$1 := (if p22$1 then v278$1 else $$node$16$1);
    $$node$16$2 := (if p22$2 then v278$2 else $$node$16$2);
    v279$1 := (if p22$1 then $$3$17$1 else v279$1);
    v279$2 := (if p22$2 then $$3$17$2 else v279$2);
    $$node$17$1 := (if p22$1 then v279$1 else $$node$17$1);
    $$node$17$2 := (if p22$2 then v279$2 else $$node$17$2);
    v280$1 := (if p22$1 then $$3$18$1 else v280$1);
    v280$2 := (if p22$2 then $$3$18$2 else v280$2);
    $$node$18$1 := (if p22$1 then v280$1 else $$node$18$1);
    $$node$18$2 := (if p22$2 then v280$2 else $$node$18$2);
    v281$1 := (if p22$1 then $$3$19$1 else v281$1);
    v281$2 := (if p22$2 then $$3$19$2 else v281$2);
    $$node$19$1 := (if p22$1 then v281$1 else $$node$19$1);
    $$node$19$2 := (if p22$2 then v281$2 else $$node$19$2);
    v282$1 := (if p22$1 then $$3$20$1 else v282$1);
    v282$2 := (if p22$2 then $$3$20$2 else v282$2);
    $$node$20$1 := (if p22$1 then v282$1 else $$node$20$1);
    $$node$20$2 := (if p22$2 then v282$2 else $$node$20$2);
    v283$1 := (if p22$1 then $$3$21$1 else v283$1);
    v283$2 := (if p22$2 then $$3$21$2 else v283$2);
    $$node$21$1 := (if p22$1 then v283$1 else $$node$21$1);
    $$node$21$2 := (if p22$2 then v283$2 else $$node$21$2);
    v284$1 := (if p22$1 then $$3$22$1 else v284$1);
    v284$2 := (if p22$2 then $$3$22$2 else v284$2);
    $$node$22$1 := (if p22$1 then v284$1 else $$node$22$1);
    $$node$22$2 := (if p22$2 then v284$2 else $$node$22$2);
    v285$1 := (if p22$1 then $$3$23$1 else v285$1);
    v285$2 := (if p22$2 then $$3$23$2 else v285$2);
    $$node$23$1 := (if p22$1 then v285$1 else $$node$23$1);
    $$node$23$2 := (if p22$2 then v285$2 else $$node$23$2);
    v286$1 := (if p22$1 then $$3$24$1 else v286$1);
    v286$2 := (if p22$2 then $$3$24$2 else v286$2);
    $$node$24$1 := (if p22$1 then v286$1 else $$node$24$1);
    $$node$24$2 := (if p22$2 then v286$2 else $$node$24$2);
    v287$1 := (if p22$1 then $$3$25$1 else v287$1);
    v287$2 := (if p22$2 then $$3$25$2 else v287$2);
    $$node$25$1 := (if p22$1 then v287$1 else $$node$25$1);
    $$node$25$2 := (if p22$2 then v287$2 else $$node$25$2);
    v288$1 := (if p22$1 then $$3$26$1 else v288$1);
    v288$2 := (if p22$2 then $$3$26$2 else v288$2);
    $$node$26$1 := (if p22$1 then v288$1 else $$node$26$1);
    $$node$26$2 := (if p22$2 then v288$2 else $$node$26$2);
    v289$1 := (if p22$1 then $$3$27$1 else v289$1);
    v289$2 := (if p22$2 then $$3$27$2 else v289$2);
    $$node$27$1 := (if p22$1 then v289$1 else $$node$27$1);
    $$node$27$2 := (if p22$2 then v289$2 else $$node$27$2);
    v290$1 := (if p22$1 then $$3$28$1 else v290$1);
    v290$2 := (if p22$2 then $$3$28$2 else v290$2);
    $$node$28$1 := (if p22$1 then v290$1 else $$node$28$1);
    $$node$28$2 := (if p22$2 then v290$2 else $$node$28$2);
    v291$1 := (if p22$1 then $$3$29$1 else v291$1);
    v291$2 := (if p22$2 then $$3$29$2 else v291$2);
    $$node$29$1 := (if p22$1 then v291$1 else $$node$29$1);
    $$node$29$2 := (if p22$2 then v291$2 else $$node$29$2);
    v292$1 := (if p22$1 then $$3$30$1 else v292$1);
    v292$2 := (if p22$2 then $$3$30$2 else v292$2);
    $$node$30$1 := (if p22$1 then v292$1 else $$node$30$1);
    $$node$30$2 := (if p22$2 then v292$2 else $$node$30$2);
    v293$1 := (if p22$1 then $$3$31$1 else v293$1);
    v293$2 := (if p22$2 then $$3$31$2 else v293$2);
    $$node$31$1 := (if p22$1 then v293$1 else $$node$31$1);
    $$node$31$2 := (if p22$2 then v293$2 else $$node$31$2);
    v294$1 := (if p22$1 then $mustmatch.2$1 != 0 else v294$1);
    v294$2 := (if p22$2 then $mustmatch.2$2 != 0 else v294$2);
    p24$1 := (if p22$1 && v294$1 then v294$1 else p24$1);
    p24$2 := (if p22$2 && v294$2 then v294$2 else p24$2);
    p23$1 := (if p22$1 && !v294$1 then !v294$1 else p23$1);
    p23$2 := (if p22$2 && !v294$2 then !v294$2 else p23$2);
    v313$1 := (if p23$1 then $$node$0$1 else v313$1);
    v313$2 := (if p23$2 then $$node$0$2 else v313$2);
    v314$1 := (if p23$1 then $$node$1$1 else v314$1);
    v314$2 := (if p23$2 then $$node$1$2 else v314$2);
    v315$1 := (if p23$1 then $$node$2$1 else v315$1);
    v315$2 := (if p23$2 then $$node$2$2 else v315$2);
    v316$1 := (if p23$1 then $$node$3$1 else v316$1);
    v316$2 := (if p23$2 then $$node$3$2 else v316$2);
    $mustmatch.4$1, $qry_match_len.4$1, $refpos.2$1 := (if p23$1 then $mustmatch.2$1 else $mustmatch.4$1), (if p23$1 then BV32_ADD($qry_match_len.2$1, 1) else $qry_match_len.4$1), (if p23$1 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v316$1, v315$1), v314$1), v313$1), 1) else $refpos.2$1);
    $mustmatch.4$2, $qry_match_len.4$2, $refpos.2$2 := (if p23$2 then $mustmatch.2$2 else $mustmatch.4$2), (if p23$2 then BV32_ADD($qry_match_len.2$2, 1) else $qry_match_len.4$2), (if p23$2 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v316$2, v315$2), v314$2), v313$2), 1) else $refpos.2$2);
    v295$1 := (if p24$1 then $$node$4$1 else v295$1);
    v295$2 := (if p24$2 then $$node$4$2 else v295$2);
    v296$1 := (if p24$1 then $$node$5$1 else v296$1);
    v296$2 := (if p24$2 then $$node$5$2 else v296$2);
    v297$1 := (if p24$1 then $$node$6$1 else v297$1);
    v297$2 := (if p24$2 then $$node$6$2 else v297$2);
    v298$1 := (if p24$1 then $$node$7$1 else v298$1);
    v298$2 := (if p24$2 then $$node$7$2 else v298$2);
    v299$1 := (if p24$1 then $$node$0$1 else v299$1);
    v299$2 := (if p24$2 then $$node$0$2 else v299$2);
    v300$1 := (if p24$1 then $$node$1$1 else v300$1);
    v300$2 := (if p24$2 then $$node$1$2 else v300$2);
    v301$1 := (if p24$1 then $$node$2$1 else v301$1);
    v301$2 := (if p24$2 then $$node$2$2 else v301$2);
    v302$1 := (if p24$1 then $$node$3$1 else v302$1);
    v302$2 := (if p24$2 then $$node$3$2 else v302$2);
    v303$1 := (if p24$1 then BV32_ADD(BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v298$1, v297$1), v296$1), v295$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v302$1, v301$1), v300$1), v299$1)), 1) else v303$1);
    v303$2 := (if p24$2 then BV32_ADD(BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v298$2, v297$2), v296$2), v295$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v302$2, v301$2), v300$2), v299$2)), 1) else v303$2);
    v304$1 := (if p24$1 then BV32_SGE($mustmatch.2$1, v303$1) else v304$1);
    v304$2 := (if p24$2 then BV32_SGE($mustmatch.2$2, v303$2) else v304$2);
    p26$1 := (if p24$1 && v304$1 then v304$1 else p26$1);
    p26$2 := (if p24$2 && v304$2 then v304$2 else p26$2);
    p25$1 := (if p24$1 && !v304$1 then !v304$1 else p25$1);
    p25$2 := (if p24$2 && !v304$2 then !v304$2 else p25$2);
    v309$1 := (if p25$1 then $$node$0$1 else v309$1);
    v309$2 := (if p25$2 then $$node$0$2 else v309$2);
    v310$1 := (if p25$1 then $$node$1$1 else v310$1);
    v310$2 := (if p25$2 then $$node$1$2 else v310$2);
    v311$1 := (if p25$1 then $$node$2$1 else v311$1);
    v311$2 := (if p25$2 then $$node$2$2 else v311$2);
    v312$1 := (if p25$1 then $$node$3$1 else v312$1);
    v312$2 := (if p25$2 then $$node$3$2 else v312$2);
    $mustmatch.3$1, $qry_match_len.3$1, $refpos.1$1 := (if p25$1 then 0 else $mustmatch.3$1), (if p25$1 then BV32_ADD($qry_match_len.2$1, $mustmatch.2$1) else $qry_match_len.3$1), (if p25$1 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v312$1, v311$1), v310$1), v309$1), $mustmatch.2$1) else $refpos.1$1);
    $mustmatch.3$2, $qry_match_len.3$2, $refpos.1$2 := (if p25$2 then 0 else $mustmatch.3$2), (if p25$2 then BV32_ADD($qry_match_len.2$2, $mustmatch.2$2) else $qry_match_len.3$2), (if p25$2 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v312$2, v311$2), v310$2), v309$2), $mustmatch.2$2) else $refpos.1$2);
    v305$1 := (if p26$1 then $$node$4$1 else v305$1);
    v305$2 := (if p26$2 then $$node$4$2 else v305$2);
    v306$1 := (if p26$1 then $$node$5$1 else v306$1);
    v306$2 := (if p26$2 then $$node$5$2 else v306$2);
    v307$1 := (if p26$1 then $$node$6$1 else v307$1);
    v307$2 := (if p26$2 then $$node$6$2 else v307$2);
    v308$1 := (if p26$1 then $$node$7$1 else v308$1);
    v308$2 := (if p26$2 then $$node$7$2 else v308$2);
    $mustmatch.3$1, $qry_match_len.3$1, $refpos.1$1 := (if p26$1 then BV32_SUB($mustmatch.2$1, v303$1) else $mustmatch.3$1), (if p26$1 then BV32_ADD($qry_match_len.2$1, v303$1) else $qry_match_len.3$1), (if p26$1 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v308$1, v307$1), v306$1), v305$1), 1) else $refpos.1$1);
    $mustmatch.3$2, $qry_match_len.3$2, $refpos.1$2 := (if p26$2 then BV32_SUB($mustmatch.2$2, v303$2) else $mustmatch.3$2), (if p26$2 then BV32_ADD($qry_match_len.2$2, v303$2) else $qry_match_len.3$2), (if p26$2 then BV32_ADD(BV_CONCAT(BV_CONCAT(BV_CONCAT(v308$2, v307$2), v306$2), v305$2), 1) else $refpos.1$2);
    $mustmatch.4$1, $qry_match_len.4$1, $refpos.2$1 := (if p24$1 then $mustmatch.3$1 else $mustmatch.4$1), (if p24$1 then $qry_match_len.3$1 else $qry_match_len.4$1), (if p24$1 then $refpos.1$1 else $refpos.2$1);
    $mustmatch.4$2, $qry_match_len.4$2, $refpos.2$2 := (if p24$2 then $mustmatch.3$2 else $mustmatch.4$2), (if p24$2 then $qry_match_len.3$2 else $qry_match_len.4$2), (if p24$2 then $refpos.1$2 else $refpos.2$2);
    v317$1 := (if p22$1 then $$queries[BV32_ADD(BV32_ADD(1, v3$1), BV32_SUB($qrystart.0$1, $qry_match_len.4$1))] else v317$1);
    v317$2 := (if p22$2 then $$queries[BV32_ADD(BV32_ADD(1, v3$2), BV32_SUB($qrystart.0$2, $qry_match_len.4$2))] else v317$2);
    v318$1 := (if p22$1 then BV8_SEXT32(v317$1) else v318$1);
    v318$2 := (if p22$2 then BV8_SEXT32(v317$2) else v318$2);
    p32$1 := (if p22$1 && v318$1 == 65 then v318$1 == 65 else p32$1);
    p32$2 := (if p22$2 && v318$2 == 65 then v318$2 == 65 else p32$2);
    p31$1 := (if p22$1 && v318$1 == 67 then v318$1 == 67 else p31$1);
    p31$2 := (if p22$2 && v318$2 == 67 then v318$2 == 67 else p31$2);
    p30$1 := (if p22$1 && v318$1 == 71 then v318$1 == 71 else p30$1);
    p30$2 := (if p22$2 && v318$2 == 71 then v318$2 == 71 else p30$2);
    p29$1 := (if p22$1 && v318$1 == 84 then v318$1 == 84 else p29$1);
    p29$2 := (if p22$2 && v318$2 == 84 then v318$2 == 84 else p29$2);
    p28$1 := (if p22$1 && v318$1 == 113 then v318$1 == 113 else p28$1);
    p28$2 := (if p22$2 && v318$2 == 113 then v318$2 == 113 else p28$2);
    p27$1 := (if p22$1 && v318$1 != 65 && v318$1 != 67 && v318$1 != 71 && v318$1 != 84 && v318$1 != 113 then v318$1 != 65 && v318$1 != 67 && v318$1 != 71 && v318$1 != 84 && v318$1 != 113 else p27$1);
    p27$2 := (if p22$2 && v318$2 != 65 && v318$2 != 67 && v318$2 != 71 && v318$2 != 84 && v318$2 != 113 then v318$2 != 65 && v318$2 != 67 && v318$2 != 71 && v318$2 != 84 && v318$2 != 113 else p27$2);
    $.0.i1$1 := (if p27$1 then v317$1 else $.0.i1$1);
    $.0.i1$2 := (if p27$2 then v317$2 else $.0.i1$2);
    $.0.i1$1 := (if p28$1 then 0 else $.0.i1$1);
    $.0.i1$2 := (if p28$2 then 0 else $.0.i1$2);
    $.0.i1$1 := (if p29$1 then 65 else $.0.i1$1);
    $.0.i1$2 := (if p29$2 then 65 else $.0.i1$2);
    $.0.i1$1 := (if p30$1 then 67 else $.0.i1$1);
    $.0.i1$2 := (if p30$2 then 67 else $.0.i1$2);
    $.0.i1$1 := (if p31$1 then 71 else $.0.i1$1);
    $.0.i1$2 := (if p31$2 then 71 else $.0.i1$2);
    $.0.i1$1 := (if p32$1 then 84 else $.0.i1$1);
    $.0.i1$2 := (if p32$2 then 84 else $.0.i1$2);
    $qry_match_len.5$1, $c.1$1, $refpos.3$1 := (if p22$1 then $qry_match_len.4$1 else $qry_match_len.5$1), (if p22$1 then $.0.i1$1 else $c.1$1), (if p22$1 then $refpos.2$1 else $refpos.3$1);
    $qry_match_len.5$2, $c.1$2, $refpos.3$2 := (if p22$2 then $qry_match_len.4$2 else $qry_match_len.5$2), (if p22$2 then $.0.i1$2 else $c.1$2), (if p22$2 then $refpos.2$2 else $refpos.3$2);
    p33$1 := (if p22$1 then true else p33$1);
    p33$2 := (if p22$2 then true else p33$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $53;

  $53:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p33"} {:dominator_predicate "p22"} true;
    assert p33$1 ==> p15$1;
    assert p33$2 ==> p15$2;
    assert p15$1 ==> p2$1;
    assert p15$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 594} p33$1 ==> true;
    v319$1 := (if p33$1 then $$node$4$1 else v319$1);
    v319$2 := (if p33$2 then $$node$4$2 else v319$2);
    v320$1 := (if p33$1 then $$node$5$1 else v320$1);
    v320$2 := (if p33$2 then $$node$5$2 else v320$2);
    v321$1 := (if p33$1 then $$node$6$1 else v321$1);
    v321$2 := (if p33$2 then $$node$6$2 else v321$2);
    v322$1 := (if p33$1 then $$node$7$1 else v322$1);
    v322$2 := (if p33$2 then $$node$7$2 else v322$2);
    v323$1 := (if p33$1 then BV32_SLE($refpos.3$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v322$1, v321$1), v320$1), v319$1)) else v323$1);
    v323$2 := (if p33$2 then BV32_SLE($refpos.3$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v322$2, v321$2), v320$2), v319$2)) else v323$2);
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
    p46$1 := false;
    p46$2 := false;
    p35$1 := (if p33$1 && v323$1 then v323$1 else p35$1);
    p35$2 := (if p33$2 && v323$2 then v323$2 else p35$2);
    p34$1 := (if p33$1 && !v323$1 then !v323$1 else p34$1);
    p34$2 := (if p33$2 && !v323$2 then !v323$2 else p34$2);
    $0$1 := (if p34$1 then 0 else $0$1);
    $0$2 := (if p34$2 then 0 else $0$2);
    $0$1 := (if p35$1 then (if BV8_SEXT32($c.1$1) != 0 then 1 else 0) else $0$1);
    $0$2 := (if p35$2 then (if BV8_SEXT32($c.1$2) != 0 then 1 else 0) else $0$2);
    v324$1 := (if p33$1 then $0$1 == 1 else v324$1);
    v324$2 := (if p33$2 then $0$2 == 1 else v324$2);
    p36$1 := (if p33$1 && v324$1 then v324$1 else p36$1);
    p36$2 := (if p33$2 && v324$2 then v324$2 else p36$2);
    p44$1 := (if p33$1 && !v324$1 then !v324$1 else p44$1);
    p44$2 := (if p33$2 && !v324$2 then !v324$2 else p44$2);
    p33$1 := (if p33$1 && !v324$1 then v324$1 else p33$1);
    p33$2 := (if p33$2 && !v324$2 then v324$2 else p33$2);
    v325$1 := (if p36$1 then BV32_AND($refpos.3$1, 262143) else v325$1);
    v325$2 := (if p36$2 then BV32_AND($refpos.3$2, 262143) else v325$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v326$1 := (if p36$1 then _HAVOC_int$1 else v326$1);
    v326$2 := (if p36$2 then _HAVOC_int$2 else v326$2);
    $$0$0$1 := (if p36$1 then v326$1 else $$0$0$1);
    $$0$0$2 := (if p36$2 then v326$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v327$1 := (if p36$1 then _HAVOC_int$1 else v327$1);
    v327$2 := (if p36$2 then _HAVOC_int$2 else v327$2);
    $$0$1$1 := (if p36$1 then v327$1 else $$0$1$1);
    $$0$1$2 := (if p36$2 then v327$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v328$1 := (if p36$1 then _HAVOC_int$1 else v328$1);
    v328$2 := (if p36$2 then _HAVOC_int$2 else v328$2);
    $$0$2$1 := (if p36$1 then v328$1 else $$0$2$1);
    $$0$2$2 := (if p36$2 then v328$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v329$1 := (if p36$1 then _HAVOC_int$1 else v329$1);
    v329$2 := (if p36$2 then _HAVOC_int$2 else v329$2);
    $$0$3$1 := (if p36$1 then v329$1 else $$0$3$1);
    $$0$3$2 := (if p36$2 then v329$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v330$1 := (if p36$1 then _HAVOC_int$1 else v330$1);
    v330$2 := (if p36$2 then _HAVOC_int$2 else v330$2);
    $$0$4$1 := (if p36$1 then v330$1 else $$0$4$1);
    $$0$4$2 := (if p36$2 then v330$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v331$1 := (if p36$1 then _HAVOC_int$1 else v331$1);
    v331$2 := (if p36$2 then _HAVOC_int$2 else v331$2);
    $$0$5$1 := (if p36$1 then v331$1 else $$0$5$1);
    $$0$5$2 := (if p36$2 then v331$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v332$1 := (if p36$1 then _HAVOC_int$1 else v332$1);
    v332$2 := (if p36$2 then _HAVOC_int$2 else v332$2);
    $$0$6$1 := (if p36$1 then v332$1 else $$0$6$1);
    $$0$6$2 := (if p36$2 then v332$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v333$1 := (if p36$1 then _HAVOC_int$1 else v333$1);
    v333$2 := (if p36$2 then _HAVOC_int$2 else v333$2);
    $$0$7$1 := (if p36$1 then v333$1 else $$0$7$1);
    $$0$7$2 := (if p36$2 then v333$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v334$1 := (if p36$1 then _HAVOC_int$1 else v334$1);
    v334$2 := (if p36$2 then _HAVOC_int$2 else v334$2);
    $$0$8$1 := (if p36$1 then v334$1 else $$0$8$1);
    $$0$8$2 := (if p36$2 then v334$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v335$1 := (if p36$1 then _HAVOC_int$1 else v335$1);
    v335$2 := (if p36$2 then _HAVOC_int$2 else v335$2);
    $$0$9$1 := (if p36$1 then v335$1 else $$0$9$1);
    $$0$9$2 := (if p36$2 then v335$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v336$1 := (if p36$1 then _HAVOC_int$1 else v336$1);
    v336$2 := (if p36$2 then _HAVOC_int$2 else v336$2);
    $$0$10$1 := (if p36$1 then v336$1 else $$0$10$1);
    $$0$10$2 := (if p36$2 then v336$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v337$1 := (if p36$1 then _HAVOC_int$1 else v337$1);
    v337$2 := (if p36$2 then _HAVOC_int$2 else v337$2);
    $$0$11$1 := (if p36$1 then v337$1 else $$0$11$1);
    $$0$11$2 := (if p36$2 then v337$2 else $$0$11$2);
    v338$1 := (if p36$1 then $$0$0$1 else v338$1);
    v338$2 := (if p36$2 then $$0$0$2 else v338$2);
    v339$1 := (if p36$1 then $$0$4$1 else v339$1);
    v339$2 := (if p36$2 then $$0$4$2 else v339$2);
    v340$1 := (if p36$1 then $$0$5$1 else v340$1);
    v340$2 := (if p36$2 then $$0$5$2 else v340$2);
    v341$1 := (if p36$1 then $$0$6$1 else v341$1);
    v341$2 := (if p36$2 then $$0$6$2 else v341$2);
    v342$1 := (if p36$1 then $$0$7$1 else v342$1);
    v342$2 := (if p36$2 then $$0$7$2 else v342$2);
    v343$1 := (if p36$1 then $$0$8$1 else v343$1);
    v343$2 := (if p36$2 then $$0$8$2 else v343$2);
    v344$1 := (if p36$1 then $$0$9$1 else v344$1);
    v344$2 := (if p36$2 then $$0$9$2 else v344$2);
    v345$1 := (if p36$1 then $$0$10$1 else v345$1);
    v345$2 := (if p36$2 then $$0$10$2 else v345$2);
    v346$1 := (if p36$1 then $$0$11$1 else v346$1);
    v346$2 := (if p36$2 then $$0$11$2 else v346$2);
    call {:sourceloc_num 635} v347$1, v347$2 := $_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p36$1, v338$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v342$1, v341$1), v340$1), v339$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v346$1, v345$1), v344$1), v343$1), SI32_TO_FP32(BV32_ASHR(v325$1, 2)), SI32_TO_FP32(BV32_ADD(BV32_SHL(BV32_ASHR($refpos.3$1, 18), 2), BV32_AND(v325$1, 3))), p36$2, v338$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v342$2, v341$2), v340$2), v339$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v346$2, v345$2), v344$2), v343$2), SI32_TO_FP32(BV32_ASHR(v325$2, 2)), SI32_TO_FP32(BV32_ADD(BV32_SHL(BV32_ASHR($refpos.3$2, 18), 2), BV32_AND(v325$2, 3))));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    v348$1 := (if p36$1 then BV8_SEXT32(v347$1) != BV8_SEXT32($c.1$1) else v348$1);
    v348$2 := (if p36$2 then BV8_SEXT32(v347$2) != BV8_SEXT32($c.1$2) else v348$2);
    p46$1 := (if p36$1 && v348$1 then v348$1 else p46$1);
    p46$2 := (if p36$2 && v348$2 then v348$2 else p46$2);
    p33$1 := (if p36$1 && v348$1 then !v348$1 else p33$1);
    p33$2 := (if p36$2 && v348$2 then !v348$2 else p33$2);
    p15$1 := (if p36$1 && v348$1 then !v348$1 else p15$1);
    p15$2 := (if p36$2 && v348$2 then !v348$2 else p15$2);
    p37$1 := (if p36$1 && !v348$1 then !v348$1 else p37$1);
    p37$2 := (if p36$2 && !v348$2 then !v348$2 else p37$2);
    v349$1 := (if p37$1 then BV32_ADD($qry_match_len.5$1, 1) else v349$1);
    v349$2 := (if p37$2 then BV32_ADD($qry_match_len.5$2, 1) else v349$2);
    v350$1 := (if p37$1 then $$queries[BV32_ADD(BV32_ADD(1, v3$1), BV32_SUB($qrystart.0$1, v349$1))] else v350$1);
    v350$2 := (if p37$2 then $$queries[BV32_ADD(BV32_ADD(1, v3$2), BV32_SUB($qrystart.0$2, v349$2))] else v350$2);
    v351$1 := (if p37$1 then BV8_SEXT32(v350$1) else v351$1);
    v351$2 := (if p37$2 then BV8_SEXT32(v350$2) else v351$2);
    p43$1 := (if p37$1 && v351$1 == 65 then v351$1 == 65 else p43$1);
    p43$2 := (if p37$2 && v351$2 == 65 then v351$2 == 65 else p43$2);
    p42$1 := (if p37$1 && v351$1 == 67 then v351$1 == 67 else p42$1);
    p42$2 := (if p37$2 && v351$2 == 67 then v351$2 == 67 else p42$2);
    p41$1 := (if p37$1 && v351$1 == 71 then v351$1 == 71 else p41$1);
    p41$2 := (if p37$2 && v351$2 == 71 then v351$2 == 71 else p41$2);
    p40$1 := (if p37$1 && v351$1 == 84 then v351$1 == 84 else p40$1);
    p40$2 := (if p37$2 && v351$2 == 84 then v351$2 == 84 else p40$2);
    p39$1 := (if p37$1 && v351$1 == 113 then v351$1 == 113 else p39$1);
    p39$2 := (if p37$2 && v351$2 == 113 then v351$2 == 113 else p39$2);
    p38$1 := (if p37$1 && v351$1 != 65 && v351$1 != 67 && v351$1 != 71 && v351$1 != 84 && v351$1 != 113 then v351$1 != 65 && v351$1 != 67 && v351$1 != 71 && v351$1 != 84 && v351$1 != 113 else p38$1);
    p38$2 := (if p37$2 && v351$2 != 65 && v351$2 != 67 && v351$2 != 71 && v351$2 != 84 && v351$2 != 113 then v351$2 != 65 && v351$2 != 67 && v351$2 != 71 && v351$2 != 84 && v351$2 != 113 else p38$2);
    $.0.i3$1 := (if p38$1 then v350$1 else $.0.i3$1);
    $.0.i3$2 := (if p38$2 then v350$2 else $.0.i3$2);
    $.0.i3$1 := (if p39$1 then 0 else $.0.i3$1);
    $.0.i3$2 := (if p39$2 then 0 else $.0.i3$2);
    $.0.i3$1 := (if p40$1 then 65 else $.0.i3$1);
    $.0.i3$2 := (if p40$2 then 65 else $.0.i3$2);
    $.0.i3$1 := (if p41$1 then 67 else $.0.i3$1);
    $.0.i3$2 := (if p41$2 then 67 else $.0.i3$2);
    $.0.i3$1 := (if p42$1 then 71 else $.0.i3$1);
    $.0.i3$2 := (if p42$2 then 71 else $.0.i3$2);
    $.0.i3$1 := (if p43$1 then 84 else $.0.i3$1);
    $.0.i3$2 := (if p43$2 then 84 else $.0.i3$2);
    $qry_match_len.5$1, $c.1$1, $refpos.3$1 := (if p37$1 then v349$1 else $qry_match_len.5$1), (if p37$1 then $.0.i3$1 else $c.1$1), (if p37$1 then BV32_ADD($refpos.3$1, 1) else $refpos.3$1);
    $qry_match_len.5$2, $c.1$2, $refpos.3$2 := (if p37$2 then v349$2 else $qry_match_len.5$2), (if p37$2 then $.0.i3$2 else $c.1$2), (if p37$2 then BV32_ADD($refpos.3$2, 1) else $refpos.3$2);
    p33$1 := (if p37$1 then true else p33$1);
    p33$2 := (if p37$2 then true else p33$2);
    goto $53.backedge, $53.tail;

  $53.tail:
    assume !p33$1 && !p33$2;
    $mustmatch.2$1, $qry_match_len.2$1, $c.0$1, $refpos.0$1 := (if p44$1 then $mustmatch.4$1 else $mustmatch.2$1), (if p44$1 then $qry_match_len.5$1 else $qry_match_len.2$1), (if p44$1 then $c.1$1 else $c.0$1), (if p44$1 then $refpos.3$1 else $refpos.0$1);
    $mustmatch.2$2, $qry_match_len.2$2, $c.0$2, $refpos.0$2 := (if p44$2 then $mustmatch.4$2 else $mustmatch.2$2), (if p44$2 then $qry_match_len.5$2 else $qry_match_len.2$2), (if p44$2 then $c.1$2 else $c.0$2), (if p44$2 then $refpos.3$2 else $refpos.0$2);
    p15$1 := (if p44$1 then true else p15$1);
    p15$2 := (if p44$2 then true else p15$2);
    goto $18.backedge, $18.tail;

  $18.tail:
    assume !p15$1 && !p15$2;
    $qry_match_len.6$1, $refpos.4$1 := (if p45$1 then $qry_match_len.2$1 else $qry_match_len.6$1), (if p45$1 then $refpos.0$1 else $refpos.4$1);
    $qry_match_len.6$2, $refpos.4$2 := (if p45$2 then $qry_match_len.2$2 else $qry_match_len.6$2), (if p45$2 then $refpos.0$2 else $refpos.4$2);
    p47$1 := (if p45$1 then true else p47$1);
    p47$2 := (if p45$2 then true else p47$2);
    $qry_match_len.6$1, $refpos.4$1 := (if p46$1 then $qry_match_len.5$1 else $qry_match_len.6$1), (if p46$1 then $refpos.3$1 else $refpos.4$1);
    $qry_match_len.6$2, $refpos.4$2 := (if p46$2 then $qry_match_len.5$2 else $qry_match_len.6$2), (if p46$2 then $refpos.3$2 else $refpos.4$2);
    p47$1 := (if p46$1 then true else p47$1);
    p47$2 := (if p46$2 then true else p47$2);
    v352$1 := (if p47$1 then $$node$0$1 else v352$1);
    v352$2 := (if p47$2 then $$node$0$2 else v352$2);
    v353$1 := (if p47$1 then $$node$1$1 else v353$1);
    v353$2 := (if p47$2 then $$node$1$2 else v353$2);
    v354$1 := (if p47$1 then $$node$2$1 else v354$1);
    v354$2 := (if p47$2 then $$node$2$2 else v354$2);
    v355$1 := (if p47$1 then $$node$3$1 else v355$1);
    v355$2 := (if p47$2 then $$node$3$2 else v355$2);
    v356$1 := (if p47$1 then BV32_SGT($qry_match_len.6$1, $min_match_len) else v356$1);
    v356$2 := (if p47$2 then BV32_SGT($qry_match_len.6$2, $min_match_len) else v356$2);
    p49$1 := (if p47$1 && v356$1 then v356$1 else p49$1);
    p49$2 := (if p47$2 && v356$2 then v356$2 else p49$2);
    v357$1 := (if p49$1 then $$cur$2$1 else v357$1);
    v357$2 := (if p49$2 then $$cur$2$2 else v357$2);
    v358$1 := (if p49$1 then $$cur$3$1 else v358$1);
    v358$2 := (if p49$2 then $$cur$3$2 else v358$2);
    v359$1 := (if p49$1 then $$cur$2$1 else v359$1);
    v359$2 := (if p49$2 then $$cur$2$2 else v359$2);
    v360$1 := (if p49$1 then $$cur$3$1 else v360$1);
    v360$2 := (if p49$2 then $$cur$3$2 else v360$2);
    v361$1 := (if p49$1 then $$cur$0$1 else v361$1);
    v361$2 := (if p49$2 then $$cur$0$2 else v361$2);
    v362$1 := (if p49$1 then $$cur$1$1 else v362$1);
    v362$2 := (if p49$2 then $$cur$1$2 else v362$2);
    v363$1 := (if p49$1 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(BV_CONCAT(v362$1, v361$1)), 5), BV32_AND(BV16_ZEXT32(BV_CONCAT(v358$1, v357$1)), 31)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(BV_CONCAT(v360$1, v359$1)), 5), 17)) else v363$1);
    v363$2 := (if p49$2 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(BV_CONCAT(v362$2, v361$2)), 5), BV32_AND(BV16_ZEXT32(BV_CONCAT(v358$2, v357$2)), 31)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(BV_CONCAT(v360$2, v359$2)), 5), 17)) else v363$2);
    call {:sourceloc} {:sourceloc_num 666} _LOG_WRITE_$$match_coords(p49$1, $result.0$1, BV_EXTRACT(v363$1, 8, 0), $$match_coords[$result.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, $result.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 666} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 666} _CHECK_WRITE_$$match_coords(p49$2, $result.0$2, BV_EXTRACT(v363$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[$result.0$1] := (if p49$1 then BV_EXTRACT(v363$1, 8, 0) else $$match_coords[$result.0$1]);
    $$match_coords[$result.0$2] := (if p49$2 then BV_EXTRACT(v363$2, 8, 0) else $$match_coords[$result.0$2]);
    call {:sourceloc} {:sourceloc_num 667} _LOG_WRITE_$$match_coords(p49$1, BV32_ADD($result.0$1, 1), BV_EXTRACT(v363$1, 16, 8), $$match_coords[BV32_ADD($result.0$1, 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, BV32_ADD($result.0$2, 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 667} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 667} _CHECK_WRITE_$$match_coords(p49$2, BV32_ADD($result.0$2, 1), BV_EXTRACT(v363$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 1)] := (if p49$1 then BV_EXTRACT(v363$1, 16, 8) else $$match_coords[BV32_ADD($result.0$1, 1)]);
    $$match_coords[BV32_ADD($result.0$2, 1)] := (if p49$2 then BV_EXTRACT(v363$2, 16, 8) else $$match_coords[BV32_ADD($result.0$2, 1)]);
    call {:sourceloc} {:sourceloc_num 668} _LOG_WRITE_$$match_coords(p49$1, BV32_ADD($result.0$1, 2), BV_EXTRACT(v363$1, 24, 16), $$match_coords[BV32_ADD($result.0$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, BV32_ADD($result.0$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 668} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 668} _CHECK_WRITE_$$match_coords(p49$2, BV32_ADD($result.0$2, 2), BV_EXTRACT(v363$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 2)] := (if p49$1 then BV_EXTRACT(v363$1, 24, 16) else $$match_coords[BV32_ADD($result.0$1, 2)]);
    $$match_coords[BV32_ADD($result.0$2, 2)] := (if p49$2 then BV_EXTRACT(v363$2, 24, 16) else $$match_coords[BV32_ADD($result.0$2, 2)]);
    call {:sourceloc} {:sourceloc_num 669} _LOG_WRITE_$$match_coords(p49$1, BV32_ADD($result.0$1, 3), BV_EXTRACT(v363$1, 32, 24), $$match_coords[BV32_ADD($result.0$1, 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, BV32_ADD($result.0$2, 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 669} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 669} _CHECK_WRITE_$$match_coords(p49$2, BV32_ADD($result.0$2, 3), BV_EXTRACT(v363$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 3)] := (if p49$1 then BV_EXTRACT(v363$1, 32, 24) else $$match_coords[BV32_ADD($result.0$1, 3)]);
    $$match_coords[BV32_ADD($result.0$2, 3)] := (if p49$2 then BV_EXTRACT(v363$2, 32, 24) else $$match_coords[BV32_ADD($result.0$2, 3)]);
    v364$1 := (if p49$1 then BV_EXTRACT(BV32_OR(BV32_SUB($refpos.4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v355$1, v354$1), v353$1), v352$1)), 32768), 16, 0) else v364$1);
    v364$2 := (if p49$2 then BV_EXTRACT(BV32_OR(BV32_SUB($refpos.4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v355$2, v354$2), v353$2), v352$2)), 32768), 16, 0) else v364$2);
    call {:sourceloc} {:sourceloc_num 670} _LOG_WRITE_$$match_coords(p49$1, BV32_ADD($result.0$1, 4), BV_EXTRACT(v364$1, 8, 0), $$match_coords[BV32_ADD($result.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, BV32_ADD($result.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 670} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 670} _CHECK_WRITE_$$match_coords(p49$2, BV32_ADD($result.0$2, 4), BV_EXTRACT(v364$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 4)] := (if p49$1 then BV_EXTRACT(v364$1, 8, 0) else $$match_coords[BV32_ADD($result.0$1, 4)]);
    $$match_coords[BV32_ADD($result.0$2, 4)] := (if p49$2 then BV_EXTRACT(v364$2, 8, 0) else $$match_coords[BV32_ADD($result.0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 671} _LOG_WRITE_$$match_coords(p49$1, BV32_ADD($result.0$1, 5), BV_EXTRACT(v364$1, 16, 8), $$match_coords[BV32_ADD($result.0$1, 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p49$2, BV32_ADD($result.0$2, 5));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 671} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 671} _CHECK_WRITE_$$match_coords(p49$2, BV32_ADD($result.0$2, 5), BV_EXTRACT(v364$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 5)] := (if p49$1 then BV_EXTRACT(v364$1, 16, 8) else $$match_coords[BV32_ADD($result.0$1, 5)]);
    $$match_coords[BV32_ADD($result.0$2, 5)] := (if p49$2 then BV_EXTRACT(v364$2, 16, 8) else $$match_coords[BV32_ADD($result.0$2, 5)]);
    v365$1 := (if p47$1 then $$node$0$1 else v365$1);
    v365$2 := (if p47$2 then $$node$0$2 else v365$2);
    v366$1 := (if p47$1 then $$node$1$1 else v366$1);
    v366$2 := (if p47$2 then $$node$1$2 else v366$2);
    v367$1 := (if p47$1 then $$node$2$1 else v367$1);
    v367$2 := (if p47$2 then $$node$2$2 else v367$2);
    v368$1 := (if p47$1 then $$node$3$1 else v368$1);
    v368$2 := (if p47$2 then $$node$3$2 else v368$2);
    v369$1 := (if p47$1 then BV32_SUB($refpos.4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v368$1, v367$1), v366$1), v365$1)) else v369$1);
    v369$2 := (if p47$2 then BV32_SUB($refpos.4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v368$2, v367$2), v366$2), v365$2)) else v369$2);
    $mustmatch.5$1, $qry_match_len.7$1 := (if p47$1 then v369$1 else $mustmatch.5$1), (if p47$1 then BV32_SUB($qry_match_len.6$1, BV32_ADD(v369$1, 1)) else $qry_match_len.7$1);
    $mustmatch.5$2, $qry_match_len.7$2 := (if p47$2 then v369$2 else $mustmatch.5$2), (if p47$2 then BV32_SUB($qry_match_len.6$2, BV32_ADD(v369$2, 1)) else $qry_match_len.7$2);
    v161$1 := (if p50$1 then BV32_SGT($qry_match_len.2$1, $min_match_len) else v161$1);
    v161$2 := (if p50$2 then BV32_SGT($qry_match_len.2$2, $min_match_len) else v161$2);
    p52$1 := (if p50$1 && v161$1 then v161$1 else p52$1);
    p52$2 := (if p50$2 && v161$2 then v161$2 else p52$2);
    v162$1 := (if p52$1 then $$prev$2$1 else v162$1);
    v162$2 := (if p52$2 then $$prev$2$2 else v162$2);
    v163$1 := (if p52$1 then $$prev$3$1 else v163$1);
    v163$2 := (if p52$2 then $$prev$3$2 else v163$2);
    v164$1 := (if p52$1 then $$prev$2$1 else v164$1);
    v164$2 := (if p52$2 then $$prev$2$2 else v164$2);
    v165$1 := (if p52$1 then $$prev$3$1 else v165$1);
    v165$2 := (if p52$2 then $$prev$3$2 else v165$2);
    v166$1 := (if p52$1 then $$prev$0$1 else v166$1);
    v166$2 := (if p52$2 then $$prev$0$2 else v166$2);
    v167$1 := (if p52$1 then $$prev$1$1 else v167$1);
    v167$2 := (if p52$2 then $$prev$1$2 else v167$2);
    v168$1 := (if p52$1 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(BV_CONCAT(v167$1, v166$1)), 5), BV32_AND(BV16_ZEXT32(BV_CONCAT(v163$1, v162$1)), 31)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(BV_CONCAT(v165$1, v164$1)), 5), 17)) else v168$1);
    v168$2 := (if p52$2 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(BV_CONCAT(v167$2, v166$2)), 5), BV32_AND(BV16_ZEXT32(BV_CONCAT(v163$2, v162$2)), 31)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(BV_CONCAT(v165$2, v164$2)), 5), 17)) else v168$2);
    call {:sourceloc} {:sourceloc_num 321} _LOG_WRITE_$$match_coords(p52$1, $result.0$1, BV_EXTRACT(v168$1, 8, 0), $$match_coords[$result.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, $result.0$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 321} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 321} _CHECK_WRITE_$$match_coords(p52$2, $result.0$2, BV_EXTRACT(v168$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[$result.0$1] := (if p52$1 then BV_EXTRACT(v168$1, 8, 0) else $$match_coords[$result.0$1]);
    $$match_coords[$result.0$2] := (if p52$2 then BV_EXTRACT(v168$2, 8, 0) else $$match_coords[$result.0$2]);
    call {:sourceloc} {:sourceloc_num 322} _LOG_WRITE_$$match_coords(p52$1, BV32_ADD($result.0$1, 1), BV_EXTRACT(v168$1, 16, 8), $$match_coords[BV32_ADD($result.0$1, 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, BV32_ADD($result.0$2, 1));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 322} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 322} _CHECK_WRITE_$$match_coords(p52$2, BV32_ADD($result.0$2, 1), BV_EXTRACT(v168$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 1)] := (if p52$1 then BV_EXTRACT(v168$1, 16, 8) else $$match_coords[BV32_ADD($result.0$1, 1)]);
    $$match_coords[BV32_ADD($result.0$2, 1)] := (if p52$2 then BV_EXTRACT(v168$2, 16, 8) else $$match_coords[BV32_ADD($result.0$2, 1)]);
    call {:sourceloc} {:sourceloc_num 323} _LOG_WRITE_$$match_coords(p52$1, BV32_ADD($result.0$1, 2), BV_EXTRACT(v168$1, 24, 16), $$match_coords[BV32_ADD($result.0$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, BV32_ADD($result.0$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 323} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 323} _CHECK_WRITE_$$match_coords(p52$2, BV32_ADD($result.0$2, 2), BV_EXTRACT(v168$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 2)] := (if p52$1 then BV_EXTRACT(v168$1, 24, 16) else $$match_coords[BV32_ADD($result.0$1, 2)]);
    $$match_coords[BV32_ADD($result.0$2, 2)] := (if p52$2 then BV_EXTRACT(v168$2, 24, 16) else $$match_coords[BV32_ADD($result.0$2, 2)]);
    call {:sourceloc} {:sourceloc_num 324} _LOG_WRITE_$$match_coords(p52$1, BV32_ADD($result.0$1, 3), BV_EXTRACT(v168$1, 32, 24), $$match_coords[BV32_ADD($result.0$1, 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, BV32_ADD($result.0$2, 3));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 324} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 324} _CHECK_WRITE_$$match_coords(p52$2, BV32_ADD($result.0$2, 3), BV_EXTRACT(v168$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 3)] := (if p52$1 then BV_EXTRACT(v168$1, 32, 24) else $$match_coords[BV32_ADD($result.0$1, 3)]);
    $$match_coords[BV32_ADD($result.0$2, 3)] := (if p52$2 then BV_EXTRACT(v168$2, 32, 24) else $$match_coords[BV32_ADD($result.0$2, 3)]);
    call {:sourceloc} {:sourceloc_num 325} _LOG_WRITE_$$match_coords(p52$1, BV32_ADD($result.0$1, 4), 0, $$match_coords[BV32_ADD($result.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, BV32_ADD($result.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 325} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 325} _CHECK_WRITE_$$match_coords(p52$2, BV32_ADD($result.0$2, 4), 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 4)] := (if p52$1 then 0 else $$match_coords[BV32_ADD($result.0$1, 4)]);
    $$match_coords[BV32_ADD($result.0$2, 4)] := (if p52$2 then 0 else $$match_coords[BV32_ADD($result.0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 326} _LOG_WRITE_$$match_coords(p52$1, BV32_ADD($result.0$1, 5), -128, $$match_coords[BV32_ADD($result.0$1, 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p52$2, BV32_ADD($result.0$2, 5));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 326} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 326} _CHECK_WRITE_$$match_coords(p52$2, BV32_ADD($result.0$2, 5), -128);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 5)] := (if p52$1 then -128 else $$match_coords[BV32_ADD($result.0$1, 5)]);
    $$match_coords[BV32_ADD($result.0$2, 5)] := (if p52$2 then -128 else $$match_coords[BV32_ADD($result.0$2, 5)]);
    $mustmatch.5$1, $qry_match_len.7$1 := (if p50$1 then 0 else $mustmatch.5$1), (if p50$1 then BV32_SUB($qry_match_len.2$1, 1) else $qry_match_len.7$1);
    $mustmatch.5$2, $qry_match_len.7$2 := (if p50$2 then 0 else $mustmatch.5$2), (if p50$2 then BV32_SUB($qry_match_len.2$2, 1) else $qry_match_len.7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v370$1 := (if p3$1 then _HAVOC_int$1 else v370$1);
    v370$2 := (if p3$2 then _HAVOC_int$2 else v370$2);
    $$6$0$1 := (if p3$1 then v370$1 else $$6$0$1);
    $$6$0$2 := (if p3$2 then v370$2 else $$6$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v371$1 := (if p3$1 then _HAVOC_int$1 else v371$1);
    v371$2 := (if p3$2 then _HAVOC_int$2 else v371$2);
    $$6$1$1 := (if p3$1 then v371$1 else $$6$1$1);
    $$6$1$2 := (if p3$2 then v371$2 else $$6$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v372$1 := (if p3$1 then _HAVOC_int$1 else v372$1);
    v372$2 := (if p3$2 then _HAVOC_int$2 else v372$2);
    $$6$2$1 := (if p3$1 then v372$1 else $$6$2$1);
    $$6$2$2 := (if p3$2 then v372$2 else $$6$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v373$1 := (if p3$1 then _HAVOC_int$1 else v373$1);
    v373$2 := (if p3$2 then _HAVOC_int$2 else v373$2);
    $$6$3$1 := (if p3$1 then v373$1 else $$6$3$1);
    $$6$3$2 := (if p3$2 then v373$2 else $$6$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v374$1 := (if p3$1 then _HAVOC_int$1 else v374$1);
    v374$2 := (if p3$2 then _HAVOC_int$2 else v374$2);
    $$6$4$1 := (if p3$1 then v374$1 else $$6$4$1);
    $$6$4$2 := (if p3$2 then v374$2 else $$6$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v375$1 := (if p3$1 then _HAVOC_int$1 else v375$1);
    v375$2 := (if p3$2 then _HAVOC_int$2 else v375$2);
    $$6$5$1 := (if p3$1 then v375$1 else $$6$5$1);
    $$6$5$2 := (if p3$2 then v375$2 else $$6$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v376$1 := (if p3$1 then _HAVOC_int$1 else v376$1);
    v376$2 := (if p3$2 then _HAVOC_int$2 else v376$2);
    $$6$6$1 := (if p3$1 then v376$1 else $$6$6$1);
    $$6$6$2 := (if p3$2 then v376$2 else $$6$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v377$1 := (if p3$1 then _HAVOC_int$1 else v377$1);
    v377$2 := (if p3$2 then _HAVOC_int$2 else v377$2);
    $$6$7$1 := (if p3$1 then v377$1 else $$6$7$1);
    $$6$7$2 := (if p3$2 then v377$2 else $$6$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v378$1 := (if p3$1 then _HAVOC_int$1 else v378$1);
    v378$2 := (if p3$2 then _HAVOC_int$2 else v378$2);
    $$6$8$1 := (if p3$1 then v378$1 else $$6$8$1);
    $$6$8$2 := (if p3$2 then v378$2 else $$6$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v379$1 := (if p3$1 then _HAVOC_int$1 else v379$1);
    v379$2 := (if p3$2 then _HAVOC_int$2 else v379$2);
    $$6$9$1 := (if p3$1 then v379$1 else $$6$9$1);
    $$6$9$2 := (if p3$2 then v379$2 else $$6$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v380$1 := (if p3$1 then _HAVOC_int$1 else v380$1);
    v380$2 := (if p3$2 then _HAVOC_int$2 else v380$2);
    $$6$10$1 := (if p3$1 then v380$1 else $$6$10$1);
    $$6$10$2 := (if p3$2 then v380$2 else $$6$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v381$1 := (if p3$1 then _HAVOC_int$1 else v381$1);
    v381$2 := (if p3$2 then _HAVOC_int$2 else v381$2);
    $$6$11$1 := (if p3$1 then v381$1 else $$6$11$1);
    $$6$11$2 := (if p3$2 then v381$2 else $$6$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v382$1 := (if p3$1 then _HAVOC_int$1 else v382$1);
    v382$2 := (if p3$2 then _HAVOC_int$2 else v382$2);
    $$6$12$1 := (if p3$1 then v382$1 else $$6$12$1);
    $$6$12$2 := (if p3$2 then v382$2 else $$6$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v383$1 := (if p3$1 then _HAVOC_int$1 else v383$1);
    v383$2 := (if p3$2 then _HAVOC_int$2 else v383$2);
    $$6$13$1 := (if p3$1 then v383$1 else $$6$13$1);
    $$6$13$2 := (if p3$2 then v383$2 else $$6$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v384$1 := (if p3$1 then _HAVOC_int$1 else v384$1);
    v384$2 := (if p3$2 then _HAVOC_int$2 else v384$2);
    $$6$14$1 := (if p3$1 then v384$1 else $$6$14$1);
    $$6$14$2 := (if p3$2 then v384$2 else $$6$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v385$1 := (if p3$1 then _HAVOC_int$1 else v385$1);
    v385$2 := (if p3$2 then _HAVOC_int$2 else v385$2);
    $$6$15$1 := (if p3$1 then v385$1 else $$6$15$1);
    $$6$15$2 := (if p3$2 then v385$2 else $$6$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v386$1 := (if p3$1 then _HAVOC_int$1 else v386$1);
    v386$2 := (if p3$2 then _HAVOC_int$2 else v386$2);
    $$6$16$1 := (if p3$1 then v386$1 else $$6$16$1);
    $$6$16$2 := (if p3$2 then v386$2 else $$6$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v387$1 := (if p3$1 then _HAVOC_int$1 else v387$1);
    v387$2 := (if p3$2 then _HAVOC_int$2 else v387$2);
    $$6$17$1 := (if p3$1 then v387$1 else $$6$17$1);
    $$6$17$2 := (if p3$2 then v387$2 else $$6$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v388$1 := (if p3$1 then _HAVOC_int$1 else v388$1);
    v388$2 := (if p3$2 then _HAVOC_int$2 else v388$2);
    $$6$18$1 := (if p3$1 then v388$1 else $$6$18$1);
    $$6$18$2 := (if p3$2 then v388$2 else $$6$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v389$1 := (if p3$1 then _HAVOC_int$1 else v389$1);
    v389$2 := (if p3$2 then _HAVOC_int$2 else v389$2);
    $$6$19$1 := (if p3$1 then v389$1 else $$6$19$1);
    $$6$19$2 := (if p3$2 then v389$2 else $$6$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v390$1 := (if p3$1 then _HAVOC_int$1 else v390$1);
    v390$2 := (if p3$2 then _HAVOC_int$2 else v390$2);
    $$6$20$1 := (if p3$1 then v390$1 else $$6$20$1);
    $$6$20$2 := (if p3$2 then v390$2 else $$6$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v391$1 := (if p3$1 then _HAVOC_int$1 else v391$1);
    v391$2 := (if p3$2 then _HAVOC_int$2 else v391$2);
    $$6$21$1 := (if p3$1 then v391$1 else $$6$21$1);
    $$6$21$2 := (if p3$2 then v391$2 else $$6$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v392$1 := (if p3$1 then _HAVOC_int$1 else v392$1);
    v392$2 := (if p3$2 then _HAVOC_int$2 else v392$2);
    $$6$22$1 := (if p3$1 then v392$1 else $$6$22$1);
    $$6$22$2 := (if p3$2 then v392$2 else $$6$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v393$1 := (if p3$1 then _HAVOC_int$1 else v393$1);
    v393$2 := (if p3$2 then _HAVOC_int$2 else v393$2);
    $$6$23$1 := (if p3$1 then v393$1 else $$6$23$1);
    $$6$23$2 := (if p3$2 then v393$2 else $$6$23$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v394$1 := (if p3$1 then _HAVOC_int$1 else v394$1);
    v394$2 := (if p3$2 then _HAVOC_int$2 else v394$2);
    $$6$24$1 := (if p3$1 then v394$1 else $$6$24$1);
    $$6$24$2 := (if p3$2 then v394$2 else $$6$24$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v395$1 := (if p3$1 then _HAVOC_int$1 else v395$1);
    v395$2 := (if p3$2 then _HAVOC_int$2 else v395$2);
    $$6$25$1 := (if p3$1 then v395$1 else $$6$25$1);
    $$6$25$2 := (if p3$2 then v395$2 else $$6$25$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v396$1 := (if p3$1 then _HAVOC_int$1 else v396$1);
    v396$2 := (if p3$2 then _HAVOC_int$2 else v396$2);
    $$6$26$1 := (if p3$1 then v396$1 else $$6$26$1);
    $$6$26$2 := (if p3$2 then v396$2 else $$6$26$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v397$1 := (if p3$1 then _HAVOC_int$1 else v397$1);
    v397$2 := (if p3$2 then _HAVOC_int$2 else v397$2);
    $$6$27$1 := (if p3$1 then v397$1 else $$6$27$1);
    $$6$27$2 := (if p3$2 then v397$2 else $$6$27$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v398$1 := (if p3$1 then _HAVOC_int$1 else v398$1);
    v398$2 := (if p3$2 then _HAVOC_int$2 else v398$2);
    $$6$28$1 := (if p3$1 then v398$1 else $$6$28$1);
    $$6$28$2 := (if p3$2 then v398$2 else $$6$28$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v399$1 := (if p3$1 then _HAVOC_int$1 else v399$1);
    v399$2 := (if p3$2 then _HAVOC_int$2 else v399$2);
    $$6$29$1 := (if p3$1 then v399$1 else $$6$29$1);
    $$6$29$2 := (if p3$2 then v399$2 else $$6$29$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v400$1 := (if p3$1 then _HAVOC_int$1 else v400$1);
    v400$2 := (if p3$2 then _HAVOC_int$2 else v400$2);
    $$6$30$1 := (if p3$1 then v400$1 else $$6$30$1);
    $$6$30$2 := (if p3$2 then v400$2 else $$6$30$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v401$1 := (if p3$1 then _HAVOC_int$1 else v401$1);
    v401$2 := (if p3$2 then _HAVOC_int$2 else v401$2);
    $$6$31$1 := (if p3$1 then v401$1 else $$6$31$1);
    $$6$31$2 := (if p3$2 then v401$2 else $$6$31$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v402$1 := (if p3$1 then _HAVOC_int$1 else v402$1);
    v402$2 := (if p3$2 then _HAVOC_int$2 else v402$2);
    $$6$32$1 := (if p3$1 then v402$1 else $$6$32$1);
    $$6$32$2 := (if p3$2 then v402$2 else $$6$32$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v403$1 := (if p3$1 then _HAVOC_int$1 else v403$1);
    v403$2 := (if p3$2 then _HAVOC_int$2 else v403$2);
    $$6$33$1 := (if p3$1 then v403$1 else $$6$33$1);
    $$6$33$2 := (if p3$2 then v403$2 else $$6$33$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v404$1 := (if p3$1 then _HAVOC_int$1 else v404$1);
    v404$2 := (if p3$2 then _HAVOC_int$2 else v404$2);
    $$6$34$1 := (if p3$1 then v404$1 else $$6$34$1);
    $$6$34$2 := (if p3$2 then v404$2 else $$6$34$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v405$1 := (if p3$1 then _HAVOC_int$1 else v405$1);
    v405$2 := (if p3$2 then _HAVOC_int$2 else v405$2);
    $$6$35$1 := (if p3$1 then v405$1 else $$6$35$1);
    $$6$35$2 := (if p3$2 then v405$2 else $$6$35$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v406$1 := (if p3$1 then _HAVOC_int$1 else v406$1);
    v406$2 := (if p3$2 then _HAVOC_int$2 else v406$2);
    $$6$36$1 := (if p3$1 then v406$1 else $$6$36$1);
    $$6$36$2 := (if p3$2 then v406$2 else $$6$36$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v407$1 := (if p3$1 then _HAVOC_int$1 else v407$1);
    v407$2 := (if p3$2 then _HAVOC_int$2 else v407$2);
    $$6$37$1 := (if p3$1 then v407$1 else $$6$37$1);
    $$6$37$2 := (if p3$2 then v407$2 else $$6$37$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v408$1 := (if p3$1 then _HAVOC_int$1 else v408$1);
    v408$2 := (if p3$2 then _HAVOC_int$2 else v408$2);
    $$6$38$1 := (if p3$1 then v408$1 else $$6$38$1);
    $$6$38$2 := (if p3$2 then v408$2 else $$6$38$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v409$1 := (if p3$1 then _HAVOC_int$1 else v409$1);
    v409$2 := (if p3$2 then _HAVOC_int$2 else v409$2);
    $$6$39$1 := (if p3$1 then v409$1 else $$6$39$1);
    $$6$39$2 := (if p3$2 then v409$2 else $$6$39$2);
    v410$1 := (if p3$1 then $$prev$0$1 else v410$1);
    v410$2 := (if p3$2 then $$prev$0$2 else v410$2);
    v411$1 := (if p3$1 then $$prev$1$1 else v411$1);
    v411$2 := (if p3$2 then $$prev$1$2 else v411$2);
    v412$1 := (if p3$1 then $$prev$2$1 else v412$1);
    v412$2 := (if p3$2 then $$prev$2$2 else v412$2);
    v413$1 := (if p3$1 then $$prev$3$1 else v413$1);
    v413$2 := (if p3$2 then $$prev$3$2 else v413$2);
    v414$1 := (if p3$1 then $$6$0$1 else v414$1);
    v414$2 := (if p3$2 then $$6$0$2 else v414$2);
    v415$1 := (if p3$1 then $$6$1$1 else v415$1);
    v415$2 := (if p3$2 then $$6$1$2 else v415$2);
    v416$1 := (if p3$1 then $$6$2$1 else v416$1);
    v416$2 := (if p3$2 then $$6$2$2 else v416$2);
    v417$1 := (if p3$1 then $$6$3$1 else v417$1);
    v417$2 := (if p3$2 then $$6$3$2 else v417$2);
    v418$1 := (if p3$1 then $$6$4$1 else v418$1);
    v418$2 := (if p3$2 then $$6$4$2 else v418$2);
    v419$1 := (if p3$1 then $$6$5$1 else v419$1);
    v419$2 := (if p3$2 then $$6$5$2 else v419$2);
    v420$1 := (if p3$1 then $$6$6$1 else v420$1);
    v420$2 := (if p3$2 then $$6$6$2 else v420$2);
    v421$1 := (if p3$1 then $$6$7$1 else v421$1);
    v421$2 := (if p3$2 then $$6$7$2 else v421$2);
    v422$1 := (if p3$1 then $$6$8$1 else v422$1);
    v422$2 := (if p3$2 then $$6$8$2 else v422$2);
    v423$1 := (if p3$1 then $$6$9$1 else v423$1);
    v423$2 := (if p3$2 then $$6$9$2 else v423$2);
    v424$1 := (if p3$1 then $$6$10$1 else v424$1);
    v424$2 := (if p3$2 then $$6$10$2 else v424$2);
    v425$1 := (if p3$1 then $$6$11$1 else v425$1);
    v425$2 := (if p3$2 then $$6$11$2 else v425$2);
    v426$1 := (if p3$1 then $$6$12$1 else v426$1);
    v426$2 := (if p3$2 then $$6$12$2 else v426$2);
    v427$1 := (if p3$1 then $$6$13$1 else v427$1);
    v427$2 := (if p3$2 then $$6$13$2 else v427$2);
    v428$1 := (if p3$1 then $$6$14$1 else v428$1);
    v428$2 := (if p3$2 then $$6$14$2 else v428$2);
    v429$1 := (if p3$1 then $$6$15$1 else v429$1);
    v429$2 := (if p3$2 then $$6$15$2 else v429$2);
    v430$1 := (if p3$1 then $$6$16$1 else v430$1);
    v430$2 := (if p3$2 then $$6$16$2 else v430$2);
    v431$1 := (if p3$1 then $$6$17$1 else v431$1);
    v431$2 := (if p3$2 then $$6$17$2 else v431$2);
    v432$1 := (if p3$1 then $$6$18$1 else v432$1);
    v432$2 := (if p3$2 then $$6$18$2 else v432$2);
    v433$1 := (if p3$1 then $$6$19$1 else v433$1);
    v433$2 := (if p3$2 then $$6$19$2 else v433$2);
    v434$1 := (if p3$1 then $$6$20$1 else v434$1);
    v434$2 := (if p3$2 then $$6$20$2 else v434$2);
    v435$1 := (if p3$1 then $$6$21$1 else v435$1);
    v435$2 := (if p3$2 then $$6$21$2 else v435$2);
    v436$1 := (if p3$1 then $$6$22$1 else v436$1);
    v436$2 := (if p3$2 then $$6$22$2 else v436$2);
    v437$1 := (if p3$1 then $$6$23$1 else v437$1);
    v437$2 := (if p3$2 then $$6$23$2 else v437$2);
    v438$1 := (if p3$1 then $$6$24$1 else v438$1);
    v438$2 := (if p3$2 then $$6$24$2 else v438$2);
    v439$1 := (if p3$1 then $$6$25$1 else v439$1);
    v439$2 := (if p3$2 then $$6$25$2 else v439$2);
    v440$1 := (if p3$1 then $$6$26$1 else v440$1);
    v440$2 := (if p3$2 then $$6$26$2 else v440$2);
    v441$1 := (if p3$1 then $$6$27$1 else v441$1);
    v441$2 := (if p3$2 then $$6$27$2 else v441$2);
    v442$1 := (if p3$1 then $$6$28$1 else v442$1);
    v442$2 := (if p3$2 then $$6$28$2 else v442$2);
    v443$1 := (if p3$1 then $$6$29$1 else v443$1);
    v443$2 := (if p3$2 then $$6$29$2 else v443$2);
    v444$1 := (if p3$1 then $$6$30$1 else v444$1);
    v444$2 := (if p3$2 then $$6$30$2 else v444$2);
    v445$1 := (if p3$1 then $$6$31$1 else v445$1);
    v445$2 := (if p3$2 then $$6$31$2 else v445$2);
    v446$1 := (if p3$1 then $$6$32$1 else v446$1);
    v446$2 := (if p3$2 then $$6$32$2 else v446$2);
    v447$1 := (if p3$1 then $$6$33$1 else v447$1);
    v447$2 := (if p3$2 then $$6$33$2 else v447$2);
    v448$1 := (if p3$1 then $$6$34$1 else v448$1);
    v448$2 := (if p3$2 then $$6$34$2 else v448$2);
    v449$1 := (if p3$1 then $$6$35$1 else v449$1);
    v449$2 := (if p3$2 then $$6$35$2 else v449$2);
    v450$1 := (if p3$1 then $$6$36$1 else v450$1);
    v450$2 := (if p3$2 then $$6$36$2 else v450$2);
    v451$1 := (if p3$1 then $$6$37$1 else v451$1);
    v451$2 := (if p3$2 then $$6$37$2 else v451$2);
    v452$1 := (if p3$1 then $$6$38$1 else v452$1);
    v452$2 := (if p3$2 then $$6$38$2 else v452$2);
    v453$1 := (if p3$1 then $$6$39$1 else v453$1);
    v453$2 := (if p3$2 then $$6$39$2 else v453$2);
    call {:sourceloc_num 802} v454$1, v454$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p3$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v445$1, v444$1), v443$1), v442$1), v441$1), v440$1), v439$1), v438$1), v437$1), v436$1), v435$1), v434$1), v433$1), v432$1), v431$1), v430$1), v429$1), v428$1), v427$1), v426$1), v425$1), v424$1), v423$1), v422$1), v421$1), v420$1), v419$1), v418$1), v417$1), v416$1), v415$1), v414$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v449$1, v448$1), v447$1), v446$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v453$1, v452$1), v451$1), v450$1), UI16_TO_FP32(BV_CONCAT(v411$1, v410$1)), UI16_TO_FP32(BV_CONCAT(v413$1, v412$1)), p3$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v445$2, v444$2), v443$2), v442$2), v441$2), v440$2), v439$2), v438$2), v437$2), v436$2), v435$2), v434$2), v433$2), v432$2), v431$2), v430$2), v429$2), v428$2), v427$2), v426$2), v425$2), v424$2), v423$2), v422$2), v421$2), v420$2), v419$2), v418$2), v417$2), v416$2), v415$2), v414$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v449$2, v448$2), v447$2), v446$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v453$2, v452$2), v451$2), v450$2), UI16_TO_FP32(BV_CONCAT(v411$2, v410$2)), UI16_TO_FP32(BV_CONCAT(v413$2, v412$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v455$1 := (if p3$1 then BV_EXTRACT(v454$1, 64, 0) else v455$1);
    v455$2 := (if p3$2 then BV_EXTRACT(v454$2, 64, 0) else v455$2);
    $$5$0$1 := (if p3$1 then BV_EXTRACT(v455$1, 8, 0) else $$5$0$1);
    $$5$0$2 := (if p3$2 then BV_EXTRACT(v455$2, 8, 0) else $$5$0$2);
    $$5$1$1 := (if p3$1 then BV_EXTRACT(v455$1, 16, 8) else $$5$1$1);
    $$5$1$2 := (if p3$2 then BV_EXTRACT(v455$2, 16, 8) else $$5$1$2);
    $$5$2$1 := (if p3$1 then BV_EXTRACT(v455$1, 24, 16) else $$5$2$1);
    $$5$2$2 := (if p3$2 then BV_EXTRACT(v455$2, 24, 16) else $$5$2$2);
    $$5$3$1 := (if p3$1 then BV_EXTRACT(v455$1, 32, 24) else $$5$3$1);
    $$5$3$2 := (if p3$2 then BV_EXTRACT(v455$2, 32, 24) else $$5$3$2);
    $$5$4$1 := (if p3$1 then BV_EXTRACT(v455$1, 40, 32) else $$5$4$1);
    $$5$4$2 := (if p3$2 then BV_EXTRACT(v455$2, 40, 32) else $$5$4$2);
    $$5$5$1 := (if p3$1 then BV_EXTRACT(v455$1, 48, 40) else $$5$5$1);
    $$5$5$2 := (if p3$2 then BV_EXTRACT(v455$2, 48, 40) else $$5$5$2);
    $$5$6$1 := (if p3$1 then BV_EXTRACT(v455$1, 56, 48) else $$5$6$1);
    $$5$6$2 := (if p3$2 then BV_EXTRACT(v455$2, 56, 48) else $$5$6$2);
    $$5$7$1 := (if p3$1 then BV_EXTRACT(v455$1, 64, 56) else $$5$7$1);
    $$5$7$2 := (if p3$2 then BV_EXTRACT(v455$2, 64, 56) else $$5$7$2);
    v456$1 := (if p3$1 then BV_EXTRACT(v454$1, 128, 64) else v456$1);
    v456$2 := (if p3$2 then BV_EXTRACT(v454$2, 128, 64) else v456$2);
    $$5$8$1 := (if p3$1 then BV_EXTRACT(v456$1, 8, 0) else $$5$8$1);
    $$5$8$2 := (if p3$2 then BV_EXTRACT(v456$2, 8, 0) else $$5$8$2);
    $$5$9$1 := (if p3$1 then BV_EXTRACT(v456$1, 16, 8) else $$5$9$1);
    $$5$9$2 := (if p3$2 then BV_EXTRACT(v456$2, 16, 8) else $$5$9$2);
    $$5$10$1 := (if p3$1 then BV_EXTRACT(v456$1, 24, 16) else $$5$10$1);
    $$5$10$2 := (if p3$2 then BV_EXTRACT(v456$2, 24, 16) else $$5$10$2);
    $$5$11$1 := (if p3$1 then BV_EXTRACT(v456$1, 32, 24) else $$5$11$1);
    $$5$11$2 := (if p3$2 then BV_EXTRACT(v456$2, 32, 24) else $$5$11$2);
    $$5$12$1 := (if p3$1 then BV_EXTRACT(v456$1, 40, 32) else $$5$12$1);
    $$5$12$2 := (if p3$2 then BV_EXTRACT(v456$2, 40, 32) else $$5$12$2);
    $$5$13$1 := (if p3$1 then BV_EXTRACT(v456$1, 48, 40) else $$5$13$1);
    $$5$13$2 := (if p3$2 then BV_EXTRACT(v456$2, 48, 40) else $$5$13$2);
    $$5$14$1 := (if p3$1 then BV_EXTRACT(v456$1, 56, 48) else $$5$14$1);
    $$5$14$2 := (if p3$2 then BV_EXTRACT(v456$2, 56, 48) else $$5$14$2);
    $$5$15$1 := (if p3$1 then BV_EXTRACT(v456$1, 64, 56) else $$5$15$1);
    $$5$15$2 := (if p3$2 then BV_EXTRACT(v456$2, 64, 56) else $$5$15$2);
    v457$1 := (if p3$1 then BV_EXTRACT(v454$1, 192, 128) else v457$1);
    v457$2 := (if p3$2 then BV_EXTRACT(v454$2, 192, 128) else v457$2);
    $$5$16$1 := (if p3$1 then BV_EXTRACT(v457$1, 8, 0) else $$5$16$1);
    $$5$16$2 := (if p3$2 then BV_EXTRACT(v457$2, 8, 0) else $$5$16$2);
    $$5$17$1 := (if p3$1 then BV_EXTRACT(v457$1, 16, 8) else $$5$17$1);
    $$5$17$2 := (if p3$2 then BV_EXTRACT(v457$2, 16, 8) else $$5$17$2);
    $$5$18$1 := (if p3$1 then BV_EXTRACT(v457$1, 24, 16) else $$5$18$1);
    $$5$18$2 := (if p3$2 then BV_EXTRACT(v457$2, 24, 16) else $$5$18$2);
    $$5$19$1 := (if p3$1 then BV_EXTRACT(v457$1, 32, 24) else $$5$19$1);
    $$5$19$2 := (if p3$2 then BV_EXTRACT(v457$2, 32, 24) else $$5$19$2);
    $$5$20$1 := (if p3$1 then BV_EXTRACT(v457$1, 40, 32) else $$5$20$1);
    $$5$20$2 := (if p3$2 then BV_EXTRACT(v457$2, 40, 32) else $$5$20$2);
    $$5$21$1 := (if p3$1 then BV_EXTRACT(v457$1, 48, 40) else $$5$21$1);
    $$5$21$2 := (if p3$2 then BV_EXTRACT(v457$2, 48, 40) else $$5$21$2);
    $$5$22$1 := (if p3$1 then BV_EXTRACT(v457$1, 56, 48) else $$5$22$1);
    $$5$22$2 := (if p3$2 then BV_EXTRACT(v457$2, 56, 48) else $$5$22$2);
    $$5$23$1 := (if p3$1 then BV_EXTRACT(v457$1, 64, 56) else $$5$23$1);
    $$5$23$2 := (if p3$2 then BV_EXTRACT(v457$2, 64, 56) else $$5$23$2);
    v458$1 := (if p3$1 then BV_EXTRACT(v454$1, 256, 192) else v458$1);
    v458$2 := (if p3$2 then BV_EXTRACT(v454$2, 256, 192) else v458$2);
    $$5$24$1 := (if p3$1 then BV_EXTRACT(v458$1, 8, 0) else $$5$24$1);
    $$5$24$2 := (if p3$2 then BV_EXTRACT(v458$2, 8, 0) else $$5$24$2);
    $$5$25$1 := (if p3$1 then BV_EXTRACT(v458$1, 16, 8) else $$5$25$1);
    $$5$25$2 := (if p3$2 then BV_EXTRACT(v458$2, 16, 8) else $$5$25$2);
    $$5$26$1 := (if p3$1 then BV_EXTRACT(v458$1, 24, 16) else $$5$26$1);
    $$5$26$2 := (if p3$2 then BV_EXTRACT(v458$2, 24, 16) else $$5$26$2);
    $$5$27$1 := (if p3$1 then BV_EXTRACT(v458$1, 32, 24) else $$5$27$1);
    $$5$27$2 := (if p3$2 then BV_EXTRACT(v458$2, 32, 24) else $$5$27$2);
    $$5$28$1 := (if p3$1 then BV_EXTRACT(v458$1, 40, 32) else $$5$28$1);
    $$5$28$2 := (if p3$2 then BV_EXTRACT(v458$2, 40, 32) else $$5$28$2);
    $$5$29$1 := (if p3$1 then BV_EXTRACT(v458$1, 48, 40) else $$5$29$1);
    $$5$29$2 := (if p3$2 then BV_EXTRACT(v458$2, 48, 40) else $$5$29$2);
    $$5$30$1 := (if p3$1 then BV_EXTRACT(v458$1, 56, 48) else $$5$30$1);
    $$5$30$2 := (if p3$2 then BV_EXTRACT(v458$2, 56, 48) else $$5$30$2);
    $$5$31$1 := (if p3$1 then BV_EXTRACT(v458$1, 64, 56) else $$5$31$1);
    $$5$31$2 := (if p3$2 then BV_EXTRACT(v458$2, 64, 56) else $$5$31$2);
    v459$1 := (if p3$1 then $$5$0$1 else v459$1);
    v459$2 := (if p3$2 then $$5$0$2 else v459$2);
    $$node$0$1 := (if p3$1 then v459$1 else $$node$0$1);
    $$node$0$2 := (if p3$2 then v459$2 else $$node$0$2);
    v460$1 := (if p3$1 then $$5$1$1 else v460$1);
    v460$2 := (if p3$2 then $$5$1$2 else v460$2);
    $$node$1$1 := (if p3$1 then v460$1 else $$node$1$1);
    $$node$1$2 := (if p3$2 then v460$2 else $$node$1$2);
    v461$1 := (if p3$1 then $$5$2$1 else v461$1);
    v461$2 := (if p3$2 then $$5$2$2 else v461$2);
    $$node$2$1 := (if p3$1 then v461$1 else $$node$2$1);
    $$node$2$2 := (if p3$2 then v461$2 else $$node$2$2);
    v462$1 := (if p3$1 then $$5$3$1 else v462$1);
    v462$2 := (if p3$2 then $$5$3$2 else v462$2);
    $$node$3$1 := (if p3$1 then v462$1 else $$node$3$1);
    $$node$3$2 := (if p3$2 then v462$2 else $$node$3$2);
    v463$1 := (if p3$1 then $$5$4$1 else v463$1);
    v463$2 := (if p3$2 then $$5$4$2 else v463$2);
    $$node$4$1 := (if p3$1 then v463$1 else $$node$4$1);
    $$node$4$2 := (if p3$2 then v463$2 else $$node$4$2);
    v464$1 := (if p3$1 then $$5$5$1 else v464$1);
    v464$2 := (if p3$2 then $$5$5$2 else v464$2);
    $$node$5$1 := (if p3$1 then v464$1 else $$node$5$1);
    $$node$5$2 := (if p3$2 then v464$2 else $$node$5$2);
    v465$1 := (if p3$1 then $$5$6$1 else v465$1);
    v465$2 := (if p3$2 then $$5$6$2 else v465$2);
    $$node$6$1 := (if p3$1 then v465$1 else $$node$6$1);
    $$node$6$2 := (if p3$2 then v465$2 else $$node$6$2);
    v466$1 := (if p3$1 then $$5$7$1 else v466$1);
    v466$2 := (if p3$2 then $$5$7$2 else v466$2);
    $$node$7$1 := (if p3$1 then v466$1 else $$node$7$1);
    $$node$7$2 := (if p3$2 then v466$2 else $$node$7$2);
    v467$1 := (if p3$1 then $$5$8$1 else v467$1);
    v467$2 := (if p3$2 then $$5$8$2 else v467$2);
    $$node$8$1 := (if p3$1 then v467$1 else $$node$8$1);
    $$node$8$2 := (if p3$2 then v467$2 else $$node$8$2);
    v468$1 := (if p3$1 then $$5$9$1 else v468$1);
    v468$2 := (if p3$2 then $$5$9$2 else v468$2);
    $$node$9$1 := (if p3$1 then v468$1 else $$node$9$1);
    $$node$9$2 := (if p3$2 then v468$2 else $$node$9$2);
    v469$1 := (if p3$1 then $$5$10$1 else v469$1);
    v469$2 := (if p3$2 then $$5$10$2 else v469$2);
    $$node$10$1 := (if p3$1 then v469$1 else $$node$10$1);
    $$node$10$2 := (if p3$2 then v469$2 else $$node$10$2);
    v470$1 := (if p3$1 then $$5$11$1 else v470$1);
    v470$2 := (if p3$2 then $$5$11$2 else v470$2);
    $$node$11$1 := (if p3$1 then v470$1 else $$node$11$1);
    $$node$11$2 := (if p3$2 then v470$2 else $$node$11$2);
    v471$1 := (if p3$1 then $$5$12$1 else v471$1);
    v471$2 := (if p3$2 then $$5$12$2 else v471$2);
    $$node$12$1 := (if p3$1 then v471$1 else $$node$12$1);
    $$node$12$2 := (if p3$2 then v471$2 else $$node$12$2);
    v472$1 := (if p3$1 then $$5$13$1 else v472$1);
    v472$2 := (if p3$2 then $$5$13$2 else v472$2);
    $$node$13$1 := (if p3$1 then v472$1 else $$node$13$1);
    $$node$13$2 := (if p3$2 then v472$2 else $$node$13$2);
    v473$1 := (if p3$1 then $$5$14$1 else v473$1);
    v473$2 := (if p3$2 then $$5$14$2 else v473$2);
    $$node$14$1 := (if p3$1 then v473$1 else $$node$14$1);
    $$node$14$2 := (if p3$2 then v473$2 else $$node$14$2);
    v474$1 := (if p3$1 then $$5$15$1 else v474$1);
    v474$2 := (if p3$2 then $$5$15$2 else v474$2);
    $$node$15$1 := (if p3$1 then v474$1 else $$node$15$1);
    $$node$15$2 := (if p3$2 then v474$2 else $$node$15$2);
    v475$1 := (if p3$1 then $$5$16$1 else v475$1);
    v475$2 := (if p3$2 then $$5$16$2 else v475$2);
    $$node$16$1 := (if p3$1 then v475$1 else $$node$16$1);
    $$node$16$2 := (if p3$2 then v475$2 else $$node$16$2);
    v476$1 := (if p3$1 then $$5$17$1 else v476$1);
    v476$2 := (if p3$2 then $$5$17$2 else v476$2);
    $$node$17$1 := (if p3$1 then v476$1 else $$node$17$1);
    $$node$17$2 := (if p3$2 then v476$2 else $$node$17$2);
    v477$1 := (if p3$1 then $$5$18$1 else v477$1);
    v477$2 := (if p3$2 then $$5$18$2 else v477$2);
    $$node$18$1 := (if p3$1 then v477$1 else $$node$18$1);
    $$node$18$2 := (if p3$2 then v477$2 else $$node$18$2);
    v478$1 := (if p3$1 then $$5$19$1 else v478$1);
    v478$2 := (if p3$2 then $$5$19$2 else v478$2);
    $$node$19$1 := (if p3$1 then v478$1 else $$node$19$1);
    $$node$19$2 := (if p3$2 then v478$2 else $$node$19$2);
    v479$1 := (if p3$1 then $$5$20$1 else v479$1);
    v479$2 := (if p3$2 then $$5$20$2 else v479$2);
    $$node$20$1 := (if p3$1 then v479$1 else $$node$20$1);
    $$node$20$2 := (if p3$2 then v479$2 else $$node$20$2);
    v480$1 := (if p3$1 then $$5$21$1 else v480$1);
    v480$2 := (if p3$2 then $$5$21$2 else v480$2);
    $$node$21$1 := (if p3$1 then v480$1 else $$node$21$1);
    $$node$21$2 := (if p3$2 then v480$2 else $$node$21$2);
    v481$1 := (if p3$1 then $$5$22$1 else v481$1);
    v481$2 := (if p3$2 then $$5$22$2 else v481$2);
    $$node$22$1 := (if p3$1 then v481$1 else $$node$22$1);
    $$node$22$2 := (if p3$2 then v481$2 else $$node$22$2);
    v482$1 := (if p3$1 then $$5$23$1 else v482$1);
    v482$2 := (if p3$2 then $$5$23$2 else v482$2);
    $$node$23$1 := (if p3$1 then v482$1 else $$node$23$1);
    $$node$23$2 := (if p3$2 then v482$2 else $$node$23$2);
    v483$1 := (if p3$1 then $$5$24$1 else v483$1);
    v483$2 := (if p3$2 then $$5$24$2 else v483$2);
    $$node$24$1 := (if p3$1 then v483$1 else $$node$24$1);
    $$node$24$2 := (if p3$2 then v483$2 else $$node$24$2);
    v484$1 := (if p3$1 then $$5$25$1 else v484$1);
    v484$2 := (if p3$2 then $$5$25$2 else v484$2);
    $$node$25$1 := (if p3$1 then v484$1 else $$node$25$1);
    $$node$25$2 := (if p3$2 then v484$2 else $$node$25$2);
    v485$1 := (if p3$1 then $$5$26$1 else v485$1);
    v485$2 := (if p3$2 then $$5$26$2 else v485$2);
    $$node$26$1 := (if p3$1 then v485$1 else $$node$26$1);
    $$node$26$2 := (if p3$2 then v485$2 else $$node$26$2);
    v486$1 := (if p3$1 then $$5$27$1 else v486$1);
    v486$2 := (if p3$2 then $$5$27$2 else v486$2);
    $$node$27$1 := (if p3$1 then v486$1 else $$node$27$1);
    $$node$27$2 := (if p3$2 then v486$2 else $$node$27$2);
    v487$1 := (if p3$1 then $$5$28$1 else v487$1);
    v487$2 := (if p3$2 then $$5$28$2 else v487$2);
    $$node$28$1 := (if p3$1 then v487$1 else $$node$28$1);
    $$node$28$2 := (if p3$2 then v487$2 else $$node$28$2);
    v488$1 := (if p3$1 then $$5$29$1 else v488$1);
    v488$2 := (if p3$2 then $$5$29$2 else v488$2);
    $$node$29$1 := (if p3$1 then v488$1 else $$node$29$1);
    $$node$29$2 := (if p3$2 then v488$2 else $$node$29$2);
    v489$1 := (if p3$1 then $$5$30$1 else v489$1);
    v489$2 := (if p3$2 then $$5$30$2 else v489$2);
    $$node$30$1 := (if p3$1 then v489$1 else $$node$30$1);
    $$node$30$2 := (if p3$2 then v489$2 else $$node$30$2);
    v490$1 := (if p3$1 then $$5$31$1 else v490$1);
    v490$2 := (if p3$2 then $$5$31$2 else v490$2);
    $$node$31$1 := (if p3$1 then v490$1 else $$node$31$1);
    $$node$31$2 := (if p3$2 then v490$2 else $$node$31$2);
    v491$1 := (if p3$1 then $$node$12$1 else v491$1);
    v491$2 := (if p3$2 then $$node$12$2 else v491$2);
    $$cur$0$1 := (if p3$1 then v491$1 else $$cur$0$1);
    $$cur$0$2 := (if p3$2 then v491$2 else $$cur$0$2);
    v492$1 := (if p3$1 then $$node$13$1 else v492$1);
    v492$2 := (if p3$2 then $$node$13$2 else v492$2);
    $$cur$1$1 := (if p3$1 then v492$1 else $$cur$1$1);
    $$cur$1$2 := (if p3$2 then v492$2 else $$cur$1$2);
    v493$1 := (if p3$1 then $$node$14$1 else v493$1);
    v493$2 := (if p3$2 then $$node$14$2 else v493$2);
    $$cur$2$1 := (if p3$1 then v493$1 else $$cur$2$1);
    $$cur$2$2 := (if p3$2 then v493$2 else $$cur$2$2);
    v494$1 := (if p3$1 then $$node$15$1 else v494$1);
    v494$2 := (if p3$2 then $$node$15$2 else v494$2);
    $$cur$3$1 := (if p3$1 then v494$1 else $$cur$3$1);
    $$cur$3$2 := (if p3$2 then v494$2 else $$cur$3$2);
    $mustmatch.0$1, $qry_match_len.0$1, $result.0$1, $qrystart.0$1 := (if p3$1 then $mustmatch.5$1 else $mustmatch.0$1), (if p3$1 then $qry_match_len.7$1 else $qry_match_len.0$1), (if p3$1 then BV32_ADD($result.0$1, 8) else $result.0$1), (if p3$1 then BV32_ADD($qrystart.0$1, -1) else $qrystart.0$1);
    $mustmatch.0$2, $qry_match_len.0$2, $result.0$2, $qrystart.0$2 := (if p3$2 then $mustmatch.5$2 else $mustmatch.0$2), (if p3$2 then $qry_match_len.7$2 else $qry_match_len.0$2), (if p3$2 then BV32_ADD($result.0$2, 8) else $result.0$2), (if p3$2 then BV32_ADD($qrystart.0$2, -1) else $qrystart.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p2$1 && !p2$2;
    return;

  $5.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $18.backedge:
    assume {:backedge} p15$1 || p15$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $18;

  $53.backedge:
    assume {:backedge} p33$1 || p33$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $53;
}



procedure {:source_name "_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

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

var $$cur$0$1: int;

var $$cur$0$2: int;

var $$cur$1$1: int;

var $$cur$1$2: int;

var $$cur$2$1: int;

var $$cur$2$2: int;

var $$cur$3$1: int;

var $$cur$3$2: int;

var $$node$0$1: int;

var $$node$0$2: int;

var $$node$1$1: int;

var $$node$1$2: int;

var $$node$2$1: int;

var $$node$2$2: int;

var $$node$3$1: int;

var $$node$3$2: int;

var $$node$4$1: int;

var $$node$4$2: int;

var $$node$5$1: int;

var $$node$5$2: int;

var $$node$6$1: int;

var $$node$6$2: int;

var $$node$7$1: int;

var $$node$7$2: int;

var $$node$8$1: int;

var $$node$8$2: int;

var $$node$9$1: int;

var $$node$9$2: int;

var $$node$10$1: int;

var $$node$10$2: int;

var $$node$11$1: int;

var $$node$11$2: int;

var $$node$12$1: int;

var $$node$12$2: int;

var $$node$13$1: int;

var $$node$13$2: int;

var $$node$14$1: int;

var $$node$14$2: int;

var $$node$15$1: int;

var $$node$15$2: int;

var $$node$16$1: int;

var $$node$16$2: int;

var $$node$17$1: int;

var $$node$17$2: int;

var $$node$18$1: int;

var $$node$18$2: int;

var $$node$19$1: int;

var $$node$19$2: int;

var $$node$20$1: int;

var $$node$20$2: int;

var $$node$21$1: int;

var $$node$21$2: int;

var $$node$22$1: int;

var $$node$22$2: int;

var $$node$23$1: int;

var $$node$23$2: int;

var $$node$24$1: int;

var $$node$24$2: int;

var $$node$25$1: int;

var $$node$25$2: int;

var $$node$26$1: int;

var $$node$26$2: int;

var $$node$27$1: int;

var $$node$27$2: int;

var $$node$28$1: int;

var $$node$28$2: int;

var $$node$29$1: int;

var $$node$29$2: int;

var $$node$30$1: int;

var $$node$30$2: int;

var $$node$31$1: int;

var $$node$31$2: int;

var $$prev$0$1: int;

var $$prev$0$2: int;

var $$prev$1$1: int;

var $$prev$1$2: int;

var $$prev$2$1: int;

var $$prev$2$2: int;

var $$prev$3$1: int;

var $$prev$3$2: int;

var $$children$0$1: int;

var $$children$0$2: int;

var $$children$1$1: int;

var $$children$1$2: int;

var $$children$2$1: int;

var $$children$2$2: int;

var $$children$3$1: int;

var $$children$3$2: int;

var $$children$4$1: int;

var $$children$4$2: int;

var $$children$5$1: int;

var $$children$5$2: int;

var $$children$6$1: int;

var $$children$6$2: int;

var $$children$7$1: int;

var $$children$7$2: int;

var $$children$8$1: int;

var $$children$8$2: int;

var $$children$9$1: int;

var $$children$9$2: int;

var $$children$10$1: int;

var $$children$10$2: int;

var $$children$11$1: int;

var $$children$11$2: int;

var $$children$12$1: int;

var $$children$12$2: int;

var $$children$13$1: int;

var $$children$13$2: int;

var $$children$14$1: int;

var $$children$14$2: int;

var $$children$15$1: int;

var $$children$15$2: int;

var $$children$16$1: int;

var $$children$16$2: int;

var $$children$17$1: int;

var $$children$17$2: int;

var $$children$18$1: int;

var $$children$18$2: int;

var $$children$19$1: int;

var $$children$19$2: int;

var $$children$20$1: int;

var $$children$20$2: int;

var $$children$21$1: int;

var $$children$21$2: int;

var $$children$22$1: int;

var $$children$22$2: int;

var $$children$23$1: int;

var $$children$23$2: int;

var $$children$24$1: int;

var $$children$24$2: int;

var $$children$25$1: int;

var $$children$25$2: int;

var $$children$26$1: int;

var $$children$26$2: int;

var $$children$27$1: int;

var $$children$27$2: int;

var $$children$28$1: int;

var $$children$28$2: int;

var $$children$29$1: int;

var $$children$29$2: int;

var $$children$30$1: int;

var $$children$30$2: int;

var $$children$31$1: int;

var $$children$31$2: int;

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

var $$1$16$1: int;

var $$1$16$2: int;

var $$1$17$1: int;

var $$1$17$2: int;

var $$1$18$1: int;

var $$1$18$2: int;

var $$1$19$1: int;

var $$1$19$2: int;

var $$1$20$1: int;

var $$1$20$2: int;

var $$1$21$1: int;

var $$1$21$2: int;

var $$1$22$1: int;

var $$1$22$2: int;

var $$1$23$1: int;

var $$1$23$2: int;

var $$1$24$1: int;

var $$1$24$2: int;

var $$1$25$1: int;

var $$1$25$2: int;

var $$1$26$1: int;

var $$1$26$2: int;

var $$1$27$1: int;

var $$1$27$2: int;

var $$1$28$1: int;

var $$1$28$2: int;

var $$1$29$1: int;

var $$1$29$2: int;

var $$1$30$1: int;

var $$1$30$2: int;

var $$1$31$1: int;

var $$1$31$2: int;

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

var $$2$24$1: int;

var $$2$24$2: int;

var $$2$25$1: int;

var $$2$25$2: int;

var $$2$26$1: int;

var $$2$26$2: int;

var $$2$27$1: int;

var $$2$27$2: int;

var $$2$28$1: int;

var $$2$28$2: int;

var $$2$29$1: int;

var $$2$29$2: int;

var $$2$30$1: int;

var $$2$30$2: int;

var $$2$31$1: int;

var $$2$31$2: int;

var $$2$32$1: int;

var $$2$32$2: int;

var $$2$33$1: int;

var $$2$33$2: int;

var $$2$34$1: int;

var $$2$34$2: int;

var $$2$35$1: int;

var $$2$35$2: int;

var $$2$36$1: int;

var $$2$36$2: int;

var $$2$37$1: int;

var $$2$37$2: int;

var $$2$38$1: int;

var $$2$38$2: int;

var $$2$39$1: int;

var $$2$39$2: int;

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

var $$3$16$1: int;

var $$3$16$2: int;

var $$3$17$1: int;

var $$3$17$2: int;

var $$3$18$1: int;

var $$3$18$2: int;

var $$3$19$1: int;

var $$3$19$2: int;

var $$3$20$1: int;

var $$3$20$2: int;

var $$3$21$1: int;

var $$3$21$2: int;

var $$3$22$1: int;

var $$3$22$2: int;

var $$3$23$1: int;

var $$3$23$2: int;

var $$3$24$1: int;

var $$3$24$2: int;

var $$3$25$1: int;

var $$3$25$2: int;

var $$3$26$1: int;

var $$3$26$2: int;

var $$3$27$1: int;

var $$3$27$2: int;

var $$3$28$1: int;

var $$3$28$2: int;

var $$3$29$1: int;

var $$3$29$2: int;

var $$3$30$1: int;

var $$3$30$2: int;

var $$3$31$1: int;

var $$3$31$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$4$4$1: int;

var $$4$4$2: int;

var $$4$5$1: int;

var $$4$5$2: int;

var $$4$6$1: int;

var $$4$6$2: int;

var $$4$7$1: int;

var $$4$7$2: int;

var $$4$8$1: int;

var $$4$8$2: int;

var $$4$9$1: int;

var $$4$9$2: int;

var $$4$10$1: int;

var $$4$10$2: int;

var $$4$11$1: int;

var $$4$11$2: int;

var $$4$12$1: int;

var $$4$12$2: int;

var $$4$13$1: int;

var $$4$13$2: int;

var $$4$14$1: int;

var $$4$14$2: int;

var $$4$15$1: int;

var $$4$15$2: int;

var $$4$16$1: int;

var $$4$16$2: int;

var $$4$17$1: int;

var $$4$17$2: int;

var $$4$18$1: int;

var $$4$18$2: int;

var $$4$19$1: int;

var $$4$19$2: int;

var $$4$20$1: int;

var $$4$20$2: int;

var $$4$21$1: int;

var $$4$21$2: int;

var $$4$22$1: int;

var $$4$22$2: int;

var $$4$23$1: int;

var $$4$23$2: int;

var $$4$24$1: int;

var $$4$24$2: int;

var $$4$25$1: int;

var $$4$25$2: int;

var $$4$26$1: int;

var $$4$26$2: int;

var $$4$27$1: int;

var $$4$27$2: int;

var $$4$28$1: int;

var $$4$28$2: int;

var $$4$29$1: int;

var $$4$29$2: int;

var $$4$30$1: int;

var $$4$30$2: int;

var $$4$31$1: int;

var $$4$31$2: int;

var $$4$32$1: int;

var $$4$32$2: int;

var $$4$33$1: int;

var $$4$33$2: int;

var $$4$34$1: int;

var $$4$34$2: int;

var $$4$35$1: int;

var $$4$35$2: int;

var $$4$36$1: int;

var $$4$36$2: int;

var $$4$37$1: int;

var $$4$37$2: int;

var $$4$38$1: int;

var $$4$38$2: int;

var $$4$39$1: int;

var $$4$39$2: int;

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

var $$5$24$1: int;

var $$5$24$2: int;

var $$5$25$1: int;

var $$5$25$2: int;

var $$5$26$1: int;

var $$5$26$2: int;

var $$5$27$1: int;

var $$5$27$2: int;

var $$5$28$1: int;

var $$5$28$2: int;

var $$5$29$1: int;

var $$5$29$2: int;

var $$5$30$1: int;

var $$5$30$2: int;

var $$5$31$1: int;

var $$5$31$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$6$4$1: int;

var $$6$4$2: int;

var $$6$5$1: int;

var $$6$5$2: int;

var $$6$6$1: int;

var $$6$6$2: int;

var $$6$7$1: int;

var $$6$7$2: int;

var $$6$8$1: int;

var $$6$8$2: int;

var $$6$9$1: int;

var $$6$9$2: int;

var $$6$10$1: int;

var $$6$10$2: int;

var $$6$11$1: int;

var $$6$11$2: int;

var $$6$12$1: int;

var $$6$12$2: int;

var $$6$13$1: int;

var $$6$13$2: int;

var $$6$14$1: int;

var $$6$14$2: int;

var $$6$15$1: int;

var $$6$15$2: int;

var $$6$16$1: int;

var $$6$16$2: int;

var $$6$17$1: int;

var $$6$17$2: int;

var $$6$18$1: int;

var $$6$18$2: int;

var $$6$19$1: int;

var $$6$19$2: int;

var $$6$20$1: int;

var $$6$20$2: int;

var $$6$21$1: int;

var $$6$21$2: int;

var $$6$22$1: int;

var $$6$22$2: int;

var $$6$23$1: int;

var $$6$23$2: int;

var $$6$24$1: int;

var $$6$24$2: int;

var $$6$25$1: int;

var $$6$25$2: int;

var $$6$26$1: int;

var $$6$26$2: int;

var $$6$27$1: int;

var $$6$27$2: int;

var $$6$28$1: int;

var $$6$28$2: int;

var $$6$29$1: int;

var $$6$29$2: int;

var $$6$30$1: int;

var $$6$30$2: int;

var $$6$31$1: int;

var $$6$31$2: int;

var $$6$32$1: int;

var $$6$32$2: int;

var $$6$33$1: int;

var $$6$33$2: int;

var $$6$34$1: int;

var $$6$34$2: int;

var $$6$35$1: int;

var $$6$35$2: int;

var $$6$36$1: int;

var $$6$36$2: int;

var $$6$37$1: int;

var $$6$37$2: int;

var $$6$38$1: int;

var $$6$38$2: int;

var $$6$39$1: int;

var $$6$39$2: int;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b4: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const _WATCHED_VALUE_$$match_coords: int;

procedure {:inline 1} _LOG_READ_$$match_coords(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$match_coords;



implementation {:inline 1} _LOG_READ_$$match_coords(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then true else _READ_HAS_OCCURRED_$$match_coords);
    return;
}



procedure _CHECK_READ_$$match_coords(_P: bool, _offset: int, _value: int);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$match_coords);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$match_coords: bool;

procedure {:inline 1} _LOG_WRITE_$$match_coords(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:inline 1} _LOG_WRITE_$$match_coords(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then true else _WRITE_HAS_OCCURRED_$$match_coords);
    _WRITE_READ_BENIGN_FLAG_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$match_coords);
    return;
}



procedure _CHECK_WRITE_$$match_coords(_P: bool, _offset: int, _value: int);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords != _value);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords != _value);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$match_coords(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$match_coords;



implementation {:inline 1} _LOG_ATOMIC_$$match_coords(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$match_coords);
    return;
}



procedure _CHECK_ATOMIC_$$match_coords(_P: bool, _offset: int);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$match_coords := (if _P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$match_coords);
    return;
}



const _WATCHED_VALUE_$$queries: int;

procedure {:inline 1} _LOG_READ_$$queries(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$queries;



implementation {:inline 1} _LOG_READ_$$queries(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then true else _READ_HAS_OCCURRED_$$queries);
    return;
}



procedure _CHECK_READ_$$queries(_P: bool, _offset: int, _value: int);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queries);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queries: bool;

procedure {:inline 1} _LOG_WRITE_$$queries(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$queries, _WRITE_READ_BENIGN_FLAG_$$queries;



implementation {:inline 1} _LOG_WRITE_$$queries(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then true else _WRITE_HAS_OCCURRED_$$queries);
    _WRITE_READ_BENIGN_FLAG_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queries);
    return;
}



procedure _CHECK_WRITE_$$queries(_P: bool, _offset: int, _value: int);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries != _value);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries != _value);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queries(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$queries;



implementation {:inline 1} _LOG_ATOMIC_$$queries(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queries);
    return;
}



procedure _CHECK_ATOMIC_$$queries(_P: bool, _offset: int);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queries(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$queries;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queries(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queries := (if _P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queries);
    return;
}



const _WATCHED_VALUE_$$queryAddrs: int;

procedure {:inline 1} _LOG_READ_$$queryAddrs(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$queryAddrs;



implementation {:inline 1} _LOG_READ_$$queryAddrs(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then true else _READ_HAS_OCCURRED_$$queryAddrs);
    return;
}



procedure _CHECK_READ_$$queryAddrs(_P: bool, _offset: int, _value: int);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queryAddrs: bool;

procedure {:inline 1} _LOG_WRITE_$$queryAddrs(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$queryAddrs, _WRITE_READ_BENIGN_FLAG_$$queryAddrs;



implementation {:inline 1} _LOG_WRITE_$$queryAddrs(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then true else _WRITE_HAS_OCCURRED_$$queryAddrs);
    _WRITE_READ_BENIGN_FLAG_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
    return;
}



procedure _CHECK_WRITE_$$queryAddrs(_P: bool, _offset: int, _value: int);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs != _value);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs != _value);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queryAddrs(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$queryAddrs;



implementation {:inline 1} _LOG_ATOMIC_$$queryAddrs(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queryAddrs);
    return;
}



procedure _CHECK_ATOMIC_$$queryAddrs(_P: bool, _offset: int);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryAddrs(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$queryAddrs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryAddrs(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queryAddrs := (if _P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
    return;
}



const _WATCHED_VALUE_$$queryLengths: int;

procedure {:inline 1} _LOG_READ_$$queryLengths(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$queryLengths;



implementation {:inline 1} _LOG_READ_$$queryLengths(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then true else _READ_HAS_OCCURRED_$$queryLengths);
    return;
}



procedure _CHECK_READ_$$queryLengths(_P: bool, _offset: int, _value: int);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queryLengths);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queryLengths: bool;

procedure {:inline 1} _LOG_WRITE_$$queryLengths(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$queryLengths, _WRITE_READ_BENIGN_FLAG_$$queryLengths;



implementation {:inline 1} _LOG_WRITE_$$queryLengths(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then true else _WRITE_HAS_OCCURRED_$$queryLengths);
    _WRITE_READ_BENIGN_FLAG_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queryLengths);
    return;
}



procedure _CHECK_WRITE_$$queryLengths(_P: bool, _offset: int, _value: int);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths != _value);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths != _value);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queryLengths(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$queryLengths;



implementation {:inline 1} _LOG_ATOMIC_$$queryLengths(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queryLengths);
    return;
}



procedure _CHECK_ATOMIC_$$queryLengths(_P: bool, _offset: int);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryLengths(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$queryLengths;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryLengths(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queryLengths := (if _P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queryLengths);
    return;
}



const _WATCHED_VALUE_$$childrentex: int;

procedure {:inline 1} _LOG_READ_$$childrentex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$childrentex;



implementation {:inline 1} _LOG_READ_$$childrentex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then true else _READ_HAS_OCCURRED_$$childrentex);
    return;
}



procedure _CHECK_READ_$$childrentex(_P: bool, _offset: int, _value: int);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$childrentex);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$childrentex: bool;

procedure {:inline 1} _LOG_WRITE_$$childrentex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$childrentex, _WRITE_READ_BENIGN_FLAG_$$childrentex;



implementation {:inline 1} _LOG_WRITE_$$childrentex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then true else _WRITE_HAS_OCCURRED_$$childrentex);
    _WRITE_READ_BENIGN_FLAG_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$childrentex);
    return;
}



procedure _CHECK_WRITE_$$childrentex(_P: bool, _offset: int, _value: int);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex != _value);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex != _value);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$childrentex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$childrentex;



implementation {:inline 1} _LOG_ATOMIC_$$childrentex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$childrentex);
    return;
}



procedure _CHECK_ATOMIC_$$childrentex(_P: bool, _offset: int);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$childrentex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$childrentex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$childrentex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$childrentex := (if _P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$childrentex);
    return;
}



const _WATCHED_VALUE_$$nodetex: int;

procedure {:inline 1} _LOG_READ_$$nodetex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$nodetex;



implementation {:inline 1} _LOG_READ_$$nodetex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then true else _READ_HAS_OCCURRED_$$nodetex);
    return;
}



procedure _CHECK_READ_$$nodetex(_P: bool, _offset: int, _value: int);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$nodetex);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$nodetex: bool;

procedure {:inline 1} _LOG_WRITE_$$nodetex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$nodetex, _WRITE_READ_BENIGN_FLAG_$$nodetex;



implementation {:inline 1} _LOG_WRITE_$$nodetex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then true else _WRITE_HAS_OCCURRED_$$nodetex);
    _WRITE_READ_BENIGN_FLAG_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$nodetex);
    return;
}



procedure _CHECK_WRITE_$$nodetex(_P: bool, _offset: int, _value: int);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex != _value);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex != _value);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$nodetex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$nodetex;



implementation {:inline 1} _LOG_ATOMIC_$$nodetex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$nodetex);
    return;
}



procedure _CHECK_ATOMIC_$$nodetex(_P: bool, _offset: int);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$nodetex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$nodetex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$nodetex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$nodetex := (if _P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$nodetex);
    return;
}



const _WATCHED_VALUE_$$reftex: int;

procedure {:inline 1} _LOG_READ_$$reftex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$reftex;



implementation {:inline 1} _LOG_READ_$$reftex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then true else _READ_HAS_OCCURRED_$$reftex);
    return;
}



procedure _CHECK_READ_$$reftex(_P: bool, _offset: int, _value: int);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$reftex);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$reftex: bool;

procedure {:inline 1} _LOG_WRITE_$$reftex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$reftex, _WRITE_READ_BENIGN_FLAG_$$reftex;



implementation {:inline 1} _LOG_WRITE_$$reftex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then true else _WRITE_HAS_OCCURRED_$$reftex);
    _WRITE_READ_BENIGN_FLAG_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$reftex);
    return;
}



procedure _CHECK_WRITE_$$reftex(_P: bool, _offset: int, _value: int);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex != _value);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex != _value);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$reftex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$reftex;



implementation {:inline 1} _LOG_ATOMIC_$$reftex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$reftex);
    return;
}



procedure _CHECK_ATOMIC_$$reftex(_P: bool, _offset: int);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$reftex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$reftex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$reftex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$reftex := (if _P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$reftex);
    return;
}



var _TRACKING: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;
