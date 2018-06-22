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
 b0046: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$Q"} {:global} {:elem_width 64} {:source_name "Q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Q: bool;

var {:source_name "R"} {:global} $$R: [bv32]bv64;

axiom {:array_info "$$R"} {:global} {:elem_width 64} {:source_name "R"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$R: bool;

axiom {:array_info "$$private_R"} {:elem_width 64} {:source_name "private_R"} {:source_elem_width 64} {:source_dimensions "1,1"} true;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

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

procedure {:source_name "kernel2"} {:kernel} $kernel2($n: bv32, $m: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $m == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE($m, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(5bv32, $n)), BV64_ADD($c0, 6bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 4bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_MUL(5bv64, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 1bv64), 3bv64)), BV64_ADD(BV64_MUL(3bv64, $c0), 1bv64)) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 1bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 1bv64), 2097152bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 4bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, $n), BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(3145727bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), $c0), 1bv64), 3145728bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$Q && !_WRITE_HAS_OCCURRED_$$Q && !_ATOMIC_HAS_OCCURRED_$$Q;
  requires !_READ_HAS_OCCURRED_$$R && !_WRITE_HAS_OCCURRED_$$R && !_ATOMIC_HAS_OCCURRED_$$R;
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
  modifies _READ_HAS_OCCURRED_$$R, _WRITE_HAS_OCCURRED_$$R, _WRITE_READ_BENIGN_FLAG_$$R, _WRITE_READ_BENIGN_FLAG_$$R, $$R, _TRACKING;



