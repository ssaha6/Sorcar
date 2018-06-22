type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "A"} {:global} $$A: [int]int;

axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$u1"} {:global} {:elem_width 64} {:source_name "u1"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$u1: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$u1: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$u1: bool;

axiom {:array_info "$$u2"} {:global} {:elem_width 64} {:source_name "u2"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$u2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$u2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$u2: bool;

axiom {:array_info "$$v1"} {:global} {:elem_width 64} {:source_name "v1"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v1: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v1: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v1: bool;

axiom {:array_info "$$v2"} {:global} {:elem_width 64} {:source_name "v2"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v2: bool;

var {:source_name "shared_u1"} {:group_shared} $$kernel0.shared_u1: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_u1"} {:group_shared} {:elem_width 64} {:source_name "shared_u1"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel0.shared_u1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1: bool;

var {:source_name "shared_u2"} {:group_shared} $$kernel0.shared_u2: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_u2"} {:group_shared} {:elem_width 64} {:source_name "shared_u2"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel0.shared_u2: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2: bool;

var {:source_name "shared_v1"} {:group_shared} $$kernel0.shared_v1: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_v1"} {:group_shared} {:elem_width 64} {:source_name "shared_v1"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel0.shared_v1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1: bool;

var {:source_name "shared_v2"} {:group_shared} $$kernel0.shared_v2: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_v2"} {:group_shared} {:elem_width 64} {:source_name "shared_v2"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel0.shared_v2: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2: bool;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
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

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
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

procedure {:source_name "kernel0"} {:kernel} $kernel0($n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 4096 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$u1 && !_WRITE_HAS_OCCURRED_$$u1 && !_ATOMIC_HAS_OCCURRED_$$u1;
  requires !_READ_HAS_OCCURRED_$$u2 && !_WRITE_HAS_OCCURRED_$$u2 && !_ATOMIC_HAS_OCCURRED_$$u2;
  requires !_READ_HAS_OCCURRED_$$v1 && !_WRITE_HAS_OCCURRED_$$v1 && !_ATOMIC_HAS_OCCURRED_$$v1;
  requires !_READ_HAS_OCCURRED_$$v2 && !_WRITE_HAS_OCCURRED_$$v2 && !_ATOMIC_HAS_OCCURRED_$$v2;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_u1 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_u2 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_v1 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_v2 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;
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
  modifies $$kernel0.shared_u1, $$kernel0.shared_u2, $$kernel0.shared_v1, $$kernel0.shared_v2, _WRITE_HAS_OCCURRED_$$kernel0.shared_u1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1, _WRITE_HAS_OCCURRED_$$kernel0.shared_u2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2, $$A, _TRACKING, _WRITE_HAS_OCCURRED_$$kernel0.shared_v1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1, _WRITE_HAS_OCCURRED_$$kernel0.shared_v2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2, _TRACKING, _READ_HAS_OCCURRED_$$A, _READ_HAS_OCCURRED_$$kernel0.shared_u1, _READ_HAS_OCCURRED_$$kernel0.shared_v1, _READ_HAS_OCCURRED_$$kernel0.shared_u2, _READ_HAS_OCCURRED_$$kernel0.shared_v2, _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _TRACKING, _TRACKING;



implementation {:source_name "kernel0"} {:kernel} $kernel0($n: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c11.0$1: int;
  var $c11.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $c12.0$1: int;
  var $c12.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $2$1: int;
  var $2$2: int;
  var $c23.0$1: int;
  var $c23.0$2: int;
  var $3$1: int;
  var $3$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $4$1: int;
  var $4$2: int;
  var v1$1: int;
  var v1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: int;
  var v9$2: int;
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
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: int;
  var v17$2: int;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$11: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$19: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$19: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$19: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$19: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$22: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$29: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$38: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$38: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$38: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$38: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$38: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$38: bool;


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
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b141 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b140 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b139 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "noread"} _b138 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b137 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b136 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b135 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "noread"} _b134 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b133 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b132 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b131 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "noread"} _b130 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b129 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b128 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b127 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "noread"} _b126 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b125 ==> _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b124 ==> _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b123 ==> !_WRITE_HAS_OCCURRED_$$A;
    assert {:tag "noread"} _b122 ==> !_READ_HAS_OCCURRED_$$A;
    assert {:tag "predicatedEquality"} _b121 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b120 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b119 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b118 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b117 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> $c23.0$1 == $c23.0$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> $c12.0$1 == $c12.0$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> $c11.0$1 == $c11.0$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b85 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b84 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $c0.0$1 mod 8192 == BV64_MUL(32, v0$1) mod 8192;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $c0.0$2 mod 8192 == BV64_MUL(32, v0$2) mod 8192;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 9} p0$1 ==> true;
    v5$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($n)) else v5$1);
    v5$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($n)) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p8$1 := false;
    p8$2 := false;
    p12$1 := false;
    p12$2 := false;
    p30$1 := false;
    p30$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    v6$1 := (if p1$1 then v3$1 == 0 else v6$1);
    v6$2 := (if p1$2 then v3$2 == 0 else v6$2);
    p3$1 := (if p1$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p1$2 && v6$2 then v6$2 else p3$2);
    $c1.0$1 := (if p3$1 then v4$1 else $c1.0$1);
    $c1.0$2 := (if p3$2 then v4$2 else $c1.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$4 := _WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_6"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b143 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$4 == _WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b142 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b74 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV32_ZEXT64(local_id_x$1) == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b73 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b72 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0 && BV64_SLE($c1.0$1, $0$1) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b72 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0 && BV64_SLE($c1.0$2, $0$2) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b71 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b71 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0;
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b70 ==> BV32_UGE($c1.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b70 ==> BV32_UGE($c1.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b69 ==> BV32_ULE($c1.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b69 ==> BV32_ULE($c1.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b68 ==> BV32_SGE($c1.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b68 ==> BV32_SGE($c1.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b67 ==> BV32_SLE($c1.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b67 ==> BV32_SLE($c1.0$2, v4$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b66 ==> $c1.0$1 mod 16 == v4$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b66 ==> $c1.0$2 mod 16 == v4$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 12} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$1), 1)) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$2), 1)) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p6$1 := (if p4$1 && v7$1 then v7$1 else p6$1);
    p6$2 := (if p4$2 && v7$2 then v7$2 else p6$2);
    p5$1 := (if p4$1 && !v7$1 then !v7$1 else p5$1);
    p5$2 := (if p4$2 && !v7$2 then !v7$2 else p5$2);
    $0$1 := (if p5$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$1), 1) else $0$1);
    $0$2 := (if p5$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$2), 1) else $0$2);
    $0$1 := (if p6$1 then 31 else $0$1);
    $0$2 := (if p6$2 then 31 else $0$2);
    v8$1 := (if p4$1 then BV64_SLE($c1.0$1, $0$1) else v8$1);
    v8$2 := (if p4$2 then BV64_SLE($c1.0$2, $0$2) else v8$2);
    p7$1 := (if p4$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p4$2 && v8$2 then v8$2 else p7$2);
    p4$1 := (if p4$1 && !v8$1 then v8$1 else p4$1);
    p4$2 := (if p4$2 && !v8$2 then v8$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p7$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p7$2 then _HAVOC_int$2 else v9$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$kernel0.shared_u1(p7$1, BV_EXTRACT($c1.0$1, 32, 0), v9$1, $$kernel0.shared_u1[1bv1][BV_EXTRACT($c1.0$1, 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1(p7$2, BV_EXTRACT($c1.0$2, 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$kernel0.shared_u1(p7$2, BV_EXTRACT($c1.0$2, 32, 0), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_u1"} true;
    $$kernel0.shared_u1[1bv1][BV_EXTRACT($c1.0$1, 32, 0)] := (if p7$1 then v9$1 else $$kernel0.shared_u1[1bv1][BV_EXTRACT($c1.0$1, 32, 0)]);
    $$kernel0.shared_u1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c1.0$2, 32, 0)] := (if p7$2 then v9$2 else $$kernel0.shared_u1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c1.0$2, 32, 0)]);
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 16) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 16) else $c1.0$2);
    p4$1 := (if p7$1 then true else p4$1);
    p4$2 := (if p7$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    $c11.0$1 := (if p3$1 then v4$1 else $c11.0$1);
    $c11.0$2 := (if p3$2 then v4$2 else $c11.0$2);
    p8$1 := (if p3$1 then true else p8$1);
    p8$2 := (if p3$2 then true else p8$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$11 := _WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b145 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$11 == _WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b144 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p3"} true;
    assert p8$1 ==> p0$1;
    assert p8$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b83 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV32_ZEXT64(local_id_x$1) == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b82 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b81 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0 && BV64_SLE($c11.0$1, $1$1) ==> p8$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b81 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0 && BV64_SLE($c11.0$2, $1$2) ==> p8$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p8$1 ==> _b80 ==> p8$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p8$2 ==> _b80 ==> p8$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0;
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b79 ==> BV32_UGE($c11.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b79 ==> BV32_UGE($c11.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b78 ==> BV32_ULE($c11.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b78 ==> BV32_ULE($c11.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b77 ==> BV32_SGE($c11.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b77 ==> BV32_SGE($c11.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b76 ==> BV32_SLE($c11.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b76 ==> BV32_SLE($c11.0$2, v4$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p8$1 ==> _b75 ==> $c11.0$1 mod 16 == v4$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p8$2 ==> _b75 ==> $c11.0$2 mod 16 == v4$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 21} p8$1 ==> true;
    v10$1 := (if p8$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$1), 1)) else v10$1);
    v10$2 := (if p8$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$2), 1)) else v10$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p10$1 := (if p8$1 && v10$1 then v10$1 else p10$1);
    p10$2 := (if p8$2 && v10$2 then v10$2 else p10$2);
    p9$1 := (if p8$1 && !v10$1 then !v10$1 else p9$1);
    p9$2 := (if p8$2 && !v10$2 then !v10$2 else p9$2);
    $1$1 := (if p9$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$1), 1) else $1$1);
    $1$2 := (if p9$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c0.0$2), 1) else $1$2);
    $1$1 := (if p10$1 then 31 else $1$1);
    $1$2 := (if p10$2 then 31 else $1$2);
    v11$1 := (if p8$1 then BV64_SLE($c11.0$1, $1$1) else v11$1);
    v11$2 := (if p8$2 then BV64_SLE($c11.0$2, $1$2) else v11$2);
    p11$1 := (if p8$1 && v11$1 then v11$1 else p11$1);
    p11$2 := (if p8$2 && v11$2 then v11$2 else p11$2);
    p8$1 := (if p8$1 && !v11$1 then v11$1 else p8$1);
    p8$2 := (if p8$2 && !v11$2 then v11$2 else p8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p11$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p11$2 then _HAVOC_int$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$kernel0.shared_u2(p11$1, BV_EXTRACT($c11.0$1, 32, 0), v12$1, $$kernel0.shared_u2[1bv1][BV_EXTRACT($c11.0$1, 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2(p11$2, BV_EXTRACT($c11.0$2, 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$kernel0.shared_u2(p11$2, BV_EXTRACT($c11.0$2, 32, 0), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_u2"} true;
    $$kernel0.shared_u2[1bv1][BV_EXTRACT($c11.0$1, 32, 0)] := (if p11$1 then v12$1 else $$kernel0.shared_u2[1bv1][BV_EXTRACT($c11.0$1, 32, 0)]);
    $$kernel0.shared_u2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c11.0$2, 32, 0)] := (if p11$2 then v12$2 else $$kernel0.shared_u2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c11.0$2, 32, 0)]);
    $c11.0$1 := (if p11$1 then BV64_ADD($c11.0$1, 16) else $c11.0$1);
    $c11.0$2 := (if p11$2 then BV64_ADD($c11.0$2, 16) else $c11.0$2);
    p8$1 := (if p11$1 then true else p8$1);
    p8$2 := (if p11$2 then true else p8$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p8$1 && !p8$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 31} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
    $c12.0$1 := (if p1$1 then BV64_MUL(32, v1$1) else $c12.0$1);
    $c12.0$2 := (if p1$2 then BV64_MUL(32, v1$2) else $c12.0$2);
    p12$1 := (if p1$1 then true else p12$1);
    p12$2 := (if p1$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$A$ghost$$19 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$A$ghost$$19 := _WRITE_HAS_OCCURRED_$$A;
    _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$19 := _READ_HAS_OCCURRED_$$kernel0.shared_u1;
    _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$19 := _READ_HAS_OCCURRED_$$kernel0.shared_u2;
    _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19 := _READ_HAS_OCCURRED_$$kernel0.shared_v1;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19 := _WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19 := _READ_HAS_OCCURRED_$$kernel0.shared_v2;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19 := _WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $19;

  $19:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b194 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19 == _WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "disabledMaintainsInstrumentation"} _b193 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$19 == _READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b192 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b191 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b190 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "noread"} _b189 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "disabledMaintainsInstrumentation"} _b188 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19 == _WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "disabledMaintainsInstrumentation"} _b187 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$19 == _READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b186 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b185 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b184 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "noread"} _b183 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "disabledMaintainsInstrumentation"} _b182 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$19 == _READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b181 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "noread"} _b180 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "disabledMaintainsInstrumentation"} _b179 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$19 == _READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b178 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "noread"} _b177 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "disabledMaintainsInstrumentation"} _b176 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$19 == _WRITE_HAS_OCCURRED_$$A;
    assert {:tag "disabledMaintainsInstrumentation"} _b175 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$19 == _READ_HAS_OCCURRED_$$A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b174 ==> _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b173 ==> _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b172 ==> !_WRITE_HAS_OCCURRED_$$A;
    assert {:tag "noread"} _b171 ==> !_READ_HAS_OCCURRED_$$A;
    assert {:tag "predicatedEquality"} _b170 ==> p12$1 && p12$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b169 ==> p12$1 && p12$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b168 ==> p12$1 && p12$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b167 ==> p12$1 && p12$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b166 ==> p12$1 && p12$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b165 ==> p12$1 && p12$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b164 ==> p12$1 && p12$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b163 ==> p12$1 && p12$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b162 ==> p12$1 && p12$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b161 ==> p12$1 && p12$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b160 ==> p12$1 && p12$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b159 ==> p12$1 && p12$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b158 ==> p12$1 && p12$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b157 ==> p12$1 && p12$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b156 ==> p12$1 && p12$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b155 ==> p12$1 && p12$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b154 ==> p12$1 && p12$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b153 ==> p12$1 && p12$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b152 ==> p12$1 && p12$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b151 ==> p12$1 && p12$2 ==> $c23.0$1 == $c23.0$2;
    assert {:tag "predicatedEquality"} _b150 ==> p12$1 && p12$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b149 ==> p12$1 && p12$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b148 ==> p12$1 && p12$2 ==> $c12.0$1 == $c12.0$2;
    assert {:tag "loopPredicateEquality"} _b147 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p12$1 == p12$2;
    assert {:tag "loopPredicateEquality"} _b146 ==> p12$1 == p12$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p1"} true;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b11 ==> p12$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b11 ==> p12$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n));
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b10 ==> BV32_UGE($c12.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b10 ==> BV32_UGE($c12.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b9 ==> BV32_ULE($c12.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b9 ==> BV32_ULE($c12.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b8 ==> BV32_SGE($c12.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b8 ==> BV32_SGE($c12.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b7 ==> BV32_SLE($c12.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b7 ==> BV32_SLE($c12.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p12$1 ==> _b6 ==> $c12.0$1 mod 8192 == BV64_MUL(32, v1$1) mod 8192;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p12$2 ==> _b6 ==> $c12.0$2 mod 8192 == BV64_MUL(32, v1$2) mod 8192;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 32} p12$1 ==> true;
    v13$1 := (if p12$1 then BV64_SLT($c12.0$1, BV32_SEXT64($n)) else v13$1);
    v13$2 := (if p12$2 then BV64_SLT($c12.0$2, BV32_SEXT64($n)) else v13$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p20$1 := false;
    p20$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p13$1 := (if p12$1 && v13$1 then v13$1 else p13$1);
    p13$2 := (if p12$2 && v13$2 then v13$2 else p13$2);
    p12$1 := (if p12$1 && !v13$1 then v13$1 else p12$1);
    p12$2 := (if p12$2 && !v13$2 then v13$2 else p12$2);
    v14$1 := (if p13$1 then v3$1 == 0 else v14$1);
    v14$2 := (if p13$2 then v3$2 == 0 else v14$2);
    p15$1 := (if p13$1 && v14$1 then v14$1 else p15$1);
    p15$2 := (if p13$2 && v14$2 then v14$2 else p15$2);
    $c2.0$1 := (if p15$1 then v4$1 else $c2.0$1);
    $c2.0$2 := (if p15$2 then v4$2 else $c2.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$22 := _WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $22;

  $22:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b196 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$22 == _WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b195 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p12$1;
    assert p16$2 ==> p12$2;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b55 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV32_ZEXT64(local_id_x$1) == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b54 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b53 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b52 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0 && BV64_SLE($c2.0$1, $2$1) ==> p16$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b52 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0 && BV64_SLE($c2.0$2, $2$2) ==> p16$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p16$1 ==> _b51 ==> p16$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p16$2 ==> _b51 ==> p16$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0;
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b50 ==> BV32_UGE($c2.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b50 ==> BV32_UGE($c2.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b49 ==> BV32_ULE($c2.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b49 ==> BV32_ULE($c2.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b48 ==> BV32_SGE($c2.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b48 ==> BV32_SGE($c2.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b47 ==> BV32_SLE($c2.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b47 ==> BV32_SLE($c2.0$2, v4$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p16$1 ==> _b46 ==> $c2.0$1 mod 16 == v4$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p16$2 ==> _b46 ==> $c2.0$2 mod 16 == v4$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 35} p16$1 ==> true;
    v15$1 := (if p16$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1)) else v15$1);
    v15$2 := (if p16$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1)) else v15$2);
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p18$1 := (if p16$1 && v15$1 then v15$1 else p18$1);
    p18$2 := (if p16$2 && v15$2 then v15$2 else p18$2);
    p17$1 := (if p16$1 && !v15$1 then !v15$1 else p17$1);
    p17$2 := (if p16$2 && !v15$2 then !v15$2 else p17$2);
    $2$1 := (if p17$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1) else $2$1);
    $2$2 := (if p17$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1) else $2$2);
    $2$1 := (if p18$1 then 31 else $2$1);
    $2$2 := (if p18$2 then 31 else $2$2);
    v16$1 := (if p16$1 then BV64_SLE($c2.0$1, $2$1) else v16$1);
    v16$2 := (if p16$2 then BV64_SLE($c2.0$2, $2$2) else v16$2);
    p19$1 := (if p16$1 && v16$1 then v16$1 else p19$1);
    p19$2 := (if p16$2 && v16$2 then v16$2 else p19$2);
    p16$1 := (if p16$1 && !v16$1 then v16$1 else p16$1);
    p16$2 := (if p16$2 && !v16$2 then v16$2 else p16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p19$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p19$2 then _HAVOC_int$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$kernel0.shared_v1(p19$1, BV_EXTRACT($c2.0$1, 32, 0), v17$1, $$kernel0.shared_v1[1bv1][BV_EXTRACT($c2.0$1, 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1(p19$2, BV_EXTRACT($c2.0$2, 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$kernel0.shared_v1(p19$2, BV_EXTRACT($c2.0$2, 32, 0), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_v1"} true;
    $$kernel0.shared_v1[1bv1][BV_EXTRACT($c2.0$1, 32, 0)] := (if p19$1 then v17$1 else $$kernel0.shared_v1[1bv1][BV_EXTRACT($c2.0$1, 32, 0)]);
    $$kernel0.shared_v1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c2.0$2, 32, 0)] := (if p19$2 then v17$2 else $$kernel0.shared_v1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c2.0$2, 32, 0)]);
    $c2.0$1 := (if p19$1 then BV64_ADD($c2.0$1, 16) else $c2.0$1);
    $c2.0$2 := (if p19$2 then BV64_ADD($c2.0$2, 16) else $c2.0$2);
    p16$1 := (if p19$1 then true else p16$1);
    p16$2 := (if p19$2 then true else p16$2);
    goto $22.backedge, $22.tail;

  $22.tail:
    assume !p16$1 && !p16$2;
    $c23.0$1 := (if p15$1 then v4$1 else $c23.0$1);
    $c23.0$2 := (if p15$2 then v4$2 else $c23.0$2);
    p20$1 := (if p15$1 then true else p20$1);
    p20$2 := (if p15$2 then true else p20$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$29 := _WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $29;

  $29:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b198 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$29 == _WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b197 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p20"} {:dominator_predicate "p15"} true;
    assert p20$1 ==> p12$1;
    assert p20$2 ==> p12$2;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b65 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV32_ZEXT64(local_id_x$1) == 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b64 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b63 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b62 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0 && BV64_SLE($c23.0$1, $3$1) ==> p20$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b62 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0 && BV64_SLE($c23.0$2, $3$2) ==> p20$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p20$1 ==> _b61 ==> p20$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$1) == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p20$2 ==> _b61 ==> p20$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV32_ZEXT64(local_id_x$2) == 0;
    assert {:tag "loopBound"} {:thread 1} p20$1 ==> _b60 ==> BV32_UGE($c23.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p20$2 ==> _b60 ==> BV32_UGE($c23.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p20$1 ==> _b59 ==> BV32_ULE($c23.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p20$2 ==> _b59 ==> BV32_ULE($c23.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p20$1 ==> _b58 ==> BV32_SGE($c23.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p20$2 ==> _b58 ==> BV32_SGE($c23.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p20$1 ==> _b57 ==> BV32_SLE($c23.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p20$2 ==> _b57 ==> BV32_SLE($c23.0$2, v4$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p20$1 ==> _b56 ==> $c23.0$1 mod 16 == v4$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p20$2 ==> _b56 ==> $c23.0$2 mod 16 == v4$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 44} p20$1 ==> true;
    v18$1 := (if p20$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1)) else v18$1);
    v18$2 := (if p20$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1)) else v18$2);
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p22$1 := (if p20$1 && v18$1 then v18$1 else p22$1);
    p22$2 := (if p20$2 && v18$2 then v18$2 else p22$2);
    p21$1 := (if p20$1 && !v18$1 then !v18$1 else p21$1);
    p21$2 := (if p20$2 && !v18$2 then !v18$2 else p21$2);
    $3$1 := (if p21$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1) else $3$1);
    $3$2 := (if p21$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1) else $3$2);
    $3$1 := (if p22$1 then 31 else $3$1);
    $3$2 := (if p22$2 then 31 else $3$2);
    v19$1 := (if p20$1 then BV64_SLE($c23.0$1, $3$1) else v19$1);
    v19$2 := (if p20$2 then BV64_SLE($c23.0$2, $3$2) else v19$2);
    p23$1 := (if p20$1 && v19$1 then v19$1 else p23$1);
    p23$2 := (if p20$2 && v19$2 then v19$2 else p23$2);
    p20$1 := (if p20$1 && !v19$1 then v19$1 else p20$1);
    p20$2 := (if p20$2 && !v19$2 then v19$2 else p20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p23$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p23$2 then _HAVOC_int$2 else v20$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$kernel0.shared_v2(p23$1, BV_EXTRACT($c23.0$1, 32, 0), v20$1, $$kernel0.shared_v2[1bv1][BV_EXTRACT($c23.0$1, 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2(p23$2, BV_EXTRACT($c23.0$2, 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$kernel0.shared_v2(p23$2, BV_EXTRACT($c23.0$2, 32, 0), v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_v2"} true;
    $$kernel0.shared_v2[1bv1][BV_EXTRACT($c23.0$1, 32, 0)] := (if p23$1 then v20$1 else $$kernel0.shared_v2[1bv1][BV_EXTRACT($c23.0$1, 32, 0)]);
    $$kernel0.shared_v2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c23.0$2, 32, 0)] := (if p23$2 then v20$2 else $$kernel0.shared_v2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c23.0$2, 32, 0)]);
    $c23.0$1 := (if p23$1 then BV64_ADD($c23.0$1, 16) else $c23.0$1);
    $c23.0$2 := (if p23$2 then BV64_ADD($c23.0$2, 16) else $c23.0$2);
    p20$1 := (if p23$1 then true else p20$1);
    p20$2 := (if p23$2 then true else p20$2);
    goto $29.backedge, __partitioned_block_$29.tail_0;

  __partitioned_block_$29.tail_0:
    assume !p20$1 && !p20$2;
    goto __partitioned_block_$29.tail_1;

  __partitioned_block_$29.tail_1:
    call {:sourceloc_num 54} $bugle_barrier_duplicated_2(-1, -1, p13$1, p13$2);
    v21$1 := (if p13$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1)) else v21$1);
    v21$2 := (if p13$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1)) else v21$2);
    p25$1 := (if p13$1 && v21$1 then v21$1 else p25$1);
    p25$2 := (if p13$2 && v21$2 then v21$2 else p25$2);
    $c3.0$1 := (if p25$1 then v4$1 else $c3.0$1);
    $c3.0$2 := (if p25$2 then v4$2 else $c3.0$2);
    p26$1 := (if p25$1 then true else p26$1);
    p26$2 := (if p25$2 then true else p26$2);
    _READ_HAS_OCCURRED_$$A$ghost$$38 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$A$ghost$$38 := _WRITE_HAS_OCCURRED_$$A;
    _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$38 := _READ_HAS_OCCURRED_$$kernel0.shared_u1;
    _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$38 := _READ_HAS_OCCURRED_$$kernel0.shared_u2;
    _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$38 := _READ_HAS_OCCURRED_$$kernel0.shared_v1;
    _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$38 := _READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $38;

  $38:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b210 ==> !p25$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2$ghost$$38 == _READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b209 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "disabledMaintainsInstrumentation"} _b208 ==> !p25$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1$ghost$$38 == _READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b207 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "disabledMaintainsInstrumentation"} _b206 ==> !p25$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2$ghost$$38 == _READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b205 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b204 ==> !p25$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1$ghost$$38 == _READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b203 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b202 ==> !p25$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$38 == _WRITE_HAS_OCCURRED_$$A;
    assert {:tag "disabledMaintainsInstrumentation"} _b201 ==> !p25$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$38 == _READ_HAS_OCCURRED_$$A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b200 ==> _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b199 ==> _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p26"} {:dominator_predicate "p25"} true;
    assert p26$1 ==> p12$1;
    assert p26$2 ==> p12$2;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _WRITE_HAS_OCCURRED_$$A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _WRITE_HAS_OCCURRED_$$A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u2 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$kernel0.shared_v1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$kernel0.shared_u1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c12.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b27 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $4$1) ==> p26$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b27 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $4$2) ==> p26$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p26$1 ==> _b26 ==> p26$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLT($c12.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p26$2 ==> _b26 ==> p26$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLT($c12.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b25 ==> BV32_UGE($c3.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b25 ==> BV32_UGE($c3.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b24 ==> BV32_ULE($c3.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b24 ==> BV32_ULE($c3.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b23 ==> BV32_SGE($c3.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b23 ==> BV32_SGE($c3.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b22 ==> BV32_SLE($c3.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b22 ==> BV32_SLE($c3.0$2, v4$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p26$1 ==> _b21 ==> $c3.0$1 mod 16 == v4$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p26$2 ==> _b21 ==> $c3.0$2 mod 16 == v4$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$u1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$v1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$v2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$u2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)))), 31), 8192), 31) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 56} p26$1 ==> true;
    v22$1 := (if p26$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1)) else v22$1);
    v22$2 := (if p26$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1)) else v22$2);
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p28$1 := (if p26$1 && v22$1 then v22$1 else p28$1);
    p28$2 := (if p26$2 && v22$2 then v22$2 else p28$2);
    p27$1 := (if p26$1 && !v22$1 then !v22$1 else p27$1);
    p27$2 := (if p26$2 && !v22$2 then !v22$2 else p27$2);
    $4$1 := (if p27$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$1), 1) else $4$1);
    $4$2 := (if p27$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c12.0$2), 1) else $4$2);
    $4$1 := (if p28$1 then 31 else $4$1);
    $4$2 := (if p28$2 then 31 else $4$2);
    v23$1 := (if p26$1 then BV64_SLE($c3.0$1, $4$1) else v23$1);
    v23$2 := (if p26$2 then BV64_SLE($c3.0$2, $4$2) else v23$2);
    p29$1 := (if p26$1 && v23$1 then v23$1 else p29$1);
    p29$2 := (if p26$2 && v23$2 then v23$2 else p29$2);
    p26$1 := (if p26$1 && !v23$1 then v23$1 else p26$1);
    p26$2 := (if p26$2 && !v23$2 then v23$2 else p26$2);
    call {:sourceloc} {:sourceloc_num 61} _LOG_READ_$$A(p29$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 61} _CHECK_READ_$$A(p29$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v24$1 := (if p29$1 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0)] else v24$1);
    v24$2 := (if p29$2 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0)] else v24$2);
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$kernel0.shared_u1(p29$1, v2$1, $$kernel0.shared_u1[1bv1][v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$kernel0.shared_u1(p29$2, v2$2, $$kernel0.shared_u1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_u1"} true;
    v25$1 := (if p29$1 then $$kernel0.shared_u1[1bv1][v2$1] else v25$1);
    v25$2 := (if p29$2 then $$kernel0.shared_u1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2] else v25$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$kernel0.shared_v1(p29$1, BV_EXTRACT($c3.0$1, 32, 0), $$kernel0.shared_v1[1bv1][BV_EXTRACT($c3.0$1, 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$kernel0.shared_v1(p29$2, BV_EXTRACT($c3.0$2, 32, 0), $$kernel0.shared_v1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_v1"} true;
    v26$1 := (if p29$1 then $$kernel0.shared_v1[1bv1][BV_EXTRACT($c3.0$1, 32, 0)] else v26$1);
    v26$2 := (if p29$2 then $$kernel0.shared_v1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)] else v26$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$kernel0.shared_u2(p29$1, v2$1, $$kernel0.shared_u2[1bv1][v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$kernel0.shared_u2(p29$2, v2$2, $$kernel0.shared_u2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_u2"} true;
    v27$1 := (if p29$1 then $$kernel0.shared_u2[1bv1][v2$1] else v27$1);
    v27$2 := (if p29$2 then $$kernel0.shared_u2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2] else v27$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_READ_$$kernel0.shared_v2(p29$1, BV_EXTRACT($c3.0$1, 32, 0), $$kernel0.shared_v2[1bv1][BV_EXTRACT($c3.0$1, 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 65} _CHECK_READ_$$kernel0.shared_v2(p29$2, BV_EXTRACT($c3.0$2, 32, 0), $$kernel0.shared_v2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_v2"} true;
    v28$1 := (if p29$1 then $$kernel0.shared_v2[1bv1][BV_EXTRACT($c3.0$1, 32, 0)] else v28$1);
    v28$2 := (if p29$2 then $$kernel0.shared_v2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)] else v28$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$A(p29$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0), FADD64(FMUL64(v27$1, v28$1), FADD64(FMUL64(v25$1, v26$1), v24$1)), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(p29$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$A(p29$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0), FADD64(FMUL64(v27$2, v28$2), FADD64(FMUL64(v25$2, v26$2), v24$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$A"} true;
    $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0)] := (if p29$1 then FADD64(FMUL64(v27$1, v28$1), FADD64(FMUL64(v25$1, v26$1), v24$1)) else $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($n)), BV64_ADD($c12.0$1, $c3.0$1)), 32, 0)]);
    $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0)] := (if p29$2 then FADD64(FMUL64(v27$2, v28$2), FADD64(FMUL64(v25$2, v26$2), v24$2)) else $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($n)), BV64_ADD($c12.0$2, $c3.0$2)), 32, 0)]);
    $c3.0$1 := (if p29$1 then BV64_ADD($c3.0$1, 16) else $c3.0$1);
    $c3.0$2 := (if p29$2 then BV64_ADD($c3.0$2, 16) else $c3.0$2);
    p26$1 := (if p29$1 then true else p26$1);
    p26$2 := (if p29$2 then true else p26$2);
    goto $38.backedge, __partitioned_block_$38.tail_0;

  __partitioned_block_$38.tail_0:
    assume !p26$1 && !p26$2;
    goto __partitioned_block_$38.tail_1;

  __partitioned_block_$38.tail_1:
    call {:sourceloc_num 70} $bugle_barrier_duplicated_3(-1, -1, p13$1, p13$2);
    $c12.0$1 := (if p13$1 then BV64_ADD($c12.0$1, 8192) else $c12.0$1);
    $c12.0$2 := (if p13$2 then BV64_ADD($c12.0$2, 8192) else $c12.0$2);
    p12$1 := (if p13$1 then true else p12$1);
    p12$2 := (if p13$2 then true else p12$2);
    goto $19.backedge, __partitioned_block_$19.tail_0;

  __partitioned_block_$19.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$19.tail_1;

  __partitioned_block_$19.tail_1:
    call {:sourceloc_num 73} $bugle_barrier_duplicated_1(-1, -1, p1$1, p1$2);
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192) else $c0.0$2);
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

  $19.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $19;

  $38.backedge:
    assume {:backedge} p26$1 || p26$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $38;

  $29.backedge:
    assume {:backedge} p20$1 || p20$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $29;

  $22.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $22;

  $11.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $11;

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $4;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

