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
 b0127: bool,
 b0128: bool,
 b0129: bool,
 b0130: bool,
 b0131: bool,
 b0132: bool,
 b0133: bool,
 b0134: bool,
 b0135: bool,
 b0136: bool,
 b0137: bool,
 b0138: bool,
 b0139: bool,
 b0140: bool,
 b0141: bool,
 b0142: bool,
 b0143: bool,
 b0144: bool,
 b0145: bool,
 b0146: bool,
 b0147: bool,
 b0148: bool,
 b0149: bool,
 b0150: bool,
 b0151: bool,
 b0152: bool,
 b0153: bool,
 b0154: bool,
 b0155: bool,
 b0156: bool,
 b0157: bool,
 b0158: bool,
 b0159: bool,
 b0160: bool,
 b0161: bool,
 b0162: bool,
 b0163: bool,
 b0164: bool,
 b0165: bool,
 b0166: bool,
 b0167: bool,
 b0168: bool,
 b0169: bool,
 b0170: bool,
 b0171: bool,
 b0172: bool,
 b0173: bool,
 b0174: bool,
 b0175: bool,
 b0176: bool,
 b0177: bool,
 b0178: bool,
 b0179: bool,
 b0180: bool,
 b0181: bool,
 b0182: bool,
 b0183: bool,
 b0184: bool,
 b0185: bool,
 b0186: bool,
 b0187: bool,
 b0188: bool,
 b0189: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$B"} {:global} {:elem_width 64} {:source_name "B"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$B: bool;

var {:source_name "tmp"} {:global} $$tmp: [bv32]bv64;

