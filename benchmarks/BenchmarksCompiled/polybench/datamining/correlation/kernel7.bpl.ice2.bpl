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
 b0030: bool,
 b0031: bool,
 b0032: bool,
 b0033: bool,
 b0034: bool,
 b0035: bool,
 b0036: bool,
 b0037: bool,
 b0038: bool,
 b0039: bool,
 b0040: bool,
 b0041: bool,
 b0042: bool,
 b0043: bool,
 b0044: bool,
 b0045: bool,
 b0046: bool,
 b0047: bool,
 b0048: bool,
 b0049: bool,
 b0050: bool,
 b0051: bool,
 b0052: bool,
 b0053: bool,
 b0054: bool,
 b0055: bool,
 b0056: bool,
 b0057: bool,
 b0058: bool,
 b0059: bool,
 b0060: bool,
 b0061: bool,
 b0062: bool,
 b0063: bool,
 b0064: bool,
 b0065: bool,
 b0066: bool,
 b0067: bool,
 b0068: bool,
 b0069: bool,
 b0070: bool,
 b0071: bool,
 b0072: bool,
 b0073: bool,
 b0074: bool,
 b0075: bool,
 b0076: bool,
 b0077: bool,
 b0078: bool,
 b0079: bool,
 b0080: bool,
 b0081: bool,
 b0082: bool,
 b0083: bool,
 b0084: bool,
 b0085: bool,
 b0086: bool,
 b0087: bool,
 b0088: bool,
 b0089: bool,
 b0090: bool,
 b0091: bool,
 b0092: bool,
 b0093: bool,
 b0094: bool,
 b0095: bool,
 b0096: bool,
 b0097: bool,
 b0098: bool,
 b0099: bool,
 b0100: bool,
 b0101: bool,
 b0102: bool,
 b0103: bool,
 b0104: bool,
 b0105: bool,
 b0106: bool,
 b0107: bool,
 b0108: bool,
 b0109: bool,
 b0110: bool,
 b0111: bool,
 b0112: bool,
 b0113: bool,
 b0114: bool,
 b0115: bool,
 b0116: bool,
 b0117: bool,
 b0118: bool,
 b0119: bool,
 b0120: bool,
 b0121: bool,
 b0122: bool,
 b0123: bool,
 b0124: bool,
 b0125: bool,
 b0126: bool,
 b0127: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "corr"} {:global} $$corr: [bv32]bv64;