axiom (if num_groups_y == 128 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel0.shared_u1, $$kernel0.shared_u2, $$kernel0.shared_v1, $$kernel0.shared_v2, $$A, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel0.shared_u1, $$kernel0.shared_u2, $$kernel0.shared_v1, $$kernel0.shared_v2, $$A, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel0.shared_u1, $$kernel0.shared_u2, $$kernel0.shared_v1, $$kernel0.shared_v2, $$A, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel0.shared_u1, $$kernel0.shared_u2, $$kernel0.shared_v1, $$kernel0.shared_v2, $$A, _TRACKING;



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



const _WATCHED_VALUE_$$u1: int;

procedure {:inline 1} _LOG_READ_$$u1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$u1;



implementation {:inline 1} _LOG_READ_$$u1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$u1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u1 == _value then true else _READ_HAS_OCCURRED_$$u1);
    return;
}



procedure _CHECK_READ_$$u1(_P: bool, _offset: int, _value: int);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$u1);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$u1: bool;

procedure {:inline 1} _LOG_WRITE_$$u1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$u1, _WRITE_READ_BENIGN_FLAG_$$u1;



implementation {:inline 1} _LOG_WRITE_$$u1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$u1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u1 == _value then true else _WRITE_HAS_OCCURRED_$$u1);
    _WRITE_READ_BENIGN_FLAG_$$u1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$u1);
    return;
}



