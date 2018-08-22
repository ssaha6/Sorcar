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
 b0026: bool,
 b0027: bool,
 b0028: bool,
 b0029: bool,
 b0030: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$0: arrayId;

axiom $arrayId$$0 == 1bv5;

var {:source_name "match_coords"} {:global} $$match_coords: [bv32]bv8;

axiom {:array_info "$$match_coords"} {:global} {:elem_width 8} {:source_name "match_coords"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$match_coords: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$match_coords: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$match_coords: bool;

const $arrayId$$match_coords: arrayId;

axiom $arrayId$$match_coords == 2bv5;

var {:source_name "queries"} {:global} $$queries: [bv32]bv8;

axiom {:array_info "$$queries"} {:global} {:elem_width 8} {:source_name "queries"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queries: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queries: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queries: bool;

const $arrayId$$queries: arrayId;

axiom $arrayId$$queries == 3bv5;

var {:source_name "queryAddrs"} {:global} $$queryAddrs: [bv32]bv32;

axiom {:array_info "$$queryAddrs"} {:global} {:elem_width 32} {:source_name "queryAddrs"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queryAddrs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queryAddrs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queryAddrs: bool;

const $arrayId$$queryAddrs: arrayId;

axiom $arrayId$$queryAddrs == 4bv5;

var {:source_name "queryLengths"} {:global} $$queryLengths: [bv32]bv32;

axiom {:array_info "$$queryLengths"} {:global} {:elem_width 32} {:source_name "queryLengths"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$queryLengths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$queryLengths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$queryLengths: bool;

const $arrayId$$queryLengths: arrayId;

axiom $arrayId$$queryLengths == 5bv5;

axiom {:array_info "$$cur"} {:elem_width 8} {:source_name "cur"} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$cur: arrayId;

axiom $arrayId$$cur == 6bv5;

axiom {:array_info "$$node"} {:elem_width 8} {:source_name "node"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$node: arrayId;

axiom $arrayId$$node == 7bv5;

axiom {:array_info "$$prev"} {:elem_width 8} {:source_name "prev"} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$prev: arrayId;

axiom $arrayId$$prev == 8bv5;

axiom {:array_info "$$children"} {:elem_width 8} {:source_name "children"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$children: arrayId;

axiom $arrayId$$children == 9bv5;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$1: arrayId;

axiom $arrayId$$1 == 10bv5;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$2: arrayId;

axiom $arrayId$$2 == 11bv5;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$3: arrayId;

axiom $arrayId$$3 == 12bv5;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$4: arrayId;

axiom $arrayId$$4 == 13bv5;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$5: arrayId;

axiom $arrayId$$5 == 14bv5;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$6: arrayId;

axiom $arrayId$$6 == 15bv5;

axiom {:array_info "$$childrentex"} {:global} {:elem_width 8} {:source_name "childrentex"} {:source_elem_width 192} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$childrentex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$childrentex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$childrentex: bool;

const $arrayId$$childrentex: arrayId;

axiom $arrayId$$childrentex == 16bv5;

axiom {:array_info "$$nodetex"} {:global} {:elem_width 8} {:source_name "nodetex"} {:source_elem_width 192} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$nodetex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$nodetex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$nodetex: bool;

const $arrayId$$nodetex: arrayId;

axiom $arrayId$$nodetex == 17bv5;

axiom {:array_info "$$reftex"} {:global} {:elem_width 8} {:source_name "reftex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$reftex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$reftex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$reftex: bool;

const $arrayId$$reftex: arrayId;

axiom $arrayId$$reftex == 18bv5;

type ptr = bv32;

type arrayId = bv5;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base[5:0] ++ offset[27:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:27]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv5 ++ p[27:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv5;

const _WATCHED_OFFSET: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function SI32_TO_FP32(bv32) : bv32;

function UI16_TO_FP32(bv16) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvashr"} BV32_ASHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 24"} BV8_SEXT32(bv8) : bv32;

function {:bvbuiltin "zero_extend 16"} BV16_ZEXT32(bv16) : bv32;

procedure {:source_name "_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0: bv32, _P$1: bool, $1$1: bv32, $2$1: bv32, _P$2: bool, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv8, $ret$2: bv8);
  requires _P$1 ==> $0 == 0bv32;
  requires _P$2 ==> $0 == 0bv32;



procedure {:source_name "mummergpuKernel"} {:kernel} $_Z15mummergpuKernelP10MatchCoordPcPKiS3_ii($numQueries: bv32, $min_match_len: bv32);
  requires !_READ_HAS_OCCURRED_$$match_coords && !_WRITE_HAS_OCCURRED_$$match_coords && !_ATOMIC_HAS_OCCURRED_$$match_coords;
  requires !_READ_HAS_OCCURRED_$$queries && !_WRITE_HAS_OCCURRED_$$queries && !_ATOMIC_HAS_OCCURRED_$$queries;
  requires !_READ_HAS_OCCURRED_$$queryAddrs && !_WRITE_HAS_OCCURRED_$$queryAddrs && !_ATOMIC_HAS_OCCURRED_$$queryAddrs;
  requires !_READ_HAS_OCCURRED_$$queryLengths && !_WRITE_HAS_OCCURRED_$$queryLengths && !_ATOMIC_HAS_OCCURRED_$$queryLengths;
  requires !_READ_HAS_OCCURRED_$$childrentex && !_WRITE_HAS_OCCURRED_$$childrentex && !_ATOMIC_HAS_OCCURRED_$$childrentex;
  requires !_READ_HAS_OCCURRED_$$nodetex && !_WRITE_HAS_OCCURRED_$$nodetex && !_ATOMIC_HAS_OCCURRED_$$nodetex;
  requires !_READ_HAS_OCCURRED_$$reftex && !_WRITE_HAS_OCCURRED_$$reftex && !_ATOMIC_HAS_OCCURRED_$$reftex;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:source_name "mummergpuKernel"} {:kernel} $_Z15mummergpuKernelP10MatchCoordPcPKiS3_ii($numQueries: bv32, $min_match_len: bv32)
{
  var $mustmatch.0$1: bv32;
  var $mustmatch.0$2: bv32;
  var $.0$1: bv32;
  var $.0$2: bv32;
  var $qry_match_len.0$1: bv32;
  var $qry_match_len.0$2: bv32;
  var $result.0$1: bv32;
  var $result.0$2: bv32;
  var $qrystart.0$1: bv32;
  var $qrystart.0$2: bv32;
  var $mustmatch.1$1: bv32;
  var $mustmatch.1$2: bv32;
  var $qry_match_len.1$1: bv32;
  var $qry_match_len.1$2: bv32;
  var $mustmatch.2$1: bv32;
  var $mustmatch.2$2: bv32;
  var $qry_match_len.2$1: bv32;
  var $qry_match_len.2$2: bv32;
  var $c.0$1: bv8;
  var $c.0$2: bv8;
  var $refpos.0$1: bv32;
  var $refpos.0$2: bv32;
  var $mustmatch.5$1: bv32;
  var $mustmatch.5$2: bv32;
  var $qry_match_len.7$1: bv32;
  var $qry_match_len.7$2: bv32;
  var $mustmatch.3$1: bv32;
  var $mustmatch.3$2: bv32;
  var $qry_match_len.3$1: bv32;
  var $qry_match_len.3$2: bv32;
  var $refpos.1$1: bv32;
  var $refpos.1$2: bv32;
  var $mustmatch.4$1: bv32;
  var $mustmatch.4$2: bv32;
  var $qry_match_len.4$1: bv32;
  var $qry_match_len.4$2: bv32;
  var $refpos.2$1: bv32;
  var $refpos.2$2: bv32;
  var $qry_match_len.5$1: bv32;
  var $qry_match_len.5$2: bv32;
  var $c.1$1: bv8;
  var $c.1$2: bv8;
  var $refpos.3$1: bv32;
  var $refpos.3$2: bv32;
  var $0$1: bv1;
  var $0$2: bv1;
  var $qry_match_len.6$1: bv32;
  var $qry_match_len.6$2: bv32;
  var $refpos.4$1: bv32;
  var $refpos.4$2: bv32;
  var v10$1: bool;
  var v10$2: bool;
  var v55$1: bv8;
  var v55$2: bv8;
  var v56$1: bv8;
  var v56$2: bv8;
  var v57$1: bv8;
  var v57$2: bv8;
  var v58$1: bv8;
  var v58$2: bv8;
  var v59$1: bv8;
  var v59$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v61$1: bv8;
  var v61$2: bv8;
  var v62$1: bv8;
  var v62$2: bv8;
  var v63$1: bv8;
  var v63$2: bv8;
  var v64$1: bv8;
  var v64$2: bv8;
  var v65$1: bv8;
  var v65$2: bv8;
  var v66$1: bv32;
  var v66$2: bv32;
  var v203$1: bv8;
  var v203$2: bv8;
  var v204$1: bv8;
  var v204$2: bv8;
  var v205$1: bv8;
  var v205$2: bv8;
  var v206$1: bv8;
  var v206$2: bv8;
  var v207$1: bv32;
  var v207$2: bv32;
  var v201$1: bv8;
  var v201$2: bv8;
  var v202$1: bv8;
  var v202$2: bv8;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v13$1: bv8;
  var v13$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv8;
  var v15$2: bv8;
  var v16$1: bv8;
  var v16$2: bv8;
  var v17$1: bv8;
  var v17$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v22$1: bv8;
  var v22$2: bv8;
  var v23$1: bv8;
  var v23$2: bv8;
  var v0$1: bv32;
  var v0$2: bv32;
  var v160$1: bv8;
  var v160$2: bv8;
  var v161$1: bv8;
  var v161$2: bv8;
  var v162$1: bv8;
  var v162$2: bv8;
  var v163$1: bv8;
  var v163$2: bv8;
  var v164$1: bv8;
  var v164$2: bv8;
  var v165$1: bv8;
  var v165$2: bv8;
  var v166$1: bv8;
  var v166$2: bv8;
  var v167$1: bv8;
  var v167$2: bv8;
  var v83$1: bv8;
  var v83$2: bv8;
  var v84$1: bv8;
  var v84$2: bv8;
  var v85$1: bv8;
  var v85$2: bv8;
  var v86$1: bv8;
  var v86$2: bv8;
  var v87$1: bool;
  var v87$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v149$1: bool;
  var v149$2: bool;
  var v150$1: bv8;
  var v150$2: bv8;
  var v151$1: bv8;
  var v151$2: bv8;
  var v152$1: bv8;
  var v152$2: bv8;
  var v153$1: bv8;
  var v153$2: bv8;
  var v154$1: bv8;
  var v154$2: bv8;
  var v155$1: bv8;
  var v155$2: bv8;
  var v156$1: bv8;
  var v156$2: bv8;
  var v157$1: bv8;
  var v157$2: bv8;
  var v158$1: bv32;
  var v158$2: bv32;
  var v159$1: bool;
  var v159$2: bool;
  var v117$1: bv8;
  var v117$2: bv8;
  var v118$1: bv8;
  var v118$2: bv8;
  var v119$1: bv8;
  var v119$2: bv8;
  var v120$1: bv8;
  var v120$2: bv8;
  var v121$1: bv8;
  var v121$2: bv8;
  var v122$1: bv8;
  var v122$2: bv8;
  var v123$1: bv8;
  var v123$2: bv8;
  var v124$1: bv8;
  var v124$2: bv8;
  var v125$1: bv8;
  var v125$2: bv8;
  var v126$1: bv8;
  var v126$2: bv8;
  var v127$1: bv8;
  var v127$2: bv8;
  var v128$1: bv128;
  var v128$2: bv128;
  var v129$1: bv32;
  var v129$2: bv32;
  var v130$1: bv32;
  var v130$2: bv32;
  var v37$1: bv8;
  var v37$2: bv8;
  var v38$1: bv8;
  var v38$2: bv8;
  var v39$1: bv8;
  var v39$2: bv8;
  var v40$1: bv8;
  var v40$2: bv8;
  var v41$1: bv128;
  var v41$2: bv128;
  var v11$1: bv8;
  var v11$2: bv8;
  var v45$1: bv32;
  var v45$2: bv32;
  var v46$1: bv8;
  var v46$2: bv8;
  var v47$1: bv8;
  var v47$2: bv8;
  var v48$1: bv8;
  var v48$2: bv8;
  var v49$1: bv8;
  var v49$2: bv8;
  var v50$1: bv8;
  var v50$2: bv8;
  var v51$1: bv8;
  var v51$2: bv8;
  var v52$1: bv8;
  var v52$2: bv8;
  var v53$1: bv8;
  var v53$2: bv8;
  var v54$1: bv8;
  var v54$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v25$1: bv8;
  var v25$2: bv8;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v28$1: bv8;
  var v28$2: bv8;
  var v29$1: bv8;
  var v29$2: bv8;
  var v30$1: bv8;
  var v30$2: bv8;
  var v31$1: bv8;
  var v31$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v33$1: bv8;
  var v33$2: bv8;
  var v34$1: bv8;
  var v34$2: bv8;
  var v35$1: bv8;
  var v35$2: bv8;
  var v36$1: bv8;
  var v36$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v68$1: bv8;
  var v68$2: bv8;
  var v69$1: bv8;
  var v69$2: bv8;
  var v70$1: bv8;
  var v70$2: bv8;
  var v71$1: bv8;
  var v71$2: bv8;
  var v72$1: bv8;
  var v72$2: bv8;
  var v73$1: bv8;
  var v73$2: bv8;
  var v74$1: bv8;
  var v74$2: bv8;
  var v88$1: bool;
  var v88$2: bool;
  var v89$1: bv8;
  var v89$2: bv8;
  var v90$1: bv8;
  var v90$2: bv8;
  var v2$1: bv32;
  var v2$2: bv32;
  var v101$1: bv8;
  var v101$2: bv8;
  var v102$1: bv8;
  var v102$2: bv8;
  var v103$1: bv8;
  var v103$2: bv8;
  var v104$1: bv8;
  var v104$2: bv8;
  var v105$1: bv8;
  var v105$2: bv8;
  var v106$1: bv8;
  var v106$2: bv8;
  var v107$1: bv8;
  var v107$2: bv8;
  var v108$1: bv8;
  var v108$2: bv8;
  var v109$1: bv8;
  var v109$2: bv8;
  var v110$1: bv8;
  var v110$2: bv8;
  var v111$1: bv8;
  var v111$2: bv8;
  var v112$1: bv8;
  var v112$2: bv8;
  var v113$1: bv8;
  var v113$2: bv8;
  var v114$1: bv8;
  var v114$2: bv8;
  var v115$1: bv8;
  var v115$2: bv8;
  var v116$1: bv8;
  var v116$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v195$1: bv8;
  var v195$2: bv8;
  var v196$1: bv8;
  var v196$2: bv8;
  var v197$1: bv8;
  var v197$2: bv8;
  var v198$1: bv8;
  var v198$2: bv8;
  var v199$1: bv8;
  var v199$2: bv8;
  var v200$1: bool;
  var v200$2: bool;
  var v194$1: bv32;
  var v194$2: bv32;
  var v12$1: bool;
  var v12$2: bool;
  var v93$1: bv8;
  var v93$2: bv8;
  var v94$1: bv8;
  var v94$2: bv8;
  var v95$1: bv32;
  var v95$2: bv32;
  var v131$1: bv32;
  var v131$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v133$1: bv8;
  var v133$2: bv8;
  var v134$1: bv8;
  var v134$2: bv8;
  var v135$1: bv8;
  var v135$2: bv8;
  var v136$1: bv8;
  var v136$2: bv8;
  var v137$1: bv8;
  var v137$2: bv8;
  var v138$1: bv8;
  var v138$2: bv8;
  var v139$1: bv8;
  var v139$2: bv8;
  var v140$1: bv8;
  var v140$2: bv8;
  var v141$1: bv8;
  var v141$2: bv8;
  var v142$1: bv8;
  var v142$2: bv8;
  var v143$1: bv8;
  var v143$2: bv8;
  var v144$1: bv8;
  var v144$2: bv8;
  var v145$1: bv8;
  var v145$2: bv8;
  var v146$1: bv8;
  var v146$2: bv8;
  var v147$1: bv8;
  var v147$2: bv8;
  var v148$1: bv8;
  var v148$2: bv8;
  var v168$1: bv8;
  var v168$2: bv8;
  var v169$1: bv8;
  var v169$2: bv8;
  var v170$1: bv8;
  var v170$2: bv8;
  var v171$1: bv8;
  var v171$2: bv8;
  var v172$1: bv8;
  var v172$2: bv8;
  var v1$1: bool;
  var v1$2: bool;
  var v75$1: bv8;
  var v75$2: bv8;
  var v76$1: bv8;
  var v76$2: bv8;
  var v77$1: bv8;
  var v77$2: bv8;
  var v78$1: bv8;
  var v78$2: bv8;
  var v79$1: bv8;
  var v79$2: bv8;
  var v80$1: bv8;
  var v80$2: bv8;
  var v81$1: bv8;
  var v81$2: bv8;
  var v82$1: bv8;
  var v82$2: bv8;
  var v208$1: bv16;
  var v208$2: bv16;
  var v209$1: bv8;
  var v209$2: bv8;
  var v210$1: bv8;
  var v210$2: bv8;
  var v211$1: bv8;
  var v211$2: bv8;
  var v212$1: bv8;
  var v212$2: bv8;
  var v213$1: bv32;
  var v213$2: bv32;
  var v214$1: bv8;
  var v214$2: bv8;
  var v215$1: bv8;
  var v215$2: bv8;
  var v216$1: bv8;
  var v216$2: bv8;
  var v217$1: bv8;
  var v217$2: bv8;
  var v218$1: bv8;
  var v218$2: bv8;
  var v219$1: bv8;
  var v219$2: bv8;
  var v220$1: bv8;
  var v220$2: bv8;
  var v221$1: bv8;
  var v221$2: bv8;
  var v222$1: bv8;
  var v222$2: bv8;
  var v223$1: bv8;
  var v223$2: bv8;
  var v224$1: bv8;
  var v224$2: bv8;
  var v225$1: bv8;
  var v225$2: bv8;
  var v226$1: bv8;
  var v226$2: bv8;
  var v227$1: bv8;
  var v227$2: bv8;
  var v228$1: bv8;
  var v228$2: bv8;
  var v229$1: bv8;
  var v229$2: bv8;
  var v230$1: bv8;
  var v230$2: bv8;
  var v231$1: bv8;
  var v231$2: bv8;
  var v232$1: bv8;
  var v232$2: bv8;
  var v233$1: bv8;
  var v233$2: bv8;
  var v234$1: bv8;
  var v234$2: bv8;
  var v235$1: bv8;
  var v235$2: bv8;
  var v236$1: bv8;
  var v236$2: bv8;
  var v237$1: bv8;
  var v237$2: bv8;
  var v238$1: bv8;
  var v238$2: bv8;
  var v239$1: bv8;
  var v239$2: bv8;
  var v173$1: bv8;
  var v173$2: bv8;
  var v174$1: bv8;
  var v174$2: bv8;
  var v175$1: bv8;
  var v175$2: bv8;
  var v176$1: bv8;
  var v176$2: bv8;
  var v177$1: bool;
  var v177$2: bool;
  var v178$1: bool;
  var v178$2: bool;
  var v179$1: bv32;
  var v179$2: bv32;
  var v8$1: bv8;
  var v8$2: bv8;
  var v9$1: bool;
  var v9$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v180$1: bv8;
  var v180$2: bv8;
  var v181$1: bv8;
  var v181$2: bv8;
  var v182$1: bv8;
  var v182$2: bv8;
  var v183$1: bv8;
  var v183$2: bv8;
  var v184$1: bv8;
  var v184$2: bv8;
  var v185$1: bv8;
  var v185$2: bv8;
  var v186$1: bv8;
  var v186$2: bv8;
  var v187$1: bv8;
  var v187$2: bv8;
  var v188$1: bv8;
  var v188$2: bv8;
  var v189$1: bv8;
  var v189$2: bv8;
  var v190$1: bv8;
  var v190$2: bv8;
  var v191$1: bv8;
  var v191$2: bv8;
  var v192$1: bv8;
  var v192$2: bv8;
  var v193$1: bool;
  var v193$2: bool;
  var v96$1: bv8;
  var v96$2: bv8;
  var v97$1: bv8;
  var v97$2: bv8;
  var v98$1: bv8;
  var v98$2: bv8;
  var v99$1: bv8;
  var v99$2: bv8;
  var v100$1: bv8;
  var v100$2: bv8;
  var v91$1: bv8;
  var v91$2: bv8;
  var v92$1: bv8;
  var v92$2: bv8;
  var v240$1: bv8;
  var v240$2: bv8;
  var v241$1: bv8;
  var v241$2: bv8;
  var v242$1: bv128;
  var v242$2: bv128;
  var v243$1: bv32;
  var v243$2: bv32;
  var v244$1: bv32;
  var v244$2: bv32;
  var v245$1: bv32;
  var v245$2: bv32;
  var v246$1: bv32;
  var v246$2: bv32;
  var v247$1: bv8;
  var v247$2: bv8;
  var v248$1: bv8;
  var v248$2: bv8;
  var v249$1: bv8;
  var v249$2: bv8;
  var v250$1: bv8;
  var v250$2: bv8;
  var v251$1: bv8;
  var v251$2: bv8;
  var v252$1: bv8;
  var v252$2: bv8;
  var v253$1: bv8;
  var v253$2: bv8;
  var v254$1: bv8;
  var v254$2: bv8;
  var v255$1: bv8;
  var v255$2: bv8;
  var v256$1: bv8;
  var v256$2: bv8;
  var v257$1: bv8;
  var v257$2: bv8;
  var v258$1: bv8;
  var v258$2: bv8;
  var v259$1: bv8;
  var v259$2: bv8;
  var v260$1: bv8;
  var v260$2: bv8;
  var v261$1: bv8;
  var v261$2: bv8;
  var v262$1: bv8;
  var v262$2: bv8;
  var v263$1: bv8;
  var v263$2: bv8;
  var v264$1: bv8;
  var v264$2: bv8;
  var v265$1: bv8;
  var v265$2: bv8;
  var v266$1: bv8;
  var v266$2: bv8;
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
  var _HAVOC_bv8$1: bv8;
  var _HAVOC_bv8$2: bv8;
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
    $$cur$0bv32$1 := (if p1$1 then 0bv8 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p1$2 then 0bv8 else $$cur$0bv32$2);
    $$cur$1bv32$1 := (if p1$1 then 0bv8 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p1$2 then 0bv8 else $$cur$1bv32$2);
    $$cur$2bv32$1 := (if p1$1 then 0bv8 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p1$2 then 0bv8 else $$cur$2bv32$2);
    $$cur$3bv32$1 := (if p1$1 then 0bv8 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p1$2 then 0bv8 else $$cur$3bv32$2);
    v3$1 := (if p1$1 then $$queryAddrs[v0$1] else v3$1);
    v3$2 := (if p1$2 then $$queryAddrs[v0$2] else v3$2);
    $mustmatch.0$1, $.0$1, $qry_match_len.0$1, $result.0$1, $qrystart.0$1 := (if p1$1 then 0bv32 else $mustmatch.0$1), (if p1$1 then v3$1 else $.0$1), (if p1$1 then 0bv32 else $qry_match_len.0$1), (if p1$1 then BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)) else $result.0$1), (if p1$1 then 0bv32 else $qrystart.0$1);
    $mustmatch.0$2, $.0$2, $qry_match_len.0$2, $result.0$2, $qrystart.0$2 := (if p1$2 then 0bv32 else $mustmatch.0$2), (if p1$2 then v3$2 else $.0$2), (if p1$2 then 0bv32 else $qry_match_len.0$2), (if p1$2 then BV32_ADD(BV32_MUL(v3$2, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$2, BV32_ADD($min_match_len, 1bv32))), 8bv32)) else $result.0$2), (if p1$2 then 0bv32 else $qrystart.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$match_coords$ghost$$5 := _WRITE_HAS_OCCURRED_$$match_coords;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$match_coords ==> BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32))) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 1bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 2bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 3bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 4bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 5bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32))) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 1bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 2bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 3bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 4bv32)) || BV32_AND(BV32_SUB(8bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32)), 5bv32)) ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$match_coords$ghost$$5 == _WRITE_HAS_OCCURRED_$$match_coords )  ); 


    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $result.0$1) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_MUL(v3$1, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$1, BV32_ADD($min_match_len, 1bv32))), 8bv32))) )  && ( p2$2 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $result.0$2) == BV32_AND(BV32_SUB(8bv32, 1bv32), BV32_ADD(BV32_MUL(v3$2, 8bv32), BV32_MUL(BV32_SUB(0bv32, BV32_MUL(v0$2, BV32_ADD($min_match_len, 1bv32))), 8bv32))) ) ,  ( p2$1 ==> BV32_SLE(0bv32, $qrystart.0$1) )  && ( p2$2 ==> BV32_SLE(0bv32, $qrystart.0$2) ) ,  ( p2$1 ==> BV32_SLE($qrystart.0$1, 0bv32) )  && ( p2$2 ==> BV32_SLE($qrystart.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_SGE($qrystart.0$1, 0bv32) )  && ( p2$2 ==> BV32_SGE($qrystart.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_ULE($qrystart.0$1, 0bv32) )  && ( p2$2 ==> BV32_ULE($qrystart.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_UGE($qrystart.0$1, 0bv32) )  && ( p2$2 ==> BV32_UGE($qrystart.0$2, 0bv32) ) ,  ( p2$1 ==> BV8_SLE($$cur$3bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SLE($$cur$3bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SGE($$cur$3bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SGE($$cur$3bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_ULE($$cur$3bv32$1, 0bv8) )  && ( p2$2 ==> BV8_ULE($$cur$3bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_UGE($$cur$3bv32$1, 0bv8) )  && ( p2$2 ==> BV8_UGE($$cur$3bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SLE($$cur$2bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SLE($$cur$2bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SGE($$cur$2bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SGE($$cur$2bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_ULE($$cur$2bv32$1, 0bv8) )  && ( p2$2 ==> BV8_ULE($$cur$2bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_UGE($$cur$2bv32$1, 0bv8) )  && ( p2$2 ==> BV8_UGE($$cur$2bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SLE($$cur$1bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SLE($$cur$1bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SGE($$cur$1bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SGE($$cur$1bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_ULE($$cur$1bv32$1, 0bv8) )  && ( p2$2 ==> BV8_ULE($$cur$1bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_UGE($$cur$1bv32$1, 0bv8) )  && ( p2$2 ==> BV8_UGE($$cur$1bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SLE($$cur$0bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SLE($$cur$0bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_SGE($$cur$0bv32$1, 0bv8) )  && ( p2$2 ==> BV8_SGE($$cur$0bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_ULE($$cur$0bv32$1, 0bv8) )  && ( p2$2 ==> BV8_ULE($$cur$0bv32$2, 0bv8) ) ,  ( p2$1 ==> BV8_UGE($$cur$0bv32$1, 0bv8) )  && ( p2$2 ==> BV8_UGE($$cur$0bv32$2, 0bv8) ) ,  ( p2$1 ==> BV32_SLE($qry_match_len.0$1, 0bv32) )  && ( p2$2 ==> BV32_SLE($qry_match_len.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_SGE($qry_match_len.0$1, 0bv32) )  && ( p2$2 ==> BV32_SGE($qry_match_len.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_ULE($qry_match_len.0$1, 0bv32) )  && ( p2$2 ==> BV32_ULE($qry_match_len.0$2, 0bv32) ) ,  ( p2$1 ==> BV32_UGE($qry_match_len.0$1, 0bv32) )  && ( p2$2 ==> BV32_UGE($qry_match_len.0$2, 0bv32) ) ,  ( p2$1 ==> p2$1 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries) )  && ( p2$2 ==> p2$2 ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $numQueries) ) ,  (  !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries) && BV32_SLE($qrystart.0$1, BV32_SUB(v2$1, $min_match_len)) ==> p2$1 )  && (  !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $numQueries) && BV32_SLE($qrystart.0$2, BV32_SUB(v2$2, $min_match_len)) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$match_coords ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numQueries) ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 11} p2$1 ==> true;
    v4$1 := (if p2$1 then BV32_SLE($qrystart.0$1, BV32_SUB(v2$1, $min_match_len)) else v4$1);
    v4$2 := (if p2$2 then BV32_SLE($qrystart.0$2, BV32_SUB(v2$2, $min_match_len)) else v4$2);
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
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then $$cur$0bv32$1 else v5$1);
    v5$2 := (if p3$2 then $$cur$0bv32$2 else v5$2);
    v6$1 := (if p3$1 then $$cur$1bv32$1 else v6$1);
    v6$2 := (if p3$2 then $$cur$1bv32$2 else v6$2);
    v7$1 := (if p3$1 then $$cur$2bv32$1 else v7$1);
    v7$2 := (if p3$2 then $$cur$2bv32$2 else v7$2);
    v8$1 := (if p3$1 then $$cur$3bv32$1 else v8$1);
    v8$2 := (if p3$2 then $$cur$3bv32$2 else v8$2);
    v9$1 := (if p3$1 then v8$1 ++ v7$1 ++ v6$1 ++ v5$1 == 0bv32 else v9$1);
    v9$2 := (if p3$2 then v8$2 ++ v7$2 ++ v6$2 ++ v5$2 == 0bv32 else v9$2);
    p8$1 := (if p3$1 && v9$1 then v9$1 else p8$1);
    p8$2 := (if p3$2 && v9$2 then v9$2 else p8$2);
    p5$1 := (if p3$1 && !v9$1 then !v9$1 else p5$1);
    p5$2 := (if p3$2 && !v9$2 then !v9$2 else p5$2);
    p8$1 := (if p4$1 then true else p8$1);
    p8$2 := (if p4$2 then true else p8$2);
    v10$1 := (if p5$1 then BV32_SLT($qry_match_len.0$1, 1bv32) else v10$1);
    v10$2 := (if p5$2 then BV32_SLT($qry_match_len.0$2, 1bv32) else v10$2);
    p8$1 := (if p5$1 && v10$1 then v10$1 else p8$1);
    p8$2 := (if p5$2 && v10$2 then v10$2 else p8$2);
    p6$1 := (if p5$1 && !v10$1 then !v10$1 else p6$1);
    p6$2 := (if p5$2 && !v10$2 then !v10$2 else p6$2);
    $mustmatch.1$1, $qry_match_len.1$1 := (if p6$1 then $mustmatch.0$1 else $mustmatch.1$1), (if p6$1 then $qry_match_len.0$1 else $qry_match_len.1$1);
    $mustmatch.1$2, $qry_match_len.1$2 := (if p6$2 then $mustmatch.0$2 else $mustmatch.1$2), (if p6$2 then $qry_match_len.0$2 else $qry_match_len.1$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    $$cur$0bv32$1 := (if p8$1 then 0bv8 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p8$2 then 0bv8 else $$cur$0bv32$2);
    $$cur$1bv32$1 := (if p8$1 then 0bv8 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p8$2 then 0bv8 else $$cur$1bv32$2);
    $$cur$2bv32$1 := (if p8$1 then 1bv8 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p8$2 then 1bv8 else $$cur$2bv32$2);
    $$cur$3bv32$1 := (if p8$1 then 0bv8 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p8$2 then 0bv8 else $$cur$3bv32$2);
    $mustmatch.1$1, $qry_match_len.1$1 := (if p8$1 then 0bv32 else $mustmatch.1$1), (if p8$1 then 1bv32 else $qry_match_len.1$1);
    $mustmatch.1$2, $qry_match_len.1$2 := (if p8$2 then 0bv32 else $mustmatch.1$2), (if p8$2 then 1bv32 else $qry_match_len.1$2);
    v11$1 := (if p3$1 then $$queries[BV32_ADD($.0$1, $qry_match_len.1$1)] else v11$1);
    v11$2 := (if p3$2 then $$queries[BV32_ADD($.0$2, $qry_match_len.1$2)] else v11$2);
    $mustmatch.2$1, $qry_match_len.2$1, $c.0$1, $refpos.0$1 := (if p3$1 then $mustmatch.1$1 else $mustmatch.2$1), (if p3$1 then $qry_match_len.1$1 else $qry_match_len.2$1), (if p3$1 then v11$1 else $c.0$1), (if p3$1 then 0bv32 else $refpos.0$1);
    $mustmatch.2$2, $qry_match_len.2$2, $c.0$2, $refpos.0$2 := (if p3$2 then $mustmatch.1$2 else $mustmatch.2$2), (if p3$2 then $qry_match_len.1$2 else $qry_match_len.2$2), (if p3$2 then v11$2 else $c.0$2), (if p3$2 then 0bv32 else $refpos.0$2);
    p9$1 := (if p3$1 then true else p9$1);
    p9$2 := (if p3$2 then true else p9$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $14;

  $14:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p9"} {:dominator_predicate "p3"} true;
    assert p9$1 ==> p2$1;
    assert p9$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 29} p9$1 ==> true;
    v12$1 := (if p9$1 then BV8_SEXT32($c.0$1) != 0bv32 else v12$1);
    v12$2 := (if p9$2 then BV8_SEXT32($c.0$2) != 0bv32 else v12$2);
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
    p27$1 := false;
    p27$2 := false;
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
    p10$1 := (if p9$1 && v12$1 then v12$1 else p10$1);
    p10$2 := (if p9$2 && v12$2 then v12$2 else p10$2);
    p27$1 := (if p9$1 && !v12$1 then !v12$1 else p27$1);
    p27$2 := (if p9$2 && !v12$2 then !v12$2 else p27$2);
    p9$1 := (if p9$1 && !v12$1 then v12$1 else p9$1);
    p9$2 := (if p9$2 && !v12$2 then v12$2 else p9$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v13$1 := (if p10$1 then _HAVOC_bv8$1 else v13$1);
    v13$2 := (if p10$2 then _HAVOC_bv8$2 else v13$2);
    $$2$0bv32$1 := (if p10$1 then v13$1 else $$2$0bv32$1);
    $$2$0bv32$2 := (if p10$2 then v13$2 else $$2$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v14$1 := (if p10$1 then _HAVOC_bv8$1 else v14$1);
    v14$2 := (if p10$2 then _HAVOC_bv8$2 else v14$2);
    $$2$1bv32$1 := (if p10$1 then v14$1 else $$2$1bv32$1);
    $$2$1bv32$2 := (if p10$2 then v14$2 else $$2$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v15$1 := (if p10$1 then _HAVOC_bv8$1 else v15$1);
    v15$2 := (if p10$2 then _HAVOC_bv8$2 else v15$2);
    $$2$2bv32$1 := (if p10$1 then v15$1 else $$2$2bv32$1);
    $$2$2bv32$2 := (if p10$2 then v15$2 else $$2$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v16$1 := (if p10$1 then _HAVOC_bv8$1 else v16$1);
    v16$2 := (if p10$2 then _HAVOC_bv8$2 else v16$2);
    $$2$3bv32$1 := (if p10$1 then v16$1 else $$2$3bv32$1);
    $$2$3bv32$2 := (if p10$2 then v16$2 else $$2$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v17$1 := (if p10$1 then _HAVOC_bv8$1 else v17$1);
    v17$2 := (if p10$2 then _HAVOC_bv8$2 else v17$2);
    $$2$4bv32$1 := (if p10$1 then v17$1 else $$2$4bv32$1);
    $$2$4bv32$2 := (if p10$2 then v17$2 else $$2$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v18$1 := (if p10$1 then _HAVOC_bv8$1 else v18$1);
    v18$2 := (if p10$2 then _HAVOC_bv8$2 else v18$2);
    $$2$5bv32$1 := (if p10$1 then v18$1 else $$2$5bv32$1);
    $$2$5bv32$2 := (if p10$2 then v18$2 else $$2$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v19$1 := (if p10$1 then _HAVOC_bv8$1 else v19$1);
    v19$2 := (if p10$2 then _HAVOC_bv8$2 else v19$2);
    $$2$6bv32$1 := (if p10$1 then v19$1 else $$2$6bv32$1);
    $$2$6bv32$2 := (if p10$2 then v19$2 else $$2$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v20$1 := (if p10$1 then _HAVOC_bv8$1 else v20$1);
    v20$2 := (if p10$2 then _HAVOC_bv8$2 else v20$2);
    $$2$7bv32$1 := (if p10$1 then v20$1 else $$2$7bv32$1);
    $$2$7bv32$2 := (if p10$2 then v20$2 else $$2$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v21$1 := (if p10$1 then _HAVOC_bv8$1 else v21$1);
    v21$2 := (if p10$2 then _HAVOC_bv8$2 else v21$2);
    $$2$8bv32$1 := (if p10$1 then v21$1 else $$2$8bv32$1);
    $$2$8bv32$2 := (if p10$2 then v21$2 else $$2$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v22$1 := (if p10$1 then _HAVOC_bv8$1 else v22$1);
    v22$2 := (if p10$2 then _HAVOC_bv8$2 else v22$2);
    $$2$9bv32$1 := (if p10$1 then v22$1 else $$2$9bv32$1);
    $$2$9bv32$2 := (if p10$2 then v22$2 else $$2$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v23$1 := (if p10$1 then _HAVOC_bv8$1 else v23$1);
    v23$2 := (if p10$2 then _HAVOC_bv8$2 else v23$2);
    $$2$10bv32$1 := (if p10$1 then v23$1 else $$2$10bv32$1);
    $$2$10bv32$2 := (if p10$2 then v23$2 else $$2$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v24$1 := (if p10$1 then _HAVOC_bv8$1 else v24$1);
    v24$2 := (if p10$2 then _HAVOC_bv8$2 else v24$2);
    $$2$11bv32$1 := (if p10$1 then v24$1 else $$2$11bv32$1);
    $$2$11bv32$2 := (if p10$2 then v24$2 else $$2$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v25$1 := (if p10$1 then _HAVOC_bv8$1 else v25$1);
    v25$2 := (if p10$2 then _HAVOC_bv8$2 else v25$2);
    $$2$12bv32$1 := (if p10$1 then v25$1 else $$2$12bv32$1);
    $$2$12bv32$2 := (if p10$2 then v25$2 else $$2$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v26$1 := (if p10$1 then _HAVOC_bv8$1 else v26$1);
    v26$2 := (if p10$2 then _HAVOC_bv8$2 else v26$2);
    $$2$13bv32$1 := (if p10$1 then v26$1 else $$2$13bv32$1);
    $$2$13bv32$2 := (if p10$2 then v26$2 else $$2$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v27$1 := (if p10$1 then _HAVOC_bv8$1 else v27$1);
    v27$2 := (if p10$2 then _HAVOC_bv8$2 else v27$2);
    $$2$14bv32$1 := (if p10$1 then v27$1 else $$2$14bv32$1);
    $$2$14bv32$2 := (if p10$2 then v27$2 else $$2$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v28$1 := (if p10$1 then _HAVOC_bv8$1 else v28$1);
    v28$2 := (if p10$2 then _HAVOC_bv8$2 else v28$2);
    $$2$15bv32$1 := (if p10$1 then v28$1 else $$2$15bv32$1);
    $$2$15bv32$2 := (if p10$2 then v28$2 else $$2$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v29$1 := (if p10$1 then _HAVOC_bv8$1 else v29$1);
    v29$2 := (if p10$2 then _HAVOC_bv8$2 else v29$2);
    $$2$16bv32$1 := (if p10$1 then v29$1 else $$2$16bv32$1);
    $$2$16bv32$2 := (if p10$2 then v29$2 else $$2$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v30$1 := (if p10$1 then _HAVOC_bv8$1 else v30$1);
    v30$2 := (if p10$2 then _HAVOC_bv8$2 else v30$2);
    $$2$17bv32$1 := (if p10$1 then v30$1 else $$2$17bv32$1);
    $$2$17bv32$2 := (if p10$2 then v30$2 else $$2$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v31$1 := (if p10$1 then _HAVOC_bv8$1 else v31$1);
    v31$2 := (if p10$2 then _HAVOC_bv8$2 else v31$2);
    $$2$18bv32$1 := (if p10$1 then v31$1 else $$2$18bv32$1);
    $$2$18bv32$2 := (if p10$2 then v31$2 else $$2$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v32$1 := (if p10$1 then _HAVOC_bv8$1 else v32$1);
    v32$2 := (if p10$2 then _HAVOC_bv8$2 else v32$2);
    $$2$19bv32$1 := (if p10$1 then v32$1 else $$2$19bv32$1);
    $$2$19bv32$2 := (if p10$2 then v32$2 else $$2$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v33$1 := (if p10$1 then _HAVOC_bv8$1 else v33$1);
    v33$2 := (if p10$2 then _HAVOC_bv8$2 else v33$2);
    $$2$20bv32$1 := (if p10$1 then v33$1 else $$2$20bv32$1);
    $$2$20bv32$2 := (if p10$2 then v33$2 else $$2$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v34$1 := (if p10$1 then _HAVOC_bv8$1 else v34$1);
    v34$2 := (if p10$2 then _HAVOC_bv8$2 else v34$2);
    $$2$21bv32$1 := (if p10$1 then v34$1 else $$2$21bv32$1);
    $$2$21bv32$2 := (if p10$2 then v34$2 else $$2$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v35$1 := (if p10$1 then _HAVOC_bv8$1 else v35$1);
    v35$2 := (if p10$2 then _HAVOC_bv8$2 else v35$2);
    $$2$22bv32$1 := (if p10$1 then v35$1 else $$2$22bv32$1);
    $$2$22bv32$2 := (if p10$2 then v35$2 else $$2$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v36$1 := (if p10$1 then _HAVOC_bv8$1 else v36$1);
    v36$2 := (if p10$2 then _HAVOC_bv8$2 else v36$2);
    $$2$23bv32$1 := (if p10$1 then v36$1 else $$2$23bv32$1);
    $$2$23bv32$2 := (if p10$2 then v36$2 else $$2$23bv32$2);
    v37$1 := (if p10$1 then $$cur$0bv32$1 else v37$1);
    v37$2 := (if p10$2 then $$cur$0bv32$2 else v37$2);
    v38$1 := (if p10$1 then $$cur$1bv32$1 else v38$1);
    v38$2 := (if p10$2 then $$cur$1bv32$2 else v38$2);
    v39$1 := (if p10$1 then $$cur$2bv32$1 else v39$1);
    v39$2 := (if p10$2 then $$cur$2bv32$2 else v39$2);
    v40$1 := (if p10$1 then $$cur$3bv32$1 else v40$1);
    v40$2 := (if p10$2 then $$cur$3bv32$2 else v40$2);
    call {:sourceloc_num 85} v41$1, v41$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$2, 0bv32), p10$1, UI16_TO_FP32(v38$1 ++ v37$1), UI16_TO_FP32(v40$1 ++ v39$1), p10$2, UI16_TO_FP32(v38$2 ++ v37$2), UI16_TO_FP32(v40$2 ++ v39$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v42$1 := (if p10$1 then v41$1[32:0] else v42$1);
    v42$2 := (if p10$2 then v41$2[32:0] else v42$2);
    $$1$0bv32$1 := (if p10$1 then v42$1[8:0] else $$1$0bv32$1);
    $$1$0bv32$2 := (if p10$2 then v42$2[8:0] else $$1$0bv32$2);
    $$1$1bv32$1 := (if p10$1 then v42$1[16:8] else $$1$1bv32$1);
    $$1$1bv32$2 := (if p10$2 then v42$2[16:8] else $$1$1bv32$2);
    $$1$2bv32$1 := (if p10$1 then v42$1[24:16] else $$1$2bv32$1);
    $$1$2bv32$2 := (if p10$2 then v42$2[24:16] else $$1$2bv32$2);
    $$1$3bv32$1 := (if p10$1 then v42$1[32:24] else $$1$3bv32$1);
    $$1$3bv32$2 := (if p10$2 then v42$2[32:24] else $$1$3bv32$2);
    v43$1 := (if p10$1 then v41$1[64:32] else v43$1);
    v43$2 := (if p10$2 then v41$2[64:32] else v43$2);
    $$1$4bv32$1 := (if p10$1 then v43$1[8:0] else $$1$4bv32$1);
    $$1$4bv32$2 := (if p10$2 then v43$2[8:0] else $$1$4bv32$2);
    $$1$5bv32$1 := (if p10$1 then v43$1[16:8] else $$1$5bv32$1);
    $$1$5bv32$2 := (if p10$2 then v43$2[16:8] else $$1$5bv32$2);
    $$1$6bv32$1 := (if p10$1 then v43$1[24:16] else $$1$6bv32$1);
    $$1$6bv32$2 := (if p10$2 then v43$2[24:16] else $$1$6bv32$2);
    $$1$7bv32$1 := (if p10$1 then v43$1[32:24] else $$1$7bv32$1);
    $$1$7bv32$2 := (if p10$2 then v43$2[32:24] else $$1$7bv32$2);
    v44$1 := (if p10$1 then v41$1[96:64] else v44$1);
    v44$2 := (if p10$2 then v41$2[96:64] else v44$2);
    $$1$8bv32$1 := (if p10$1 then v44$1[8:0] else $$1$8bv32$1);
    $$1$8bv32$2 := (if p10$2 then v44$2[8:0] else $$1$8bv32$2);
    $$1$9bv32$1 := (if p10$1 then v44$1[16:8] else $$1$9bv32$1);
    $$1$9bv32$2 := (if p10$2 then v44$2[16:8] else $$1$9bv32$2);
    $$1$10bv32$1 := (if p10$1 then v44$1[24:16] else $$1$10bv32$1);
    $$1$10bv32$2 := (if p10$2 then v44$2[24:16] else $$1$10bv32$2);
    $$1$11bv32$1 := (if p10$1 then v44$1[32:24] else $$1$11bv32$1);
    $$1$11bv32$2 := (if p10$2 then v44$2[32:24] else $$1$11bv32$2);
    v45$1 := (if p10$1 then v41$1[128:96] else v45$1);
    v45$2 := (if p10$2 then v41$2[128:96] else v45$2);
    $$1$12bv32$1 := (if p10$1 then v45$1[8:0] else $$1$12bv32$1);
    $$1$12bv32$2 := (if p10$2 then v45$2[8:0] else $$1$12bv32$2);
    $$1$13bv32$1 := (if p10$1 then v45$1[16:8] else $$1$13bv32$1);
    $$1$13bv32$2 := (if p10$2 then v45$2[16:8] else $$1$13bv32$2);
    $$1$14bv32$1 := (if p10$1 then v45$1[24:16] else $$1$14bv32$1);
    $$1$14bv32$2 := (if p10$2 then v45$2[24:16] else $$1$14bv32$2);
    $$1$15bv32$1 := (if p10$1 then v45$1[32:24] else $$1$15bv32$1);
    $$1$15bv32$2 := (if p10$2 then v45$2[32:24] else $$1$15bv32$2);
    v46$1 := (if p10$1 then $$1$0bv32$1 else v46$1);
    v46$2 := (if p10$2 then $$1$0bv32$2 else v46$2);
    $$children$0bv32$1 := (if p10$1 then v46$1 else $$children$0bv32$1);
    $$children$0bv32$2 := (if p10$2 then v46$2 else $$children$0bv32$2);
    v47$1 := (if p10$1 then $$1$1bv32$1 else v47$1);
    v47$2 := (if p10$2 then $$1$1bv32$2 else v47$2);
    $$children$1bv32$1 := (if p10$1 then v47$1 else $$children$1bv32$1);
    $$children$1bv32$2 := (if p10$2 then v47$2 else $$children$1bv32$2);
    v48$1 := (if p10$1 then $$1$2bv32$1 else v48$1);
    v48$2 := (if p10$2 then $$1$2bv32$2 else v48$2);
    $$children$2bv32$1 := (if p10$1 then v48$1 else $$children$2bv32$1);
    $$children$2bv32$2 := (if p10$2 then v48$2 else $$children$2bv32$2);
    v49$1 := (if p10$1 then $$1$3bv32$1 else v49$1);
    v49$2 := (if p10$2 then $$1$3bv32$2 else v49$2);
    $$children$3bv32$1 := (if p10$1 then v49$1 else $$children$3bv32$1);
    $$children$3bv32$2 := (if p10$2 then v49$2 else $$children$3bv32$2);
    v50$1 := (if p10$1 then $$1$4bv32$1 else v50$1);
    v50$2 := (if p10$2 then $$1$4bv32$2 else v50$2);
    $$children$4bv32$1 := (if p10$1 then v50$1 else $$children$4bv32$1);
    $$children$4bv32$2 := (if p10$2 then v50$2 else $$children$4bv32$2);
    v51$1 := (if p10$1 then $$1$5bv32$1 else v51$1);
    v51$2 := (if p10$2 then $$1$5bv32$2 else v51$2);
    $$children$5bv32$1 := (if p10$1 then v51$1 else $$children$5bv32$1);
    $$children$5bv32$2 := (if p10$2 then v51$2 else $$children$5bv32$2);
    v52$1 := (if p10$1 then $$1$6bv32$1 else v52$1);
    v52$2 := (if p10$2 then $$1$6bv32$2 else v52$2);
    $$children$6bv32$1 := (if p10$1 then v52$1 else $$children$6bv32$1);
    $$children$6bv32$2 := (if p10$2 then v52$2 else $$children$6bv32$2);
    v53$1 := (if p10$1 then $$1$7bv32$1 else v53$1);
    v53$2 := (if p10$2 then $$1$7bv32$2 else v53$2);
    $$children$7bv32$1 := (if p10$1 then v53$1 else $$children$7bv32$1);
    $$children$7bv32$2 := (if p10$2 then v53$2 else $$children$7bv32$2);
    v54$1 := (if p10$1 then $$1$8bv32$1 else v54$1);
    v54$2 := (if p10$2 then $$1$8bv32$2 else v54$2);
    $$children$8bv32$1 := (if p10$1 then v54$1 else $$children$8bv32$1);
    $$children$8bv32$2 := (if p10$2 then v54$2 else $$children$8bv32$2);
    v55$1 := (if p10$1 then $$1$9bv32$1 else v55$1);
    v55$2 := (if p10$2 then $$1$9bv32$2 else v55$2);
    $$children$9bv32$1 := (if p10$1 then v55$1 else $$children$9bv32$1);
    $$children$9bv32$2 := (if p10$2 then v55$2 else $$children$9bv32$2);
    v56$1 := (if p10$1 then $$1$10bv32$1 else v56$1);
    v56$2 := (if p10$2 then $$1$10bv32$2 else v56$2);
    $$children$10bv32$1 := (if p10$1 then v56$1 else $$children$10bv32$1);
    $$children$10bv32$2 := (if p10$2 then v56$2 else $$children$10bv32$2);
    v57$1 := (if p10$1 then $$1$11bv32$1 else v57$1);
    v57$2 := (if p10$2 then $$1$11bv32$2 else v57$2);
    $$children$11bv32$1 := (if p10$1 then v57$1 else $$children$11bv32$1);
    $$children$11bv32$2 := (if p10$2 then v57$2 else $$children$11bv32$2);
    v58$1 := (if p10$1 then $$1$12bv32$1 else v58$1);
    v58$2 := (if p10$2 then $$1$12bv32$2 else v58$2);
    $$children$12bv32$1 := (if p10$1 then v58$1 else $$children$12bv32$1);
    $$children$12bv32$2 := (if p10$2 then v58$2 else $$children$12bv32$2);
    v59$1 := (if p10$1 then $$1$13bv32$1 else v59$1);
    v59$2 := (if p10$2 then $$1$13bv32$2 else v59$2);
    $$children$13bv32$1 := (if p10$1 then v59$1 else $$children$13bv32$1);
    $$children$13bv32$2 := (if p10$2 then v59$2 else $$children$13bv32$2);
    v60$1 := (if p10$1 then $$1$14bv32$1 else v60$1);
    v60$2 := (if p10$2 then $$1$14bv32$2 else v60$2);
    $$children$14bv32$1 := (if p10$1 then v60$1 else $$children$14bv32$1);
    $$children$14bv32$2 := (if p10$2 then v60$2 else $$children$14bv32$2);
    v61$1 := (if p10$1 then $$1$15bv32$1 else v61$1);
    v61$2 := (if p10$2 then $$1$15bv32$2 else v61$2);
    $$children$15bv32$1 := (if p10$1 then v61$1 else $$children$15bv32$1);
    $$children$15bv32$2 := (if p10$2 then v61$2 else $$children$15bv32$2);
    v62$1 := (if p10$1 then $$cur$0bv32$1 else v62$1);
    v62$2 := (if p10$2 then $$cur$0bv32$2 else v62$2);
    $$prev$0bv32$1 := (if p10$1 then v62$1 else $$prev$0bv32$1);
    $$prev$0bv32$2 := (if p10$2 then v62$2 else $$prev$0bv32$2);
    v63$1 := (if p10$1 then $$cur$1bv32$1 else v63$1);
    v63$2 := (if p10$2 then $$cur$1bv32$2 else v63$2);
    $$prev$1bv32$1 := (if p10$1 then v63$1 else $$prev$1bv32$1);
    $$prev$1bv32$2 := (if p10$2 then v63$2 else $$prev$1bv32$2);
    v64$1 := (if p10$1 then $$cur$2bv32$1 else v64$1);
    v64$2 := (if p10$2 then $$cur$2bv32$2 else v64$2);
    $$prev$2bv32$1 := (if p10$1 then v64$1 else $$prev$2bv32$1);
    $$prev$2bv32$2 := (if p10$2 then v64$2 else $$prev$2bv32$2);
    v65$1 := (if p10$1 then $$cur$3bv32$1 else v65$1);
    v65$2 := (if p10$2 then $$cur$3bv32$2 else v65$2);
    $$prev$3bv32$1 := (if p10$1 then v65$1 else $$prev$3bv32$1);
    $$prev$3bv32$2 := (if p10$2 then v65$2 else $$prev$3bv32$2);
    v66$1 := (if p10$1 then BV8_SEXT32($c.0$1) else v66$1);
    v66$2 := (if p10$2 then BV8_SEXT32($c.0$2) else v66$2);
    p15$1 := (if p10$1 && v66$1 == 65bv32 then v66$1 == 65bv32 else p15$1);
    p15$2 := (if p10$2 && v66$2 == 65bv32 then v66$2 == 65bv32 else p15$2);
    p14$1 := (if p10$1 && v66$1 == 67bv32 then v66$1 == 67bv32 else p14$1);
    p14$2 := (if p10$2 && v66$2 == 67bv32 then v66$2 == 67bv32 else p14$2);
    p13$1 := (if p10$1 && v66$1 == 71bv32 then v66$1 == 71bv32 else p13$1);
    p13$2 := (if p10$2 && v66$2 == 71bv32 then v66$2 == 71bv32 else p13$2);
    p12$1 := (if p10$1 && v66$1 == 84bv32 then v66$1 == 84bv32 else p12$1);
    p12$2 := (if p10$2 && v66$2 == 84bv32 then v66$2 == 84bv32 else p12$2);
    p11$1 := (if p10$1 && v66$1 != 65bv32 && v66$1 != 67bv32 && v66$1 != 71bv32 && v66$1 != 84bv32 then v66$1 != 65bv32 && v66$1 != 67bv32 && v66$1 != 71bv32 && v66$1 != 84bv32 else p11$1);
    p11$2 := (if p10$2 && v66$2 != 65bv32 && v66$2 != 67bv32 && v66$2 != 71bv32 && v66$2 != 84bv32 then v66$2 != 65bv32 && v66$2 != 67bv32 && v66$2 != 71bv32 && v66$2 != 84bv32 else p11$2);
    $$cur$0bv32$1 := (if p11$1 then 0bv8 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p11$2 then 0bv8 else $$cur$0bv32$2);
    $$cur$1bv32$1 := (if p11$1 then 0bv8 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p11$2 then 0bv8 else $$cur$1bv32$2);
    $$cur$2bv32$1 := (if p11$1 then 0bv8 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p11$2 then 0bv8 else $$cur$2bv32$2);
    $$cur$3bv32$1 := (if p11$1 then 0bv8 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p11$2 then 0bv8 else $$cur$3bv32$2);
    v79$1 := (if p12$1 then $$children$12bv32$1 else v79$1);
    v79$2 := (if p12$2 then $$children$12bv32$2 else v79$2);
    $$cur$0bv32$1 := (if p12$1 then v79$1 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p12$2 then v79$2 else $$cur$0bv32$2);
    v80$1 := (if p12$1 then $$children$13bv32$1 else v80$1);
    v80$2 := (if p12$2 then $$children$13bv32$2 else v80$2);
    $$cur$1bv32$1 := (if p12$1 then v80$1 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p12$2 then v80$2 else $$cur$1bv32$2);
    v81$1 := (if p12$1 then $$children$14bv32$1 else v81$1);
    v81$2 := (if p12$2 then $$children$14bv32$2 else v81$2);
    $$cur$2bv32$1 := (if p12$1 then v81$1 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p12$2 then v81$2 else $$cur$2bv32$2);
    v82$1 := (if p12$1 then $$children$15bv32$1 else v82$1);
    v82$2 := (if p12$2 then $$children$15bv32$2 else v82$2);
    $$cur$3bv32$1 := (if p12$1 then v82$1 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p12$2 then v82$2 else $$cur$3bv32$2);
    v75$1 := (if p13$1 then $$children$8bv32$1 else v75$1);
    v75$2 := (if p13$2 then $$children$8bv32$2 else v75$2);
    $$cur$0bv32$1 := (if p13$1 then v75$1 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p13$2 then v75$2 else $$cur$0bv32$2);
    v76$1 := (if p13$1 then $$children$9bv32$1 else v76$1);
    v76$2 := (if p13$2 then $$children$9bv32$2 else v76$2);
    $$cur$1bv32$1 := (if p13$1 then v76$1 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p13$2 then v76$2 else $$cur$1bv32$2);
    v77$1 := (if p13$1 then $$children$10bv32$1 else v77$1);
    v77$2 := (if p13$2 then $$children$10bv32$2 else v77$2);
    $$cur$2bv32$1 := (if p13$1 then v77$1 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p13$2 then v77$2 else $$cur$2bv32$2);
    v78$1 := (if p13$1 then $$children$11bv32$1 else v78$1);
    v78$2 := (if p13$2 then $$children$11bv32$2 else v78$2);
    $$cur$3bv32$1 := (if p13$1 then v78$1 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p13$2 then v78$2 else $$cur$3bv32$2);
    v71$1 := (if p14$1 then $$children$4bv32$1 else v71$1);
    v71$2 := (if p14$2 then $$children$4bv32$2 else v71$2);
    $$cur$0bv32$1 := (if p14$1 then v71$1 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p14$2 then v71$2 else $$cur$0bv32$2);
    v72$1 := (if p14$1 then $$children$5bv32$1 else v72$1);
    v72$2 := (if p14$2 then $$children$5bv32$2 else v72$2);
    $$cur$1bv32$1 := (if p14$1 then v72$1 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p14$2 then v72$2 else $$cur$1bv32$2);
    v73$1 := (if p14$1 then $$children$6bv32$1 else v73$1);
    v73$2 := (if p14$2 then $$children$6bv32$2 else v73$2);
    $$cur$2bv32$1 := (if p14$1 then v73$1 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p14$2 then v73$2 else $$cur$2bv32$2);
    v74$1 := (if p14$1 then $$children$7bv32$1 else v74$1);
    v74$2 := (if p14$2 then $$children$7bv32$2 else v74$2);
    $$cur$3bv32$1 := (if p14$1 then v74$1 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p14$2 then v74$2 else $$cur$3bv32$2);
    v67$1 := (if p15$1 then $$children$0bv32$1 else v67$1);
    v67$2 := (if p15$2 then $$children$0bv32$2 else v67$2);
    $$cur$0bv32$1 := (if p15$1 then v67$1 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p15$2 then v67$2 else $$cur$0bv32$2);
    v68$1 := (if p15$1 then $$children$1bv32$1 else v68$1);
    v68$2 := (if p15$2 then $$children$1bv32$2 else v68$2);
    $$cur$1bv32$1 := (if p15$1 then v68$1 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p15$2 then v68$2 else $$cur$1bv32$2);
    v69$1 := (if p15$1 then $$children$2bv32$1 else v69$1);
    v69$2 := (if p15$2 then $$children$2bv32$2 else v69$2);
    $$cur$2bv32$1 := (if p15$1 then v69$1 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p15$2 then v69$2 else $$cur$2bv32$2);
    v70$1 := (if p15$1 then $$children$3bv32$1 else v70$1);
    v70$2 := (if p15$2 then $$children$3bv32$2 else v70$2);
    $$cur$3bv32$1 := (if p15$1 then v70$1 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p15$2 then v70$2 else $$cur$3bv32$2);
    v83$1 := (if p10$1 then $$cur$0bv32$1 else v83$1);
    v83$2 := (if p10$2 then $$cur$0bv32$2 else v83$2);
    v84$1 := (if p10$1 then $$cur$1bv32$1 else v84$1);
    v84$2 := (if p10$2 then $$cur$1bv32$2 else v84$2);
    v85$1 := (if p10$1 then $$cur$2bv32$1 else v85$1);
    v85$2 := (if p10$2 then $$cur$2bv32$2 else v85$2);
    v86$1 := (if p10$1 then $$cur$3bv32$1 else v86$1);
    v86$2 := (if p10$2 then $$cur$3bv32$2 else v86$2);
    v87$1 := (if p10$1 then v86$1 ++ v85$1 ++ v84$1 ++ v83$1 == 0bv32 else v87$1);
    v87$2 := (if p10$2 then v86$2 ++ v85$2 ++ v84$2 ++ v83$2 == 0bv32 else v87$2);
    p32$1 := (if p10$1 && v87$1 then v87$1 else p32$1);
    p32$2 := (if p10$2 && v87$2 then v87$2 else p32$2);
    p9$1 := (if p10$1 && v87$1 then !v87$1 else p9$1);
    p9$2 := (if p10$2 && v87$2 then !v87$2 else p9$2);
    p16$1 := (if p10$1 && !v87$1 then !v87$1 else p16$1);
    p16$2 := (if p10$2 && !v87$2 then !v87$2 else p16$2);
    v96$1 := (if p16$1 then $$cur$0bv32$1 else v96$1);
    v96$2 := (if p16$2 then $$cur$0bv32$2 else v96$2);
    v97$1 := (if p16$1 then $$cur$1bv32$1 else v97$1);
    v97$2 := (if p16$2 then $$cur$1bv32$2 else v97$2);
    v98$1 := (if p16$1 then $$cur$2bv32$1 else v98$1);
    v98$2 := (if p16$2 then $$cur$2bv32$2 else v98$2);
    v99$1 := (if p16$1 then $$cur$3bv32$1 else v99$1);
    v99$2 := (if p16$2 then $$cur$3bv32$2 else v99$2);
    v100$1 := (if p16$1 then $$cur$0bv32$1 else v100$1);
    v100$2 := (if p16$2 then $$cur$0bv32$2 else v100$2);
    v101$1 := (if p16$1 then $$cur$1bv32$1 else v101$1);
    v101$2 := (if p16$2 then $$cur$1bv32$2 else v101$2);
    v102$1 := (if p16$1 then $$cur$2bv32$1 else v102$1);
    v102$2 := (if p16$2 then $$cur$2bv32$2 else v102$2);
    v103$1 := (if p16$1 then $$cur$3bv32$1 else v103$1);
    v103$2 := (if p16$2 then $$cur$3bv32$2 else v103$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v104$1 := (if p16$1 then _HAVOC_bv8$1 else v104$1);
    v104$2 := (if p16$2 then _HAVOC_bv8$2 else v104$2);
    $$4$0bv32$1 := (if p16$1 then v104$1 else $$4$0bv32$1);
    $$4$0bv32$2 := (if p16$2 then v104$2 else $$4$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v105$1 := (if p16$1 then _HAVOC_bv8$1 else v105$1);
    v105$2 := (if p16$2 then _HAVOC_bv8$2 else v105$2);
    $$4$1bv32$1 := (if p16$1 then v105$1 else $$4$1bv32$1);
    $$4$1bv32$2 := (if p16$2 then v105$2 else $$4$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v106$1 := (if p16$1 then _HAVOC_bv8$1 else v106$1);
    v106$2 := (if p16$2 then _HAVOC_bv8$2 else v106$2);
    $$4$2bv32$1 := (if p16$1 then v106$1 else $$4$2bv32$1);
    $$4$2bv32$2 := (if p16$2 then v106$2 else $$4$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v107$1 := (if p16$1 then _HAVOC_bv8$1 else v107$1);
    v107$2 := (if p16$2 then _HAVOC_bv8$2 else v107$2);
    $$4$3bv32$1 := (if p16$1 then v107$1 else $$4$3bv32$1);
    $$4$3bv32$2 := (if p16$2 then v107$2 else $$4$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v108$1 := (if p16$1 then _HAVOC_bv8$1 else v108$1);
    v108$2 := (if p16$2 then _HAVOC_bv8$2 else v108$2);
    $$4$4bv32$1 := (if p16$1 then v108$1 else $$4$4bv32$1);
    $$4$4bv32$2 := (if p16$2 then v108$2 else $$4$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v109$1 := (if p16$1 then _HAVOC_bv8$1 else v109$1);
    v109$2 := (if p16$2 then _HAVOC_bv8$2 else v109$2);
    $$4$5bv32$1 := (if p16$1 then v109$1 else $$4$5bv32$1);
    $$4$5bv32$2 := (if p16$2 then v109$2 else $$4$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v110$1 := (if p16$1 then _HAVOC_bv8$1 else v110$1);
    v110$2 := (if p16$2 then _HAVOC_bv8$2 else v110$2);
    $$4$6bv32$1 := (if p16$1 then v110$1 else $$4$6bv32$1);
    $$4$6bv32$2 := (if p16$2 then v110$2 else $$4$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v111$1 := (if p16$1 then _HAVOC_bv8$1 else v111$1);
    v111$2 := (if p16$2 then _HAVOC_bv8$2 else v111$2);
    $$4$7bv32$1 := (if p16$1 then v111$1 else $$4$7bv32$1);
    $$4$7bv32$2 := (if p16$2 then v111$2 else $$4$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v112$1 := (if p16$1 then _HAVOC_bv8$1 else v112$1);
    v112$2 := (if p16$2 then _HAVOC_bv8$2 else v112$2);
    $$4$8bv32$1 := (if p16$1 then v112$1 else $$4$8bv32$1);
    $$4$8bv32$2 := (if p16$2 then v112$2 else $$4$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v113$1 := (if p16$1 then _HAVOC_bv8$1 else v113$1);
    v113$2 := (if p16$2 then _HAVOC_bv8$2 else v113$2);
    $$4$9bv32$1 := (if p16$1 then v113$1 else $$4$9bv32$1);
    $$4$9bv32$2 := (if p16$2 then v113$2 else $$4$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v114$1 := (if p16$1 then _HAVOC_bv8$1 else v114$1);
    v114$2 := (if p16$2 then _HAVOC_bv8$2 else v114$2);
    $$4$10bv32$1 := (if p16$1 then v114$1 else $$4$10bv32$1);
    $$4$10bv32$2 := (if p16$2 then v114$2 else $$4$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v115$1 := (if p16$1 then _HAVOC_bv8$1 else v115$1);
    v115$2 := (if p16$2 then _HAVOC_bv8$2 else v115$2);
    $$4$11bv32$1 := (if p16$1 then v115$1 else $$4$11bv32$1);
    $$4$11bv32$2 := (if p16$2 then v115$2 else $$4$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v116$1 := (if p16$1 then _HAVOC_bv8$1 else v116$1);
    v116$2 := (if p16$2 then _HAVOC_bv8$2 else v116$2);
    $$4$12bv32$1 := (if p16$1 then v116$1 else $$4$12bv32$1);
    $$4$12bv32$2 := (if p16$2 then v116$2 else $$4$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v117$1 := (if p16$1 then _HAVOC_bv8$1 else v117$1);
    v117$2 := (if p16$2 then _HAVOC_bv8$2 else v117$2);
    $$4$13bv32$1 := (if p16$1 then v117$1 else $$4$13bv32$1);
    $$4$13bv32$2 := (if p16$2 then v117$2 else $$4$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v118$1 := (if p16$1 then _HAVOC_bv8$1 else v118$1);
    v118$2 := (if p16$2 then _HAVOC_bv8$2 else v118$2);
    $$4$14bv32$1 := (if p16$1 then v118$1 else $$4$14bv32$1);
    $$4$14bv32$2 := (if p16$2 then v118$2 else $$4$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v119$1 := (if p16$1 then _HAVOC_bv8$1 else v119$1);
    v119$2 := (if p16$2 then _HAVOC_bv8$2 else v119$2);
    $$4$15bv32$1 := (if p16$1 then v119$1 else $$4$15bv32$1);
    $$4$15bv32$2 := (if p16$2 then v119$2 else $$4$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v120$1 := (if p16$1 then _HAVOC_bv8$1 else v120$1);
    v120$2 := (if p16$2 then _HAVOC_bv8$2 else v120$2);
    $$4$16bv32$1 := (if p16$1 then v120$1 else $$4$16bv32$1);
    $$4$16bv32$2 := (if p16$2 then v120$2 else $$4$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v121$1 := (if p16$1 then _HAVOC_bv8$1 else v121$1);
    v121$2 := (if p16$2 then _HAVOC_bv8$2 else v121$2);
    $$4$17bv32$1 := (if p16$1 then v121$1 else $$4$17bv32$1);
    $$4$17bv32$2 := (if p16$2 then v121$2 else $$4$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v122$1 := (if p16$1 then _HAVOC_bv8$1 else v122$1);
    v122$2 := (if p16$2 then _HAVOC_bv8$2 else v122$2);
    $$4$18bv32$1 := (if p16$1 then v122$1 else $$4$18bv32$1);
    $$4$18bv32$2 := (if p16$2 then v122$2 else $$4$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v123$1 := (if p16$1 then _HAVOC_bv8$1 else v123$1);
    v123$2 := (if p16$2 then _HAVOC_bv8$2 else v123$2);
    $$4$19bv32$1 := (if p16$1 then v123$1 else $$4$19bv32$1);
    $$4$19bv32$2 := (if p16$2 then v123$2 else $$4$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v124$1 := (if p16$1 then _HAVOC_bv8$1 else v124$1);
    v124$2 := (if p16$2 then _HAVOC_bv8$2 else v124$2);
    $$4$20bv32$1 := (if p16$1 then v124$1 else $$4$20bv32$1);
    $$4$20bv32$2 := (if p16$2 then v124$2 else $$4$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v125$1 := (if p16$1 then _HAVOC_bv8$1 else v125$1);
    v125$2 := (if p16$2 then _HAVOC_bv8$2 else v125$2);
    $$4$21bv32$1 := (if p16$1 then v125$1 else $$4$21bv32$1);
    $$4$21bv32$2 := (if p16$2 then v125$2 else $$4$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v126$1 := (if p16$1 then _HAVOC_bv8$1 else v126$1);
    v126$2 := (if p16$2 then _HAVOC_bv8$2 else v126$2);
    $$4$22bv32$1 := (if p16$1 then v126$1 else $$4$22bv32$1);
    $$4$22bv32$2 := (if p16$2 then v126$2 else $$4$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v127$1 := (if p16$1 then _HAVOC_bv8$1 else v127$1);
    v127$2 := (if p16$2 then _HAVOC_bv8$2 else v127$2);
    $$4$23bv32$1 := (if p16$1 then v127$1 else $$4$23bv32$1);
    $$4$23bv32$2 := (if p16$2 then v127$2 else $$4$23bv32$2);
    call {:sourceloc_num 264} v128$1, v128$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$4, 0bv32), p16$1, UI16_TO_FP32(BV32_AND(v99$1 ++ v98$1 ++ v97$1 ++ v96$1, 65535bv32)[16:0]), UI16_TO_FP32(BV32_LSHR(BV32_AND(v103$1 ++ v102$1 ++ v101$1 ++ v100$1, 4294901760bv32), 16bv32)[16:0]), p16$2, UI16_TO_FP32(BV32_AND(v99$2 ++ v98$2 ++ v97$2 ++ v96$2, 65535bv32)[16:0]), UI16_TO_FP32(BV32_LSHR(BV32_AND(v103$2 ++ v102$2 ++ v101$2 ++ v100$2, 4294901760bv32), 16bv32)[16:0]));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v129$1 := (if p16$1 then v128$1[32:0] else v129$1);
    v129$2 := (if p16$2 then v128$2[32:0] else v129$2);
    $$3$0bv32$1 := (if p16$1 then v129$1[8:0] else $$3$0bv32$1);
    $$3$0bv32$2 := (if p16$2 then v129$2[8:0] else $$3$0bv32$2);
    $$3$1bv32$1 := (if p16$1 then v129$1[16:8] else $$3$1bv32$1);
    $$3$1bv32$2 := (if p16$2 then v129$2[16:8] else $$3$1bv32$2);
    $$3$2bv32$1 := (if p16$1 then v129$1[24:16] else $$3$2bv32$1);
    $$3$2bv32$2 := (if p16$2 then v129$2[24:16] else $$3$2bv32$2);
    $$3$3bv32$1 := (if p16$1 then v129$1[32:24] else $$3$3bv32$1);
    $$3$3bv32$2 := (if p16$2 then v129$2[32:24] else $$3$3bv32$2);
    v130$1 := (if p16$1 then v128$1[64:32] else v130$1);
    v130$2 := (if p16$2 then v128$2[64:32] else v130$2);
    $$3$4bv32$1 := (if p16$1 then v130$1[8:0] else $$3$4bv32$1);
    $$3$4bv32$2 := (if p16$2 then v130$2[8:0] else $$3$4bv32$2);
    $$3$5bv32$1 := (if p16$1 then v130$1[16:8] else $$3$5bv32$1);
    $$3$5bv32$2 := (if p16$2 then v130$2[16:8] else $$3$5bv32$2);
    $$3$6bv32$1 := (if p16$1 then v130$1[24:16] else $$3$6bv32$1);
    $$3$6bv32$2 := (if p16$2 then v130$2[24:16] else $$3$6bv32$2);
    $$3$7bv32$1 := (if p16$1 then v130$1[32:24] else $$3$7bv32$1);
    $$3$7bv32$2 := (if p16$2 then v130$2[32:24] else $$3$7bv32$2);
    v131$1 := (if p16$1 then v128$1[96:64] else v131$1);
    v131$2 := (if p16$2 then v128$2[96:64] else v131$2);
    $$3$8bv32$1 := (if p16$1 then v131$1[8:0] else $$3$8bv32$1);
    $$3$8bv32$2 := (if p16$2 then v131$2[8:0] else $$3$8bv32$2);
    $$3$9bv32$1 := (if p16$1 then v131$1[16:8] else $$3$9bv32$1);
    $$3$9bv32$2 := (if p16$2 then v131$2[16:8] else $$3$9bv32$2);
    $$3$10bv32$1 := (if p16$1 then v131$1[24:16] else $$3$10bv32$1);
    $$3$10bv32$2 := (if p16$2 then v131$2[24:16] else $$3$10bv32$2);
    $$3$11bv32$1 := (if p16$1 then v131$1[32:24] else $$3$11bv32$1);
    $$3$11bv32$2 := (if p16$2 then v131$2[32:24] else $$3$11bv32$2);
    v132$1 := (if p16$1 then v128$1[128:96] else v132$1);
    v132$2 := (if p16$2 then v128$2[128:96] else v132$2);
    $$3$12bv32$1 := (if p16$1 then v132$1[8:0] else $$3$12bv32$1);
    $$3$12bv32$2 := (if p16$2 then v132$2[8:0] else $$3$12bv32$2);
    $$3$13bv32$1 := (if p16$1 then v132$1[16:8] else $$3$13bv32$1);
    $$3$13bv32$2 := (if p16$2 then v132$2[16:8] else $$3$13bv32$2);
    $$3$14bv32$1 := (if p16$1 then v132$1[24:16] else $$3$14bv32$1);
    $$3$14bv32$2 := (if p16$2 then v132$2[24:16] else $$3$14bv32$2);
    $$3$15bv32$1 := (if p16$1 then v132$1[32:24] else $$3$15bv32$1);
    $$3$15bv32$2 := (if p16$2 then v132$2[32:24] else $$3$15bv32$2);
    v133$1 := (if p16$1 then $$3$0bv32$1 else v133$1);
    v133$2 := (if p16$2 then $$3$0bv32$2 else v133$2);
    $$node$0bv32$1 := (if p16$1 then v133$1 else $$node$0bv32$1);
    $$node$0bv32$2 := (if p16$2 then v133$2 else $$node$0bv32$2);
    v134$1 := (if p16$1 then $$3$1bv32$1 else v134$1);
    v134$2 := (if p16$2 then $$3$1bv32$2 else v134$2);
    $$node$1bv32$1 := (if p16$1 then v134$1 else $$node$1bv32$1);
    $$node$1bv32$2 := (if p16$2 then v134$2 else $$node$1bv32$2);
    v135$1 := (if p16$1 then $$3$2bv32$1 else v135$1);
    v135$2 := (if p16$2 then $$3$2bv32$2 else v135$2);
    $$node$2bv32$1 := (if p16$1 then v135$1 else $$node$2bv32$1);
    $$node$2bv32$2 := (if p16$2 then v135$2 else $$node$2bv32$2);
    v136$1 := (if p16$1 then $$3$3bv32$1 else v136$1);
    v136$2 := (if p16$2 then $$3$3bv32$2 else v136$2);
    $$node$3bv32$1 := (if p16$1 then v136$1 else $$node$3bv32$1);
    $$node$3bv32$2 := (if p16$2 then v136$2 else $$node$3bv32$2);
    v137$1 := (if p16$1 then $$3$4bv32$1 else v137$1);
    v137$2 := (if p16$2 then $$3$4bv32$2 else v137$2);
    $$node$4bv32$1 := (if p16$1 then v137$1 else $$node$4bv32$1);
    $$node$4bv32$2 := (if p16$2 then v137$2 else $$node$4bv32$2);
    v138$1 := (if p16$1 then $$3$5bv32$1 else v138$1);
    v138$2 := (if p16$2 then $$3$5bv32$2 else v138$2);
    $$node$5bv32$1 := (if p16$1 then v138$1 else $$node$5bv32$1);
    $$node$5bv32$2 := (if p16$2 then v138$2 else $$node$5bv32$2);
    v139$1 := (if p16$1 then $$3$6bv32$1 else v139$1);
    v139$2 := (if p16$2 then $$3$6bv32$2 else v139$2);
    $$node$6bv32$1 := (if p16$1 then v139$1 else $$node$6bv32$1);
    $$node$6bv32$2 := (if p16$2 then v139$2 else $$node$6bv32$2);
    v140$1 := (if p16$1 then $$3$7bv32$1 else v140$1);
    v140$2 := (if p16$2 then $$3$7bv32$2 else v140$2);
    $$node$7bv32$1 := (if p16$1 then v140$1 else $$node$7bv32$1);
    $$node$7bv32$2 := (if p16$2 then v140$2 else $$node$7bv32$2);
    v141$1 := (if p16$1 then $$3$8bv32$1 else v141$1);
    v141$2 := (if p16$2 then $$3$8bv32$2 else v141$2);
    $$node$8bv32$1 := (if p16$1 then v141$1 else $$node$8bv32$1);
    $$node$8bv32$2 := (if p16$2 then v141$2 else $$node$8bv32$2);
    v142$1 := (if p16$1 then $$3$9bv32$1 else v142$1);
    v142$2 := (if p16$2 then $$3$9bv32$2 else v142$2);
    $$node$9bv32$1 := (if p16$1 then v142$1 else $$node$9bv32$1);
    $$node$9bv32$2 := (if p16$2 then v142$2 else $$node$9bv32$2);
    v143$1 := (if p16$1 then $$3$10bv32$1 else v143$1);
    v143$2 := (if p16$2 then $$3$10bv32$2 else v143$2);
    $$node$10bv32$1 := (if p16$1 then v143$1 else $$node$10bv32$1);
    $$node$10bv32$2 := (if p16$2 then v143$2 else $$node$10bv32$2);
    v144$1 := (if p16$1 then $$3$11bv32$1 else v144$1);
    v144$2 := (if p16$2 then $$3$11bv32$2 else v144$2);
    $$node$11bv32$1 := (if p16$1 then v144$1 else $$node$11bv32$1);
    $$node$11bv32$2 := (if p16$2 then v144$2 else $$node$11bv32$2);
    v145$1 := (if p16$1 then $$3$12bv32$1 else v145$1);
    v145$2 := (if p16$2 then $$3$12bv32$2 else v145$2);
    $$node$12bv32$1 := (if p16$1 then v145$1 else $$node$12bv32$1);
    $$node$12bv32$2 := (if p16$2 then v145$2 else $$node$12bv32$2);
    v146$1 := (if p16$1 then $$3$13bv32$1 else v146$1);
    v146$2 := (if p16$2 then $$3$13bv32$2 else v146$2);
    $$node$13bv32$1 := (if p16$1 then v146$1 else $$node$13bv32$1);
    $$node$13bv32$2 := (if p16$2 then v146$2 else $$node$13bv32$2);
    v147$1 := (if p16$1 then $$3$14bv32$1 else v147$1);
    v147$2 := (if p16$2 then $$3$14bv32$2 else v147$2);
    $$node$14bv32$1 := (if p16$1 then v147$1 else $$node$14bv32$1);
    $$node$14bv32$2 := (if p16$2 then v147$2 else $$node$14bv32$2);
    v148$1 := (if p16$1 then $$3$15bv32$1 else v148$1);
    v148$2 := (if p16$2 then $$3$15bv32$2 else v148$2);
    $$node$15bv32$1 := (if p16$1 then v148$1 else $$node$15bv32$1);
    $$node$15bv32$2 := (if p16$2 then v148$2 else $$node$15bv32$2);
    v149$1 := (if p16$1 then $mustmatch.2$1 != 0bv32 else v149$1);
    v149$2 := (if p16$2 then $mustmatch.2$2 != 0bv32 else v149$2);
    p18$1 := (if p16$1 && v149$1 then v149$1 else p18$1);
    p18$2 := (if p16$2 && v149$2 then v149$2 else p18$2);
    p17$1 := (if p16$1 && !v149$1 then !v149$1 else p17$1);
    p17$2 := (if p16$2 && !v149$2 then !v149$2 else p17$2);
    v168$1 := (if p17$1 then $$node$0bv32$1 else v168$1);
    v168$2 := (if p17$2 then $$node$0bv32$2 else v168$2);
    v169$1 := (if p17$1 then $$node$1bv32$1 else v169$1);
    v169$2 := (if p17$2 then $$node$1bv32$2 else v169$2);
    v170$1 := (if p17$1 then $$node$2bv32$1 else v170$1);
    v170$2 := (if p17$2 then $$node$2bv32$2 else v170$2);
    v171$1 := (if p17$1 then $$node$3bv32$1 else v171$1);
    v171$2 := (if p17$2 then $$node$3bv32$2 else v171$2);
    $mustmatch.4$1, $qry_match_len.4$1, $refpos.2$1 := (if p17$1 then $mustmatch.2$1 else $mustmatch.4$1), (if p17$1 then BV32_ADD($qry_match_len.2$1, 1bv32) else $qry_match_len.4$1), (if p17$1 then BV32_ADD(v171$1 ++ v170$1 ++ v169$1 ++ v168$1, 1bv32) else $refpos.2$1);
    $mustmatch.4$2, $qry_match_len.4$2, $refpos.2$2 := (if p17$2 then $mustmatch.2$2 else $mustmatch.4$2), (if p17$2 then BV32_ADD($qry_match_len.2$2, 1bv32) else $qry_match_len.4$2), (if p17$2 then BV32_ADD(v171$2 ++ v170$2 ++ v169$2 ++ v168$2, 1bv32) else $refpos.2$2);
    v150$1 := (if p18$1 then $$node$4bv32$1 else v150$1);
    v150$2 := (if p18$2 then $$node$4bv32$2 else v150$2);
    v151$1 := (if p18$1 then $$node$5bv32$1 else v151$1);
    v151$2 := (if p18$2 then $$node$5bv32$2 else v151$2);
    v152$1 := (if p18$1 then $$node$6bv32$1 else v152$1);
    v152$2 := (if p18$2 then $$node$6bv32$2 else v152$2);
    v153$1 := (if p18$1 then $$node$7bv32$1 else v153$1);
    v153$2 := (if p18$2 then $$node$7bv32$2 else v153$2);
    v154$1 := (if p18$1 then $$node$0bv32$1 else v154$1);
    v154$2 := (if p18$2 then $$node$0bv32$2 else v154$2);
    v155$1 := (if p18$1 then $$node$1bv32$1 else v155$1);
    v155$2 := (if p18$2 then $$node$1bv32$2 else v155$2);
    v156$1 := (if p18$1 then $$node$2bv32$1 else v156$1);
    v156$2 := (if p18$2 then $$node$2bv32$2 else v156$2);
    v157$1 := (if p18$1 then $$node$3bv32$1 else v157$1);
    v157$2 := (if p18$2 then $$node$3bv32$2 else v157$2);
    v158$1 := (if p18$1 then BV32_ADD(BV32_SUB(v153$1 ++ v152$1 ++ v151$1 ++ v150$1, v157$1 ++ v156$1 ++ v155$1 ++ v154$1), 1bv32) else v158$1);
    v158$2 := (if p18$2 then BV32_ADD(BV32_SUB(v153$2 ++ v152$2 ++ v151$2 ++ v150$2, v157$2 ++ v156$2 ++ v155$2 ++ v154$2), 1bv32) else v158$2);
    v159$1 := (if p18$1 then BV32_SGE($mustmatch.2$1, v158$1) else v159$1);
    v159$2 := (if p18$2 then BV32_SGE($mustmatch.2$2, v158$2) else v159$2);
    p20$1 := (if p18$1 && v159$1 then v159$1 else p20$1);
    p20$2 := (if p18$2 && v159$2 then v159$2 else p20$2);
    p19$1 := (if p18$1 && !v159$1 then !v159$1 else p19$1);
    p19$2 := (if p18$2 && !v159$2 then !v159$2 else p19$2);
    v164$1 := (if p19$1 then $$node$0bv32$1 else v164$1);
    v164$2 := (if p19$2 then $$node$0bv32$2 else v164$2);
    v165$1 := (if p19$1 then $$node$1bv32$1 else v165$1);
    v165$2 := (if p19$2 then $$node$1bv32$2 else v165$2);
    v166$1 := (if p19$1 then $$node$2bv32$1 else v166$1);
    v166$2 := (if p19$2 then $$node$2bv32$2 else v166$2);
    v167$1 := (if p19$1 then $$node$3bv32$1 else v167$1);
    v167$2 := (if p19$2 then $$node$3bv32$2 else v167$2);
    $mustmatch.3$1, $qry_match_len.3$1, $refpos.1$1 := (if p19$1 then 0bv32 else $mustmatch.3$1), (if p19$1 then BV32_ADD($qry_match_len.2$1, $mustmatch.2$1) else $qry_match_len.3$1), (if p19$1 then BV32_ADD(v167$1 ++ v166$1 ++ v165$1 ++ v164$1, $mustmatch.2$1) else $refpos.1$1);
    $mustmatch.3$2, $qry_match_len.3$2, $refpos.1$2 := (if p19$2 then 0bv32 else $mustmatch.3$2), (if p19$2 then BV32_ADD($qry_match_len.2$2, $mustmatch.2$2) else $qry_match_len.3$2), (if p19$2 then BV32_ADD(v167$2 ++ v166$2 ++ v165$2 ++ v164$2, $mustmatch.2$2) else $refpos.1$2);
    v160$1 := (if p20$1 then $$node$4bv32$1 else v160$1);
    v160$2 := (if p20$2 then $$node$4bv32$2 else v160$2);
    v161$1 := (if p20$1 then $$node$5bv32$1 else v161$1);
    v161$2 := (if p20$2 then $$node$5bv32$2 else v161$2);
    v162$1 := (if p20$1 then $$node$6bv32$1 else v162$1);
    v162$2 := (if p20$2 then $$node$6bv32$2 else v162$2);
    v163$1 := (if p20$1 then $$node$7bv32$1 else v163$1);
    v163$2 := (if p20$2 then $$node$7bv32$2 else v163$2);
    $mustmatch.3$1, $qry_match_len.3$1, $refpos.1$1 := (if p20$1 then BV32_SUB($mustmatch.2$1, v158$1) else $mustmatch.3$1), (if p20$1 then BV32_ADD($qry_match_len.2$1, v158$1) else $qry_match_len.3$1), (if p20$1 then BV32_ADD(v163$1 ++ v162$1 ++ v161$1 ++ v160$1, 1bv32) else $refpos.1$1);
    $mustmatch.3$2, $qry_match_len.3$2, $refpos.1$2 := (if p20$2 then BV32_SUB($mustmatch.2$2, v158$2) else $mustmatch.3$2), (if p20$2 then BV32_ADD($qry_match_len.2$2, v158$2) else $qry_match_len.3$2), (if p20$2 then BV32_ADD(v163$2 ++ v162$2 ++ v161$2 ++ v160$2, 1bv32) else $refpos.1$2);
    $mustmatch.4$1, $qry_match_len.4$1, $refpos.2$1 := (if p18$1 then $mustmatch.3$1 else $mustmatch.4$1), (if p18$1 then $qry_match_len.3$1 else $qry_match_len.4$1), (if p18$1 then $refpos.1$1 else $refpos.2$1);
    $mustmatch.4$2, $qry_match_len.4$2, $refpos.2$2 := (if p18$2 then $mustmatch.3$2 else $mustmatch.4$2), (if p18$2 then $qry_match_len.3$2 else $qry_match_len.4$2), (if p18$2 then $refpos.1$2 else $refpos.2$2);
    v172$1 := (if p16$1 then $$queries[BV32_ADD($.0$1, $qry_match_len.4$1)] else v172$1);
    v172$2 := (if p16$2 then $$queries[BV32_ADD($.0$2, $qry_match_len.4$2)] else v172$2);
    $qry_match_len.5$1, $c.1$1, $refpos.3$1 := (if p16$1 then $qry_match_len.4$1 else $qry_match_len.5$1), (if p16$1 then v172$1 else $c.1$1), (if p16$1 then $refpos.2$1 else $refpos.3$1);
    $qry_match_len.5$2, $c.1$2, $refpos.3$2 := (if p16$2 then $qry_match_len.4$2 else $qry_match_len.5$2), (if p16$2 then v172$2 else $c.1$2), (if p16$2 then $refpos.2$2 else $refpos.3$2);
    p21$1 := (if p16$1 then true else p21$1);
    p21$2 := (if p16$2 then true else p21$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $43;

  $43:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p21"} {:dominator_predicate "p16"} true;
    assert p21$1 ==> p9$1;
    assert p21$2 ==> p9$2;
    assert p9$1 ==> p2$1;
    assert p9$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 346} p21$1 ==> true;
    v173$1 := (if p21$1 then $$node$4bv32$1 else v173$1);
    v173$2 := (if p21$2 then $$node$4bv32$2 else v173$2);
    v174$1 := (if p21$1 then $$node$5bv32$1 else v174$1);
    v174$2 := (if p21$2 then $$node$5bv32$2 else v174$2);
    v175$1 := (if p21$1 then $$node$6bv32$1 else v175$1);
    v175$2 := (if p21$2 then $$node$6bv32$2 else v175$2);
    v176$1 := (if p21$1 then $$node$7bv32$1 else v176$1);
    v176$2 := (if p21$2 then $$node$7bv32$2 else v176$2);
    v177$1 := (if p21$1 then BV32_SLE($refpos.3$1, v176$1 ++ v175$1 ++ v174$1 ++ v173$1) else v177$1);
    v177$2 := (if p21$2 then BV32_SLE($refpos.3$2, v176$2 ++ v175$2 ++ v174$2 ++ v173$2) else v177$2);
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
    p28$1 := false;
    p28$2 := false;
    p23$1 := (if p21$1 && v177$1 then v177$1 else p23$1);
    p23$2 := (if p21$2 && v177$2 then v177$2 else p23$2);
    p22$1 := (if p21$1 && !v177$1 then !v177$1 else p22$1);
    p22$2 := (if p21$2 && !v177$2 then !v177$2 else p22$2);
    $0$1 := (if p22$1 then 0bv1 else $0$1);
    $0$2 := (if p22$2 then 0bv1 else $0$2);
    $0$1 := (if p23$1 then (if BV8_SEXT32($c.1$1) != 0bv32 then 1bv1 else 0bv1) else $0$1);
    $0$2 := (if p23$2 then (if BV8_SEXT32($c.1$2) != 0bv32 then 1bv1 else 0bv1) else $0$2);
    v178$1 := (if p21$1 then $0$1 == 1bv1 else v178$1);
    v178$2 := (if p21$2 then $0$2 == 1bv1 else v178$2);
    p24$1 := (if p21$1 && v178$1 then v178$1 else p24$1);
    p24$2 := (if p21$2 && v178$2 then v178$2 else p24$2);
    p26$1 := (if p21$1 && !v178$1 then !v178$1 else p26$1);
    p26$2 := (if p21$2 && !v178$2 then !v178$2 else p26$2);
    p21$1 := (if p21$1 && !v178$1 then v178$1 else p21$1);
    p21$2 := (if p21$2 && !v178$2 then v178$2 else p21$2);
    v179$1 := (if p24$1 then BV32_AND($refpos.3$1, 262143bv32) else v179$1);
    v179$2 := (if p24$2 then BV32_AND($refpos.3$2, 262143bv32) else v179$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v180$1 := (if p24$1 then _HAVOC_bv8$1 else v180$1);
    v180$2 := (if p24$2 then _HAVOC_bv8$2 else v180$2);
    $$0$0bv32$1 := (if p24$1 then v180$1 else $$0$0bv32$1);
    $$0$0bv32$2 := (if p24$2 then v180$2 else $$0$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v181$1 := (if p24$1 then _HAVOC_bv8$1 else v181$1);
    v181$2 := (if p24$2 then _HAVOC_bv8$2 else v181$2);
    $$0$1bv32$1 := (if p24$1 then v181$1 else $$0$1bv32$1);
    $$0$1bv32$2 := (if p24$2 then v181$2 else $$0$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v182$1 := (if p24$1 then _HAVOC_bv8$1 else v182$1);
    v182$2 := (if p24$2 then _HAVOC_bv8$2 else v182$2);
    $$0$2bv32$1 := (if p24$1 then v182$1 else $$0$2bv32$1);
    $$0$2bv32$2 := (if p24$2 then v182$2 else $$0$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v183$1 := (if p24$1 then _HAVOC_bv8$1 else v183$1);
    v183$2 := (if p24$2 then _HAVOC_bv8$2 else v183$2);
    $$0$3bv32$1 := (if p24$1 then v183$1 else $$0$3bv32$1);
    $$0$3bv32$2 := (if p24$2 then v183$2 else $$0$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v184$1 := (if p24$1 then _HAVOC_bv8$1 else v184$1);
    v184$2 := (if p24$2 then _HAVOC_bv8$2 else v184$2);
    $$0$4bv32$1 := (if p24$1 then v184$1 else $$0$4bv32$1);
    $$0$4bv32$2 := (if p24$2 then v184$2 else $$0$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v185$1 := (if p24$1 then _HAVOC_bv8$1 else v185$1);
    v185$2 := (if p24$2 then _HAVOC_bv8$2 else v185$2);
    $$0$5bv32$1 := (if p24$1 then v185$1 else $$0$5bv32$1);
    $$0$5bv32$2 := (if p24$2 then v185$2 else $$0$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v186$1 := (if p24$1 then _HAVOC_bv8$1 else v186$1);
    v186$2 := (if p24$2 then _HAVOC_bv8$2 else v186$2);
    $$0$6bv32$1 := (if p24$1 then v186$1 else $$0$6bv32$1);
    $$0$6bv32$2 := (if p24$2 then v186$2 else $$0$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v187$1 := (if p24$1 then _HAVOC_bv8$1 else v187$1);
    v187$2 := (if p24$2 then _HAVOC_bv8$2 else v187$2);
    $$0$7bv32$1 := (if p24$1 then v187$1 else $$0$7bv32$1);
    $$0$7bv32$2 := (if p24$2 then v187$2 else $$0$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v188$1 := (if p24$1 then _HAVOC_bv8$1 else v188$1);
    v188$2 := (if p24$2 then _HAVOC_bv8$2 else v188$2);
    $$0$8bv32$1 := (if p24$1 then v188$1 else $$0$8bv32$1);
    $$0$8bv32$2 := (if p24$2 then v188$2 else $$0$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v189$1 := (if p24$1 then _HAVOC_bv8$1 else v189$1);
    v189$2 := (if p24$2 then _HAVOC_bv8$2 else v189$2);
    $$0$9bv32$1 := (if p24$1 then v189$1 else $$0$9bv32$1);
    $$0$9bv32$2 := (if p24$2 then v189$2 else $$0$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v190$1 := (if p24$1 then _HAVOC_bv8$1 else v190$1);
    v190$2 := (if p24$2 then _HAVOC_bv8$2 else v190$2);
    $$0$10bv32$1 := (if p24$1 then v190$1 else $$0$10bv32$1);
    $$0$10bv32$2 := (if p24$2 then v190$2 else $$0$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v191$1 := (if p24$1 then _HAVOC_bv8$1 else v191$1);
    v191$2 := (if p24$2 then _HAVOC_bv8$2 else v191$2);
    $$0$11bv32$1 := (if p24$1 then v191$1 else $$0$11bv32$1);
    $$0$11bv32$2 := (if p24$2 then v191$2 else $$0$11bv32$2);
    call {:sourceloc_num 378} v192$1, v192$2 := $_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(0bv32, p24$1, SI32_TO_FP32(BV32_ASHR(v179$1, 2bv32)), SI32_TO_FP32(BV32_ADD(BV32_SHL(BV32_ASHR($refpos.3$1, 18bv32), 2bv32), BV32_AND(v179$1, 3bv32))), p24$2, SI32_TO_FP32(BV32_ASHR(v179$2, 2bv32)), SI32_TO_FP32(BV32_ADD(BV32_SHL(BV32_ASHR($refpos.3$2, 18bv32), 2bv32), BV32_AND(v179$2, 3bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIcET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    v193$1 := (if p24$1 then BV8_SEXT32(v192$1) != BV8_SEXT32($c.1$1) else v193$1);
    v193$2 := (if p24$2 then BV8_SEXT32(v192$2) != BV8_SEXT32($c.1$2) else v193$2);
    p28$1 := (if p24$1 && v193$1 then v193$1 else p28$1);
    p28$2 := (if p24$2 && v193$2 then v193$2 else p28$2);
    p21$1 := (if p24$1 && v193$1 then !v193$1 else p21$1);
    p21$2 := (if p24$2 && v193$2 then !v193$2 else p21$2);
    p9$1 := (if p24$1 && v193$1 then !v193$1 else p9$1);
    p9$2 := (if p24$2 && v193$2 then !v193$2 else p9$2);
    p25$1 := (if p24$1 && !v193$1 then !v193$1 else p25$1);
    p25$2 := (if p24$2 && !v193$2 then !v193$2 else p25$2);
    v194$1 := (if p25$1 then BV32_ADD($qry_match_len.5$1, 1bv32) else v194$1);
    v194$2 := (if p25$2 then BV32_ADD($qry_match_len.5$2, 1bv32) else v194$2);
    v195$1 := (if p25$1 then $$queries[BV32_ADD($.0$1, v194$1)] else v195$1);
    v195$2 := (if p25$2 then $$queries[BV32_ADD($.0$2, v194$2)] else v195$2);
    $qry_match_len.5$1, $c.1$1, $refpos.3$1 := (if p25$1 then v194$1 else $qry_match_len.5$1), (if p25$1 then v195$1 else $c.1$1), (if p25$1 then BV32_ADD($refpos.3$1, 1bv32) else $refpos.3$1);
    $qry_match_len.5$2, $c.1$2, $refpos.3$2 := (if p25$2 then v194$2 else $qry_match_len.5$2), (if p25$2 then v195$2 else $c.1$2), (if p25$2 then BV32_ADD($refpos.3$2, 1bv32) else $refpos.3$2);
    p21$1 := (if p25$1 then true else p21$1);
    p21$2 := (if p25$2 then true else p21$2);
    goto $43.backedge, $43.tail;

  $43.tail:
    assume !p21$1 && !p21$2;
    $mustmatch.2$1, $qry_match_len.2$1, $c.0$1, $refpos.0$1 := (if p26$1 then $mustmatch.4$1 else $mustmatch.2$1), (if p26$1 then $qry_match_len.5$1 else $qry_match_len.2$1), (if p26$1 then $c.1$1 else $c.0$1), (if p26$1 then $refpos.3$1 else $refpos.0$1);
    $mustmatch.2$2, $qry_match_len.2$2, $c.0$2, $refpos.0$2 := (if p26$2 then $mustmatch.4$2 else $mustmatch.2$2), (if p26$2 then $qry_match_len.5$2 else $qry_match_len.2$2), (if p26$2 then $c.1$2 else $c.0$2), (if p26$2 then $refpos.3$2 else $refpos.0$2);
    p9$1 := (if p26$1 then true else p9$1);
    p9$2 := (if p26$2 then true else p9$2);
    goto $14.backedge, $14.tail;

  $14.tail:
    assume !p9$1 && !p9$2;
    $qry_match_len.6$1, $refpos.4$1 := (if p27$1 then $qry_match_len.2$1 else $qry_match_len.6$1), (if p27$1 then $refpos.0$1 else $refpos.4$1);
    $qry_match_len.6$2, $refpos.4$2 := (if p27$2 then $qry_match_len.2$2 else $qry_match_len.6$2), (if p27$2 then $refpos.0$2 else $refpos.4$2);
    p29$1 := (if p27$1 then true else p29$1);
    p29$2 := (if p27$2 then true else p29$2);
    $qry_match_len.6$1, $refpos.4$1 := (if p28$1 then $qry_match_len.5$1 else $qry_match_len.6$1), (if p28$1 then $refpos.3$1 else $refpos.4$1);
    $qry_match_len.6$2, $refpos.4$2 := (if p28$2 then $qry_match_len.5$2 else $qry_match_len.6$2), (if p28$2 then $refpos.3$2 else $refpos.4$2);
    p29$1 := (if p28$1 then true else p29$1);
    p29$2 := (if p28$2 then true else p29$2);
    v196$1 := (if p29$1 then $$node$0bv32$1 else v196$1);
    v196$2 := (if p29$2 then $$node$0bv32$2 else v196$2);
    v197$1 := (if p29$1 then $$node$1bv32$1 else v197$1);
    v197$2 := (if p29$2 then $$node$1bv32$2 else v197$2);
    v198$1 := (if p29$1 then $$node$2bv32$1 else v198$1);
    v198$2 := (if p29$2 then $$node$2bv32$2 else v198$2);
    v199$1 := (if p29$1 then $$node$3bv32$1 else v199$1);
    v199$2 := (if p29$2 then $$node$3bv32$2 else v199$2);
    v200$1 := (if p29$1 then BV32_SGT($qry_match_len.6$1, $min_match_len) else v200$1);
    v200$2 := (if p29$2 then BV32_SGT($qry_match_len.6$2, $min_match_len) else v200$2);
    p31$1 := (if p29$1 && v200$1 then v200$1 else p31$1);
    p31$2 := (if p29$2 && v200$2 then v200$2 else p31$2);
    v201$1 := (if p31$1 then $$cur$2bv32$1 else v201$1);
    v201$2 := (if p31$2 then $$cur$2bv32$2 else v201$2);
    v202$1 := (if p31$1 then $$cur$3bv32$1 else v202$1);
    v202$2 := (if p31$2 then $$cur$3bv32$2 else v202$2);
    v203$1 := (if p31$1 then $$cur$2bv32$1 else v203$1);
    v203$2 := (if p31$2 then $$cur$2bv32$2 else v203$2);
    v204$1 := (if p31$1 then $$cur$3bv32$1 else v204$1);
    v204$2 := (if p31$2 then $$cur$3bv32$2 else v204$2);
    v205$1 := (if p31$1 then $$cur$0bv32$1 else v205$1);
    v205$2 := (if p31$2 then $$cur$0bv32$2 else v205$2);
    v206$1 := (if p31$1 then $$cur$1bv32$1 else v206$1);
    v206$2 := (if p31$2 then $$cur$1bv32$2 else v206$2);
    v207$1 := (if p31$1 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(v206$1 ++ v205$1), 5bv32), BV32_AND(BV16_ZEXT32(v202$1 ++ v201$1), 31bv32)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(v204$1 ++ v203$1), 5bv32), 17bv32)) else v207$1);
    v207$2 := (if p31$2 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(v206$2 ++ v205$2), 5bv32), BV32_AND(BV16_ZEXT32(v202$2 ++ v201$2), 31bv32)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(v204$2 ++ v203$2), 5bv32), 17bv32)) else v207$2);
    call {:sourceloc} {:sourceloc_num 402} _LOG_WRITE_$$match_coords(p31$1, $result.0$1, v207$1[8:0], $$match_coords[$result.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, $result.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 402} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 402} _CHECK_WRITE_$$match_coords(p31$2, $result.0$2, v207$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[$result.0$1] := (if p31$1 then v207$1[8:0] else $$match_coords[$result.0$1]);
    $$match_coords[$result.0$2] := (if p31$2 then v207$2[8:0] else $$match_coords[$result.0$2]);
    call {:sourceloc} {:sourceloc_num 403} _LOG_WRITE_$$match_coords(p31$1, BV32_ADD($result.0$1, 1bv32), v207$1[16:8], $$match_coords[BV32_ADD($result.0$1, 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, BV32_ADD($result.0$2, 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 403} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 403} _CHECK_WRITE_$$match_coords(p31$2, BV32_ADD($result.0$2, 1bv32), v207$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 1bv32)] := (if p31$1 then v207$1[16:8] else $$match_coords[BV32_ADD($result.0$1, 1bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 1bv32)] := (if p31$2 then v207$2[16:8] else $$match_coords[BV32_ADD($result.0$2, 1bv32)]);
    call {:sourceloc} {:sourceloc_num 404} _LOG_WRITE_$$match_coords(p31$1, BV32_ADD($result.0$1, 2bv32), v207$1[24:16], $$match_coords[BV32_ADD($result.0$1, 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, BV32_ADD($result.0$2, 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 404} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 404} _CHECK_WRITE_$$match_coords(p31$2, BV32_ADD($result.0$2, 2bv32), v207$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 2bv32)] := (if p31$1 then v207$1[24:16] else $$match_coords[BV32_ADD($result.0$1, 2bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 2bv32)] := (if p31$2 then v207$2[24:16] else $$match_coords[BV32_ADD($result.0$2, 2bv32)]);
    call {:sourceloc} {:sourceloc_num 405} _LOG_WRITE_$$match_coords(p31$1, BV32_ADD($result.0$1, 3bv32), v207$1[32:24], $$match_coords[BV32_ADD($result.0$1, 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, BV32_ADD($result.0$2, 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 405} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 405} _CHECK_WRITE_$$match_coords(p31$2, BV32_ADD($result.0$2, 3bv32), v207$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 3bv32)] := (if p31$1 then v207$1[32:24] else $$match_coords[BV32_ADD($result.0$1, 3bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 3bv32)] := (if p31$2 then v207$2[32:24] else $$match_coords[BV32_ADD($result.0$2, 3bv32)]);
    v208$1 := (if p31$1 then BV32_SUB($refpos.4$1, v199$1 ++ v198$1 ++ v197$1 ++ v196$1)[16:0] else v208$1);
    v208$2 := (if p31$2 then BV32_SUB($refpos.4$2, v199$2 ++ v198$2 ++ v197$2 ++ v196$2)[16:0] else v208$2);
    call {:sourceloc} {:sourceloc_num 406} _LOG_WRITE_$$match_coords(p31$1, BV32_ADD($result.0$1, 4bv32), v208$1[8:0], $$match_coords[BV32_ADD($result.0$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, BV32_ADD($result.0$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 406} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 406} _CHECK_WRITE_$$match_coords(p31$2, BV32_ADD($result.0$2, 4bv32), v208$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 4bv32)] := (if p31$1 then v208$1[8:0] else $$match_coords[BV32_ADD($result.0$1, 4bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 4bv32)] := (if p31$2 then v208$2[8:0] else $$match_coords[BV32_ADD($result.0$2, 4bv32)]);
    call {:sourceloc} {:sourceloc_num 407} _LOG_WRITE_$$match_coords(p31$1, BV32_ADD($result.0$1, 5bv32), v208$1[16:8], $$match_coords[BV32_ADD($result.0$1, 5bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p31$2, BV32_ADD($result.0$2, 5bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 407} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 407} _CHECK_WRITE_$$match_coords(p31$2, BV32_ADD($result.0$2, 5bv32), v208$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 5bv32)] := (if p31$1 then v208$1[16:8] else $$match_coords[BV32_ADD($result.0$1, 5bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 5bv32)] := (if p31$2 then v208$2[16:8] else $$match_coords[BV32_ADD($result.0$2, 5bv32)]);
    v209$1 := (if p29$1 then $$node$0bv32$1 else v209$1);
    v209$2 := (if p29$2 then $$node$0bv32$2 else v209$2);
    v210$1 := (if p29$1 then $$node$1bv32$1 else v210$1);
    v210$2 := (if p29$2 then $$node$1bv32$2 else v210$2);
    v211$1 := (if p29$1 then $$node$2bv32$1 else v211$1);
    v211$2 := (if p29$2 then $$node$2bv32$2 else v211$2);
    v212$1 := (if p29$1 then $$node$3bv32$1 else v212$1);
    v212$2 := (if p29$2 then $$node$3bv32$2 else v212$2);
    v213$1 := (if p29$1 then BV32_SUB($refpos.4$1, v212$1 ++ v211$1 ++ v210$1 ++ v209$1) else v213$1);
    v213$2 := (if p29$2 then BV32_SUB($refpos.4$2, v212$2 ++ v211$2 ++ v210$2 ++ v209$2) else v213$2);
    $mustmatch.5$1, $qry_match_len.7$1 := (if p29$1 then v213$1 else $mustmatch.5$1), (if p29$1 then BV32_SUB($qry_match_len.6$1, BV32_ADD(v213$1, 1bv32)) else $qry_match_len.7$1);
    $mustmatch.5$2, $qry_match_len.7$2 := (if p29$2 then v213$2 else $mustmatch.5$2), (if p29$2 then BV32_SUB($qry_match_len.6$2, BV32_ADD(v213$2, 1bv32)) else $qry_match_len.7$2);
    v88$1 := (if p32$1 then BV32_SGT($qry_match_len.2$1, $min_match_len) else v88$1);
    v88$2 := (if p32$2 then BV32_SGT($qry_match_len.2$2, $min_match_len) else v88$2);
    p34$1 := (if p32$1 && v88$1 then v88$1 else p34$1);
    p34$2 := (if p32$2 && v88$2 then v88$2 else p34$2);
    v89$1 := (if p34$1 then $$prev$2bv32$1 else v89$1);
    v89$2 := (if p34$2 then $$prev$2bv32$2 else v89$2);
    v90$1 := (if p34$1 then $$prev$3bv32$1 else v90$1);
    v90$2 := (if p34$2 then $$prev$3bv32$2 else v90$2);
    v91$1 := (if p34$1 then $$prev$2bv32$1 else v91$1);
    v91$2 := (if p34$2 then $$prev$2bv32$2 else v91$2);
    v92$1 := (if p34$1 then $$prev$3bv32$1 else v92$1);
    v92$2 := (if p34$2 then $$prev$3bv32$2 else v92$2);
    v93$1 := (if p34$1 then $$prev$0bv32$1 else v93$1);
    v93$2 := (if p34$2 then $$prev$0bv32$2 else v93$2);
    v94$1 := (if p34$1 then $$prev$1bv32$1 else v94$1);
    v94$2 := (if p34$2 then $$prev$1bv32$2 else v94$2);
    v95$1 := (if p34$1 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(v94$1 ++ v93$1), 5bv32), BV32_AND(BV16_ZEXT32(v90$1 ++ v89$1), 31bv32)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(v92$1 ++ v91$1), 5bv32), 17bv32)) else v95$1);
    v95$2 := (if p34$2 then BV32_ADD(BV32_ADD(BV32_SHL(BV16_ZEXT32(v94$2 ++ v93$2), 5bv32), BV32_AND(BV16_ZEXT32(v90$2 ++ v89$2), 31bv32)), BV32_SHL(BV32_ASHR(BV16_ZEXT32(v92$2 ++ v91$2), 5bv32), 17bv32)) else v95$2);
    call {:sourceloc} {:sourceloc_num 200} _LOG_WRITE_$$match_coords(p34$1, $result.0$1, v95$1[8:0], $$match_coords[$result.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, $result.0$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 200} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 200} _CHECK_WRITE_$$match_coords(p34$2, $result.0$2, v95$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[$result.0$1] := (if p34$1 then v95$1[8:0] else $$match_coords[$result.0$1]);
    $$match_coords[$result.0$2] := (if p34$2 then v95$2[8:0] else $$match_coords[$result.0$2]);
    call {:sourceloc} {:sourceloc_num 201} _LOG_WRITE_$$match_coords(p34$1, BV32_ADD($result.0$1, 1bv32), v95$1[16:8], $$match_coords[BV32_ADD($result.0$1, 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, BV32_ADD($result.0$2, 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 201} _CHECK_WRITE_$$match_coords(p34$2, BV32_ADD($result.0$2, 1bv32), v95$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 1bv32)] := (if p34$1 then v95$1[16:8] else $$match_coords[BV32_ADD($result.0$1, 1bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 1bv32)] := (if p34$2 then v95$2[16:8] else $$match_coords[BV32_ADD($result.0$2, 1bv32)]);
    call {:sourceloc} {:sourceloc_num 202} _LOG_WRITE_$$match_coords(p34$1, BV32_ADD($result.0$1, 2bv32), v95$1[24:16], $$match_coords[BV32_ADD($result.0$1, 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, BV32_ADD($result.0$2, 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 202} _CHECK_WRITE_$$match_coords(p34$2, BV32_ADD($result.0$2, 2bv32), v95$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 2bv32)] := (if p34$1 then v95$1[24:16] else $$match_coords[BV32_ADD($result.0$1, 2bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 2bv32)] := (if p34$2 then v95$2[24:16] else $$match_coords[BV32_ADD($result.0$2, 2bv32)]);
    call {:sourceloc} {:sourceloc_num 203} _LOG_WRITE_$$match_coords(p34$1, BV32_ADD($result.0$1, 3bv32), v95$1[32:24], $$match_coords[BV32_ADD($result.0$1, 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, BV32_ADD($result.0$2, 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 203} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 203} _CHECK_WRITE_$$match_coords(p34$2, BV32_ADD($result.0$2, 3bv32), v95$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 3bv32)] := (if p34$1 then v95$1[32:24] else $$match_coords[BV32_ADD($result.0$1, 3bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 3bv32)] := (if p34$2 then v95$2[32:24] else $$match_coords[BV32_ADD($result.0$2, 3bv32)]);
    call {:sourceloc} {:sourceloc_num 204} _LOG_WRITE_$$match_coords(p34$1, BV32_ADD($result.0$1, 4bv32), 0bv8, $$match_coords[BV32_ADD($result.0$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, BV32_ADD($result.0$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 204} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 204} _CHECK_WRITE_$$match_coords(p34$2, BV32_ADD($result.0$2, 4bv32), 0bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 4bv32)] := (if p34$1 then 0bv8 else $$match_coords[BV32_ADD($result.0$1, 4bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 4bv32)] := (if p34$2 then 0bv8 else $$match_coords[BV32_ADD($result.0$2, 4bv32)]);
    call {:sourceloc} {:sourceloc_num 205} _LOG_WRITE_$$match_coords(p34$1, BV32_ADD($result.0$1, 5bv32), 0bv8, $$match_coords[BV32_ADD($result.0$1, 5bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(p34$2, BV32_ADD($result.0$2, 5bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 205} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 205} _CHECK_WRITE_$$match_coords(p34$2, BV32_ADD($result.0$2, 5bv32), 0bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$match_coords"} true;
    $$match_coords[BV32_ADD($result.0$1, 5bv32)] := (if p34$1 then 0bv8 else $$match_coords[BV32_ADD($result.0$1, 5bv32)]);
    $$match_coords[BV32_ADD($result.0$2, 5bv32)] := (if p34$2 then 0bv8 else $$match_coords[BV32_ADD($result.0$2, 5bv32)]);
    $mustmatch.5$1, $qry_match_len.7$1 := (if p32$1 then 0bv32 else $mustmatch.5$1), (if p32$1 then BV32_SUB($qry_match_len.2$1, 1bv32) else $qry_match_len.7$1);
    $mustmatch.5$2, $qry_match_len.7$2 := (if p32$2 then 0bv32 else $mustmatch.5$2), (if p32$2 then BV32_SUB($qry_match_len.2$2, 1bv32) else $qry_match_len.7$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v214$1 := (if p3$1 then _HAVOC_bv8$1 else v214$1);
    v214$2 := (if p3$2 then _HAVOC_bv8$2 else v214$2);
    $$6$0bv32$1 := (if p3$1 then v214$1 else $$6$0bv32$1);
    $$6$0bv32$2 := (if p3$2 then v214$2 else $$6$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v215$1 := (if p3$1 then _HAVOC_bv8$1 else v215$1);
    v215$2 := (if p3$2 then _HAVOC_bv8$2 else v215$2);
    $$6$1bv32$1 := (if p3$1 then v215$1 else $$6$1bv32$1);
    $$6$1bv32$2 := (if p3$2 then v215$2 else $$6$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v216$1 := (if p3$1 then _HAVOC_bv8$1 else v216$1);
    v216$2 := (if p3$2 then _HAVOC_bv8$2 else v216$2);
    $$6$2bv32$1 := (if p3$1 then v216$1 else $$6$2bv32$1);
    $$6$2bv32$2 := (if p3$2 then v216$2 else $$6$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v217$1 := (if p3$1 then _HAVOC_bv8$1 else v217$1);
    v217$2 := (if p3$2 then _HAVOC_bv8$2 else v217$2);
    $$6$3bv32$1 := (if p3$1 then v217$1 else $$6$3bv32$1);
    $$6$3bv32$2 := (if p3$2 then v217$2 else $$6$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v218$1 := (if p3$1 then _HAVOC_bv8$1 else v218$1);
    v218$2 := (if p3$2 then _HAVOC_bv8$2 else v218$2);
    $$6$4bv32$1 := (if p3$1 then v218$1 else $$6$4bv32$1);
    $$6$4bv32$2 := (if p3$2 then v218$2 else $$6$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v219$1 := (if p3$1 then _HAVOC_bv8$1 else v219$1);
    v219$2 := (if p3$2 then _HAVOC_bv8$2 else v219$2);
    $$6$5bv32$1 := (if p3$1 then v219$1 else $$6$5bv32$1);
    $$6$5bv32$2 := (if p3$2 then v219$2 else $$6$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v220$1 := (if p3$1 then _HAVOC_bv8$1 else v220$1);
    v220$2 := (if p3$2 then _HAVOC_bv8$2 else v220$2);
    $$6$6bv32$1 := (if p3$1 then v220$1 else $$6$6bv32$1);
    $$6$6bv32$2 := (if p3$2 then v220$2 else $$6$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v221$1 := (if p3$1 then _HAVOC_bv8$1 else v221$1);
    v221$2 := (if p3$2 then _HAVOC_bv8$2 else v221$2);
    $$6$7bv32$1 := (if p3$1 then v221$1 else $$6$7bv32$1);
    $$6$7bv32$2 := (if p3$2 then v221$2 else $$6$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v222$1 := (if p3$1 then _HAVOC_bv8$1 else v222$1);
    v222$2 := (if p3$2 then _HAVOC_bv8$2 else v222$2);
    $$6$8bv32$1 := (if p3$1 then v222$1 else $$6$8bv32$1);
    $$6$8bv32$2 := (if p3$2 then v222$2 else $$6$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v223$1 := (if p3$1 then _HAVOC_bv8$1 else v223$1);
    v223$2 := (if p3$2 then _HAVOC_bv8$2 else v223$2);
    $$6$9bv32$1 := (if p3$1 then v223$1 else $$6$9bv32$1);
    $$6$9bv32$2 := (if p3$2 then v223$2 else $$6$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v224$1 := (if p3$1 then _HAVOC_bv8$1 else v224$1);
    v224$2 := (if p3$2 then _HAVOC_bv8$2 else v224$2);
    $$6$10bv32$1 := (if p3$1 then v224$1 else $$6$10bv32$1);
    $$6$10bv32$2 := (if p3$2 then v224$2 else $$6$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v225$1 := (if p3$1 then _HAVOC_bv8$1 else v225$1);
    v225$2 := (if p3$2 then _HAVOC_bv8$2 else v225$2);
    $$6$11bv32$1 := (if p3$1 then v225$1 else $$6$11bv32$1);
    $$6$11bv32$2 := (if p3$2 then v225$2 else $$6$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v226$1 := (if p3$1 then _HAVOC_bv8$1 else v226$1);
    v226$2 := (if p3$2 then _HAVOC_bv8$2 else v226$2);
    $$6$12bv32$1 := (if p3$1 then v226$1 else $$6$12bv32$1);
    $$6$12bv32$2 := (if p3$2 then v226$2 else $$6$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v227$1 := (if p3$1 then _HAVOC_bv8$1 else v227$1);
    v227$2 := (if p3$2 then _HAVOC_bv8$2 else v227$2);
    $$6$13bv32$1 := (if p3$1 then v227$1 else $$6$13bv32$1);
    $$6$13bv32$2 := (if p3$2 then v227$2 else $$6$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v228$1 := (if p3$1 then _HAVOC_bv8$1 else v228$1);
    v228$2 := (if p3$2 then _HAVOC_bv8$2 else v228$2);
    $$6$14bv32$1 := (if p3$1 then v228$1 else $$6$14bv32$1);
    $$6$14bv32$2 := (if p3$2 then v228$2 else $$6$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v229$1 := (if p3$1 then _HAVOC_bv8$1 else v229$1);
    v229$2 := (if p3$2 then _HAVOC_bv8$2 else v229$2);
    $$6$15bv32$1 := (if p3$1 then v229$1 else $$6$15bv32$1);
    $$6$15bv32$2 := (if p3$2 then v229$2 else $$6$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v230$1 := (if p3$1 then _HAVOC_bv8$1 else v230$1);
    v230$2 := (if p3$2 then _HAVOC_bv8$2 else v230$2);
    $$6$16bv32$1 := (if p3$1 then v230$1 else $$6$16bv32$1);
    $$6$16bv32$2 := (if p3$2 then v230$2 else $$6$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v231$1 := (if p3$1 then _HAVOC_bv8$1 else v231$1);
    v231$2 := (if p3$2 then _HAVOC_bv8$2 else v231$2);
    $$6$17bv32$1 := (if p3$1 then v231$1 else $$6$17bv32$1);
    $$6$17bv32$2 := (if p3$2 then v231$2 else $$6$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v232$1 := (if p3$1 then _HAVOC_bv8$1 else v232$1);
    v232$2 := (if p3$2 then _HAVOC_bv8$2 else v232$2);
    $$6$18bv32$1 := (if p3$1 then v232$1 else $$6$18bv32$1);
    $$6$18bv32$2 := (if p3$2 then v232$2 else $$6$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v233$1 := (if p3$1 then _HAVOC_bv8$1 else v233$1);
    v233$2 := (if p3$2 then _HAVOC_bv8$2 else v233$2);
    $$6$19bv32$1 := (if p3$1 then v233$1 else $$6$19bv32$1);
    $$6$19bv32$2 := (if p3$2 then v233$2 else $$6$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v234$1 := (if p3$1 then _HAVOC_bv8$1 else v234$1);
    v234$2 := (if p3$2 then _HAVOC_bv8$2 else v234$2);
    $$6$20bv32$1 := (if p3$1 then v234$1 else $$6$20bv32$1);
    $$6$20bv32$2 := (if p3$2 then v234$2 else $$6$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v235$1 := (if p3$1 then _HAVOC_bv8$1 else v235$1);
    v235$2 := (if p3$2 then _HAVOC_bv8$2 else v235$2);
    $$6$21bv32$1 := (if p3$1 then v235$1 else $$6$21bv32$1);
    $$6$21bv32$2 := (if p3$2 then v235$2 else $$6$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v236$1 := (if p3$1 then _HAVOC_bv8$1 else v236$1);
    v236$2 := (if p3$2 then _HAVOC_bv8$2 else v236$2);
    $$6$22bv32$1 := (if p3$1 then v236$1 else $$6$22bv32$1);
    $$6$22bv32$2 := (if p3$2 then v236$2 else $$6$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v237$1 := (if p3$1 then _HAVOC_bv8$1 else v237$1);
    v237$2 := (if p3$2 then _HAVOC_bv8$2 else v237$2);
    $$6$23bv32$1 := (if p3$1 then v237$1 else $$6$23bv32$1);
    $$6$23bv32$2 := (if p3$2 then v237$2 else $$6$23bv32$2);
    v238$1 := (if p3$1 then $$prev$0bv32$1 else v238$1);
    v238$2 := (if p3$2 then $$prev$0bv32$2 else v238$2);
    v239$1 := (if p3$1 then $$prev$1bv32$1 else v239$1);
    v239$2 := (if p3$2 then $$prev$1bv32$2 else v239$2);
    v240$1 := (if p3$1 then $$prev$2bv32$1 else v240$1);
    v240$2 := (if p3$2 then $$prev$2bv32$2 else v240$2);
    v241$1 := (if p3$1 then $$prev$3bv32$1 else v241$1);
    v241$2 := (if p3$2 then $$prev$3bv32$2 else v241$2);
    call {:sourceloc_num 466} v242$1, v242$2 := $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$6, 0bv32), p3$1, UI16_TO_FP32(v239$1 ++ v238$1), UI16_TO_FP32(v241$1 ++ v240$1), p3$2, UI16_TO_FP32(v239$2 ++ v238$2), UI16_TO_FP32(v241$2 ++ v240$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    v243$1 := (if p3$1 then v242$1[32:0] else v243$1);
    v243$2 := (if p3$2 then v242$2[32:0] else v243$2);
    $$5$0bv32$1 := (if p3$1 then v243$1[8:0] else $$5$0bv32$1);
    $$5$0bv32$2 := (if p3$2 then v243$2[8:0] else $$5$0bv32$2);
    $$5$1bv32$1 := (if p3$1 then v243$1[16:8] else $$5$1bv32$1);
    $$5$1bv32$2 := (if p3$2 then v243$2[16:8] else $$5$1bv32$2);
    $$5$2bv32$1 := (if p3$1 then v243$1[24:16] else $$5$2bv32$1);
    $$5$2bv32$2 := (if p3$2 then v243$2[24:16] else $$5$2bv32$2);
    $$5$3bv32$1 := (if p3$1 then v243$1[32:24] else $$5$3bv32$1);
    $$5$3bv32$2 := (if p3$2 then v243$2[32:24] else $$5$3bv32$2);
    v244$1 := (if p3$1 then v242$1[64:32] else v244$1);
    v244$2 := (if p3$2 then v242$2[64:32] else v244$2);
    $$5$4bv32$1 := (if p3$1 then v244$1[8:0] else $$5$4bv32$1);
    $$5$4bv32$2 := (if p3$2 then v244$2[8:0] else $$5$4bv32$2);
    $$5$5bv32$1 := (if p3$1 then v244$1[16:8] else $$5$5bv32$1);
    $$5$5bv32$2 := (if p3$2 then v244$2[16:8] else $$5$5bv32$2);
    $$5$6bv32$1 := (if p3$1 then v244$1[24:16] else $$5$6bv32$1);
    $$5$6bv32$2 := (if p3$2 then v244$2[24:16] else $$5$6bv32$2);
    $$5$7bv32$1 := (if p3$1 then v244$1[32:24] else $$5$7bv32$1);
    $$5$7bv32$2 := (if p3$2 then v244$2[32:24] else $$5$7bv32$2);
    v245$1 := (if p3$1 then v242$1[96:64] else v245$1);
    v245$2 := (if p3$2 then v242$2[96:64] else v245$2);
    $$5$8bv32$1 := (if p3$1 then v245$1[8:0] else $$5$8bv32$1);
    $$5$8bv32$2 := (if p3$2 then v245$2[8:0] else $$5$8bv32$2);
    $$5$9bv32$1 := (if p3$1 then v245$1[16:8] else $$5$9bv32$1);
    $$5$9bv32$2 := (if p3$2 then v245$2[16:8] else $$5$9bv32$2);
    $$5$10bv32$1 := (if p3$1 then v245$1[24:16] else $$5$10bv32$1);
    $$5$10bv32$2 := (if p3$2 then v245$2[24:16] else $$5$10bv32$2);
    $$5$11bv32$1 := (if p3$1 then v245$1[32:24] else $$5$11bv32$1);
    $$5$11bv32$2 := (if p3$2 then v245$2[32:24] else $$5$11bv32$2);
    v246$1 := (if p3$1 then v242$1[128:96] else v246$1);
    v246$2 := (if p3$2 then v242$2[128:96] else v246$2);
    $$5$12bv32$1 := (if p3$1 then v246$1[8:0] else $$5$12bv32$1);
    $$5$12bv32$2 := (if p3$2 then v246$2[8:0] else $$5$12bv32$2);
    $$5$13bv32$1 := (if p3$1 then v246$1[16:8] else $$5$13bv32$1);
    $$5$13bv32$2 := (if p3$2 then v246$2[16:8] else $$5$13bv32$2);
    $$5$14bv32$1 := (if p3$1 then v246$1[24:16] else $$5$14bv32$1);
    $$5$14bv32$2 := (if p3$2 then v246$2[24:16] else $$5$14bv32$2);
    $$5$15bv32$1 := (if p3$1 then v246$1[32:24] else $$5$15bv32$1);
    $$5$15bv32$2 := (if p3$2 then v246$2[32:24] else $$5$15bv32$2);
    v247$1 := (if p3$1 then $$5$0bv32$1 else v247$1);
    v247$2 := (if p3$2 then $$5$0bv32$2 else v247$2);
    $$node$0bv32$1 := (if p3$1 then v247$1 else $$node$0bv32$1);
    $$node$0bv32$2 := (if p3$2 then v247$2 else $$node$0bv32$2);
    v248$1 := (if p3$1 then $$5$1bv32$1 else v248$1);
    v248$2 := (if p3$2 then $$5$1bv32$2 else v248$2);
    $$node$1bv32$1 := (if p3$1 then v248$1 else $$node$1bv32$1);
    $$node$1bv32$2 := (if p3$2 then v248$2 else $$node$1bv32$2);
    v249$1 := (if p3$1 then $$5$2bv32$1 else v249$1);
    v249$2 := (if p3$2 then $$5$2bv32$2 else v249$2);
    $$node$2bv32$1 := (if p3$1 then v249$1 else $$node$2bv32$1);
    $$node$2bv32$2 := (if p3$2 then v249$2 else $$node$2bv32$2);
    v250$1 := (if p3$1 then $$5$3bv32$1 else v250$1);
    v250$2 := (if p3$2 then $$5$3bv32$2 else v250$2);
    $$node$3bv32$1 := (if p3$1 then v250$1 else $$node$3bv32$1);
    $$node$3bv32$2 := (if p3$2 then v250$2 else $$node$3bv32$2);
    v251$1 := (if p3$1 then $$5$4bv32$1 else v251$1);
    v251$2 := (if p3$2 then $$5$4bv32$2 else v251$2);
    $$node$4bv32$1 := (if p3$1 then v251$1 else $$node$4bv32$1);
    $$node$4bv32$2 := (if p3$2 then v251$2 else $$node$4bv32$2);
    v252$1 := (if p3$1 then $$5$5bv32$1 else v252$1);
    v252$2 := (if p3$2 then $$5$5bv32$2 else v252$2);
    $$node$5bv32$1 := (if p3$1 then v252$1 else $$node$5bv32$1);
    $$node$5bv32$2 := (if p3$2 then v252$2 else $$node$5bv32$2);
    v253$1 := (if p3$1 then $$5$6bv32$1 else v253$1);
    v253$2 := (if p3$2 then $$5$6bv32$2 else v253$2);
    $$node$6bv32$1 := (if p3$1 then v253$1 else $$node$6bv32$1);
    $$node$6bv32$2 := (if p3$2 then v253$2 else $$node$6bv32$2);
    v254$1 := (if p3$1 then $$5$7bv32$1 else v254$1);
    v254$2 := (if p3$2 then $$5$7bv32$2 else v254$2);
    $$node$7bv32$1 := (if p3$1 then v254$1 else $$node$7bv32$1);
    $$node$7bv32$2 := (if p3$2 then v254$2 else $$node$7bv32$2);
    v255$1 := (if p3$1 then $$5$8bv32$1 else v255$1);
    v255$2 := (if p3$2 then $$5$8bv32$2 else v255$2);
    $$node$8bv32$1 := (if p3$1 then v255$1 else $$node$8bv32$1);
    $$node$8bv32$2 := (if p3$2 then v255$2 else $$node$8bv32$2);
    v256$1 := (if p3$1 then $$5$9bv32$1 else v256$1);
    v256$2 := (if p3$2 then $$5$9bv32$2 else v256$2);
    $$node$9bv32$1 := (if p3$1 then v256$1 else $$node$9bv32$1);
    $$node$9bv32$2 := (if p3$2 then v256$2 else $$node$9bv32$2);
    v257$1 := (if p3$1 then $$5$10bv32$1 else v257$1);
    v257$2 := (if p3$2 then $$5$10bv32$2 else v257$2);
    $$node$10bv32$1 := (if p3$1 then v257$1 else $$node$10bv32$1);
    $$node$10bv32$2 := (if p3$2 then v257$2 else $$node$10bv32$2);
    v258$1 := (if p3$1 then $$5$11bv32$1 else v258$1);
    v258$2 := (if p3$2 then $$5$11bv32$2 else v258$2);
    $$node$11bv32$1 := (if p3$1 then v258$1 else $$node$11bv32$1);
    $$node$11bv32$2 := (if p3$2 then v258$2 else $$node$11bv32$2);
    v259$1 := (if p3$1 then $$5$12bv32$1 else v259$1);
    v259$2 := (if p3$2 then $$5$12bv32$2 else v259$2);
    $$node$12bv32$1 := (if p3$1 then v259$1 else $$node$12bv32$1);
    $$node$12bv32$2 := (if p3$2 then v259$2 else $$node$12bv32$2);
    v260$1 := (if p3$1 then $$5$13bv32$1 else v260$1);
    v260$2 := (if p3$2 then $$5$13bv32$2 else v260$2);
    $$node$13bv32$1 := (if p3$1 then v260$1 else $$node$13bv32$1);
    $$node$13bv32$2 := (if p3$2 then v260$2 else $$node$13bv32$2);
    v261$1 := (if p3$1 then $$5$14bv32$1 else v261$1);
    v261$2 := (if p3$2 then $$5$14bv32$2 else v261$2);
    $$node$14bv32$1 := (if p3$1 then v261$1 else $$node$14bv32$1);
    $$node$14bv32$2 := (if p3$2 then v261$2 else $$node$14bv32$2);
    v262$1 := (if p3$1 then $$5$15bv32$1 else v262$1);
    v262$2 := (if p3$2 then $$5$15bv32$2 else v262$2);
    $$node$15bv32$1 := (if p3$1 then v262$1 else $$node$15bv32$1);
    $$node$15bv32$2 := (if p3$2 then v262$2 else $$node$15bv32$2);
    v263$1 := (if p3$1 then $$node$12bv32$1 else v263$1);
    v263$2 := (if p3$2 then $$node$12bv32$2 else v263$2);
    $$cur$0bv32$1 := (if p3$1 then v263$1 else $$cur$0bv32$1);
    $$cur$0bv32$2 := (if p3$2 then v263$2 else $$cur$0bv32$2);
    v264$1 := (if p3$1 then $$node$13bv32$1 else v264$1);
    v264$2 := (if p3$2 then $$node$13bv32$2 else v264$2);
    $$cur$1bv32$1 := (if p3$1 then v264$1 else $$cur$1bv32$1);
    $$cur$1bv32$2 := (if p3$2 then v264$2 else $$cur$1bv32$2);
    v265$1 := (if p3$1 then $$node$14bv32$1 else v265$1);
    v265$2 := (if p3$2 then $$node$14bv32$2 else v265$2);
    $$cur$2bv32$1 := (if p3$1 then v265$1 else $$cur$2bv32$1);
    $$cur$2bv32$2 := (if p3$2 then v265$2 else $$cur$2bv32$2);
    v266$1 := (if p3$1 then $$node$15bv32$1 else v266$1);
    v266$2 := (if p3$2 then $$node$15bv32$2 else v266$2);
    $$cur$3bv32$1 := (if p3$1 then v266$1 else $$cur$3bv32$1);
    $$cur$3bv32$2 := (if p3$2 then v266$2 else $$cur$3bv32$2);
    $mustmatch.0$1, $.0$1, $qry_match_len.0$1, $result.0$1, $qrystart.0$1 := (if p3$1 then $mustmatch.5$1 else $mustmatch.0$1), (if p3$1 then BV32_ADD($.0$1, 1bv32) else $.0$1), (if p3$1 then $qry_match_len.7$1 else $qry_match_len.0$1), (if p3$1 then BV32_ADD($result.0$1, 8bv32) else $result.0$1), (if p3$1 then BV32_ADD($qrystart.0$1, 1bv32) else $qrystart.0$1);
    $mustmatch.0$2, $.0$2, $qry_match_len.0$2, $result.0$2, $qrystart.0$2 := (if p3$2 then $mustmatch.5$2 else $mustmatch.0$2), (if p3$2 then BV32_ADD($.0$2, 1bv32) else $.0$2), (if p3$2 then $qry_match_len.7$2 else $qry_match_len.0$2), (if p3$2 then BV32_ADD($result.0$2, 8bv32) else $result.0$2), (if p3$2 then BV32_ADD($qrystart.0$2, 1bv32) else $qrystart.0$2);
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

  $14.backedge:
    assume {:backedge} p9$1 || p9$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $14;

  $43.backedge:
    assume {:backedge} p21$1 || p21$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $43;
}



procedure {:source_name "_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DI6ulong4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff($0: ptr, _P$1: bool, $1$1: bv32, $2$1: bv32, _P$2: bool, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv128, $ret$2: bv128);



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 2bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

var $$0$0bv32$1: bv8;

var $$0$0bv32$2: bv8;

var $$0$1bv32$1: bv8;

var $$0$1bv32$2: bv8;

var $$0$2bv32$1: bv8;

var $$0$2bv32$2: bv8;

var $$0$3bv32$1: bv8;

var $$0$3bv32$2: bv8;

var $$0$4bv32$1: bv8;

var $$0$4bv32$2: bv8;

var $$0$5bv32$1: bv8;

var $$0$5bv32$2: bv8;

var $$0$6bv32$1: bv8;

var $$0$6bv32$2: bv8;

var $$0$7bv32$1: bv8;

var $$0$7bv32$2: bv8;

var $$0$8bv32$1: bv8;

var $$0$8bv32$2: bv8;

var $$0$9bv32$1: bv8;

var $$0$9bv32$2: bv8;

var $$0$10bv32$1: bv8;

var $$0$10bv32$2: bv8;

var $$0$11bv32$1: bv8;

var $$0$11bv32$2: bv8;

var $$cur$0bv32$1: bv8;

var $$cur$0bv32$2: bv8;

var $$cur$1bv32$1: bv8;

var $$cur$1bv32$2: bv8;

var $$cur$2bv32$1: bv8;

var $$cur$2bv32$2: bv8;

var $$cur$3bv32$1: bv8;

var $$cur$3bv32$2: bv8;

var $$node$0bv32$1: bv8;

var $$node$0bv32$2: bv8;

var $$node$1bv32$1: bv8;

var $$node$1bv32$2: bv8;

var $$node$2bv32$1: bv8;

var $$node$2bv32$2: bv8;

var $$node$3bv32$1: bv8;

var $$node$3bv32$2: bv8;

var $$node$4bv32$1: bv8;

var $$node$4bv32$2: bv8;

var $$node$5bv32$1: bv8;

var $$node$5bv32$2: bv8;

var $$node$6bv32$1: bv8;

var $$node$6bv32$2: bv8;

var $$node$7bv32$1: bv8;

var $$node$7bv32$2: bv8;

var $$node$8bv32$1: bv8;

var $$node$8bv32$2: bv8;

var $$node$9bv32$1: bv8;

var $$node$9bv32$2: bv8;

var $$node$10bv32$1: bv8;

var $$node$10bv32$2: bv8;

var $$node$11bv32$1: bv8;

var $$node$11bv32$2: bv8;

var $$node$12bv32$1: bv8;

var $$node$12bv32$2: bv8;

var $$node$13bv32$1: bv8;

var $$node$13bv32$2: bv8;

var $$node$14bv32$1: bv8;

var $$node$14bv32$2: bv8;

var $$node$15bv32$1: bv8;

var $$node$15bv32$2: bv8;

var $$prev$0bv32$1: bv8;

var $$prev$0bv32$2: bv8;

var $$prev$1bv32$1: bv8;

var $$prev$1bv32$2: bv8;

var $$prev$2bv32$1: bv8;

var $$prev$2bv32$2: bv8;

var $$prev$3bv32$1: bv8;

var $$prev$3bv32$2: bv8;

var $$children$0bv32$1: bv8;

var $$children$0bv32$2: bv8;

var $$children$1bv32$1: bv8;

var $$children$1bv32$2: bv8;

var $$children$2bv32$1: bv8;

var $$children$2bv32$2: bv8;

var $$children$3bv32$1: bv8;

var $$children$3bv32$2: bv8;

var $$children$4bv32$1: bv8;

var $$children$4bv32$2: bv8;

var $$children$5bv32$1: bv8;

var $$children$5bv32$2: bv8;

var $$children$6bv32$1: bv8;

var $$children$6bv32$2: bv8;

var $$children$7bv32$1: bv8;

var $$children$7bv32$2: bv8;

var $$children$8bv32$1: bv8;

var $$children$8bv32$2: bv8;

var $$children$9bv32$1: bv8;

var $$children$9bv32$2: bv8;

var $$children$10bv32$1: bv8;

var $$children$10bv32$2: bv8;

var $$children$11bv32$1: bv8;

var $$children$11bv32$2: bv8;

var $$children$12bv32$1: bv8;

var $$children$12bv32$2: bv8;

var $$children$13bv32$1: bv8;

var $$children$13bv32$2: bv8;

var $$children$14bv32$1: bv8;

var $$children$14bv32$2: bv8;

var $$children$15bv32$1: bv8;

var $$children$15bv32$2: bv8;

var $$1$0bv32$1: bv8;

var $$1$0bv32$2: bv8;

var $$1$1bv32$1: bv8;

var $$1$1bv32$2: bv8;

var $$1$2bv32$1: bv8;

var $$1$2bv32$2: bv8;

var $$1$3bv32$1: bv8;

var $$1$3bv32$2: bv8;

var $$1$4bv32$1: bv8;

var $$1$4bv32$2: bv8;

var $$1$5bv32$1: bv8;

var $$1$5bv32$2: bv8;

var $$1$6bv32$1: bv8;

var $$1$6bv32$2: bv8;

var $$1$7bv32$1: bv8;

var $$1$7bv32$2: bv8;

var $$1$8bv32$1: bv8;

var $$1$8bv32$2: bv8;

var $$1$9bv32$1: bv8;

var $$1$9bv32$2: bv8;

var $$1$10bv32$1: bv8;

var $$1$10bv32$2: bv8;

var $$1$11bv32$1: bv8;

var $$1$11bv32$2: bv8;

var $$1$12bv32$1: bv8;

var $$1$12bv32$2: bv8;

var $$1$13bv32$1: bv8;

var $$1$13bv32$2: bv8;

var $$1$14bv32$1: bv8;

var $$1$14bv32$2: bv8;

var $$1$15bv32$1: bv8;

var $$1$15bv32$2: bv8;

var $$2$0bv32$1: bv8;

var $$2$0bv32$2: bv8;

var $$2$1bv32$1: bv8;

var $$2$1bv32$2: bv8;

var $$2$2bv32$1: bv8;

var $$2$2bv32$2: bv8;

var $$2$3bv32$1: bv8;

var $$2$3bv32$2: bv8;

var $$2$4bv32$1: bv8;

var $$2$4bv32$2: bv8;

var $$2$5bv32$1: bv8;

var $$2$5bv32$2: bv8;

var $$2$6bv32$1: bv8;

var $$2$6bv32$2: bv8;

var $$2$7bv32$1: bv8;

var $$2$7bv32$2: bv8;

var $$2$8bv32$1: bv8;

var $$2$8bv32$2: bv8;

var $$2$9bv32$1: bv8;

var $$2$9bv32$2: bv8;

var $$2$10bv32$1: bv8;

var $$2$10bv32$2: bv8;

var $$2$11bv32$1: bv8;

var $$2$11bv32$2: bv8;

var $$2$12bv32$1: bv8;

var $$2$12bv32$2: bv8;

var $$2$13bv32$1: bv8;

var $$2$13bv32$2: bv8;

var $$2$14bv32$1: bv8;

var $$2$14bv32$2: bv8;

var $$2$15bv32$1: bv8;

var $$2$15bv32$2: bv8;

var $$2$16bv32$1: bv8;

var $$2$16bv32$2: bv8;

var $$2$17bv32$1: bv8;

var $$2$17bv32$2: bv8;

var $$2$18bv32$1: bv8;

var $$2$18bv32$2: bv8;

var $$2$19bv32$1: bv8;

var $$2$19bv32$2: bv8;

var $$2$20bv32$1: bv8;

var $$2$20bv32$2: bv8;

var $$2$21bv32$1: bv8;

var $$2$21bv32$2: bv8;

var $$2$22bv32$1: bv8;

var $$2$22bv32$2: bv8;

var $$2$23bv32$1: bv8;

var $$2$23bv32$2: bv8;

var $$3$0bv32$1: bv8;

var $$3$0bv32$2: bv8;

var $$3$1bv32$1: bv8;

var $$3$1bv32$2: bv8;

var $$3$2bv32$1: bv8;

var $$3$2bv32$2: bv8;

var $$3$3bv32$1: bv8;

var $$3$3bv32$2: bv8;

var $$3$4bv32$1: bv8;

var $$3$4bv32$2: bv8;

var $$3$5bv32$1: bv8;

var $$3$5bv32$2: bv8;

var $$3$6bv32$1: bv8;

var $$3$6bv32$2: bv8;

var $$3$7bv32$1: bv8;

var $$3$7bv32$2: bv8;

var $$3$8bv32$1: bv8;

var $$3$8bv32$2: bv8;

var $$3$9bv32$1: bv8;

var $$3$9bv32$2: bv8;

var $$3$10bv32$1: bv8;

var $$3$10bv32$2: bv8;

var $$3$11bv32$1: bv8;

var $$3$11bv32$2: bv8;

var $$3$12bv32$1: bv8;

var $$3$12bv32$2: bv8;

var $$3$13bv32$1: bv8;

var $$3$13bv32$2: bv8;

var $$3$14bv32$1: bv8;

var $$3$14bv32$2: bv8;

var $$3$15bv32$1: bv8;

var $$3$15bv32$2: bv8;

var $$4$0bv32$1: bv8;

var $$4$0bv32$2: bv8;

var $$4$1bv32$1: bv8;

var $$4$1bv32$2: bv8;

var $$4$2bv32$1: bv8;

var $$4$2bv32$2: bv8;

var $$4$3bv32$1: bv8;

var $$4$3bv32$2: bv8;

var $$4$4bv32$1: bv8;

var $$4$4bv32$2: bv8;

var $$4$5bv32$1: bv8;

var $$4$5bv32$2: bv8;

var $$4$6bv32$1: bv8;

var $$4$6bv32$2: bv8;

var $$4$7bv32$1: bv8;

var $$4$7bv32$2: bv8;

var $$4$8bv32$1: bv8;

var $$4$8bv32$2: bv8;

var $$4$9bv32$1: bv8;

var $$4$9bv32$2: bv8;

var $$4$10bv32$1: bv8;

var $$4$10bv32$2: bv8;

var $$4$11bv32$1: bv8;

var $$4$11bv32$2: bv8;

var $$4$12bv32$1: bv8;

var $$4$12bv32$2: bv8;

var $$4$13bv32$1: bv8;

var $$4$13bv32$2: bv8;

var $$4$14bv32$1: bv8;

var $$4$14bv32$2: bv8;

var $$4$15bv32$1: bv8;

var $$4$15bv32$2: bv8;

var $$4$16bv32$1: bv8;

var $$4$16bv32$2: bv8;

var $$4$17bv32$1: bv8;

var $$4$17bv32$2: bv8;

var $$4$18bv32$1: bv8;

var $$4$18bv32$2: bv8;

var $$4$19bv32$1: bv8;

var $$4$19bv32$2: bv8;

var $$4$20bv32$1: bv8;

var $$4$20bv32$2: bv8;

var $$4$21bv32$1: bv8;

var $$4$21bv32$2: bv8;

var $$4$22bv32$1: bv8;

var $$4$22bv32$2: bv8;

var $$4$23bv32$1: bv8;

var $$4$23bv32$2: bv8;

var $$5$0bv32$1: bv8;

var $$5$0bv32$2: bv8;

var $$5$1bv32$1: bv8;

var $$5$1bv32$2: bv8;

var $$5$2bv32$1: bv8;

var $$5$2bv32$2: bv8;

var $$5$3bv32$1: bv8;

var $$5$3bv32$2: bv8;

var $$5$4bv32$1: bv8;

var $$5$4bv32$2: bv8;

var $$5$5bv32$1: bv8;

var $$5$5bv32$2: bv8;

var $$5$6bv32$1: bv8;

var $$5$6bv32$2: bv8;

var $$5$7bv32$1: bv8;

var $$5$7bv32$2: bv8;

var $$5$8bv32$1: bv8;

var $$5$8bv32$2: bv8;

var $$5$9bv32$1: bv8;

var $$5$9bv32$2: bv8;

var $$5$10bv32$1: bv8;

var $$5$10bv32$2: bv8;

var $$5$11bv32$1: bv8;

var $$5$11bv32$2: bv8;

var $$5$12bv32$1: bv8;

var $$5$12bv32$2: bv8;

var $$5$13bv32$1: bv8;

var $$5$13bv32$2: bv8;

var $$5$14bv32$1: bv8;

var $$5$14bv32$2: bv8;

var $$5$15bv32$1: bv8;

var $$5$15bv32$2: bv8;

var $$6$0bv32$1: bv8;

var $$6$0bv32$2: bv8;

var $$6$1bv32$1: bv8;

var $$6$1bv32$2: bv8;

var $$6$2bv32$1: bv8;

var $$6$2bv32$2: bv8;

var $$6$3bv32$1: bv8;

var $$6$3bv32$2: bv8;

var $$6$4bv32$1: bv8;

var $$6$4bv32$2: bv8;

var $$6$5bv32$1: bv8;

var $$6$5bv32$2: bv8;

var $$6$6bv32$1: bv8;

var $$6$6bv32$2: bv8;

var $$6$7bv32$1: bv8;

var $$6$7bv32$2: bv8;

var $$6$8bv32$1: bv8;

var $$6$8bv32$2: bv8;

var $$6$9bv32$1: bv8;

var $$6$9bv32$2: bv8;

var $$6$10bv32$1: bv8;

var $$6$10bv32$2: bv8;

var $$6$11bv32$1: bv8;

var $$6$11bv32$2: bv8;

var $$6$12bv32$1: bv8;

var $$6$12bv32$2: bv8;

var $$6$13bv32$1: bv8;

var $$6$13bv32$2: bv8;

var $$6$14bv32$1: bv8;

var $$6$14bv32$2: bv8;

var $$6$15bv32$1: bv8;

var $$6$15bv32$2: bv8;

var $$6$16bv32$1: bv8;

var $$6$16bv32$2: bv8;

var $$6$17bv32$1: bv8;

var $$6$17bv32$2: bv8;

var $$6$18bv32$1: bv8;

var $$6$18bv32$2: bv8;

var $$6$19bv32$1: bv8;

var $$6$19bv32$2: bv8;

var $$6$20bv32$1: bv8;

var $$6$20bv32$2: bv8;

var $$6$21bv32$1: bv8;

var $$6$21bv32$2: bv8;

var $$6$22bv32$1: bv8;

var $$6$22bv32$2: bv8;

var $$6$23bv32$1: bv8;

var $$6$23bv32$2: bv8;









function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;



function {:bvbuiltin "bvsle"} BV8_SLE(bv8, bv8) : bool;



function {:bvbuiltin "bvsge"} BV8_SGE(bv8, bv8) : bool;



function {:bvbuiltin "bvule"} BV8_ULE(bv8, bv8) : bool;



function {:bvbuiltin "bvuge"} BV8_UGE(bv8, bv8) : bool;









































const _WATCHED_VALUE_$$match_coords: bv8;

procedure {:inline 1} _LOG_READ_$$match_coords(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$match_coords;



implementation {:inline 1} _LOG_READ_$$match_coords(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then true else _READ_HAS_OCCURRED_$$match_coords);
    return;
}



procedure _CHECK_READ_$$match_coords(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$match_coords);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$match_coords: bool;

procedure {:inline 1} _LOG_WRITE_$$match_coords(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$match_coords, _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:inline 1} _LOG_WRITE_$$match_coords(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then true else _WRITE_HAS_OCCURRED_$$match_coords);
    _WRITE_READ_BENIGN_FLAG_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$match_coords);
    return;
}



procedure _CHECK_WRITE_$$match_coords(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords != _value);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$match_coords != _value);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$match_coords(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$match_coords;



implementation {:inline 1} _LOG_ATOMIC_$$match_coords(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$match_coords := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$match_coords);
    return;
}



procedure _CHECK_ATOMIC_$$match_coords(_P: bool, _offset: bv32);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);
  requires {:source_name "match_coords"} {:array "$$match_coords"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$match_coords;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$match_coords(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$match_coords := (if _P && _WRITE_HAS_OCCURRED_$$match_coords && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$match_coords);
    return;
}



const _WATCHED_VALUE_$$queries: bv8;

procedure {:inline 1} _LOG_READ_$$queries(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$queries;



implementation {:inline 1} _LOG_READ_$$queries(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then true else _READ_HAS_OCCURRED_$$queries);
    return;
}



procedure _CHECK_READ_$$queries(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queries);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queries: bool;

procedure {:inline 1} _LOG_WRITE_$$queries(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$queries, _WRITE_READ_BENIGN_FLAG_$$queries;



implementation {:inline 1} _LOG_WRITE_$$queries(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then true else _WRITE_HAS_OCCURRED_$$queries);
    _WRITE_READ_BENIGN_FLAG_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queries);
    return;
}



procedure _CHECK_WRITE_$$queries(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries != _value);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queries != _value);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queries(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$queries;



implementation {:inline 1} _LOG_ATOMIC_$$queries(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queries := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queries);
    return;
}



procedure _CHECK_ATOMIC_$$queries(_P: bool, _offset: bv32);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);
  requires {:source_name "queries"} {:array "$$queries"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queries(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$queries;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queries(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queries := (if _P && _WRITE_HAS_OCCURRED_$$queries && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queries);
    return;
}



const _WATCHED_VALUE_$$queryAddrs: bv32;

procedure {:inline 1} _LOG_READ_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$queryAddrs;



implementation {:inline 1} _LOG_READ_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then true else _READ_HAS_OCCURRED_$$queryAddrs);
    return;
}



procedure _CHECK_READ_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queryAddrs: bool;

procedure {:inline 1} _LOG_WRITE_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$queryAddrs, _WRITE_READ_BENIGN_FLAG_$$queryAddrs;



implementation {:inline 1} _LOG_WRITE_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then true else _WRITE_HAS_OCCURRED_$$queryAddrs);
    _WRITE_READ_BENIGN_FLAG_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
    return;
}



procedure _CHECK_WRITE_$$queryAddrs(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs != _value);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryAddrs != _value);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queryAddrs(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$queryAddrs;



implementation {:inline 1} _LOG_ATOMIC_$$queryAddrs(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queryAddrs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queryAddrs);
    return;
}



procedure _CHECK_ATOMIC_$$queryAddrs(_P: bool, _offset: bv32);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);
  requires {:source_name "queryAddrs"} {:array "$$queryAddrs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryAddrs(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$queryAddrs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryAddrs(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queryAddrs := (if _P && _WRITE_HAS_OCCURRED_$$queryAddrs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queryAddrs);
    return;
}



const _WATCHED_VALUE_$$queryLengths: bv32;

procedure {:inline 1} _LOG_READ_$$queryLengths(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$queryLengths;



implementation {:inline 1} _LOG_READ_$$queryLengths(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then true else _READ_HAS_OCCURRED_$$queryLengths);
    return;
}



procedure _CHECK_READ_$$queryLengths(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$queryLengths);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$queryLengths: bool;

procedure {:inline 1} _LOG_WRITE_$$queryLengths(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$queryLengths, _WRITE_READ_BENIGN_FLAG_$$queryLengths;



implementation {:inline 1} _LOG_WRITE_$$queryLengths(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then true else _WRITE_HAS_OCCURRED_$$queryLengths);
    _WRITE_READ_BENIGN_FLAG_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$queryLengths);
    return;
}



procedure _CHECK_WRITE_$$queryLengths(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths != _value);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$queryLengths != _value);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$queryLengths(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$queryLengths;



implementation {:inline 1} _LOG_ATOMIC_$$queryLengths(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$queryLengths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$queryLengths);
    return;
}



procedure _CHECK_ATOMIC_$$queryLengths(_P: bool, _offset: bv32);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);
  requires {:source_name "queryLengths"} {:array "$$queryLengths"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryLengths(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$queryLengths;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$queryLengths(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$queryLengths := (if _P && _WRITE_HAS_OCCURRED_$$queryLengths && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$queryLengths);
    return;
}



const _WATCHED_VALUE_$$childrentex: bv8;

procedure {:inline 1} _LOG_READ_$$childrentex(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$childrentex;



implementation {:inline 1} _LOG_READ_$$childrentex(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then true else _READ_HAS_OCCURRED_$$childrentex);
    return;
}



procedure _CHECK_READ_$$childrentex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$childrentex);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$childrentex: bool;

procedure {:inline 1} _LOG_WRITE_$$childrentex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$childrentex, _WRITE_READ_BENIGN_FLAG_$$childrentex;



implementation {:inline 1} _LOG_WRITE_$$childrentex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then true else _WRITE_HAS_OCCURRED_$$childrentex);
    _WRITE_READ_BENIGN_FLAG_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$childrentex);
    return;
}



procedure _CHECK_WRITE_$$childrentex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex != _value);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$childrentex != _value);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$childrentex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$childrentex;



implementation {:inline 1} _LOG_ATOMIC_$$childrentex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$childrentex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$childrentex);
    return;
}



procedure _CHECK_ATOMIC_$$childrentex(_P: bool, _offset: bv32);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);
  requires {:source_name "childrentex"} {:array "$$childrentex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$childrentex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$childrentex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$childrentex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$childrentex := (if _P && _WRITE_HAS_OCCURRED_$$childrentex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$childrentex);
    return;
}



const _WATCHED_VALUE_$$nodetex: bv8;

procedure {:inline 1} _LOG_READ_$$nodetex(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$nodetex;



implementation {:inline 1} _LOG_READ_$$nodetex(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then true else _READ_HAS_OCCURRED_$$nodetex);
    return;
}



procedure _CHECK_READ_$$nodetex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$nodetex);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$nodetex: bool;

procedure {:inline 1} _LOG_WRITE_$$nodetex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$nodetex, _WRITE_READ_BENIGN_FLAG_$$nodetex;



implementation {:inline 1} _LOG_WRITE_$$nodetex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then true else _WRITE_HAS_OCCURRED_$$nodetex);
    _WRITE_READ_BENIGN_FLAG_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$nodetex);
    return;
}



procedure _CHECK_WRITE_$$nodetex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex != _value);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$nodetex != _value);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$nodetex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$nodetex;



implementation {:inline 1} _LOG_ATOMIC_$$nodetex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$nodetex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$nodetex);
    return;
}



procedure _CHECK_ATOMIC_$$nodetex(_P: bool, _offset: bv32);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);
  requires {:source_name "nodetex"} {:array "$$nodetex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$nodetex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$nodetex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$nodetex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$nodetex := (if _P && _WRITE_HAS_OCCURRED_$$nodetex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$nodetex);
    return;
}



const _WATCHED_VALUE_$$reftex: bv8;

procedure {:inline 1} _LOG_READ_$$reftex(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$reftex;



implementation {:inline 1} _LOG_READ_$$reftex(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then true else _READ_HAS_OCCURRED_$$reftex);
    return;
}



procedure _CHECK_READ_$$reftex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$reftex);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$reftex: bool;

procedure {:inline 1} _LOG_WRITE_$$reftex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$reftex, _WRITE_READ_BENIGN_FLAG_$$reftex;



implementation {:inline 1} _LOG_WRITE_$$reftex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then true else _WRITE_HAS_OCCURRED_$$reftex);
    _WRITE_READ_BENIGN_FLAG_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$reftex);
    return;
}



procedure _CHECK_WRITE_$$reftex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex != _value);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$reftex != _value);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$reftex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$reftex;



implementation {:inline 1} _LOG_ATOMIC_$$reftex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$reftex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$reftex);
    return;
}



procedure _CHECK_ATOMIC_$$reftex(_P: bool, _offset: bv32);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);
  requires {:source_name "reftex"} {:array "$$reftex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$reftex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$reftex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$reftex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$reftex := (if _P && _WRITE_HAS_OCCURRED_$$reftex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$reftex);
    return;
}



var _TRACKING: bool;