axiom {:array_info "$$tmp"} {:global} {:elem_width 64} {:source_name "tmp"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tmp: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tmp: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tmp: bool;

axiom {:array_info "$$private_tmp"} {:elem_width 64} {:source_name "private_tmp"} {:source_elem_width 64} {:source_dimensions "1,2"} true;

var {:source_name "shared_A"} {:group_shared} $$kernel0.shared_A: [bv1][bv32]bv64;

axiom {:array_info "$$kernel0.shared_A"} {:group_shared} {:elem_width 64} {:source_name "shared_A"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel0.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A: bool;

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

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel0"} {:kernel} $kernel0($alpha: bv64, $nj: bv32, $nl: bv32, $nk: bv32, $ni: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $nj == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $nl == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $nk == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $ni == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 4} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nj, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($nj, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nl, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nl, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nk, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nk, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($ni, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($ni, 2147483647bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$B && !_WRITE_HAS_OCCURRED_$$B && !_ATOMIC_HAS_OCCURRED_$$B;
  requires !_READ_HAS_OCCURRED_$$tmp && !_WRITE_HAS_OCCURRED_$$tmp && !_ATOMIC_HAS_OCCURRED_$$tmp;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_A && !_WRITE_HAS_OCCURRED_$$kernel0.shared_A && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
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
  modifies $$kernel0.shared_A, _WRITE_HAS_OCCURRED_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A, $$tmp, _TRACKING, _READ_HAS_OCCURRED_$$kernel0.shared_A, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$tmp, _WRITE_READ_BENIGN_FLAG_$$tmp, _WRITE_READ_BENIGN_FLAG_$$tmp, _TRACKING;



implementation {:source_name "kernel0"} {:kernel} $kernel0($alpha: bv64, $nj: bv32, $nl: bv32, $nk: bv32, $ni: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var v25$1: bool;
  var v25$2: bool;
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
  var v11$1: bv64;
  var v11$2: bv64;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bv64;
  var v18$2: bv64;
  var v19$1: bv64;
  var v19$2: bv64;
  var v20$1: bv64;
  var v20$2: bv64;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: bv64;
  var v22$2: bv64;
  var v23$1: bv64;
  var v23$2: bv64;
  var v24$1: bv64;
  var v24$2: bv64;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bv64;
  var v31$2: bv64;
  var v32$1: bool;
  var v32$2: bool;
  var v33$1: bv64;
  var v33$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _WRITE_HAS_OCCURRED_$$tmp$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$8: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$22: bool;


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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SLE(0bv64, $c0.0$1) )  && ( p0$2 ==> BV64_SLE(0bv64, $c0.0$2) ) ,  ( p0$1 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p0$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p0$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p0$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p0$1 ==> BV64_SLE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SLE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SGE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SGE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_ULE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_ULE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_UGE($c0.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_UGE($c0.0$2, BV64_MUL(32bv64, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ==> p0$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($ni)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2 ) ,  (  p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p0$1 && p0$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p0$1 && p0$2 ==> $0$1 == $0$2 ) ,  (  p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p0$1 && p0$2 ==> $1$1 == $1$2 ) ,  (  p0$1 && p0$2 ==> v25$1 == v25$2 ) ,  (  p0$1 && p0$2 ==> v5$1 == v5$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  p0$1 && p0$2 ==> v12$1 == v12$2 ) ,  (  p0$1 && p0$2 ==> v13$1 == v13$2 ) ,  (  p0$1 && p0$2 ==> v14$1 == v14$2 ) ,  (  p0$1 && p0$2 ==> v15$1 == v15$2 ) ,  (  p0$1 && p0$2 ==> v16$1 == v16$2 ) ,  (  p0$1 && p0$2 ==> v17$1 == v17$2 ) ,  (  p0$1 && p0$2 ==> v18$1 == v18$2 ) ,  (  p0$1 && p0$2 ==> v19$1 == v19$2 ) ,  (  p0$1 && p0$2 ==> v20$1 == v20$2 ) ,  (  p0$1 && p0$2 ==> v21$1 == v21$2 ) ,  (  p0$1 && p0$2 ==> v22$1 == v22$2 ) ,  (  p0$1 && p0$2 ==> v23$1 == v23$2 ) ,  (  p0$1 && p0$2 ==> v24$1 == v24$2 ) ,  (  p0$1 && p0$2 ==> v26$1 == v26$2 ) ,  (  p0$1 && p0$2 ==> v27$1 == v27$2 ) ,  (  p0$1 && p0$2 ==> v28$1 == v28$2 ) ,  (  p0$1 && p0$2 ==> v29$1 == v29$2 ) ,  (  p0$1 && p0$2 ==> v30$1 == v30$2 ) ,  (  p0$1 && p0$2 ==> v31$1 == v31$2 ) ,  (  p0$1 && p0$2 ==> v32$1 == v32$2 ) ,  (  p0$1 && p0$2 ==> v33$1 == v33$2 ) ,  (  !_WRITE_HAS_OCCURRED_$$tmp ) ,  (  _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !_READ_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 10} p0$1 ==> true;
    v5$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($ni)) else v5$1);
    v5$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($ni)) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p40$1 := false;
    p40$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    $c1.0$1 := (if p1$1 then BV64_MUL(32bv64, v1$1) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_MUL(32bv64, v1$2) else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$tmp$ghost$$3 := _WRITE_HAS_OCCURRED_$$tmp;
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p2$1 && p2$2 ==> $0$1 == $0$2 ) ,  (  p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p2$1 && p2$2 ==> $1$1 == $1$2 ) ,  (  p2$1 && p2$2 ==> v25$1 == v25$2 ) ,  (  p2$1 && p2$2 ==> v6$1 == v6$2 ) ,  (  p2$1 && p2$2 ==> v7$1 == v7$2 ) ,  (  p2$1 && p2$2 ==> v8$1 == v8$2 ) ,  (  p2$1 && p2$2 ==> v9$1 == v9$2 ) ,  (  p2$1 && p2$2 ==> v10$1 == v10$2 ) ,  (  p2$1 && p2$2 ==> v11$1 == v11$2 ) ,  (  p2$1 && p2$2 ==> v12$1 == v12$2 ) ,  (  p2$1 && p2$2 ==> v13$1 == v13$2 ) ,  (  p2$1 && p2$2 ==> v14$1 == v14$2 ) ,  (  p2$1 && p2$2 ==> v15$1 == v15$2 ) ,  (  p2$1 && p2$2 ==> v16$1 == v16$2 ) ,  (  p2$1 && p2$2 ==> v17$1 == v17$2 ) ,  (  p2$1 && p2$2 ==> v18$1 == v18$2 ) ,  (  p2$1 && p2$2 ==> v19$1 == v19$2 ) ,  (  p2$1 && p2$2 ==> v20$1 == v20$2 ) ,  (  p2$1 && p2$2 ==> v21$1 == v21$2 ) ,  (  p2$1 && p2$2 ==> v22$1 == v22$2 ) ,  (  p2$1 && p2$2 ==> v23$1 == v23$2 ) ,  (  p2$1 && p2$2 ==> v24$1 == v24$2 ) ,  (  p2$1 && p2$2 ==> v26$1 == v26$2 ) ,  (  p2$1 && p2$2 ==> v27$1 == v27$2 ) ,  (  p2$1 && p2$2 ==> v28$1 == v28$2 ) ,  (  p2$1 && p2$2 ==> v29$1 == v29$2 ) ,  (  p2$1 && p2$2 ==> v30$1 == v30$2 ) ,  (  p2$1 && p2$2 ==> v31$1 == v31$2 ) ,  (  p2$1 && p2$2 ==> v32$1 == v32$2 ) ,  (  p2$1 && p2$2 ==> v33$1 == v33$2 ) ,  (  !_WRITE_HAS_OCCURRED_$$tmp ) ,  (  _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$tmp$ghost$$3 == _WRITE_HAS_OCCURRED_$$tmp ) ,  (  !_READ_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 == _READ_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$1)) )  && ( p2$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$2)) ) ,  ( p2$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p2$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p2$1 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) )  && ( p2$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) ) ,  ( p2$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) )  && ( p2$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) ) ,  ( p2$1 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p2$2 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p2$1 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p2$2 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p2$1 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p2$2 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p2$1 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p2$2 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p2$1 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) )  && ( p2$2 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ==> p2$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) ==> p2$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _WRITE_HAS_OCCURRED_$$tmp ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nj)) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nj)) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    $c2.0$1 := (if p3$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0bv64 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p4$1 && p4$2 ==> $0$1 == $0$2 ) ,  (  p4$1 && p4$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p4$1 && p4$2 ==> $1$1 == $1$2 ) ,  (  p4$1 && p4$2 ==> v7$1 == v7$2 ) ,  (  p4$1 && p4$2 ==> v8$1 == v8$2 ) ,  (  p4$1 && p4$2 ==> v9$1 == v9$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  p4$1 && p4$2 ==> v15$1 == v15$2 ) ,  (  p4$1 && p4$2 ==> v16$1 == v16$2 ) ,  (  p4$1 && p4$2 ==> v17$1 == v17$2 ) ,  (  p4$1 && p4$2 ==> v18$1 == v18$2 ) ,  (  p4$1 && p4$2 ==> v19$1 == v19$2 ) ,  (  p4$1 && p4$2 ==> v20$1 == v20$2 ) ,  (  p4$1 && p4$2 ==> v21$1 == v21$2 ) ,  (  p4$1 && p4$2 ==> v22$1 == v22$2 ) ,  (  p4$1 && p4$2 ==> v23$1 == v23$2 ) ,  (  p4$1 && p4$2 ==> v24$1 == v24$2 ) ,  (  !_READ_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5 == _READ_HAS_OCCURRED_$$kernel0.shared_A ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$5 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) )  && ( p4$2 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) ) ,  ( p4$1 ==> BV64_SLE(0bv64, $c2.0$1) )  && ( p4$2 ==> BV64_SLE(0bv64, $c2.0$2) ) ,  ( p4$1 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64) )  && ( p4$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64) ) ,  ( p4$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64) )  && ( p4$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64) ) ,  ( p4$1 ==> BV64_SLE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_SLE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_SGE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_SGE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_ULE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_ULE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_UGE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_UGE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) )  && ( p4$2 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) ==> p4$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) ==> p4$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 14} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64($nk)) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64($nk)) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
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
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    v8$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v8$1);
    v8$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v8$2);
    p7$1 := (if p5$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p5$2 && v8$2 then v8$2 else p7$2);
    $c4.0$1 := (if p7$1 then v4$1 else $c4.0$1);
    $c4.0$2 := (if p7$2 then v4$2 else $c4.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$8 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_4"} true;
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$8 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A ) ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p4$1;
    assert p8$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$1) )  && ( p8$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$2) ) ,  ( p8$1 ==> BV64_SLE(0bv64, $c4.0$1) )  && ( p8$2 ==> BV64_SLE(0bv64, $c4.0$2) ) ,  ( p8$1 ==> BV64_SLE(0bv64, $0$1) )  && ( p8$2 ==> BV64_SLE(0bv64, $0$2) ) ,  ( p8$1 ==> BV64_SLE($c4.0$1, v4$1) )  && ( p8$2 ==> BV64_SLE($c4.0$2, v4$2) ) ,  ( p8$1 ==> BV64_SGE($c4.0$1, v4$1) )  && ( p8$2 ==> BV64_SGE($c4.0$2, v4$2) ) ,  ( p8$1 ==> BV64_ULE($c4.0$1, v4$1) )  && ( p8$2 ==> BV64_ULE($c4.0$2, v4$2) ) ,  ( p8$1 ==> BV64_UGE($c4.0$1, v4$1) )  && ( p8$2 ==> BV64_UGE($c4.0$2, v4$2) ) ,  ( p8$1 ==> p8$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) )  && ( p8$2 ==> p8$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c4.0$1, $0$1) ==> p8$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c4.0$2, $0$2) ==> p8$2 ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c2.0$1, BV32_SEXT64($nk)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 17} p8$1 ==> true;
    v9$1 := (if p8$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64)) else v9$1);
    v9$2 := (if p8$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64)) else v9$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p10$1 := (if p8$1 && v9$1 then v9$1 else p10$1);
    p10$2 := (if p8$2 && v9$2 then v9$2 else p10$2);
    p9$1 := (if p8$1 && !v9$1 then !v9$1 else p9$1);
    p9$2 := (if p8$2 && !v9$2 then !v9$2 else p9$2);
    $0$1 := (if p9$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64) else $0$1);
    $0$2 := (if p9$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64) else $0$2);
    $0$1 := (if p10$1 then 31bv64 else $0$1);
    $0$2 := (if p10$2 then 31bv64 else $0$2);
    v10$1 := (if p8$1 then BV64_SLE($c4.0$1, $0$1) else v10$1);
    v10$2 := (if p8$2 then BV64_SLE($c4.0$2, $0$2) else v10$2);
    p11$1 := (if p8$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p8$2 && v10$2 then v10$2 else p11$2);
    p8$1 := (if p8$1 && !v10$1 then v10$1 else p8$1);
    p8$2 := (if p8$2 && !v10$2 then v10$2 else p8$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v11$1 := (if p11$1 then _HAVOC_bv64$1 else v11$1);
    v11$2 := (if p11$2 then _HAVOC_bv64$2 else v11$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$kernel0.shared_A(p11$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0]), v11$1, $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(p11$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$kernel0.shared_A(p11$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_A"} true;
    $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])] := (if p11$1 then v11$1 else $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])] := (if p11$2 then v11$2 else $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])]);
    $c4.0$1 := (if p11$1 then BV64_ADD($c4.0$1, 16bv64) else $c4.0$1);
    $c4.0$2 := (if p11$2 then BV64_ADD($c4.0$2, 16bv64) else $c4.0$2);
    p8$1 := (if p11$1 then true else p8$1);
    p8$2 := (if p11$2 then true else p8$2);
    goto $8.backedge, __partitioned_block_$8.tail_0;

  __partitioned_block_$8.tail_0:
    assume !p8$1 && !p8$2;
    goto __partitioned_block_$8.tail_1;

  __partitioned_block_$8.tail_1:
    call {:sourceloc_num 27} $bugle_barrier_duplicated_3(1bv1, 1bv1, p5$1, p5$2);
    v12$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v12$1);
    v12$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v12$2);
    p13$1 := (if p5$1 && v12$1 then v12$1 else p13$1);
    p13$2 := (if p5$2 && v12$2 then v12$2 else p13$2);
    v13$1 := (if p13$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v13$1);
    v13$2 := (if p13$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v13$2);
    p15$1 := (if p13$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p13$2 && v13$2 then v13$2 else p15$2);
    v14$1 := (if p15$1 then $c2.0$1 == 0bv64 else v14$1);
    v14$2 := (if p15$2 then $c2.0$2 == 0bv64 else v14$2);
    p17$1 := (if p15$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p15$2 && v14$2 then v14$2 else p17$2);
    $$private_tmp$0bv32$1 := (if p17$1 then 0bv64 else $$private_tmp$0bv32$1);
    $$private_tmp$0bv32$2 := (if p17$2 then 0bv64 else $$private_tmp$0bv32$2);
    v15$1 := (if p17$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v15$1);
    v15$2 := (if p17$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v15$2);
    p19$1 := (if p17$1 && v15$1 then v15$1 else p19$1);
    p19$2 := (if p17$2 && v15$2 then v15$2 else p19$2);
    $$private_tmp$1bv32$1 := (if p19$1 then 0bv64 else $$private_tmp$1bv32$1);
    $$private_tmp$1bv32$2 := (if p19$2 then 0bv64 else $$private_tmp$1bv32$2);
    $c3.0$1 := (if p15$1 then 0bv64 else $c3.0$1);
    $c3.0$2 := (if p15$2 then 0bv64 else $c3.0$2);
    p20$1 := (if p15$1 then true else p20$1);
    p20$2 := (if p15$2 then true else p20$2);
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$22 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $22;

  $22:
    assume {:captureState "loop_head_state_3"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  !p15$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$22 == _READ_HAS_OCCURRED_$$kernel0.shared_A )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p20"} {:dominator_predicate "p15"} true;
    assert p20$1 ==> p4$1;
    assert p20$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p20$1 ==> BV64_SLE(0bv64, $c3.0$1) )  && ( p20$2 ==> BV64_SLE(0bv64, $c3.0$2) ) ,  ( p20$1 ==> BV64_SLE(0bv64, $1$1) )  && ( p20$2 ==> BV64_SLE(0bv64, $1$2) ) ,  ( p20$1 ==> BV64_SLE($c3.0$1, 0bv64) )  && ( p20$2 ==> BV64_SLE($c3.0$2, 0bv64) ) ,  ( p20$1 ==> BV64_SGE($c3.0$1, 0bv64) )  && ( p20$2 ==> BV64_SGE($c3.0$2, 0bv64) ) ,  ( p20$1 ==> BV64_ULE($c3.0$1, 0bv64) )  && ( p20$2 ==> BV64_ULE($c3.0$2, 0bv64) ) ,  ( p20$1 ==> BV64_UGE($c3.0$1, 0bv64) )  && ( p20$2 ==> BV64_UGE($c3.0$2, 0bv64) ) ,  ( p20$1 ==> p20$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64)) )  && ( p20$2 ==> p20$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64)) && BV64_SLE($c3.0$1, $1$1) ==> p20$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64)) && BV64_SLE($c3.0$2, $1$2) ==> p20$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c2.0$1, BV32_SEXT64($nk)) ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) ) ,  (  _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$tmp ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 36} p20$1 ==> true;
    v16$1 := (if p20$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64)) else v16$1);
    v16$2 := (if p20$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64)) else v16$2);
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
    p22$1 := (if p20$1 && v16$1 then v16$1 else p22$1);
    p22$2 := (if p20$2 && v16$2 then v16$2 else p22$2);
    p21$1 := (if p20$1 && !v16$1 then !v16$1 else p21$1);
    p21$2 := (if p20$2 && !v16$2 then !v16$2 else p21$2);
    $1$1 := (if p21$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64) else $1$1);
    $1$2 := (if p21$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64) else $1$2);
    $1$1 := (if p22$1 then 31bv64 else $1$1);
    $1$2 := (if p22$2 then 31bv64 else $1$2);
    v17$1 := (if p20$1 then BV64_SLE($c3.0$1, $1$1) else v17$1);
    v17$2 := (if p20$2 then BV64_SLE($c3.0$2, $1$2) else v17$2);
    p23$1 := (if p20$1 && v17$1 then v17$1 else p23$1);
    p23$2 := (if p20$2 && v17$2 then v17$2 else p23$2);
    p20$1 := (if p20$1 && !v17$1 then v17$1 else p20$1);
    p20$2 := (if p20$2 && !v17$2 then v17$2 else p20$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$kernel0.shared_A(p23$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0]), $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$kernel0.shared_A(p23$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0]), $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_A"} true;
    v18$1 := (if p23$1 then $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])] else v18$1);
    v18$2 := (if p23$2 then $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])] else v18$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v19$1 := (if p23$1 then _HAVOC_bv64$1 else v19$1);
    v19$2 := (if p23$2 then _HAVOC_bv64$2 else v19$2);
    v20$1 := (if p23$1 then $$private_tmp$0bv32$1 else v20$1);
    v20$2 := (if p23$2 then $$private_tmp$0bv32$2 else v20$2);
    $$private_tmp$0bv32$1 := (if p23$1 then FADD64(v20$1, FMUL64(FMUL64($alpha, v18$1), v19$1)) else $$private_tmp$0bv32$1);
    $$private_tmp$0bv32$2 := (if p23$2 then FADD64(v20$2, FMUL64(FMUL64($alpha, v18$2), v19$2)) else $$private_tmp$0bv32$2);
    v21$1 := (if p23$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v21$1);
    v21$2 := (if p23$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v21$2);
    p25$1 := (if p23$1 && v21$1 then v21$1 else p25$1);
    p25$2 := (if p23$2 && v21$2 then v21$2 else p25$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$kernel0.shared_A(p25$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0]), $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$kernel0.shared_A(p25$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0]), $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_A"} true;
    v22$1 := (if p25$1 then $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])] else v22$1);
    v22$2 := (if p25$2 then $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])] else v22$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v23$1 := (if p25$1 then _HAVOC_bv64$1 else v23$1);
    v23$2 := (if p25$2 then _HAVOC_bv64$2 else v23$2);
    v24$1 := (if p25$1 then $$private_tmp$1bv32$1 else v24$1);
    v24$2 := (if p25$2 then $$private_tmp$1bv32$2 else v24$2);
    $$private_tmp$1bv32$1 := (if p25$1 then FADD64(v24$1, FMUL64(FMUL64($alpha, v22$1), v23$1)) else $$private_tmp$1bv32$1);
    $$private_tmp$1bv32$2 := (if p25$2 then FADD64(v24$2, FMUL64(FMUL64($alpha, v22$2), v23$2)) else $$private_tmp$1bv32$2);
    $c3.0$1 := (if p23$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $c3.0$2 := (if p23$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p20$1 := (if p23$1 then true else p20$1);
    p20$2 := (if p23$2 then true else p20$2);
    goto $22.backedge, __partitioned_block_$22.tail_0;

  __partitioned_block_$22.tail_0:
    assume !p20$1 && !p20$2;
    goto __partitioned_block_$22.tail_1;

  __partitioned_block_$22.tail_1:
    call {:sourceloc_num 54} $bugle_barrier_duplicated_4(1bv1, 1bv1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, __partitioned_block_$5.tail_0;

  __partitioned_block_$5.tail_0:
    assume !p4$1 && !p4$2;
    v25$1 := (if p3$1 then $nk == 0bv32 else v25$1);
    v25$2 := (if p3$2 then $nk == 0bv32 else v25$2);
    p27$1 := (if p3$1 && v25$1 then v25$1 else p27$1);
    p27$2 := (if p3$2 && v25$2 then v25$2 else p27$2);
    goto __partitioned_block_$5.tail_1;

  __partitioned_block_$5.tail_1:
    call {:sourceloc_num 58} $bugle_barrier_duplicated_1(1bv1, 1bv1, p27$1, p27$2);
    v26$1 := (if p27$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v26$1);
    v26$2 := (if p27$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v26$2);
    p29$1 := (if p27$1 && v26$1 then v26$1 else p29$1);
    p29$2 := (if p27$2 && v26$2 then v26$2 else p29$2);
    v27$1 := (if p29$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v27$1);
    v27$2 := (if p29$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v27$2);
    p31$1 := (if p29$1 && v27$1 then v27$1 else p31$1);
    p31$2 := (if p29$2 && v27$2 then v27$2 else p31$2);
    $$private_tmp$0bv32$1 := (if p31$1 then 0bv64 else $$private_tmp$0bv32$1);
    $$private_tmp$0bv32$2 := (if p31$2 then 0bv64 else $$private_tmp$0bv32$2);
    v28$1 := (if p31$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v28$1);
    v28$2 := (if p31$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v28$2);
    p33$1 := (if p31$1 && v28$1 then v28$1 else p33$1);
    p33$2 := (if p31$2 && v28$2 then v28$2 else p33$2);
    $$private_tmp$1bv32$1 := (if p33$1 then 0bv64 else $$private_tmp$1bv32$1);
    $$private_tmp$1bv32$2 := (if p33$2 then 0bv64 else $$private_tmp$1bv32$2);
    goto __partitioned_block_$5.tail_2;

  __partitioned_block_$5.tail_2:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_2(1bv1, 1bv1, p27$1, p27$2);
    v29$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v29$1);
    v29$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v29$2);
    p35$1 := (if p3$1 && v29$1 then v29$1 else p35$1);
    p35$2 := (if p3$2 && v29$2 then v29$2 else p35$2);
    v30$1 := (if p35$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v30$1);
    v30$2 := (if p35$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v30$2);
    p37$1 := (if p35$1 && v30$1 then v30$1 else p37$1);
    p37$2 := (if p35$2 && v30$2 then v30$2 else p37$2);
    v31$1 := (if p37$1 then $$private_tmp$0bv32$1 else v31$1);
    v31$2 := (if p37$2 then $$private_tmp$0bv32$2 else v31$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$tmp(p37$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0], v31$1, $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$tmp(p37$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$tmp(p37$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0], v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$tmp"} true;
    $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]] := (if p37$1 then v31$1 else $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]]);
    $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]] := (if p37$2 then v31$2 else $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]]);
    v32$1 := (if p37$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v32$1);
    v32$2 := (if p37$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v32$2);
    p39$1 := (if p37$1 && v32$1 then v32$1 else p39$1);
    p39$2 := (if p37$2 && v32$2 then v32$2 else p39$2);
    v33$1 := (if p39$1 then $$private_tmp$1bv32$1 else v33$1);
    v33$2 := (if p39$2 then $$private_tmp$1bv32$2 else v33$2);
    call {:sourceloc} {:sourceloc_num 74} _LOG_WRITE_$$tmp(p39$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0], v33$1, $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$tmp(p39$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 74} _CHECK_WRITE_$$tmp(p39$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0], v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$tmp"} true;
    $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]] := (if p39$1 then v33$1 else $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]]);
    $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]] := (if p39$2 then v33$2 else $$tmp[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]]);
    goto __partitioned_block_$5.tail_3;

  __partitioned_block_$5.tail_3:
    call {:sourceloc_num 77} $bugle_barrier_duplicated_0(1bv1, 1bv1, p3$1, p3$2);
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
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $5;

  $22.backedge:
    assume {:backedge} p20$1 || p20$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $22;

  $8.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $8;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 32bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$kernel0.shared_A, $$tmp, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$tmp, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$tmp, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$tmp, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$tmp, _TRACKING;