procedure _CHECK_WRITE_$$u1(_P: bool, _offset: int, _value: int);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u1 != _value);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u1 != _value);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$u1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$u1;



implementation {:inline 1} _LOG_ATOMIC_$$u1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$u1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$u1);
    return;
}



procedure _CHECK_ATOMIC_$$u1(_P: bool, _offset: int);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "u1"} {:array "$$u1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$u1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$u1 := (if _P && _WRITE_HAS_OCCURRED_$$u1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$u1);
    return;
}



const _WATCHED_VALUE_$$u2: int;

procedure {:inline 1} _LOG_READ_$$u2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$u2;



implementation {:inline 1} _LOG_READ_$$u2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$u2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u2 == _value then true else _READ_HAS_OCCURRED_$$u2);
    return;
}



procedure _CHECK_READ_$$u2(_P: bool, _offset: int, _value: int);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$u2);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$u2: bool;

procedure {:inline 1} _LOG_WRITE_$$u2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$u2, _WRITE_READ_BENIGN_FLAG_$$u2;



implementation {:inline 1} _LOG_WRITE_$$u2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$u2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u2 == _value then true else _WRITE_HAS_OCCURRED_$$u2);
    _WRITE_READ_BENIGN_FLAG_$$u2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$u2);
    return;
}



