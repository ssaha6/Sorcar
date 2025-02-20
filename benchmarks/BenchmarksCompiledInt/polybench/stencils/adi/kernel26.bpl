type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$a"} {:global} {:elem_width 64} {:source_name "a"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a: bool;

axiom {:array_info "$$c"} {:global} {:elem_width 64} {:source_name "c"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$c: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$c: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$c: bool;

axiom {:array_info "$$d"} {:global} {:elem_width 64} {:source_name "d"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d: bool;

axiom {:array_info "$$e"} {:global} {:elem_width 64} {:source_name "e"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$e: bool;

axiom {:array_info "$$p"} {:global} {:elem_width 64} {:source_name "p"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "q"} {:global} $$q: [int]int;

axiom {:array_info "$$q"} {:global} {:elem_width 64} {:source_name "q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$q: bool;

axiom {:array_info "$$v"} {:global} {:elem_width 64} {:source_name "v"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v: bool;

var {:source_name "shared_a"} {:group_shared} $$kernel26.shared_a: [bv1][int]int;

axiom {:array_info "$$kernel26.shared_a"} {:group_shared} {:elem_width 64} {:source_name "shared_a"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel26.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel26.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a: bool;

var {:source_name "shared_c"} {:group_shared} $$kernel26.shared_c: [bv1][int]int;

axiom {:array_info "$$kernel26.shared_c"} {:group_shared} {:elem_width 64} {:source_name "shared_c"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel26.shared_c: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel26.shared_c: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c: bool;

var {:source_name "shared_d"} {:group_shared} $$kernel26.shared_d: [bv1][int]int;

axiom {:array_info "$$kernel26.shared_d"} {:group_shared} {:elem_width 64} {:source_name "shared_d"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel26.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel26.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d: bool;

var {:source_name "shared_e"} {:group_shared} $$kernel26.shared_e: [bv1][int]int;

axiom {:array_info "$$kernel26.shared_e"} {:group_shared} {:elem_width 64} {:source_name "shared_e"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel26.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel26.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e: bool;

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

function {:inline true} BV1_ZEXT32(x: int) : int
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

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_ZEXT64(x: int) : int
{
  x
}

function {:inline true} BV64_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV64_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel26"} {:kernel} $kernel26($n: int, $tsteps: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -1048544) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32), 30) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048574), 1048576))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32) then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$a && !_WRITE_HAS_OCCURRED_$$a && !_ATOMIC_HAS_OCCURRED_$$a;
  requires !_READ_HAS_OCCURRED_$$c && !_WRITE_HAS_OCCURRED_$$c && !_ATOMIC_HAS_OCCURRED_$$c;
  requires !_READ_HAS_OCCURRED_$$d && !_WRITE_HAS_OCCURRED_$$d && !_ATOMIC_HAS_OCCURRED_$$d;
  requires !_READ_HAS_OCCURRED_$$e && !_WRITE_HAS_OCCURRED_$$e && !_ATOMIC_HAS_OCCURRED_$$e;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$q && !_WRITE_HAS_OCCURRED_$$q && !_ATOMIC_HAS_OCCURRED_$$q;
  requires !_READ_HAS_OCCURRED_$$v && !_WRITE_HAS_OCCURRED_$$v && !_ATOMIC_HAS_OCCURRED_$$v;
  requires !_READ_HAS_OCCURRED_$$kernel26.shared_a && !_WRITE_HAS_OCCURRED_$$kernel26.shared_a && !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_a;
  requires !_READ_HAS_OCCURRED_$$kernel26.shared_c && !_WRITE_HAS_OCCURRED_$$kernel26.shared_c && !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_c;
  requires !_READ_HAS_OCCURRED_$$kernel26.shared_d && !_WRITE_HAS_OCCURRED_$$kernel26.shared_d && !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_d;
  requires !_READ_HAS_OCCURRED_$$kernel26.shared_e && !_WRITE_HAS_OCCURRED_$$kernel26.shared_e && !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_e;
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
  modifies $$kernel26.shared_a, $$kernel26.shared_c, $$kernel26.shared_d, $$kernel26.shared_e, _WRITE_HAS_OCCURRED_$$kernel26.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a, _WRITE_HAS_OCCURRED_$$kernel26.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c, _WRITE_HAS_OCCURRED_$$kernel26.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d, _WRITE_HAS_OCCURRED_$$kernel26.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e, $$q, _TRACKING, _READ_HAS_OCCURRED_$$kernel26.shared_a, _READ_HAS_OCCURRED_$$kernel26.shared_c, _READ_HAS_OCCURRED_$$kernel26.shared_d, _READ_HAS_OCCURRED_$$q, _READ_HAS_OCCURRED_$$kernel26.shared_e, _WRITE_HAS_OCCURRED_$$q, _WRITE_READ_BENIGN_FLAG_$$q, _WRITE_READ_BENIGN_FLAG_$$q, _TRACKING;



implementation {:source_name "kernel26"} {:kernel} $kernel26($n: int, $tsteps: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
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
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$q$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$q$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$q$ghost$$12: bool;
  var _WRITE_HAS_OCCURRED_$$q$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$12: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0;
    v2$2 := v1$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel26.shared_a(p0$1, 0, v3$1, $$kernel26.shared_a[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel26.shared_a(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel26.shared_a"} true;
    $$kernel26.shared_a[1bv1][0] := (if p0$1 then v3$1 else $$kernel26.shared_a[1bv1][0]);
    $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$kernel26.shared_c(p0$1, 0, v4$1, $$kernel26.shared_c[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$kernel26.shared_c(p0$2, 0, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel26.shared_c"} true;
    $$kernel26.shared_c[1bv1][0] := (if p0$1 then v4$1 else $$kernel26.shared_c[1bv1][0]);
    $$kernel26.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v4$2 else $$kernel26.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$kernel26.shared_d(p0$1, 0, v5$1, $$kernel26.shared_d[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$kernel26.shared_d(p0$2, 0, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel26.shared_d"} true;
    $$kernel26.shared_d[1bv1][0] := (if p0$1 then v5$1 else $$kernel26.shared_d[1bv1][0]);
    $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v5$2 else $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p0$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_int$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$kernel26.shared_e(p0$1, 0, v6$1, $$kernel26.shared_e[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$kernel26.shared_e(p0$2, 0, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel26.shared_e"} true;
    $$kernel26.shared_e[1bv1][0] := (if p0$1 then v6$1 else $$kernel26.shared_e[1bv1][0]);
    $$kernel26.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v6$2 else $$kernel26.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 18} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b86 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b85 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b84 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b83 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b82 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b81 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_c;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b80 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b79 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_a;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b78 ==> _WRITE_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b77 ==> _READ_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b76 ==> !_WRITE_HAS_OCCURRED_$$q;
    assert {:tag "noread"} _b75 ==> !_READ_HAS_OCCURRED_$$q;
    assert {:tag "predicatedEquality"} _b74 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b73 ==> p2$1 && p2$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b72 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b71 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b70 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b69 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b68 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b67 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b66 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b65 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b64 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b63 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b62 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b61 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b60 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b59 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b58 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b57 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b56 ==> p2$1 && p2$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b55 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b54 ==> p2$1 && p2$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b53 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b52 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b51 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b50 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -1048544) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32), 30) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048574), 1048576))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32) then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 19} p2$1 ==> true;
    v7$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v7$1);
    v7$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v7$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p16$1 := false;
    p16$2 := false;
    p3$1 := (if p2$1 && v7$1 then v7$1 else p3$1);
    p3$2 := (if p2$2 && v7$2 then v7$2 else p3$2);
    p2$1 := (if p2$1 && !v7$1 then v7$1 else p2$1);
    p2$2 := (if p2$2 && !v7$2 then v7$2 else p2$2);
    $c2.0$1 := (if p3$1 then 0 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$q$ghost$$5 := _READ_HAS_OCCURRED_$$q;
    _WRITE_HAS_OCCURRED_$$q$ghost$$5 := _WRITE_HAS_OCCURRED_$$q;
    _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$5 := _READ_HAS_OCCURRED_$$kernel26.shared_a;
    _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$5 := _READ_HAS_OCCURRED_$$kernel26.shared_c;
    _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$5 := _READ_HAS_OCCURRED_$$kernel26.shared_d;
    _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$5 := _READ_HAS_OCCURRED_$$kernel26.shared_e;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b127 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$5 == _READ_HAS_OCCURRED_$$kernel26.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b126 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b125 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_e;
    assert {:tag "disabledMaintainsInstrumentation"} _b124 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$5 == _READ_HAS_OCCURRED_$$kernel26.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b123 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b122 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_d;
    assert {:tag "disabledMaintainsInstrumentation"} _b121 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$5 == _READ_HAS_OCCURRED_$$kernel26.shared_c;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b120 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b119 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_c;
    assert {:tag "disabledMaintainsInstrumentation"} _b118 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$5 == _READ_HAS_OCCURRED_$$kernel26.shared_a;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b117 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b116 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_a;
    assert {:tag "disabledMaintainsInstrumentation"} _b115 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$q$ghost$$5 == _WRITE_HAS_OCCURRED_$$q;
    assert {:tag "disabledMaintainsInstrumentation"} _b114 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$q$ghost$$5 == _READ_HAS_OCCURRED_$$q;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b113 ==> _WRITE_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b112 ==> _READ_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b111 ==> !_WRITE_HAS_OCCURRED_$$q;
    assert {:tag "noread"} _b110 ==> !_READ_HAS_OCCURRED_$$q;
    assert {:tag "predicatedEquality"} _b109 ==> p4$1 && p4$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b108 ==> p4$1 && p4$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b107 ==> p4$1 && p4$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b106 ==> p4$1 && p4$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b105 ==> p4$1 && p4$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b104 ==> p4$1 && p4$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b103 ==> p4$1 && p4$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b102 ==> p4$1 && p4$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b101 ==> p4$1 && p4$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b100 ==> p4$1 && p4$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b99 ==> p4$1 && p4$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b98 ==> p4$1 && p4$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b97 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b96 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b95 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b94 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b93 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b92 ==> p4$1 && p4$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b91 ==> p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b90 ==> p4$1 && p4$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b89 ==> p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "loopPredicateEquality"} _b88 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b87 ==> p4$1 == p4$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b11 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b11 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV32_UGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV32_UGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b9 ==> BV32_ULE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b9 ==> BV32_ULE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b8 ==> BV32_SGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b8 ==> BV32_SGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b7 ==> BV32_SLE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b7 ==> BV32_SLE($c2.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b6 ==> $c2.0$1 mod 32 == 0 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b6 ==> $c2.0$2 mod 32 == 0 mod 32;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -1048544) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32), 30) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048574), 1048576))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32) then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 21} p4$1 ==> true;
    v8$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v8$1);
    v8$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v8$2);
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
    p5$1 := (if p4$1 && v8$1 then v8$1 else p5$1);
    p5$2 := (if p4$2 && v8$2 then v8$2 else p5$2);
    p4$1 := (if p4$1 && !v8$1 then v8$1 else p4$1);
    p4$2 := (if p4$2 && !v8$2 then v8$2 else p4$2);
    v9$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2)) else v9$1);
    v9$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2)) else v9$2);
    p7$1 := (if p5$1 && v9$1 then v9$1 else p7$1);
    p7$2 := (if p5$2 && v9$2 then v9$2 else p7$2);
    v10$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1) else v10$1);
    v10$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1) else v10$2);
    p9$1 := (if p7$1 && v10$1 then v10$1 else p9$1);
    p9$2 := (if p7$2 && v10$2 then v10$2 else p9$2);
    v11$1 := (if p9$1 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$1), 1)) else v11$1);
    v11$2 := (if p9$2 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$2), 1)) else v11$2);
    p11$1 := (if p9$1 && v11$1 then v11$1 else p11$1);
    p11$2 := (if p9$2 && v11$2 then v11$2 else p11$2);
    p10$1 := (if p9$1 && !v11$1 then !v11$1 else p10$1);
    p10$2 := (if p9$2 && !v11$2 then !v11$2 else p10$2);
    $0$1 := (if p10$1 then BV64_ADD(BV64_SUB(0, $c2.0$1), 1) else $0$1);
    $0$2 := (if p10$2 then BV64_ADD(BV64_SUB(0, $c2.0$2), 1) else $0$2);
    $0$1 := (if p11$1 then 0 else $0$1);
    $0$2 := (if p11$2 then 0 else $0$2);
    $c4.0$1 := (if p9$1 then $0$1 else $c4.0$1);
    $c4.0$2 := (if p9$2 then $0$2 else $c4.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$q$ghost$$12 := _READ_HAS_OCCURRED_$$q;
    _WRITE_HAS_OCCURRED_$$q$ghost$$12 := _WRITE_HAS_OCCURRED_$$q;
    _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$12 := _READ_HAS_OCCURRED_$$kernel26.shared_a;
    _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$12 := _READ_HAS_OCCURRED_$$kernel26.shared_c;
    _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$12 := _READ_HAS_OCCURRED_$$kernel26.shared_d;
    _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$12 := _READ_HAS_OCCURRED_$$kernel26.shared_e;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b139 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e$ghost$$12 == _READ_HAS_OCCURRED_$$kernel26.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b138 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b137 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d$ghost$$12 == _READ_HAS_OCCURRED_$$kernel26.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b136 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b135 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c$ghost$$12 == _READ_HAS_OCCURRED_$$kernel26.shared_c;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b134 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b133 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a$ghost$$12 == _READ_HAS_OCCURRED_$$kernel26.shared_a;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b132 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b131 ==> !p9$1 ==> _WRITE_HAS_OCCURRED_$$q$ghost$$12 == _WRITE_HAS_OCCURRED_$$q;
    assert {:tag "disabledMaintainsInstrumentation"} _b130 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$q$ghost$$12 == _READ_HAS_OCCURRED_$$q;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b129 ==> _WRITE_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b128 ==> _READ_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel26.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p4$1;
    assert p12$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _WRITE_HAS_OCCURRED_$$q ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _WRITE_HAS_OCCURRED_$$q ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _READ_HAS_OCCURRED_$$kernel26.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _READ_HAS_OCCURRED_$$q ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _READ_HAS_OCCURRED_$$q ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$kernel26.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$kernel26.shared_c ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b26 ==> _READ_HAS_OCCURRED_$$kernel26.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b25 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) && BV64_SLE($c4.0$1, $1$1) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b25 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1) && BV64_SLE($c4.0$2, $1$2) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b24 ==> p12$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b24 ==> p12$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b23 ==> BV32_UGE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b23 ==> BV32_UGE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b22 ==> BV32_ULE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b22 ==> BV32_ULE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b21 ==> BV32_SGE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b21 ==> BV32_SGE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b20 ==> BV32_SLE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b20 ==> BV32_SLE($c4.0$2, $0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p12$1 ==> _b19 ==> $c4.0$1 mod 1 == $0$1 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p12$2 ==> _b19 ==> $c4.0$2 mod 1 == $0$2 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -1048544) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)))), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32), 30) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048574), 1048576))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 30), 32) then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 28} p12$1 ==> true;
    v12$1 := (if p12$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2)) else v12$1);
    v12$2 := (if p12$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2)) else v12$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p14$1 := (if p12$1 && v12$1 then v12$1 else p14$1);
    p14$2 := (if p12$2 && v12$2 then v12$2 else p14$2);
    p13$1 := (if p12$1 && !v12$1 then !v12$1 else p13$1);
    p13$2 := (if p12$2 && !v12$2 then !v12$2 else p13$2);
    $1$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2) else $1$1);
    $1$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2) else $1$2);
    $1$1 := (if p14$1 then 31 else $1$1);
    $1$2 := (if p14$2 then 31 else $1$2);
    v13$1 := (if p12$1 then BV64_SLE($c4.0$1, $1$1) else v13$1);
    v13$2 := (if p12$2 then BV64_SLE($c4.0$2, $1$2) else v13$2);
    p15$1 := (if p12$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p12$2 && v13$2 then v13$2 else p15$2);
    p12$1 := (if p12$1 && !v13$1 then v13$1 else p12$1);
    p12$2 := (if p12$2 && !v13$2 then v13$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$kernel26.shared_a(p15$1, 0, $$kernel26.shared_a[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$kernel26.shared_a(p15$2, 0, $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_a"} true;
    v14$1 := (if p15$1 then $$kernel26.shared_a[1bv1][0] else v14$1);
    v14$2 := (if p15$2 then $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p15$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p15$2 then _HAVOC_int$2 else v15$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$kernel26.shared_a(p15$1, 0, $$kernel26.shared_a[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$kernel26.shared_a(p15$2, 0, $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_a"} true;
    v16$1 := (if p15$1 then $$kernel26.shared_a[1bv1][0] else v16$1);
    v16$2 := (if p15$2 then $$kernel26.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p15$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p15$2 then _HAVOC_int$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$kernel26.shared_c(p15$1, 0, $$kernel26.shared_c[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$kernel26.shared_c(p15$2, 0, $$kernel26.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_c"} true;
    v18$1 := (if p15$1 then $$kernel26.shared_c[1bv1][0] else v18$1);
    v18$2 := (if p15$2 then $$kernel26.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p15$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p15$2 then _HAVOC_int$2 else v19$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$kernel26.shared_d(p15$1, 0, $$kernel26.shared_d[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$kernel26.shared_d(p15$2, 0, $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_d"} true;
    v20$1 := (if p15$1 then $$kernel26.shared_d[1bv1][0] else v20$1);
    v20$2 := (if p15$2 then $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v20$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$q(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0), $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$q(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0), $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$q"} true;
    v21$1 := (if p15$1 then $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)] else v21$1);
    v21$2 := (if p15$2 then $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)] else v21$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$kernel26.shared_d(p15$1, 0, $$kernel26.shared_d[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$kernel26.shared_d(p15$2, 0, $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_d"} true;
    v22$1 := (if p15$1 then $$kernel26.shared_d[1bv1][0] else v22$1);
    v22$2 := (if p15$2 then $$kernel26.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p15$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p15$2 then _HAVOC_int$2 else v23$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$kernel26.shared_e(p15$1, 0, $$kernel26.shared_e[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$kernel26.shared_e(p15$2, 0, $$kernel26.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel26.shared_e"} true;
    v24$1 := (if p15$1 then $$kernel26.shared_e[1bv1][0] else v24$1);
    v24$2 := (if p15$2 then $$kernel26.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v24$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$q(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0), FDIV64(FADD64(FMUL64(FSUB64(-9223372036854775808, v20$1), v21$1), FADD64(FMUL64(FSUB64(-9223372036854775808, v18$1), v19$1), FADD64(FMUL64(FSUB64(-9223372036854775808, v14$1), v15$1), FMUL64(FADD64(FMUL64(4611686018427387904, v16$1), 4607182418800017408), v17$1)))), FADD64(FMUL64(v22$1, v23$1), v24$1)), $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$q(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0), FDIV64(FADD64(FMUL64(FSUB64(-9223372036854775808, v20$2), v21$2), FADD64(FMUL64(FSUB64(-9223372036854775808, v18$2), v19$2), FADD64(FMUL64(FSUB64(-9223372036854775808, v14$2), v15$2), FMUL64(FADD64(FMUL64(4611686018427387904, v16$2), 4607182418800017408), v17$2)))), FADD64(FMUL64(v22$2, v23$2), v24$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$q"} true;
    $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)] := (if p15$1 then FDIV64(FADD64(FMUL64(FSUB64(-9223372036854775808, v20$1), v21$1), FADD64(FMUL64(FSUB64(-9223372036854775808, v18$1), v19$1), FADD64(FMUL64(FSUB64(-9223372036854775808, v14$1), v15$1), FMUL64(FADD64(FMUL64(4611686018427387904, v16$1), 4607182418800017408), v17$1)))), FADD64(FMUL64(v22$1, v23$1), v24$1)) else $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)] := (if p15$2 then FDIV64(FADD64(FMUL64(FSUB64(-9223372036854775808, v20$2), v21$2), FADD64(FMUL64(FSUB64(-9223372036854775808, v18$2), v19$2), FADD64(FMUL64(FSUB64(-9223372036854775808, v14$2), v15$2), FMUL64(FADD64(FMUL64(4611686018427387904, v16$2), 4607182418800017408), v17$2)))), FADD64(FMUL64(v22$2, v23$2), v24$2)) else $$q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)]);
    $c4.0$1 := (if p15$1 then BV64_ADD($c4.0$1, 1) else $c4.0$1);
    $c4.0$2 := (if p15$2 then BV64_ADD($c4.0$2, 1) else $c4.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 48} $bugle_barrier_duplicated_1(-1, -1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $12;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$kernel26.shared_a, $$kernel26.shared_c, $$kernel26.shared_d, $$kernel26.shared_e, $$q, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel26.shared_a, $$kernel26.shared_c, $$kernel26.shared_d, $$kernel26.shared_e, $$q, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

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

const _WATCHED_VALUE_$$a: int;

procedure {:inline 1} _LOG_READ_$$a(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_READ_$$a(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _READ_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_READ_$$a(_P: bool, _offset: int, _value: int);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a: bool;

procedure {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$a, _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _WRITE_HAS_OCCURRED_$$a);
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



procedure _CHECK_WRITE_$$a(_P: bool, _offset: int, _value: int);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_ATOMIC_$$a(_P: bool, _offset: int);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



const _WATCHED_VALUE_$$c: int;

procedure {:inline 1} _LOG_READ_$$c(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$c;



implementation {:inline 1} _LOG_READ_$$c(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then true else _READ_HAS_OCCURRED_$$c);
    return;
}



procedure _CHECK_READ_$$c(_P: bool, _offset: int, _value: int);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$c);
  requires {:source_name "c"} {:array "$$c"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$c: bool;

procedure {:inline 1} _LOG_WRITE_$$c(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$c, _WRITE_READ_BENIGN_FLAG_$$c;



implementation {:inline 1} _LOG_WRITE_$$c(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then true else _WRITE_HAS_OCCURRED_$$c);
    _WRITE_READ_BENIGN_FLAG_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$c);
    return;
}



procedure _CHECK_WRITE_$$c(_P: bool, _offset: int, _value: int);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c != _value);
  requires {:source_name "c"} {:array "$$c"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c != _value);
  requires {:source_name "c"} {:array "$$c"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$c(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$c;



implementation {:inline 1} _LOG_ATOMIC_$$c(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$c);
    return;
}



procedure _CHECK_ATOMIC_$$c(_P: bool, _offset: int);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);
  requires {:source_name "c"} {:array "$$c"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$c;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$c := (if _P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$c);
    return;
}



const _WATCHED_VALUE_$$d: int;

procedure {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _READ_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_READ_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d: bool;

procedure {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _WRITE_HAS_OCCURRED_$$d);
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



procedure _CHECK_WRITE_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_ATOMIC_$$d(_P: bool, _offset: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



const _WATCHED_VALUE_$$e: int;

procedure {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _READ_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_READ_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$e);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$e: bool;

procedure {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$e, _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _WRITE_HAS_OCCURRED_$$e);
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



procedure _CHECK_WRITE_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_ATOMIC_$$e(_P: bool, _offset: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



const _WATCHED_VALUE_$$p: int;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_ATOMIC_$$p(_P: bool, _offset: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



const _WATCHED_VALUE_$$q: int;

procedure {:inline 1} _LOG_READ_$$q(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$q;



implementation {:inline 1} _LOG_READ_$$q(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then true else _READ_HAS_OCCURRED_$$q);
    return;
}



procedure _CHECK_READ_$$q(_P: bool, _offset: int, _value: int);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$q);
  requires {:source_name "q"} {:array "$$q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$q: bool;

procedure {:inline 1} _LOG_WRITE_$$q(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$q, _WRITE_READ_BENIGN_FLAG_$$q;



implementation {:inline 1} _LOG_WRITE_$$q(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then true else _WRITE_HAS_OCCURRED_$$q);
    _WRITE_READ_BENIGN_FLAG_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$q);
    return;
}



procedure _CHECK_WRITE_$$q(_P: bool, _offset: int, _value: int);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q != _value);
  requires {:source_name "q"} {:array "$$q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q != _value);
  requires {:source_name "q"} {:array "$$q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$q(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$q;



implementation {:inline 1} _LOG_ATOMIC_$$q(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$q);
    return;
}



procedure _CHECK_ATOMIC_$$q(_P: bool, _offset: int);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);
  requires {:source_name "q"} {:array "$$q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$q := (if _P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$q);
    return;
}



const _WATCHED_VALUE_$$v: int;

procedure {:inline 1} _LOG_READ_$$v(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v;



implementation {:inline 1} _LOG_READ_$$v(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then true else _READ_HAS_OCCURRED_$$v);
    return;
}



procedure _CHECK_READ_$$v(_P: bool, _offset: int, _value: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v);
  requires {:source_name "v"} {:array "$$v"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v: bool;

procedure {:inline 1} _LOG_WRITE_$$v(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v, _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:inline 1} _LOG_WRITE_$$v(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then true else _WRITE_HAS_OCCURRED_$$v);
    _WRITE_READ_BENIGN_FLAG_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v);
    return;
}



procedure _CHECK_WRITE_$$v(_P: bool, _offset: int, _value: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v != _value);
  requires {:source_name "v"} {:array "$$v"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v != _value);
  requires {:source_name "v"} {:array "$$v"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v;



implementation {:inline 1} _LOG_ATOMIC_$$v(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v);
    return;
}



procedure _CHECK_ATOMIC_$$v(_P: bool, _offset: int);
  requires {:source_name "v"} {:array "$$v"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);
  requires {:source_name "v"} {:array "$$v"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v := (if _P && _WRITE_HAS_OCCURRED_$$v && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v);
    return;
}



const _WATCHED_VALUE_$$kernel26.shared_a: int;

procedure {:inline 1} _LOG_READ_$$kernel26.shared_a(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel26.shared_a;



implementation {:inline 1} _LOG_READ_$$kernel26.shared_a(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel26.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_a == _value then true else _READ_HAS_OCCURRED_$$kernel26.shared_a);
    return;
}



procedure _CHECK_READ_$$kernel26.shared_a(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel26.shared_a(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel26.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a;



implementation {:inline 1} _LOG_WRITE_$$kernel26.shared_a(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel26.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_a == _value then true else _WRITE_HAS_OCCURRED_$$kernel26.shared_a);
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a);
    return;
}



procedure _CHECK_WRITE_$$kernel26.shared_a(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel26.shared_a(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a;



implementation {:inline 1} _LOG_ATOMIC_$$kernel26.shared_a(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel26.shared_a);
    return;
}



procedure _CHECK_ATOMIC_$$kernel26.shared_a(_P: bool, _offset: int);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel26.shared_a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a := (if _P && _WRITE_HAS_OCCURRED_$$kernel26.shared_a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_a);
    return;
}



const _WATCHED_VALUE_$$kernel26.shared_c: int;

procedure {:inline 1} _LOG_READ_$$kernel26.shared_c(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel26.shared_c;



implementation {:inline 1} _LOG_READ_$$kernel26.shared_c(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel26.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_c == _value then true else _READ_HAS_OCCURRED_$$kernel26.shared_c);
    return;
}



procedure _CHECK_READ_$$kernel26.shared_c(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel26.shared_c(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel26.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c;



implementation {:inline 1} _LOG_WRITE_$$kernel26.shared_c(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel26.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_c == _value then true else _WRITE_HAS_OCCURRED_$$kernel26.shared_c);
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_c == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c);
    return;
}



procedure _CHECK_WRITE_$$kernel26.shared_c(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_c != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_c != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel26.shared_c(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c;



implementation {:inline 1} _LOG_ATOMIC_$$kernel26.shared_c(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel26.shared_c);
    return;
}



procedure _CHECK_ATOMIC_$$kernel26.shared_c(_P: bool, _offset: int);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel26.shared_c"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c := (if _P && _WRITE_HAS_OCCURRED_$$kernel26.shared_c && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_c);
    return;
}



const _WATCHED_VALUE_$$kernel26.shared_d: int;

procedure {:inline 1} _LOG_READ_$$kernel26.shared_d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel26.shared_d;



implementation {:inline 1} _LOG_READ_$$kernel26.shared_d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel26.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_d == _value then true else _READ_HAS_OCCURRED_$$kernel26.shared_d);
    return;
}



procedure _CHECK_READ_$$kernel26.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel26.shared_d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel26.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d;



implementation {:inline 1} _LOG_WRITE_$$kernel26.shared_d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel26.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_d == _value then true else _WRITE_HAS_OCCURRED_$$kernel26.shared_d);
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d);
    return;
}



procedure _CHECK_WRITE_$$kernel26.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel26.shared_d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d;



implementation {:inline 1} _LOG_ATOMIC_$$kernel26.shared_d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel26.shared_d);
    return;
}



procedure _CHECK_ATOMIC_$$kernel26.shared_d(_P: bool, _offset: int);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel26.shared_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d := (if _P && _WRITE_HAS_OCCURRED_$$kernel26.shared_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_d);
    return;
}



const _WATCHED_VALUE_$$kernel26.shared_e: int;

procedure {:inline 1} _LOG_READ_$$kernel26.shared_e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel26.shared_e;



implementation {:inline 1} _LOG_READ_$$kernel26.shared_e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel26.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_e == _value then true else _READ_HAS_OCCURRED_$$kernel26.shared_e);
    return;
}



procedure _CHECK_READ_$$kernel26.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel26.shared_e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel26.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e;



implementation {:inline 1} _LOG_WRITE_$$kernel26.shared_e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel26.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_e == _value then true else _WRITE_HAS_OCCURRED_$$kernel26.shared_e);
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e);
    return;
}



procedure _CHECK_WRITE_$$kernel26.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel26.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel26.shared_e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e;



implementation {:inline 1} _LOG_ATOMIC_$$kernel26.shared_e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel26.shared_e);
    return;
}



procedure _CHECK_ATOMIC_$$kernel26.shared_e(_P: bool, _offset: int);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel26.shared_e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e := (if _P && _WRITE_HAS_OCCURRED_$$kernel26.shared_e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel26.shared_e);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_a;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_a;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_a;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_c;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_c;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_c;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_d;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_d;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_d;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_e;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_e;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_e;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$q;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$q;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel26.shared_a;
    goto anon6;

  anon6:
    havoc $$kernel26.shared_c;
    goto anon7;

  anon7:
    havoc $$kernel26.shared_d;
    goto anon8;

  anon8:
    havoc $$kernel26.shared_e;
    goto anon9;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_a;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_a;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_a;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_c;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_c;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_c;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_d;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_d;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_d;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel26.shared_e;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel26.shared_e;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel26.shared_e;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$q;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$q;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel26.shared_a;
    goto anon6;

  anon6:
    havoc $$kernel26.shared_c;
    goto anon7;

  anon7:
    havoc $$kernel26.shared_d;
    goto anon8;

  anon8:
    havoc $$kernel26.shared_e;
    goto anon9;

  anon13_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

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