var $$private_tmp$0bv32$1: bv64;

var $$private_tmp$0bv32$2: bv64;

var $$private_tmp$1bv32$1: bv64;

var $$private_tmp$1bv32$2: bv64;

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;













function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;



function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;















































































































const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$B: bv64;

procedure {:inline 1} _LOG_READ_$$B(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_READ_$$B(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _READ_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_READ_$$B(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$B);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$B: bool;

procedure {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$B, _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _WRITE_HAS_OCCURRED_$$B);
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



procedure _CHECK_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_ATOMIC_$$B(_P: bool, _offset: bv32);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



const _WATCHED_VALUE_$$tmp: bv64;

procedure {:inline 1} _LOG_READ_$$tmp(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$tmp;



implementation {:inline 1} _LOG_READ_$$tmp(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tmp := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tmp == _value then true else _READ_HAS_OCCURRED_$$tmp);
    return;
}



procedure _CHECK_READ_$$tmp(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tmp);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tmp: bool;

procedure {:inline 1} _LOG_WRITE_$$tmp(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$tmp, _WRITE_READ_BENIGN_FLAG_$$tmp;



implementation {:inline 1} _LOG_WRITE_$$tmp(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tmp := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tmp == _value then true else _WRITE_HAS_OCCURRED_$$tmp);
    _WRITE_READ_BENIGN_FLAG_$$tmp := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tmp == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tmp);
    return;
}



procedure _CHECK_WRITE_$$tmp(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tmp != _value);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tmp != _value);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tmp(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tmp;



implementation {:inline 1} _LOG_ATOMIC_$$tmp(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tmp := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tmp);
    return;
}



procedure _CHECK_ATOMIC_$$tmp(_P: bool, _offset: bv32);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset);
  requires {:source_name "tmp"} {:array "$$tmp"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tmp(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tmp;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tmp(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tmp := (if _P && _WRITE_HAS_OCCURRED_$$tmp && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tmp);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_A: bv64;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_A;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_A);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_A);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A);
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tmp;
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
    havoc $$tmp;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tmp;
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
    havoc $$tmp;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tmp;
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
    havoc $$tmp;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tmp;
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
    havoc $$tmp;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tmp;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tmp;
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
    havoc $$tmp;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;















































































function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;











function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;








































































































































