procedure _CHECK_WRITE_$$u2(_P: bool, _offset: int, _value: int);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u2 != _value);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u2 != _value);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$u2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$u2;



implementation {:inline 1} _LOG_ATOMIC_$$u2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$u2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$u2);
    return;
}



procedure _CHECK_ATOMIC_$$u2(_P: bool, _offset: int);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "u2"} {:array "$$u2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$u2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$u2 := (if _P && _WRITE_HAS_OCCURRED_$$u2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$u2);
    return;
}



const _WATCHED_VALUE_$$v1: int;

procedure {:inline 1} _LOG_READ_$$v1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v1;



implementation {:inline 1} _LOG_READ_$$v1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v1 == _value then true else _READ_HAS_OCCURRED_$$v1);
    return;
}



procedure _CHECK_READ_$$v1(_P: bool, _offset: int, _value: int);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v1);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v1: bool;

procedure {:inline 1} _LOG_WRITE_$$v1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v1, _WRITE_READ_BENIGN_FLAG_$$v1;



implementation {:inline 1} _LOG_WRITE_$$v1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v1 == _value then true else _WRITE_HAS_OCCURRED_$$v1);
    _WRITE_READ_BENIGN_FLAG_$$v1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v1);
    return;
}



procedure _CHECK_WRITE_$$v1(_P: bool, _offset: int, _value: int);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v1 != _value);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v1 != _value);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v1;