implementation {:source_name "kernel2"} {:kernel} $kernel2($n: bv32, $m: bv32, $c0: bv64)
{
  var $0$1: bv64;
  var $0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bv64;
  var v9$2: bv64;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bv64;
  var v13$2: bv64;
  var v14$1: bv64;
  var v14$2: bv64;
  var v15$1: bv64;
  var v15$2: bv64;
  var v16$1: bv64;
  var v16$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64), 0bv64);
    v2$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64), 0bv64);
    p0$1 := false;
    p0$2 := false;
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64)), 2097152bv64), 1bv64), 2097152bv64)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64)), 2097152bv64), 1bv64), 2097152bv64)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64), 2097152bv64) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64), 2097152bv64) else $0$2);
    v3$1 := BV64_SGT(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, $0$1)), 1048576bv64), BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551520bv64, v0$1), $c0), 3145633bv64), 3145728bv64))));
    v3$2 := BV64_SGT(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, $0$2)), 1048576bv64), BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551520bv64, v0$2), $c0), 3145633bv64), 3145728bv64))));
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    p5$1 := (if !v3$1 then !v3$1 else p5$1);
    p5$2 := (if !v3$2 then !v3$2 else p5$2);
    v4$1 := (if p2$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64), 0bv64) else v4$1);
    v4$2 := (if p2$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64), 0bv64) else v4$2);
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p4$1 := (if p2$1 && !v4$1 then !v4$1 else p4$1);
    p4$2 := (if p2$2 && !v4$2 then !v4$2 else p4$2);
    $1$1 := (if p3$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64)), 2097152bv64), 1bv64), 2097152bv64)) else $1$1);
    $1$2 := (if p3$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64)), 2097152bv64), 1bv64), 2097152bv64)) else $1$2);
    $1$1 := (if p4$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$1)), $c0), 63bv64), 2097152bv64) else $1$1);
    $1$2 := (if p4$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(64bv64, v0$2)), $c0), 63bv64), 2097152bv64) else $1$2);
    $2$1 := (if p2$1 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, $1$1)), 1048576bv64) else $2$1);
    $2$2 := (if p2$2 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, $1$2)), 1048576bv64) else $2$2);
    $2$1 := (if p5$1 then BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551520bv64, v0$1), $c0), 3145633bv64), 3145728bv64))) else $2$1);
    $2$2 := (if p5$2 then BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551520bv64, v0$2), $c0), 3145633bv64), 3145728bv64))) else $2$2);
    $c1.0$1 := $2$1;
    $c1.0$2 := $2$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p6$1 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), $2$1) )  && ( p6$2 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), $2$2) ) ,  ( p6$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p6$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p6$1 ==> BV64_SUB($c1.0$1, $2$1) == BV64_SUB($c1.0$2, $2$2) )  && ( p6$2 ==> BV64_SUB($c1.0$2, $2$2) == BV64_SUB($c1.0$1, $2$1) ) ,  ( p6$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, $2$1) == BV64_SUB($c1.0$2, $2$2) )  && ( p6$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, $2$2) == BV64_SUB($c1.0$1, $2$1) ) ,  ( p6$1 ==> BV64_SLE($c1.0$1, $2$1) )  && ( p6$2 ==> BV64_SLE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV64_SGE($c1.0$1, $2$1) )  && ( p6$2 ==> BV64_SGE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV64_ULE($c1.0$1, $2$1) )  && ( p6$2 ==> BV64_ULE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV64_UGE($c1.0$1, $2$1) )  && ( p6$2 ==> BV64_UGE($c1.0$2, $2$2) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) ==> p6$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) ==> p6$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p6$1 == p6$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2 ) ,  (  p6$1 && p6$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p6$1 && p6$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p6$1 && p6$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p6$1 && p6$2 ==> $3$1 == $3$2 ) ,  (  p6$1 && p6$2 ==> v5$1 == v5$2 ) ,  (  p6$1 && p6$2 ==> v6$1 == v6$2 ) ,  (  p6$1 && p6$2 ==> v7$1 == v7$2 ) ,  (  p6$1 && p6$2 ==> v8$1 == v8$2 ) ,  (  p6$1 && p6$2 ==> v9$1 == v9$2 ) ,  (  p6$1 && p6$2 ==> v10$1 == v10$2 ) ,  (  p6$1 && p6$2 ==> v11$1 == v11$2 ) ,  (  p6$1 && p6$2 ==> v12$1 == v12$2 ) ,  (  p6$1 && p6$2 ==> v13$1 == v13$2 ) ,  (  p6$1 && p6$2 ==> v14$1 == v14$2 ) ,  (  p6$1 && p6$2 ==> v15$1 == v15$2 ) ,  (  p6$1 && p6$2 ==> v16$1 == v16$2 ) ,  (  !_READ_HAS_OCCURRED_$$R ) ,  (  !_WRITE_HAS_OCCURRED_$$R ) ,  (  _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$R ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) )  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 4bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, $n), BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(3145727bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), $c0), 1bv64), 3145728bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 1bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 1bv64), 2097152bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 17} p6$1 ==> true;
    v5$1 := (if p6$1 then BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) else v5$1);
    v5$2 := (if p6$2 then BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) else v5$2);
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
    p20$1 := false;
    p20$2 := false;
    p7$1 := (if p6$1 && v5$1 then v5$1 else p7$1);
    p7$2 := (if p6$2 && v5$2 then v5$2 else p7$2);
    p6$1 := (if p6$1 && !v5$1 then v5$1 else p6$1);
    p6$2 := (if p6$2 && !v5$2 then v5$2 else p6$2);
    v6$1 := (if p7$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, v1$1)), BV64_MUL(2bv64, $c1.0$1)), $c0) else v6$1);
    v6$2 := (if p7$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, v1$2)), BV64_MUL(2bv64, $c1.0$2)), $c0) else v6$2);
    p9$1 := (if p7$1 && v6$1 then v6$1 else p9$1);
    p9$2 := (if p7$2 && v6$2 then v6$2 else p9$2);
    v7$1 := (if p9$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, v1$1), BV64_MUL(3bv64, $c1.0$1)), 1bv64), $c0) else v7$1);
    v7$2 := (if p9$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, v1$2), BV64_MUL(3bv64, $c1.0$2)), 1bv64), $c0) else v7$2);
    p11$1 := (if p9$1 && v7$1 then v7$1 else p11$1);
    p11$2 := (if p9$2 && v7$2 then v7$2 else p11$2);
    v8$1 := (if p11$1 then BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, v1$1), BV64_MUL(5bv64, $c1.0$1)), 3bv64)) else v8$1);
    v8$2 := (if p11$2 then BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, v1$2), BV64_MUL(5bv64, $c1.0$2)), 3bv64)) else v8$2);
    p13$1 := (if p11$1 && v8$1 then v8$1 else p13$1);
    p13$2 := (if p11$2 && v8$2 then v8$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$R(p13$1, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0], $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$R(p13$2, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0], $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$R"} true;
    v9$1 := (if p13$1 then $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0]] else v9$1);
    v9$2 := (if p13$2 then $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0]] else v9$2);
    $$private_R$0bv32$1 := (if p13$1 then v9$1 else $$private_R$0bv32$1);
    $$private_R$0bv32$2 := (if p13$2 then v9$2 else $$private_R$0bv32$2);
    $c2.0$1 := (if p13$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p13$2 then 0bv64 else $c2.0$2);
    p14$1 := (if p13$1 then true else p14$1);
    p14$2 := (if p13$2 then true else p14$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_1"} true;
    assume {:predicate "p14"} {:dominator_predicate "p13"} true;
    assert p14$1 ==> p6$1;
    assert p14$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p14$1 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) )  && ( p14$2 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) ) ,  ( p14$1 ==> BV64_SLE(0bv64, $c2.0$1) )  && ( p14$2 ==> BV64_SLE(0bv64, $c2.0$2) ) ,  ( p14$1 ==> BV64_SLE($c2.0$1, 0bv64) )  && ( p14$2 ==> BV64_SLE($c2.0$2, 0bv64) ) ,  ( p14$1 ==> BV64_SGE($c2.0$1, 0bv64) )  && ( p14$2 ==> BV64_SGE($c2.0$2, 0bv64) ) ,  ( p14$1 ==> BV64_ULE($c2.0$1, 0bv64) )  && ( p14$2 ==> BV64_ULE($c2.0$2, 0bv64) ) ,  ( p14$1 ==> BV64_UGE($c2.0$1, 0bv64) )  && ( p14$2 ==> BV64_UGE($c2.0$2, 0bv64) ) ,  ( p14$1 ==> p14$1 ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2bv64, $c1.0$1)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3bv64, $c1.0$1)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5bv64, $c1.0$1)), 3bv64)) )  && ( p14$2 ==> p14$2 ==> BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2bv64, $c1.0$2)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3bv64, $c1.0$2)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5bv64, $c1.0$2)), 3bv64)) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2bv64, $c1.0$1)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3bv64, $c1.0$1)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5bv64, $c1.0$1)), 3bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) ==> p14$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2bv64, $c1.0$2)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3bv64, $c1.0$2)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5bv64, $c1.0$2)), 3bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) ==> p14$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 4bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, $n), BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(3145727bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), $c0), 1bv64), 3145728bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 1bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 1bv64), 2097152bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 24} p14$1 ==> true;
    v10$1 := (if p14$1 then BV64_SLT($c2.0$1, BV32_SEXT64($m)) else v10$1);
    v10$2 := (if p14$2 then BV64_SLT($c2.0$2, BV32_SEXT64($m)) else v10$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p15$1 := (if p14$1 && v10$1 then v10$1 else p15$1);
    p15$2 := (if p14$2 && v10$2 then v10$2 else p15$2);
    p14$1 := (if p14$1 && !v10$1 then v10$1 else p14$1);
    p14$2 := (if p14$2 && !v10$2 then v10$2 else p14$2);
    $c4.0$1 := (if p15$1 then 0bv64 else $c4.0$1);
    $c4.0$2 := (if p15$2 then 0bv64 else $c4.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $17;

  $17:
    assume {:captureState "loop_head_state_2"} true;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p14$1;
    assert p16$2 ==> p14$2;
    assert p14$1 ==> p6$1;
    assert p14$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p16$1 ==> BV64_SLE(0bv64, $c4.0$1) )  && ( p16$2 ==> BV64_SLE(0bv64, $c4.0$2) ) ,  ( p16$1 ==> BV64_SLE(0bv64, $3$1) )  && ( p16$2 ==> BV64_SLE(0bv64, $3$2) ) ,  ( p16$1 ==> BV64_SLE($c4.0$1, 0bv64) )  && ( p16$2 ==> BV64_SLE($c4.0$2, 0bv64) ) ,  ( p16$1 ==> BV64_SGE($c4.0$1, 0bv64) )  && ( p16$2 ==> BV64_SGE($c4.0$2, 0bv64) ) ,  ( p16$1 ==> BV64_ULE($c4.0$1, 0bv64) )  && ( p16$2 ==> BV64_ULE($c4.0$2, 0bv64) ) ,  ( p16$1 ==> BV64_UGE($c4.0$1, 0bv64) )  && ( p16$2 ==> BV64_UGE($c4.0$2, 0bv64) ) ,  ( p16$1 ==> p16$1 ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2bv64, $c1.0$1)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3bv64, $c1.0$1)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5bv64, $c1.0$1)), 3bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) )  && ( p16$2 ==> p16$2 ==> BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2bv64, $c1.0$2)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3bv64, $c1.0$2)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5bv64, $c1.0$2)), 3bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2bv64, $c1.0$1)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3bv64, $c1.0$1)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5bv64, $c1.0$1)), 3bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) && BV64_SLE($c4.0$1, $3$1) ==> p16$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_ADD(BV64_MUL(2bv64, $c0), 2bv64), 5bv64)) && BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2bv64, $c1.0$2)), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3bv64, $c1.0$2)), 1bv64), $c0) && BV64_SGE(BV64_MUL(2bv64, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5bv64, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5bv64, $c1.0$2)), 3bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) && BV64_SLE($c4.0$2, $3$2) ==> p16$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 4bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, $n), BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(3145727bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), $c0), 1bv64), 3145728bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 1bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2bv64, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 1bv64), 2097152bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_MUL(3bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 26} p16$1 ==> true;
    v11$1 := (if p16$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1bv64)) else v11$1);
    v11$2 := (if p16$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1bv64)) else v11$2);
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p18$1 := (if p16$1 && v11$1 then v11$1 else p18$1);
    p18$2 := (if p16$2 && v11$2 then v11$2 else p18$2);
    p17$1 := (if p16$1 && !v11$1 then !v11$1 else p17$1);
    p17$2 := (if p16$2 && !v11$2 then !v11$2 else p17$2);
    $3$1 := (if p17$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1bv64) else $3$1);
    $3$2 := (if p17$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1bv64) else $3$2);
    $3$1 := (if p18$1 then 31bv64 else $3$1);
    $3$2 := (if p18$2 then 31bv64 else $3$2);
    v12$1 := (if p16$1 then BV64_SLE($c4.0$1, $3$1) else v12$1);
    v12$2 := (if p16$2 then BV64_SLE($c4.0$2, $3$2) else v12$2);
    p19$1 := (if p16$1 && v12$1 then v12$1 else p19$1);
    p19$2 := (if p16$2 && v12$2 then v12$2 else p19$2);
    p16$1 := (if p16$1 && !v12$1 then v12$1 else p16$1);
    p16$2 := (if p16$2 && !v12$2 then v12$2 else p16$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v13$1 := (if p19$1 then _HAVOC_bv64$1 else v13$1);
    v13$2 := (if p19$2 then _HAVOC_bv64$2 else v13$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v14$1 := (if p19$1 then _HAVOC_bv64$1 else v14$1);
    v14$2 := (if p19$2 then _HAVOC_bv64$2 else v14$2);
    v15$1 := (if p19$1 then $$private_R$0bv32$1 else v15$1);
    v15$2 := (if p19$2 then $$private_R$0bv32$2 else v15$2);
    $$private_R$0bv32$1 := (if p19$1 then FADD64(v15$1, FMUL64(v13$1, v14$1)) else $$private_R$0bv32$1);
    $$private_R$0bv32$2 := (if p19$2 then FADD64(v15$2, FMUL64(v13$2, v14$2)) else $$private_R$0bv32$2);
    $c4.0$1 := (if p19$1 then BV64_ADD($c4.0$1, 1bv64) else $c4.0$1);
    $c4.0$2 := (if p19$2 then BV64_ADD($c4.0$2, 1bv64) else $c4.0$2);
    p16$1 := (if p19$1 then true else p16$1);
    p16$2 := (if p19$2 then true else p16$2);
    goto $17.backedge, $17.tail;

  $17.tail:
    assume !p16$1 && !p16$2;
    $c2.0$1 := (if p15$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p15$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p14$1 := (if p15$1 then true else p14$1);
    p14$2 := (if p15$2 then true else p14$2);
    goto $15.backedge, __partitioned_block_$15.tail_0;

  __partitioned_block_$15.tail_0:
    assume !p14$1 && !p14$2;
    v16$1 := (if p13$1 then $$private_R$0bv32$1 else v16$1);
    v16$2 := (if p13$2 then $$private_R$0bv32$2 else v16$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$R(p13$1, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0], v16$1, $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(p13$2, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$R(p13$2, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0], v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$R"} true;
    $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0]] := (if p13$1 then v16$1 else $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$1), $c0), BV64_MUL(3bv64, $c1.0$1)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$1), $c0), BV64_MUL(2bv64, $c1.0$1)), 1bv64))[32:0]]);
    $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0]] := (if p13$2 then v16$2 else $$R[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(3bv64, v1$2), $c0), BV64_MUL(3bv64, $c1.0$2)), 1bv64), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(18446744073709551614bv64, v1$2), $c0), BV64_MUL(2bv64, $c1.0$2)), 1bv64))[32:0]]);
    goto __partitioned_block_$15.tail_1;

  __partitioned_block_$15.tail_1:
    call {:sourceloc_num 42} $bugle_barrier_duplicated_0(1bv1, 1bv1, p7$1, p7$2);
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 1048576bv64) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 1048576bv64) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p6$1 && !p6$2;
    return;

  $10.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $10;

  $15.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $15;

  $17.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $17;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$R, _TRACKING;



var $$private_R$0bv32$1: bv64;

var $$private_R$0bv32$2: bv64;

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



const _WATCHED_VALUE_$$Q: bv64;

procedure {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _READ_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_READ_$$Q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Q);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Q: bool;

procedure {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _WRITE_HAS_OCCURRED_$$Q);
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



procedure _CHECK_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_ATOMIC_$$Q(_P: bool, _offset: bv32);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



const _WATCHED_VALUE_$$R: bv64;

procedure {:inline 1} _LOG_READ_$$R(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_READ_$$R(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _READ_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_READ_$$R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$R);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$R: bool;

procedure {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$R, _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _WRITE_HAS_OCCURRED_$$R);
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



procedure _CHECK_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_ATOMIC_$$R(_P: bool, _offset: bv32);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$R;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$R;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$R;
    goto anon1;

  anon1:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon3;

  anon3:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$R;
    goto anon3;

  anon4_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;












































