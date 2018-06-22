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
 b0170: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data"} {:global} $$data: [int]int;

axiom {:array_info "$$data"} {:global} {:elem_width 64} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

var {:source_name "mean"} {:global} $$mean: [int]int;

axiom {:array_info "$$mean"} {:global} {:elem_width 64} {:source_name "mean"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mean: bool;

var {:source_name "stddev"} {:global} $$stddev: [int]int;

axiom {:array_info "$$stddev"} {:global} {:elem_width 64} {:source_name "stddev"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$stddev: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$stddev: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$stddev: bool;

axiom {:array_info "$$private_mean"} {:elem_width 64} {:source_name "private_mean"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$private_stddev"} {:elem_width 64} {:source_name "private_stddev"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:source_name "shared_data"} {:group_shared} $$kernel2.shared_data: [bv1][int]int;

axiom {:array_info "$$kernel2.shared_data"} {:group_shared} {:elem_width 64} {:source_name "shared_data"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel2.shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD64(int, int) : int;

function FDIV64(int, int) : int;

function FMUL64(int, int) : int;

function FSUB64(int, int) : int;

function  BV1_ZEXT32(x: int) : int
{
  x
}

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

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
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

function  BV32_ZEXT64(x: int) : int
{
  x
}

function  BV64_ADD(x: int, y: int) : int
{
  x + y
}

function  BV64_MUL(x: int, y: int) : int
{
  x * y
}

function  BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel2"} {:kernel} $kernel2($float_n: int, $m: int, $n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$mean && !_WRITE_HAS_OCCURRED_$$mean && !_ATOMIC_HAS_OCCURRED_$$mean;
  requires !_READ_HAS_OCCURRED_$$stddev && !_WRITE_HAS_OCCURRED_$$stddev && !_ATOMIC_HAS_OCCURRED_$$stddev;
  requires !_READ_HAS_OCCURRED_$$kernel2.shared_data && !_WRITE_HAS_OCCURRED_$$kernel2.shared_data && !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
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
  modifies $$kernel2.shared_data, _READ_HAS_OCCURRED_$$mean, _READ_HAS_OCCURRED_$$stddev, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING, _READ_HAS_OCCURRED_$$kernel2.shared_data, _TRACKING, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev, _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _TRACKING;



implementation {:source_name "kernel2"} {:kernel} $kernel2($float_n: int, $m: int, $n: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $c21.0$1: int;
  var $c21.0$2: int;
  var $2$1: int;
  var $2$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
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
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: int;
  var v29$2: int;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: int;
  var v32$2: int;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: int;
  var v34$2: int;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: int;
  var v36$2: int;
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
  var _READ_HAS_OCCURRED_$$data$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$10: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$30: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
    $c0.0$1 := BV64_MUL(32, v0$1);
    $c0.0$2 := BV64_MUL(32, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $c0.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576 )  && ( p0$2 ==> $c0.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576 ) ,  ( p0$1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) ==> p0$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2 ) ,  (  p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p0$1 && p0$2 ==> $0$1 == $0$2 ) ,  (  p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p0$1 && p0$2 ==> $1$1 == $1$2 ) ,  (  p0$1 && p0$2 ==> $c21.0$1 == $c21.0$2 ) ,  (  p0$1 && p0$2 ==> $2$1 == $2$2 ) ,  (  p0$1 && p0$2 ==> v3$1 == v3$2 ) ,  (  p0$1 && p0$2 ==> v4$1 == v4$2 ) ,  (  p0$1 && p0$2 ==> v5$1 == v5$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  p0$1 && p0$2 ==> v12$1 == v12$2 ) ,  (  p0$1 && p0$2 ==> v13$1 == v13$2 ) ,  (  p0$1 && p0$2 ==> v14$1 == v14$2 ) ,  (  p0$1 && p0$2 ==> v15$1 == v15$2 ) ,  (  p0$1 && p0$2 ==> v16$1 == v16$2 ) ,  (  p0$1 && p0$2 ==> v17$1 == v17$2 ) ,  (  p0$1 && p0$2 ==> v18$1 == v18$2 ) ,  (  p0$1 && p0$2 ==> v19$1 == v19$2 ) ,  (  p0$1 && p0$2 ==> v20$1 == v20$2 ) ,  (  p0$1 && p0$2 ==> v21$1 == v21$2 ) ,  (  p0$1 && p0$2 ==> v22$1 == v22$2 ) ,  (  p0$1 && p0$2 ==> v23$1 == v23$2 ) ,  (  p0$1 && p0$2 ==> v24$1 == v24$2 ) ,  (  p0$1 && p0$2 ==> v25$1 == v25$2 ) ,  (  p0$1 && p0$2 ==> v26$1 == v26$2 ) ,  (  p0$1 && p0$2 ==> v27$1 == v27$2 ) ,  (  p0$1 && p0$2 ==> v28$1 == v28$2 ) ,  (  p0$1 && p0$2 ==> v29$1 == v29$2 ) ,  (  p0$1 && p0$2 ==> v30$1 == v30$2 ) ,  (  p0$1 && p0$2 ==> v31$1 == v31$2 ) ,  (  p0$1 && p0$2 ==> v32$1 == v32$2 ) ,  (  p0$1 && p0$2 ==> v33$1 == v33$2 ) ,  (  p0$1 && p0$2 ==> v34$1 == v34$2 ) ,  (  p0$1 && p0$2 ==> v35$1 == v35$2 ) ,  (  p0$1 && p0$2 ==> v36$1 == v36$2 ) ,  (  !_READ_HAS_OCCURRED_$$data ) ,  (  !_WRITE_HAS_OCCURRED_$$data ) ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$mean ) ,  (  !_WRITE_HAS_OCCURRED_$$mean ) ,  (  _READ_HAS_OCCURRED_$$mean ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$mean ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$stddev ) ,  (  !_WRITE_HAS_OCCURRED_$$stddev ) ,  (  _READ_HAS_OCCURRED_$$stddev ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$stddev ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 10} p0$1 ==> true;
    v3$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($m)) else v3$1);
    v3$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($m)) else v3$2);
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
    p36$1 := false;
    p36$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    v4$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v4$1);
    v4$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v4$2);
    p3$1 := (if p1$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p1$2 && v4$2 then v4$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$mean(p3$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), $$mean[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$mean(p3$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), $$mean[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$mean"} true;
    v5$1 := (if p3$1 then $$mean[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] else v5$1);
    v5$2 := (if p3$2 then $$mean[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] else v5$2);
    $$private_mean$0$1 := (if p3$1 then v5$1 else $$private_mean$0$1);
    $$private_mean$0$2 := (if p3$2 then v5$2 else $$private_mean$0$2);
    v6$1 := (if p3$1 then BV32_SGE($n, 1) else v6$1);
    v6$2 := (if p3$2 then BV32_SGE($n, 1) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$stddev(p5$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), $$stddev[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$stddev(p5$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), $$stddev[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$stddev"} true;
    v7$1 := (if p5$1 then $$stddev[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] else v7$1);
    v7$2 := (if p5$2 then $$stddev[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] else v7$2);
    $$private_stddev$0$1 := (if p5$1 then v7$1 else $$private_stddev$0$1);
    $$private_stddev$0$2 := (if p5$2 then v7$2 else $$private_stddev$0$2);
    $c1.0$1 := (if p1$1 then 0 else $c1.0$1);
    $c1.0$2 := (if p1$2 then 0 else $c1.0$2);
    p6$1 := (if p1$1 then true else p6$1);
    p6$2 := (if p1$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$data$ghost$$7 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$7 := _WRITE_HAS_OCCURRED_$$data;
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p6$1 == p6$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2 ) ,  (  p6$1 && p6$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p6$1 && p6$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p6$1 && p6$2 ==> $0$1 == $0$2 ) ,  (  p6$1 && p6$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p6$1 && p6$2 ==> $1$1 == $1$2 ) ,  (  p6$1 && p6$2 ==> $c21.0$1 == $c21.0$2 ) ,  (  p6$1 && p6$2 ==> $2$1 == $2$2 ) ,  (  p6$1 && p6$2 ==> v8$1 == v8$2 ) ,  (  p6$1 && p6$2 ==> v9$1 == v9$2 ) ,  (  p6$1 && p6$2 ==> v10$1 == v10$2 ) ,  (  p6$1 && p6$2 ==> v11$1 == v11$2 ) ,  (  p6$1 && p6$2 ==> v12$1 == v12$2 ) ,  (  p6$1 && p6$2 ==> v13$1 == v13$2 ) ,  (  p6$1 && p6$2 ==> v14$1 == v14$2 ) ,  (  p6$1 && p6$2 ==> v15$1 == v15$2 ) ,  (  p6$1 && p6$2 ==> v16$1 == v16$2 ) ,  (  p6$1 && p6$2 ==> v17$1 == v17$2 ) ,  (  p6$1 && p6$2 ==> v18$1 == v18$2 ) ,  (  p6$1 && p6$2 ==> v19$1 == v19$2 ) ,  (  p6$1 && p6$2 ==> v20$1 == v20$2 ) ,  (  p6$1 && p6$2 ==> v21$1 == v21$2 ) ,  (  p6$1 && p6$2 ==> v22$1 == v22$2 ) ,  (  p6$1 && p6$2 ==> v23$1 == v23$2 ) ,  (  p6$1 && p6$2 ==> v24$1 == v24$2 ) ,  (  p6$1 && p6$2 ==> v25$1 == v25$2 ) ,  (  p6$1 && p6$2 ==> v26$1 == v26$2 ) ,  (  p6$1 && p6$2 ==> v27$1 == v27$2 ) ,  (  p6$1 && p6$2 ==> v28$1 == v28$2 ) ,  (  p6$1 && p6$2 ==> v29$1 == v29$2 ) ,  (  !_READ_HAS_OCCURRED_$$data ) ,  (  !_WRITE_HAS_OCCURRED_$$data ) ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$7 == _READ_HAS_OCCURRED_$$data ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$7 == _WRITE_HAS_OCCURRED_$$data ) ,  (  !_READ_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 == _READ_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p1"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p6$1 ==> $c1.0$1 mod 32 == 0 mod 32 )  && ( p6$2 ==> $c1.0$2 mod 32 == 0 mod 32 ) ,  ( p6$1 ==> BV32_SLE($c1.0$1, 0) )  && ( p6$2 ==> BV32_SLE($c1.0$2, 0) ) ,  ( p6$1 ==> BV32_SGE($c1.0$1, 0) )  && ( p6$2 ==> BV32_SGE($c1.0$2, 0) ) ,  ( p6$1 ==> BV32_ULE($c1.0$1, 0) )  && ( p6$2 ==> BV32_ULE($c1.0$2, 0) ) ,  ( p6$1 ==> BV32_UGE($c1.0$1, 0) )  && ( p6$2 ==> BV32_UGE($c1.0$2, 0) ) ,  ( p6$1 ==> p6$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) )  && ( p6$2 ==> p6$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p6$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p6$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 20} p6$1 ==> true;
    v8$1 := (if p6$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v8$1);
    v8$2 := (if p6$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
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
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
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
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    v9$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    $c2.0$1 := (if p9$1 then 0 else $c2.0$1);
    $c2.0$2 := (if p9$2 then 0 else $c2.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$data$ghost$$10 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_4"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$10 == _READ_HAS_OCCURRED_$$data ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p6$1;
    assert p10$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> $c2.0$1 mod 1 == 0 mod 1 )  && ( p10$2 ==> $c2.0$2 mod 1 == 0 mod 1 ) ,  ( p10$1 ==> BV32_SLE($c2.0$1, 0) )  && ( p10$2 ==> BV32_SLE($c2.0$2, 0) ) ,  ( p10$1 ==> BV32_SGE($c2.0$1, 0) )  && ( p10$2 ==> BV32_SGE($c2.0$2, 0) ) ,  ( p10$1 ==> BV32_ULE($c2.0$1, 0) )  && ( p10$2 ==> BV32_ULE($c2.0$2, 0) ) ,  ( p10$1 ==> BV32_UGE($c2.0$1, 0) )  && ( p10$2 ==> BV32_UGE($c2.0$2, 0) ) ,  ( p10$1 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) )  && ( p10$2 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c2.0$1, $0$1) ==> p10$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c2.0$2, $0$2) ==> p10$2 ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 23} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1)) else v10$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p12$1 := (if p10$1 && v10$1 then v10$1 else p12$1);
    p12$2 := (if p10$2 && v10$2 then v10$2 else p12$2);
    p11$1 := (if p10$1 && !v10$1 then !v10$1 else p11$1);
    p11$2 := (if p10$2 && !v10$2 then !v10$2 else p11$2);
    $0$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1) else $0$1);
    $0$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1) else $0$2);
    $0$1 := (if p12$1 then 31 else $0$1);
    $0$2 := (if p12$2 then 31 else $0$2);
    v11$1 := (if p10$1 then BV64_SLE($c2.0$1, $0$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c2.0$2, $0$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$data(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0), $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$data(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0), $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v12$1 := (if p13$1 then $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)] else v12$1);
    v12$2 := (if p13$2 then $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)] else v12$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel2.shared_data(p13$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1), v12$1, $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(p13$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel2.shared_data(p13$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel2.shared_data"} true;
    $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)] := (if p13$1 then v12$1 else $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)]);
    $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2)] := (if p13$2 then v12$2 else $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2)]);
    $c2.0$1 := (if p13$1 then BV64_ADD($c2.0$1, 1) else $c2.0$1);
    $c2.0$2 := (if p13$2 then BV64_ADD($c2.0$2, 1) else $c2.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $10.backedge, __partitioned_block_$10.tail_0;

  __partitioned_block_$10.tail_0:
    assume !p10$1 && !p10$2;
    goto __partitioned_block_$10.tail_1;

  __partitioned_block_$10.tail_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_3(-1, -1, p7$1, p7$2);
    v13$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v13$1);
    v13$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v13$2);
    p15$1 := (if p7$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p7$2 && v13$2 then v13$2 else p15$2);
    v14$1 := (if p15$1 then $c1.0$1 == 0 else v14$1);
    v14$2 := (if p15$2 then $c1.0$2 == 0 else v14$2);
    p17$1 := (if p15$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p15$2 && v14$2 then v14$2 else p17$2);
    v15$1 := (if p17$1 then $$private_mean$0$1 else v15$1);
    v15$2 := (if p17$2 then $$private_mean$0$2 else v15$2);
    $$private_mean$0$1 := (if p17$1 then FDIV64(v15$1, $float_n) else $$private_mean$0$1);
    $$private_mean$0$2 := (if p17$2 then FDIV64(v15$2, $float_n) else $$private_mean$0$2);
    $c3.0$1 := (if p15$1 then 0 else $c3.0$1);
    $c3.0$2 := (if p15$2 then 0 else $c3.0$2);
    p18$1 := (if p15$1 then true else p18$1);
    p18$2 := (if p15$2 then true else p18$2);
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  !p15$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 == _READ_HAS_OCCURRED_$$kernel2.shared_data ) ,  (  !p15$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p15"} true;
    assert p18$1 ==> p6$1;
    assert p18$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p18$1 ==> $c3.0$1 mod 1 == 0 mod 1 )  && ( p18$2 ==> $c3.0$2 mod 1 == 0 mod 1 ) ,  ( p18$1 ==> BV32_SLE($c3.0$1, 0) )  && ( p18$2 ==> BV32_SLE($c3.0$2, 0) ) ,  ( p18$1 ==> BV32_SGE($c3.0$1, 0) )  && ( p18$2 ==> BV32_SGE($c3.0$2, 0) ) ,  ( p18$1 ==> BV32_ULE($c3.0$1, 0) )  && ( p18$2 ==> BV32_ULE($c3.0$2, 0) ) ,  ( p18$1 ==> BV32_UGE($c3.0$1, 0) )  && ( p18$2 ==> BV32_UGE($c3.0$2, 0) ) ,  ( p18$1 ==> p18$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) )  && ( p18$2 ==> p18$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1) ==> p18$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2) ==> p18$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 39} p18$1 ==> true;
    v16$1 := (if p18$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1)) else v16$1);
    v16$2 := (if p18$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1)) else v16$2);
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p20$1 := (if p18$1 && v16$1 then v16$1 else p20$1);
    p20$2 := (if p18$2 && v16$2 then v16$2 else p20$2);
    p19$1 := (if p18$1 && !v16$1 then !v16$1 else p19$1);
    p19$2 := (if p18$2 && !v16$2 then !v16$2 else p19$2);
    $1$1 := (if p19$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1) else $1$1);
    $1$2 := (if p19$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1) else $1$2);
    $1$1 := (if p20$1 then 31 else $1$1);
    $1$2 := (if p20$2 then 31 else $1$2);
    v17$1 := (if p18$1 then BV64_SLE($c3.0$1, $1$1) else v17$1);
    v17$2 := (if p18$2 then BV64_SLE($c3.0$2, $1$2) else v17$2);
    p21$1 := (if p18$1 && v17$1 then v17$1 else p21$1);
    p21$2 := (if p18$2 && v17$2 then v17$2 else p21$2);
    p18$1 := (if p18$1 && !v17$1 then v17$1 else p18$1);
    p18$2 := (if p18$2 && !v17$2 then v17$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v18$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)] else v18$1);
    v18$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)] else v18$2);
    v19$1 := (if p21$1 then $$private_mean$0$1 else v19$1);
    v19$2 := (if p21$2 then $$private_mean$0$2 else v19$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v20$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)] else v20$1);
    v20$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)] else v20$2);
    v21$1 := (if p21$1 then $$private_mean$0$1 else v21$1);
    v21$2 := (if p21$2 then $$private_mean$0$2 else v21$2);
    v22$1 := (if p21$1 then $$private_stddev$0$1 else v22$1);
    v22$2 := (if p21$2 then $$private_stddev$0$2 else v22$2);
    $$private_stddev$0$1 := (if p21$1 then FADD64(v22$1, FMUL64(FSUB64(v18$1, v19$1), FSUB64(v20$1, v21$1))) else $$private_stddev$0$1);
    $$private_stddev$0$2 := (if p21$2 then FADD64(v22$2, FMUL64(FSUB64(v18$2, v19$2), FSUB64(v20$2, v21$2))) else $$private_stddev$0$2);
    v23$1 := (if p21$1 then $$private_mean$0$1 else v23$1);
    v23$2 := (if p21$2 then $$private_mean$0$2 else v23$2);
    v24$1 := (if p21$1 then BV_EXTRACT($c3.0$1, 32, 0) else v24$1);
    v24$2 := (if p21$2 then BV_EXTRACT($c3.0$2, 32, 0) else v24$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(v24$1, 32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v25$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32), v1$1)] else v25$1);
    v25$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32), v1$2)] else v25$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(v24$1, 32), v1$1), FSUB64(v25$1, v23$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32), v1$2), FSUB64(v25$2, v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel2.shared_data"} true;
    $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32), v1$1)] := (if p21$1 then FSUB64(v25$1, v23$1) else $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32), v1$1)]);
    $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32), v1$2)] := (if p21$2 then FSUB64(v25$2, v23$2) else $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32), v1$2)]);
    $c3.0$1 := (if p21$1 then BV64_ADD($c3.0$1, 1) else $c3.0$1);
    $c3.0$2 := (if p21$2 then BV64_ADD($c3.0$2, 1) else $c3.0$2);
    p18$1 := (if p21$1 then true else p18$1);
    p18$2 := (if p21$2 then true else p18$2);
    goto $21.backedge, __partitioned_block_$21.tail_0;

  __partitioned_block_$21.tail_0:
    assume !p18$1 && !p18$2;
    goto __partitioned_block_$21.tail_1;

  __partitioned_block_$21.tail_1:
    call {:sourceloc_num 56} $bugle_barrier_duplicated_4(-1, -1, p7$1, p7$2);
    v26$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v26$1);
    v26$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v26$2);
    p23$1 := (if p7$1 && v26$1 then v26$1 else p23$1);
    p23$2 := (if p7$2 && v26$2 then v26$2 else p23$2);
    $c21.0$1 := (if p23$1 then 0 else $c21.0$1);
    $c21.0$2 := (if p23$2 then 0 else $c21.0$2);
    p24$1 := (if p23$1 then true else p24$1);
    p24$2 := (if p23$2 then true else p24$2);
    _WRITE_HAS_OCCURRED_$$data$ghost$$30 := _WRITE_HAS_OCCURRED_$$data;
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $30;

  $30:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p23$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$30 == _WRITE_HAS_OCCURRED_$$data ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) ) ,  (  !p23$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30 == _READ_HAS_OCCURRED_$$kernel2.shared_data )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p24"} {:dominator_predicate "p23"} true;
    assert p24$1 ==> p6$1;
    assert p24$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p24$1 ==> $c21.0$1 mod 1 == 0 mod 1 )  && ( p24$2 ==> $c21.0$2 mod 1 == 0 mod 1 ) ,  ( p24$1 ==> BV32_SLE($c21.0$1, 0) )  && ( p24$2 ==> BV32_SLE($c21.0$2, 0) ) ,  ( p24$1 ==> BV32_SGE($c21.0$1, 0) )  && ( p24$2 ==> BV32_SGE($c21.0$2, 0) ) ,  ( p24$1 ==> BV32_ULE($c21.0$1, 0) )  && ( p24$2 ==> BV32_ULE($c21.0$2, 0) ) ,  ( p24$1 ==> BV32_UGE($c21.0$1, 0) )  && ( p24$2 ==> BV32_UGE($c21.0$2, 0) ) ,  ( p24$1 ==> p24$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) )  && ( p24$2 ==> p24$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c21.0$1, $2$1) ==> p24$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c21.0$2, $2$2) ==> p24$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 58} p24$1 ==> true;
    v27$1 := (if p24$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1)) else v27$1);
    v27$2 := (if p24$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1)) else v27$2);
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p26$1 := (if p24$1 && v27$1 then v27$1 else p26$1);
    p26$2 := (if p24$2 && v27$2 then v27$2 else p26$2);
    p25$1 := (if p24$1 && !v27$1 then !v27$1 else p25$1);
    p25$2 := (if p24$2 && !v27$2 then !v27$2 else p25$2);
    $2$1 := (if p25$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1) else $2$1);
    $2$2 := (if p25$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1) else $2$2);
    $2$1 := (if p26$1 then 31 else $2$1);
    $2$2 := (if p26$2 then 31 else $2$2);
    v28$1 := (if p24$1 then BV64_SLE($c21.0$1, $2$1) else v28$1);
    v28$2 := (if p24$2 then BV64_SLE($c21.0$2, $2$2) else v28$2);
    p27$1 := (if p24$1 && v28$1 then v28$1 else p27$1);
    p27$2 := (if p24$2 && v28$2 then v28$2 else p27$2);
    p24$1 := (if p24$1 && !v28$1 then v28$1 else p24$1);
    p24$2 := (if p24$2 && !v28$2 then v28$2 else p24$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$kernel2.shared_data(p27$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$1, 32, 0), 32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$kernel2.shared_data(p27$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$2, 32, 0), 32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v29$1 := (if p27$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$1, 32, 0), 32), v1$1)] else v29$1);
    v29$2 := (if p27$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c21.0$2, 32, 0), 32), v1$2)] else v29$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$data(p27$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0), v29$1, $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(p27$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$data(p27$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0), v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)] := (if p27$1 then v29$1 else $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)] := (if p27$2 then v29$2 else $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)]);
    $c21.0$1 := (if p27$1 then BV64_ADD($c21.0$1, 1) else $c21.0$1);
    $c21.0$2 := (if p27$2 then BV64_ADD($c21.0$2, 1) else $c21.0$2);
    p24$1 := (if p27$1 then true else p24$1);
    p24$2 := (if p27$2 then true else p24$2);
    goto $30.backedge, $30.tail;

  $30.tail:
    assume !p24$1 && !p24$2;
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 32) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 32) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $7.backedge, __partitioned_block_$7.tail_0;

  __partitioned_block_$7.tail_0:
    assume !p6$1 && !p6$2;
    v30$1 := (if p1$1 then BV32_SLE($n, 0) else v30$1);
    v30$2 := (if p1$2 then BV32_SLE($n, 0) else v30$2);
    p28$1 := (if p1$1 && v30$1 then v30$1 else p28$1);
    p28$2 := (if p1$2 && v30$2 then v30$2 else p28$2);
    p31$1 := (if p1$1 && !v30$1 then !v30$1 else p31$1);
    p31$2 := (if p1$2 && !v30$2 then !v30$2 else p31$2);
    goto __partitioned_block_$7.tail_1;

  __partitioned_block_$7.tail_1:
    call {:sourceloc_num 71} $bugle_barrier_duplicated_1(-1, -1, p28$1, p28$2);
    v31$1 := (if p28$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v31$1);
    v31$2 := (if p28$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v31$2);
    p30$1 := (if p28$1 && v31$1 then v31$1 else p30$1);
    p30$2 := (if p28$2 && v31$2 then v31$2 else p30$2);
    v32$1 := (if p30$1 then $$private_mean$0$1 else v32$1);
    v32$2 := (if p30$2 then $$private_mean$0$2 else v32$2);
    $$private_mean$0$1 := (if p30$1 then FDIV64(v32$1, $float_n) else $$private_mean$0$1);
    $$private_mean$0$2 := (if p30$2 then FDIV64(v32$2, $float_n) else $$private_mean$0$2);
    goto __partitioned_block_$7.tail_2;

  __partitioned_block_$7.tail_2:
    call {:sourceloc_num 76} $bugle_barrier_duplicated_2(-1, -1, p28$1, p28$2);
    v33$1 := (if p31$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v33$1);
    v33$2 := (if p31$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v33$2);
    p33$1 := (if p31$1 && v33$1 then v33$1 else p33$1);
    p33$2 := (if p31$2 && v33$2 then v33$2 else p33$2);
    v34$1 := (if p33$1 then $$private_stddev$0$1 else v34$1);
    v34$2 := (if p33$2 then $$private_stddev$0$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_WRITE_$$stddev(p33$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), v34$1, $$stddev[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(p33$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 80} _CHECK_WRITE_$$stddev(p33$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$stddev"} true;
    $$stddev[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] := (if p33$1 then v34$1 else $$stddev[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    $$stddev[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] := (if p33$2 then v34$2 else $$stddev[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    v35$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v35$1);
    v35$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v35$2);
    p35$1 := (if p1$1 && v35$1 then v35$1 else p35$1);
    p35$2 := (if p1$2 && v35$2 then v35$2 else p35$2);
    v36$1 := (if p35$1 then $$private_mean$0$1 else v36$1);
    v36$2 := (if p35$2 then $$private_mean$0$2 else v36$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$mean(p35$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), v36$1, $$mean[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(p35$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$mean(p35$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), v36$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$mean"} true;
    $$mean[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] := (if p35$1 then v36$1 else $$mean[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    $$mean[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] := (if p35$2 then v36$2 else $$mean[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    goto __partitioned_block_$7.tail_3;

  __partitioned_block_$7.tail_3:
    call {:sourceloc_num 86} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 1048576) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 1048576) else $c0.0$2);
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

  $7.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $7;

  $30.backedge:
    assume {:backedge} p24$1 || p24$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $30;

  $21.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $21;

  $10.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $10;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



var $$private_mean$0$1: int;

var $$private_mean$0$2: int;

var $$private_stddev$0$1: int;

var $$private_stddev$0$2: int;







function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}











































































































const _WATCHED_VALUE_$$data: int;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



const _WATCHED_VALUE_$$mean: int;

procedure {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _READ_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_READ_$$mean(_P: bool, _offset: int, _value: int);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mean);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mean: bool;

procedure {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _WRITE_HAS_OCCURRED_$$mean);
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



procedure _CHECK_WRITE_$$mean(_P: bool, _offset: int, _value: int);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_ATOMIC_$$mean(_P: bool, _offset: int);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



const _WATCHED_VALUE_$$stddev: int;

procedure {:inline 1} _LOG_READ_$$stddev(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$stddev;



implementation {:inline 1} _LOG_READ_$$stddev(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then true else _READ_HAS_OCCURRED_$$stddev);
    return;
}



procedure _CHECK_READ_$$stddev(_P: bool, _offset: int, _value: int);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$stddev);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$stddev: bool;

procedure {:inline 1} _LOG_WRITE_$$stddev(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev;



implementation {:inline 1} _LOG_WRITE_$$stddev(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then true else _WRITE_HAS_OCCURRED_$$stddev);
    _WRITE_READ_BENIGN_FLAG_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$stddev);
    return;
}



procedure _CHECK_WRITE_$$stddev(_P: bool, _offset: int, _value: int);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev != _value);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev != _value);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$stddev(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$stddev;



implementation {:inline 1} _LOG_ATOMIC_$$stddev(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$stddev);
    return;
}



procedure _CHECK_ATOMIC_$$stddev(_P: bool, _offset: int);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$stddev;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$stddev := (if _P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$stddev);
    return;
}



const _WATCHED_VALUE_$$kernel2.shared_data: int;

procedure {:inline 1} _LOG_READ_$$kernel2.shared_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel2.shared_data;



implementation {:inline 1} _LOG_READ_$$kernel2.shared_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then true else _READ_HAS_OCCURRED_$$kernel2.shared_data);
    return;
}



procedure _CHECK_READ_$$kernel2.shared_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel2.shared_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data;



implementation {:inline 1} _LOG_WRITE_$$kernel2.shared_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then true else _WRITE_HAS_OCCURRED_$$kernel2.shared_data);
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data);
    return;
}



procedure _CHECK_WRITE_$$kernel2.shared_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;



implementation {:inline 1} _LOG_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data);
    return;
}



procedure _CHECK_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: int);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data := (if _P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}






































































































































































































