implementation {:inline 1} _LOG_ATOMIC_$$v1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v1);
    return;
}



procedure _CHECK_ATOMIC_$$v1(_P: bool, _offset: int);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "v1"} {:array "$$v1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v1 := (if _P && _WRITE_HAS_OCCURRED_$$v1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v1);
    return;
}



const _WATCHED_VALUE_$$v2: int;

procedure {:inline 1} _LOG_READ_$$v2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v2;



implementation {:inline 1} _LOG_READ_$$v2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v2 == _value then true else _READ_HAS_OCCURRED_$$v2);
    return;
}



procedure _CHECK_READ_$$v2(_P: bool, _offset: int, _value: int);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v2);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v2: bool;

procedure {:inline 1} _LOG_WRITE_$$v2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v2, _WRITE_READ_BENIGN_FLAG_$$v2;



implementation {:inline 1} _LOG_WRITE_$$v2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v2 == _value then true else _WRITE_HAS_OCCURRED_$$v2);
    _WRITE_READ_BENIGN_FLAG_$$v2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v2);
    return;
}



procedure _CHECK_WRITE_$$v2(_P: bool, _offset: int, _value: int);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v2 != _value);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v2 != _value);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v2;



implementation {:inline 1} _LOG_ATOMIC_$$v2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v2);
    return;
}