axiom {:array_info "$$corr"} {:global} {:elem_width 64} {:source_name "corr"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$corr: bool;

var {:source_name "shared_corr_0"} {:group_shared} $$kernel7.shared_corr_0: [bv1][bv32]bv64;

axiom {:array_info "$$kernel7.shared_corr_0"} {:group_shared} {:elem_width 64} {:source_name "shared_corr_0"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel7"} {:kernel} $kernel7($m: bv32, $n: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 2bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), 18446744071562067968bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$corr && !_WRITE_HAS_OCCURRED_$$corr && !_ATOMIC_HAS_OCCURRED_$$corr;
  requires !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
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
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING, _READ_HAS_OCCURRED_$$corr, _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0, _TRACKING, _READ_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:source_name "kernel7"} {:kernel} $kernel7($m: bv32, $n: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var $4$1: bv32;
  var $4$2: bv32;
  var $c31.0$1: bv64;
  var $c31.0$2: bv64;
  var $5$1: bv64;
  var $5$2: bv64;
  var $6$1: bv32;
  var $6$2: bv32;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bv64;
  var v13$2: bv64;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bv64;
  var v17$2: bv64;
  var v18$1: bool;
  var v18$2: bool;
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
  var _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0: bool;
  var _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0: bool;
  var _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0: bool;
  var _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0: bool;
  var _READ_HAS_OCCURRED_$$corr$ghost$$14: bool;
  var _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$14: bool;
  var _WRITE_HAS_OCCURRED_$$corr$ghost$$25: bool;
  var _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$25: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := local_id_x$1;
    v2$2 := local_id_x$2;
    v3$1 := BV32_ZEXT64(v2$1);
    v3$2 := BV32_ZEXT64(v2$2);
    v4$1 := BV32_ZEXT64(local_id_y$1);
    v4$2 := BV32_ZEXT64(local_id_y$2);
    $c0.0$1 := BV64_MUL(32bv64, v0$1);
    $c0.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SLE(0bv64, $c0.0$1) )  && ( p0$2 ==> BV64_SLE(0bv64, $c0.0$2) ) ,  ( p0$1 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p0$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p0$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p0$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p0$1 ==> BV64_SLE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SLE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SGE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SGE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_ULE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_ULE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_UGE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_UGE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ==> p0$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2 ) ,  (  p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p0$1 && p0$2 ==> $0$1 == $0$2 ) ,  (  p0$1 && p0$2 ==> $1$1 == $1$2 ) ,  (  p0$1 && p0$2 ==> $2$1 == $2$2 ) ,  (  p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p0$1 && p0$2 ==> $3$1 == $3$2 ) ,  (  p0$1 && p0$2 ==> $4$1 == $4$2 ) ,  (  p0$1 && p0$2 ==> $c31.0$1 == $c31.0$2 ) ,  (  p0$1 && p0$2 ==> $5$1 == $5$2 ) ,  (  p0$1 && p0$2 ==> $6$1 == $6$2 ) ,  (  p0$1 && p0$2 ==> v5$1 == v5$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  p0$1 && p0$2 ==> v12$1 == v12$2 ) ,  (  p0$1 && p0$2 ==> v13$1 == v13$2 ) ,  (  p0$1 && p0$2 ==> v14$1 == v14$2 ) ,  (  p0$1 && p0$2 ==> v15$1 == v15$2 ) ,  (  p0$1 && p0$2 ==> v16$1 == v16$2 ) ,  (  p0$1 && p0$2 ==> v17$1 == v17$2 ) ,  (  p0$1 && p0$2 ==> v18$1 == v18$2 ) ,  (  !_READ_HAS_OCCURRED_$$corr ) ,  (  !_WRITE_HAS_OCCURRED_$$corr ) ,  (  !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($1$1[32:0], 32bv32), local_id_x$1)) ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 6} p0$1 ==> true;
    v5$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) else v5$1);
    v5$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p24$1 := false;
    p24$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    $c1.0$1 := (if p1$1 then BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))) else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0 := _READ_HAS_OCCURRED_$$corr;
    _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0 := _WRITE_HAS_OCCURRED_$$corr;
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0 := _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0 := _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$3_0;

  __partitioned_block_$3_0:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p2$1 && p2$2 ==> $0$1 == $0$2 ) ,  (  p2$1 && p2$2 ==> $1$1 == $1$2 ) ,  (  p2$1 && p2$2 ==> $2$1 == $2$2 ) ,  (  p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p2$1 && p2$2 ==> $3$1 == $3$2 ) ,  (  p2$1 && p2$2 ==> $4$1 == $4$2 ) ,  (  p2$1 && p2$2 ==> $c31.0$1 == $c31.0$2 ) ,  (  p2$1 && p2$2 ==> $5$1 == $5$2 ) ,  (  p2$1 && p2$2 ==> $6$1 == $6$2 ) ,  (  p2$1 && p2$2 ==> v6$1 == v6$2 ) ,  (  p2$1 && p2$2 ==> v7$1 == v7$2 ) ,  (  p2$1 && p2$2 ==> v8$1 == v8$2 ) ,  (  p2$1 && p2$2 ==> v9$1 == v9$2 ) ,  (  p2$1 && p2$2 ==> v10$1 == v10$2 ) ,  (  p2$1 && p2$2 ==> v11$1 == v11$2 ) ,  (  p2$1 && p2$2 ==> v12$1 == v12$2 ) ,  (  p2$1 && p2$2 ==> v13$1 == v13$2 ) ,  (  p2$1 && p2$2 ==> v14$1 == v14$2 ) ,  (  p2$1 && p2$2 ==> v15$1 == v15$2 ) ,  (  p2$1 && p2$2 ==> v16$1 == v16$2 ) ,  (  p2$1 && p2$2 ==> v17$1 == v17$2 ) ,  (  p2$1 && p2$2 ==> v18$1 == v18$2 ) ,  (  !_READ_HAS_OCCURRED_$$corr ) ,  (  !_WRITE_HAS_OCCURRED_$$corr ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0 == _READ_HAS_OCCURRED_$$corr ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$3_0 == _WRITE_HAS_OCCURRED_$$corr ) ,  (  !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($1$1[32:0], 32bv32), local_id_x$1)) ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0 == _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$3_0 == _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p2$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p2$1 ==> BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> BV64_SLE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_SLE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> BV64_SGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_SGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> BV64_ULE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_ULE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> BV64_UGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) )  && ( p2$2 ==> BV64_UGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) ) ,  ( p2$1 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) )  && ( p2$2 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) ==> p2$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) ==> p2$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($m)) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($m)) else v6$2);
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
    p18$1 := false;
    p18$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    goto __partitioned_block_$3_1;

  __partitioned_block_$3_1:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_0(1bv1, 1bv1, p3$1, p3$2);
    v7$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 0bv64) else v7$1);
    v7$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 0bv64) else v7$2);
    p5$1 := (if p3$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p3$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p3$1 && !v7$1 then !v7$1 else p4$1);
    p4$2 := (if p3$2 && !v7$2 then !v7$2 else p4$2);
    $0$1 := (if p4$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 16bv64) else $0$1);
    $0$2 := (if p4$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 16bv64) else $0$2);
    $0$1 := (if p5$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1)), 16bv64), 1bv64), 16bv64)) else $0$1);
    $0$2 := (if p5$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2)), 16bv64), 1bv64), 16bv64)) else $0$2);
    v8$1 := (if p3$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $0$1)), 16bv64)) else v8$1);
    v8$2 := (if p3$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $0$2)), 16bv64)) else v8$2);
    p6$1 := (if p3$1 && v8$1 then v8$1 else p6$1);
    p6$2 := (if p3$2 && v8$2 then v8$2 else p6$2);
    p7$1 := (if p3$1 && !v8$1 then !v8$1 else p7$1);
    p7$2 := (if p3$2 && !v8$2 then !v8$2 else p7$2);
    $1$1 := (if p6$1 then v4$1 else $1$1);
    $1$2 := (if p6$2 then v4$2 else $1$2);
    v9$1 := (if p7$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 0bv64) else v9$1);
    v9$2 := (if p7$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 0bv64) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    p8$1 := (if p7$1 && !v9$1 then !v9$1 else p8$1);
    p8$2 := (if p7$2 && !v9$2 then !v9$2 else p8$2);
    $2$1 := (if p8$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 16bv64) else $2$1);
    $2$2 := (if p8$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 16bv64) else $2$2);
    $2$1 := (if p9$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1)), 16bv64), 1bv64), 16bv64)) else $2$1);
    $2$2 := (if p9$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2)), 16bv64), 1bv64), 16bv64)) else $2$2);
    $1$1 := (if p7$1 then BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $2$1)), 16bv64) else $1$1);
    $1$2 := (if p7$2 then BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $2$2)), 16bv64) else $1$2);
    $c3.0$1 := (if p3$1 then $1$1 else $c3.0$1);
    $c3.0$2 := (if p3$2 then $1$2 else $c3.0$2);
    p10$1 := (if p3$1 then true else p10$1);
    p10$2 := (if p3$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$corr$ghost$$14 := _READ_HAS_OCCURRED_$$corr;
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$14 := _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $14;

  $14:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$corr$ghost$$14 == _READ_HAS_OCCURRED_$$corr ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($1$1[32:0], 32bv32), local_id_x$1)) ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$14 == _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p3"} true;
    assert p10$1 ==> p2$1;
    assert p10$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), $1$1) )  && ( p10$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), $1$2) ) ,  ( p10$1 ==> BV64_SLE(0bv64, $c3.0$1) )  && ( p10$2 ==> BV64_SLE(0bv64, $c3.0$2) ) ,  ( p10$1 ==> BV64_SLE(0bv64, $3$1) )  && ( p10$2 ==> BV64_SLE(0bv64, $3$2) ) ,  ( p10$1 ==> BV64_SLE($c3.0$1, $1$1) )  && ( p10$2 ==> BV64_SLE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV64_SGE($c3.0$1, $1$1) )  && ( p10$2 ==> BV64_SGE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV64_ULE($c3.0$1, $1$1) )  && ( p10$2 ==> BV64_ULE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV64_UGE($c3.0$1, $1$1) )  && ( p10$2 ==> BV64_UGE($c3.0$2, $1$2) ) ,  ( p10$1 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) )  && ( p10$2 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SLE($c3.0$1, $3$1) ==> p10$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SLE($c3.0$2, $3$2) ==> p10$2 ) ,  (  _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 20} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64)) else v10$2);
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
    p12$1 := (if p10$1 && v10$1 then v10$1 else p12$1);
    p12$2 := (if p10$2 && v10$2 then v10$2 else p12$2);
    p11$1 := (if p10$1 && !v10$1 then !v10$1 else p11$1);
    p11$2 := (if p10$2 && !v10$2 then !v10$2 else p11$2);
    $3$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64) else $3$1);
    $3$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64) else $3$2);
    $3$1 := (if p12$1 then 31bv64 else $3$1);
    $3$2 := (if p12$2 then 31bv64 else $3$2);
    v11$1 := (if p10$1 then BV64_SLE($c3.0$1, $3$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c3.0$2, $3$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    v12$1 := (if p13$1 then BV32_SGE($m, 2bv32) else v12$1);
    v12$2 := (if p13$2 then BV32_SGE($m, 2bv32) else v12$2);
    p15$1 := (if p13$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p13$2 && v12$2 then v12$2 else p15$2);
    p14$1 := (if p13$1 && !v12$1 then !v12$1 else p14$1);
    p14$2 := (if p13$2 && !v12$2 then !v12$2 else p14$2);
    $4$1 := (if p14$1 then 1bv32 else $4$1);
    $4$2 := (if p14$2 then 1bv32 else $4$2);
    $4$1 := (if p15$1 then $m else $4$1);
    $4$2 := (if p15$2 then $m else $4$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$corr(p13$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($4$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0], $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($4$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$corr(p13$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($4$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0], $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($4$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$corr"} true;
    v13$1 := (if p13$1 then $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($4$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]] else v13$1);
    v13$2 := (if p13$2 then $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($4$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]] else v13$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel7.shared_corr_0(p13$1, BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1), v13$1, $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(p13$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel7.shared_corr_0(p13$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel7.shared_corr_0"} true;
    $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)] := (if p13$1 then v13$1 else $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)]);
    $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2)] := (if p13$2 then v13$2 else $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2)]);
    $c3.0$1 := (if p13$1 then BV64_ADD($c3.0$1, 16bv64) else $c3.0$1);
    $c3.0$2 := (if p13$2 then BV64_ADD($c3.0$2, 16bv64) else $c3.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $14.backedge, __partitioned_block_$14.tail_0;

  __partitioned_block_$14.tail_0:
    assume !p10$1 && !p10$2;
    goto __partitioned_block_$14.tail_1;

  __partitioned_block_$14.tail_1:
    call {:sourceloc_num 32} $bugle_barrier_duplicated_1(1bv1, 1bv1, p3$1, p3$2);
    v14$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v3$1, $c1.0$1), 1bv64)) else v14$1);
    v14$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v3$2, $c1.0$2), 1bv64)) else v14$2);
    p17$1 := (if p3$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p3$2 && v14$2 then v14$2 else p17$2);
    $c31.0$1 := (if p17$1 then v4$1 else $c31.0$1);
    $c31.0$2 := (if p17$2 then v4$2 else $c31.0$2);
    p18$1 := (if p17$1 then true else p18$1);
    p18$2 := (if p17$2 then true else p18$2);
    _WRITE_HAS_OCCURRED_$$corr$ghost$$25 := _WRITE_HAS_OCCURRED_$$corr;
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$25 := _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $25;

  $25:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p17$1 ==> _WRITE_HAS_OCCURRED_$$corr$ghost$$25 == _WRITE_HAS_OCCURRED_$$corr ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p17$1 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$25 == _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p17"} true;
    assert p18$1 ==> p2$1;
    assert p18$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p18$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c31.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$1) )  && ( p18$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c31.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$2) ) ,  ( p18$1 ==> BV64_SLE(0bv64, $c31.0$1) )  && ( p18$2 ==> BV64_SLE(0bv64, $c31.0$2) ) ,  ( p18$1 ==> BV64_SLE(0bv64, $5$1) )  && ( p18$2 ==> BV64_SLE(0bv64, $5$2) ) ,  ( p18$1 ==> BV64_SLE($c31.0$1, v4$1) )  && ( p18$2 ==> BV64_SLE($c31.0$2, v4$2) ) ,  ( p18$1 ==> BV64_SGE($c31.0$1, v4$1) )  && ( p18$2 ==> BV64_SGE($c31.0$2, v4$2) ) ,  ( p18$1 ==> BV64_ULE($c31.0$1, v4$1) )  && ( p18$2 ==> BV64_ULE($c31.0$2, v4$2) ) ,  ( p18$1 ==> BV64_UGE($c31.0$1, v4$1) )  && ( p18$2 ==> BV64_UGE($c31.0$2, v4$2) ) ,  ( p18$1 ==> p18$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) )  && ( p18$2 ==> p18$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLE($c31.0$1, $5$1) ==> p18$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLE($c31.0$2, $5$2) ==> p18$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  (  _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$corr ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 34} p18$1 ==> true;
    v15$1 := (if p18$1 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, $c0.0$1), $c1.0$1), 1bv64)) else v15$1);
    v15$2 := (if p18$2 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, $c0.0$2), $c1.0$2), 1bv64)) else v15$2);
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
    p20$1 := (if p18$1 && v15$1 then v15$1 else p20$1);
    p20$2 := (if p18$2 && v15$2 then v15$2 else p20$2);
    p19$1 := (if p18$1 && !v15$1 then !v15$1 else p19$1);
    p19$2 := (if p18$2 && !v15$2 then !v15$2 else p19$2);
    $5$1 := (if p19$1 then BV64_SUB(BV64_ADD(BV64_SUB(v3$1, $c0.0$1), $c1.0$1), 1bv64) else $5$1);
    $5$2 := (if p19$2 then BV64_SUB(BV64_ADD(BV64_SUB(v3$2, $c0.0$2), $c1.0$2), 1bv64) else $5$2);
    $5$1 := (if p20$1 then 31bv64 else $5$1);
    $5$2 := (if p20$2 then 31bv64 else $5$2);
    v16$1 := (if p18$1 then BV64_SLE($c31.0$1, $5$1) else v16$1);
    v16$2 := (if p18$2 then BV64_SLE($c31.0$2, $5$2) else v16$2);
    p21$1 := (if p18$1 && v16$1 then v16$1 else p21$1);
    p21$2 := (if p18$2 && v16$2 then v16$2 else p21$2);
    p18$1 := (if p18$1 && !v16$1 then v16$1 else p18$1);
    p18$2 := (if p18$2 && !v16$2 then v16$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$kernel7.shared_corr_0(p21$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c31.0$1[32:0]), $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c31.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$kernel7.shared_corr_0(p21$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c31.0$2[32:0]), $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c31.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel7.shared_corr_0"} true;
    v17$1 := (if p21$1 then $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c31.0$1[32:0])] else v17$1);
    v17$2 := (if p21$2 then $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c31.0$2[32:0])] else v17$2);
    v18$1 := (if p21$1 then BV32_SGE($m, 2bv32) else v18$1);
    v18$2 := (if p21$2 then BV32_SGE($m, 2bv32) else v18$2);
    p23$1 := (if p21$1 && v18$1 then v18$1 else p23$1);
    p23$2 := (if p21$2 && v18$2 then v18$2 else p23$2);
    p22$1 := (if p21$1 && !v18$1 then !v18$1 else p22$1);
    p22$2 := (if p21$2 && !v18$2 then !v18$2 else p22$2);
    $6$1 := (if p22$1 then 1bv32 else $6$1);
    $6$2 := (if p22$2 then 1bv32 else $6$2);
    $6$1 := (if p23$1 then $m else $6$1);
    $6$2 := (if p23$2 then $m else $6$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$corr(p21$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($6$1)), BV64_ADD($c0.0$1, $c31.0$1))[32:0], v17$1, $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($6$1)), BV64_ADD($c0.0$1, $c31.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(p21$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($6$2)), BV64_ADD($c0.0$2, $c31.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$corr(p21$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($6$2)), BV64_ADD($c0.0$2, $c31.0$2))[32:0], v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$corr"} true;
    $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($6$1)), BV64_ADD($c0.0$1, $c31.0$1))[32:0]] := (if p21$1 then v17$1 else $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($6$1)), BV64_ADD($c0.0$1, $c31.0$1))[32:0]]);
    $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($6$2)), BV64_ADD($c0.0$2, $c31.0$2))[32:0]] := (if p21$2 then v17$2 else $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($6$2)), BV64_ADD($c0.0$2, $c31.0$2))[32:0]]);
    $c31.0$1 := (if p21$1 then BV64_ADD($c31.0$1, 16bv64) else $c31.0$1);
    $c31.0$2 := (if p21$2 then BV64_ADD($c31.0$2, 16bv64) else $c31.0$2);
    p18$1 := (if p21$1 then true else p18$1);
    p18$2 := (if p21$2 then true else p18$2);
    goto $25.backedge, $25.tail;

  $25.tail:
    assume !p18$1 && !p18$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192bv64) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$3_0;

  $25.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $25;

  $14.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $14;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING;



function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;













function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;



function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

























































































const _WATCHED_VALUE_$$corr: bv64;

procedure {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _READ_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_READ_$$corr(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$corr);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$corr: bool;

procedure {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _WRITE_HAS_OCCURRED_$$corr);
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$corr);
    return;
}



procedure _CHECK_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_ATOMIC_$$corr(_P: bool, _offset: bv32);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$corr);
    return;
}



const _WATCHED_VALUE_$$kernel7.shared_corr_0: bv64;

procedure {:inline 1} _LOG_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then true else _READ_HAS_OCCURRED_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then true else _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0);
    _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 := (if _P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$corr;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$corr;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel7.shared_corr_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$corr;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$corr;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel7.shared_corr_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;



































































function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;
























































































