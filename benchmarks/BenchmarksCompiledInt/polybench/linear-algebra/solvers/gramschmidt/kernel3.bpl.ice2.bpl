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
 b0047: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "A"} {:global} $$A: [int]int;

axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$Q"} {:global} {:elem_width 64} {:source_name "Q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Q: bool;

axiom {:array_info "$$R"} {:global} {:elem_width 64} {:source_name "R"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$R: bool;

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

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD64(int, int) : int;

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

function  BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
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

function  BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV64_SGT(x: int, y: int) : bool
{
  x > y
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

procedure {:source_name "kernel3"} {:kernel} $kernel3($n: int, $m: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $m == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 5) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(5, $n)), BV64_ADD($c0, 5)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_MUL(5, BV64_SDIV(BV64_ADD(BV64_MUL(2, $c0), 2), 3)), BV64_ADD(BV64_MUL(3, $c0), 3)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 5))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3, $n), BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(24575, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), $c0), 2), 24576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_y$1)), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$Q && !_WRITE_HAS_OCCURRED_$$Q && !_ATOMIC_HAS_OCCURRED_$$Q;
  requires !_READ_HAS_OCCURRED_$$R && !_WRITE_HAS_OCCURRED_$$R && !_ATOMIC_HAS_OCCURRED_$$R;
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
  modifies _READ_HAS_OCCURRED_$$A, _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:source_name "kernel3"} {:kernel} $kernel3($n: int, $m: int, $c0: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $3$1: int;
  var $3$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4: bool;
  var v5: bool;
  var v6: bool;
  var v7: bool;
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
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$A$ghost$$19: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$19: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$21: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    v4 := BV64_SGE(BV32_SEXT64(BV32_MUL(3, $n)), BV64_ADD($c0, 1));
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
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v4;
    goto $2;

  $2:
    v6 := BV64_SGE($c0, BV32_SEXT64(BV32_MUL(3, $n)));
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v6;
    goto $33;

  $33:
    return;

  $truebb1:
    assume {:partition} v6;
    v7 := BV64_SGE(BV64_MUL(5, BV64_SDIV(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c0), 1), 2)), BV64_ADD(BV64_MUL(3, $c0), 5));
    goto $truebb2, $falsebb2;

  $falsebb2:
    assume {:partition} !v7;
    goto $33;

  $truebb2:
    assume {:partition} v7;
    goto $4;

  $4:
    v8$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64), 0);
    v8$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64), 0);
    p0$1 := (if v8$1 then v8$1 else p0$1);
    p0$2 := (if v8$2 then v8$2 else p0$2);
    p1$1 := (if !v8$1 then !v8$1 else p1$1);
    p1$2 := (if !v8$2 then !v8$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64)), 16384), 1), 16384)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64)), 16384), 1), 16384)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64), 16384) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64), 16384) else $0$2);
    v9$1 := BV64_SGT(BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(8192, $0$1)), 8192), BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-96, v0$1), $c0), 24480), 24576))));
    v9$2 := BV64_SGT(BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(8192, $0$2)), 8192), BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-96, v0$2), $c0), 24480), 24576))));
    p2$1 := (if v9$1 then v9$1 else p2$1);
    p2$2 := (if v9$2 then v9$2 else p2$2);
    p5$1 := (if !v9$1 then !v9$1 else p5$1);
    p5$2 := (if !v9$2 then !v9$2 else p5$2);
    v10$1 := (if p2$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64), 0) else v10$1);
    v10$2 := (if p2$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64), 0) else v10$2);
    p3$1 := (if p2$1 && v10$1 then v10$1 else p3$1);
    p3$2 := (if p2$2 && v10$2 then v10$2 else p3$2);
    p4$1 := (if p2$1 && !v10$1 then !v10$1 else p4$1);
    p4$2 := (if p2$2 && !v10$2 then !v10$2 else p4$2);
    $1$1 := (if p3$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64)), 16384), 1), 16384)) else $1$1);
    $1$2 := (if p3$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64)), 16384), 1), 16384)) else $1$2);
    $1$1 := (if p4$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$1)), $c0), 64), 16384) else $1$1);
    $1$2 := (if p4$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(64, v0$2)), $c0), 64), 16384) else $1$2);
    $2$1 := (if p2$1 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(8192, $1$1)), 8192) else $2$1);
    $2$2 := (if p2$2 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(8192, $1$2)), 8192) else $2$2);
    $2$1 := (if p5$1 then BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-96, v0$1), $c0), 24480), 24576))) else $2$1);
    $2$2 := (if p5$2 then BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-96, v0$2), $c0), 24480), 24576))) else $2$2);
    $c1.0$1 := $2$1;
    $c1.0$2 := $2$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $14;

  $14:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p6$1 ==> $c1.0$1 mod 8192 == $2$1 mod 8192 )  && ( p6$2 ==> $c1.0$2 mod 8192 == $2$2 mod 8192 ) ,  ( p6$1 ==> BV32_SLE($c1.0$1, $2$1) )  && ( p6$2 ==> BV32_SLE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV32_SGE($c1.0$1, $2$1) )  && ( p6$2 ==> BV32_SGE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV32_ULE($c1.0$1, $2$1) )  && ( p6$2 ==> BV32_ULE($c1.0$2, $2$2) ) ,  ( p6$1 ==> BV32_UGE($c1.0$1, $2$1) )  && ( p6$2 ==> BV32_UGE($c1.0$2, $2$2) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) ==> p6$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) ==> p6$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_y$1)), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 5))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3, $n), BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(24575, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), $c0), 2), 24576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 21} p6$1 ==> true;
    v11$1 := (if p6$1 then BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) else v11$1);
    v11$2 := (if p6$2 then BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) else v11$2);
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
    p7$1 := (if p6$1 && v11$1 then v11$1 else p7$1);
    p7$2 := (if p6$2 && v11$2 then v11$2 else p7$2);
    p6$1 := (if p6$1 && !v11$1 then v11$1 else p6$1);
    p6$2 := (if p6$2 && !v11$2 then v11$2 else p6$2);
    v12$1 := (if p7$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, v2$1)), BV64_MUL(2, $c1.0$1)), 1), $c0) else v12$1);
    v12$2 := (if p7$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, v2$2)), BV64_MUL(2, $c1.0$2)), 1), $c0) else v12$2);
    p9$1 := (if p7$1 && v12$1 then v12$1 else p9$1);
    p9$2 := (if p7$2 && v12$2 then v12$2 else p9$2);
    v13$1 := (if p9$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, v2$1), BV64_MUL(3, $c1.0$1)), 2), $c0) else v13$1);
    v13$2 := (if p9$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, v2$2), BV64_MUL(3, $c1.0$2)), 2), $c0) else v13$2);
    p11$1 := (if p9$1 && v13$1 then v13$1 else p11$1);
    p11$2 := (if p9$2 && v13$2 then v13$2 else p11$2);
    v14$1 := (if p11$1 then BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, v2$1), BV64_MUL(5, $c1.0$1)), 5)) else v14$1);
    v14$2 := (if p11$2 then BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, v2$2), BV64_MUL(5, $c1.0$2)), 5)) else v14$2);
    p13$1 := (if p11$1 && v14$1 then v14$1 else p13$1);
    p13$2 := (if p11$2 && v14$2 then v14$2 else p13$2);
    $c2.0$1 := (if p13$1 then BV64_MUL(32, v1$1) else $c2.0$1);
    $c2.0$2 := (if p13$2 then BV64_MUL(32, v1$2) else $c2.0$2);
    p14$1 := (if p13$1 then true else p14$1);
    p14$2 := (if p13$2 then true else p14$2);
    _READ_HAS_OCCURRED_$$A$ghost$$19 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$A$ghost$$19 := _WRITE_HAS_OCCURRED_$$A;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $19;

  $19:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p13$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$19 == _READ_HAS_OCCURRED_$$A ) ,  (  !p13$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$19 == _WRITE_HAS_OCCURRED_$$A ) ,  true ,  true ,  true ,  true  ); 


    assume {:predicate "p14"} {:dominator_predicate "p13"} true;
    assert p14$1 ==> p6$1;
    assert p14$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p14$1 ==> $c2.0$1 mod 8192 == BV64_MUL(32, v1$1) mod 8192 )  && ( p14$2 ==> $c2.0$2 mod 8192 == BV64_MUL(32, v1$2) mod 8192 ) ,  ( p14$1 ==> BV32_SLE($c2.0$1, BV64_MUL(32, v1$1)) )  && ( p14$2 ==> BV32_SLE($c2.0$2, BV64_MUL(32, v1$2)) ) ,  ( p14$1 ==> BV32_SGE($c2.0$1, BV64_MUL(32, v1$1)) )  && ( p14$2 ==> BV32_SGE($c2.0$2, BV64_MUL(32, v1$2)) ) ,  ( p14$1 ==> BV32_ULE($c2.0$1, BV64_MUL(32, v1$1)) )  && ( p14$2 ==> BV32_ULE($c2.0$2, BV64_MUL(32, v1$2)) ) ,  ( p14$1 ==> BV32_UGE($c2.0$1, BV64_MUL(32, v1$1)) )  && ( p14$2 ==> BV32_UGE($c2.0$2, BV64_MUL(32, v1$2)) ) ,  ( p14$1 ==> p14$1 ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) )  && ( p14$2 ==> p14$2 ==> BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2, $c1.0$2)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3, $c1.0$2)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5, $c1.0$2)), 5)) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) ==> p14$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2, $c1.0$2)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3, $c1.0$2)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5, $c1.0$2)), 5)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) ==> p14$2 ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_y$1)), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 5))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3, $n), BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(24575, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), $c0), 2), 24576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 26} p14$1 ==> true;
    v15$1 := (if p14$1 then BV64_SLT($c2.0$1, BV32_SEXT64($m)) else v15$1);
    v15$2 := (if p14$2 then BV64_SLT($c2.0$2, BV32_SEXT64($m)) else v15$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p15$1 := (if p14$1 && v15$1 then v15$1 else p15$1);
    p15$2 := (if p14$2 && v15$2 then v15$2 else p15$2);
    p14$1 := (if p14$1 && !v15$1 then v15$1 else p14$1);
    p14$2 := (if p14$2 && !v15$2 then v15$2 else p14$2);
    $c4.0$1 := (if p15$1 then v3$1 else $c4.0$1);
    $c4.0$2 := (if p15$2 then v3$2 else $c4.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$A$ghost$$21 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$A$ghost$$21 := _WRITE_HAS_OCCURRED_$$A;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p15$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$21 == _READ_HAS_OCCURRED_$$A ) ,  (  !p15$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$21 == _WRITE_HAS_OCCURRED_$$A )  ); 


    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p14$1;
    assert p16$2 ==> p14$2;
    assert p14$1 ==> p6$1;
    assert p14$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p16$1 ==> $c4.0$1 mod 16 == v3$1 mod 16 )  && ( p16$2 ==> $c4.0$2 mod 16 == v3$2 mod 16 ) ,  ( p16$1 ==> BV32_SLE($c4.0$1, v3$1) )  && ( p16$2 ==> BV32_SLE($c4.0$2, v3$2) ) ,  ( p16$1 ==> BV32_SGE($c4.0$1, v3$1) )  && ( p16$2 ==> BV32_SGE($c4.0$2, v3$2) ) ,  ( p16$1 ==> BV32_ULE($c4.0$1, v3$1) )  && ( p16$2 ==> BV32_ULE($c4.0$2, v3$2) ) ,  ( p16$1 ==> BV32_UGE($c4.0$1, v3$1) )  && ( p16$2 ==> BV32_UGE($c4.0$2, v3$2) ) ,  ( p16$1 ==> p16$1 ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) )  && ( p16$2 ==> p16$2 ==> BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2, $c1.0$2)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3, $c1.0$2)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5, $c1.0$2)), 5)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) && BV64_SLT($c2.0$1, BV32_SEXT64($m)) && BV64_SLE($c4.0$1, $3$1) ==> p16$1 )  && (  BV64_SLT($c1.0$2, BV64_SDIV(BV64_MUL(2, $c0), 5)) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$2))), BV64_MUL(2, $c1.0$2)), 1), $c0) && BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$2)), BV64_MUL(3, $c1.0$2)), 2), $c0) && BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$2)), BV64_MUL(5, $c1.0$2)), 5)) && BV64_SLT($c2.0$2, BV32_SEXT64($m)) && BV64_SLE($c4.0$2, $3$2) ==> p16$2 ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c2.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c1.0$1, BV64_SDIV(BV64_MUL(2, $c0), 5)) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV64_MUL(2, $c1.0$1)), 1), $c0) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV64_ADD(BV64_MUL(3, BV32_ZEXT64(local_id_x$1)), BV64_MUL(3, $c1.0$1)), 2), $c0) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_MUL(2, $c0), BV64_ADD(BV64_ADD(BV64_MUL(5, BV32_ZEXT64(local_id_x$1)), BV64_MUL(5, $c1.0$1)), 5)) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c2.0$1, BV32_SEXT64($m)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_y$1)), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV32_ZEXT64(local_id_y$1), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(8191, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 8192) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 5))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(3, $n), BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(96, BV32_ZEXT64(group_id_x$1)), BV64_MUL(3, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_MUL(24575, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), $c0), 2), 24576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 16) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(2, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 2), 16384) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 28} p16$1 ==> true;
    v16$1 := (if p16$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1)) else v16$1);
    v16$2 := (if p16$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1)) else v16$2);
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p18$1 := (if p16$1 && v16$1 then v16$1 else p18$1);
    p18$2 := (if p16$2 && v16$2 then v16$2 else p18$2);
    p17$1 := (if p16$1 && !v16$1 then !v16$1 else p17$1);
    p17$2 := (if p16$2 && !v16$2 then !v16$2 else p17$2);
    $3$1 := (if p17$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1) else $3$1);
    $3$2 := (if p17$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1) else $3$2);
    $3$1 := (if p18$1 then 31 else $3$1);
    $3$2 := (if p18$2 then 31 else $3$2);
    v17$1 := (if p16$1 then BV64_SLE($c4.0$1, $3$1) else v17$1);
    v17$2 := (if p16$2 then BV64_SLE($c4.0$2, $3$2) else v17$2);
    p19$1 := (if p16$1 && v17$1 then v17$1 else p19$1);
    p19$2 := (if p16$2 && v17$2 then v17$2 else p19$2);
    p16$1 := (if p16$1 && !v17$1 then v17$1 else p16$1);
    p16$2 := (if p16$2 && !v17$2 then v17$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$A(p19$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$A(p19$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v18$1 := (if p19$1 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0)] else v18$1);
    v18$2 := (if p19$2 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0)] else v18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p19$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p19$2 then _HAVOC_int$2 else v19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p19$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p19$2 then _HAVOC_int$2 else v20$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$A(p19$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0), FADD64(FMUL64(FSUB64(-9223372036854775808, v19$1), v20$1), v18$1), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(p19$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$A(p19$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0), FADD64(FMUL64(FSUB64(-9223372036854775808, v19$2), v20$2), v18$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$A"} true;
    $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0)] := (if p19$1 then FADD64(FMUL64(FSUB64(-9223372036854775808, v19$1), v20$1), v18$1) else $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$1), $c0), BV64_MUL(2, $c1.0$1)), 2)), 32, 0)]);
    $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0)] := (if p19$2 then FADD64(FMUL64(FSUB64(-9223372036854775808, v19$2), v20$2), v18$2) else $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-2, v2$2), $c0), BV64_MUL(2, $c1.0$2)), 2)), 32, 0)]);
    $c4.0$1 := (if p19$1 then BV64_ADD($c4.0$1, 16) else $c4.0$1);
    $c4.0$2 := (if p19$2 then BV64_ADD($c4.0$2, 16) else $c4.0$2);
    p16$1 := (if p19$1 then true else p16$1);
    p16$2 := (if p19$2 then true else p16$2);
    goto $21.backedge, $21.tail;

  $21.tail:
    assume !p16$1 && !p16$2;
    $c2.0$1 := (if p15$1 then BV64_ADD($c2.0$1, 8192) else $c2.0$1);
    $c2.0$2 := (if p15$2 then BV64_ADD($c2.0$2, 8192) else $c2.0$2);
    p14$1 := (if p15$1 then true else p14$1);
    p14$2 := (if p15$2 then true else p14$2);
    goto $19.backedge, $19.tail;

  $19.tail:
    assume !p14$1 && !p14$2;
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 8192) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 8192) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $14.backedge, $14.tail;

  $14.tail:
    assume !p6$1 && !p6$2;
    goto $33;

  $14.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $14;

  $19.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $19;

  $21.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $21;

  $truebb:
    assume {:partition} v4;
    v5 := BV64_SGE(BV64_MUL(5, BV64_SDIV(BV64_ADD(BV64_MUL(2, $c0), 2), 3)), BV64_ADD(BV64_MUL(3, $c0), 5));
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v5;
    goto $2;

  $truebb0:
    assume {:partition} v5;
    goto $4;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;







function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}







































































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



const _WATCHED_VALUE_$$Q: int;

procedure {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _READ_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_READ_$$Q(_P: bool, _offset: int, _value: int);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Q);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Q: bool;

procedure {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _WRITE_HAS_OCCURRED_$$Q);
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



procedure _CHECK_WRITE_$$Q(_P: bool, _offset: int, _value: int);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_ATOMIC_$$Q(_P: bool, _offset: int);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



const _WATCHED_VALUE_$$R: int;

procedure {:inline 1} _LOG_READ_$$R(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_READ_$$R(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _READ_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_READ_$$R(_P: bool, _offset: int, _value: int);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$R);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$R: bool;

procedure {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$R, _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _WRITE_HAS_OCCURRED_$$R);
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



procedure _CHECK_WRITE_$$R(_P: bool, _offset: int, _value: int);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_ATOMIC_$$R(_P: bool, _offset: int);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}




