procedure _CHECK_ATOMIC_$$v2(_P: bool, _offset: int);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "v2"} {:array "$$v2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v2 := (if _P && _WRITE_HAS_OCCURRED_$$v2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v2);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_u1: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_u1;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_u1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u1 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_u1);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_u1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u1 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_u1);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_u1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_u1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_u1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_u1(_P: bool, _offset: int);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u1"} {:array "$$kernel0.shared_u1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u1);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_u2: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_u2;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_u2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u2 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_u2);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_u2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u2 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_u2);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_u2(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_u2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_u2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_u2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_u2(_P: bool, _offset: int);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_u2"} {:array "$$kernel0.shared_u2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_u2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_u2);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_v1: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_v1;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_v1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v1 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_v1);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_v1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v1 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_v1);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_v1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_v1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_v1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_v1(_P: bool, _offset: int);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v1"} {:array "$$kernel0.shared_v1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v1);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_v2: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_v2;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_v2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v2 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_v2);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_v2, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v2 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_v2);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_v2(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_v2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_v2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_v2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_v2(_P: bool, _offset: int);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_v2"} {:array "$$kernel0.shared_v2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_v2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_v2);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$A;
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
    havoc $$A;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel0.shared_u1;
    goto anon6;

  anon6:
    havoc $$kernel0.shared_u2;
    goto anon7;

  anon7:
    havoc $$kernel0.shared_v1;
    goto anon8;

  anon8:
    havoc $$kernel0.shared_v2;
    goto anon9;

  anon13_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$A;
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
    havoc $$A;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel0.shared_u1;
    goto anon6;

  anon6:
    havoc $$kernel0.shared_u2;
    goto anon7;

  anon7:
    havoc $$kernel0.shared_v1;
    goto anon8;

  anon8:
    havoc $$kernel0.shared_v2;
    goto anon9;

  anon13_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$A;
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
    havoc $$A;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel0.shared_u1;
    goto anon6;

  anon6:
    havoc $$kernel0.shared_u2;
    goto anon7;

  anon7:
    havoc $$kernel0.shared_v1;
    goto anon8;

  anon8:
    havoc $$kernel0.shared_v2;
    goto anon9;

  anon13_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u1;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_u2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_u2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v1;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_v2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_v2;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$A;
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
    havoc $$A;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel0.shared_u1;
    goto anon6;

  anon6:
    havoc $$kernel0.shared_u2;
    goto anon7;

  anon7:
    havoc $$kernel0.shared_v1;
    goto anon8;

  anon8:
    havoc $$kernel0.shared_v2;
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

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;

const {:existential true} _b180: bool;

const {:existential true} _b181: bool;

const {:existential true} _b182: bool;

const {:existential true} _b183: bool;

const {:existential true} _b184: bool;

const {:existential true} _b185: bool;

const {:existential true} _b186: bool;

const {:existential true} _b187: bool;

const {:existential true} _b188: bool;

const {:existential true} _b189: bool;

const {:existential true} _b190: bool;

const {:existential true} _b191: bool;

const {:existential true} _b192: bool;

const {:existential true} _b193: bool;

const {:existential true} _b194: bool;

const {:existential true} _b195: bool;

const {:existential true} _b196: bool;

const {:existential true} _b197: bool;

const {:existential true} _b198: bool;

const {:existential true} _b199: bool;

const {:existential true} _b200: bool;

const {:existential true} _b201: bool;

const {:existential true} _b202: bool;

const {:existential true} _b203: bool;

const {:existential true} _b204: bool;

const {:existential true} _b205: bool;

const {:existential true} _b206: bool;

const {:existential true} _b207: bool;

const {:existential true} _b208: bool;

const {:existential true} _b209: bool;

const {:existential true} _b210: bool;
