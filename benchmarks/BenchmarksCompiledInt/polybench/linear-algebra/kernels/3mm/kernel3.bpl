type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$C"} {:global} {:elem_width 64} {:source_name "C"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$C: bool;

axiom {:array_info "$$D"} {:global} {:elem_width 64} {:source_name "D"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$D: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$D: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$D: bool;

axiom {:array_info "$$E"} {:global} {:elem_width 64} {:source_name "E"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$E: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$E: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$E: bool;

var {:source_name "F"} {:global} $$F: [int]int;

axiom {:array_info "$$F"} {:global} {:elem_width 64} {:source_name "F"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$F: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$F: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$F: bool;

var {:source_name "G"} {:global} $$G: [int]int;

axiom {:array_info "$$G"} {:global} {:elem_width 64} {:source_name "G"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$G: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$G: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$G: bool;

var {:source_name "shared_F"} {:group_shared} $$kernel3.shared_F: [bv1][int]int;

axiom {:array_info "$$kernel3.shared_F"} {:group_shared} {:elem_width 64} {:source_name "shared_F"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel3.shared_F: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F: bool;

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

procedure {:source_name "kernel3"} {:kernel} $kernel3($nl: int, $nj: int, $nm: int, $nk: int, $ni: int);
  requires {:sourceloc_num 0} {:thread 1} (if $nl == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $nj == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $nm == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $nk == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 4} {:thread 1} (if $ni == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 5} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nl, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($nl, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($nj, 1) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($nj, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($nm, 0) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($nm, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($nk, 0) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($nk, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($ni, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$C && !_WRITE_HAS_OCCURRED_$$C && !_ATOMIC_HAS_OCCURRED_$$C;
  requires !_READ_HAS_OCCURRED_$$D && !_WRITE_HAS_OCCURRED_$$D && !_ATOMIC_HAS_OCCURRED_$$D;
  requires !_READ_HAS_OCCURRED_$$E && !_WRITE_HAS_OCCURRED_$$E && !_ATOMIC_HAS_OCCURRED_$$E;
  requires !_READ_HAS_OCCURRED_$$F && !_WRITE_HAS_OCCURRED_$$F && !_ATOMIC_HAS_OCCURRED_$$F;
  requires !_READ_HAS_OCCURRED_$$G && !_WRITE_HAS_OCCURRED_$$G && !_ATOMIC_HAS_OCCURRED_$$G;
  requires !_READ_HAS_OCCURRED_$$kernel3.shared_F && !_WRITE_HAS_OCCURRED_$$kernel3.shared_F && !_ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;
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
  modifies $$kernel3.shared_F, _READ_HAS_OCCURRED_$$F, _WRITE_HAS_OCCURRED_$$kernel3.shared_F, _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F, _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F, $$F, $$G, _TRACKING, _READ_HAS_OCCURRED_$$kernel3.shared_F, _TRACKING, _WRITE_HAS_OCCURRED_$$F, _WRITE_READ_BENIGN_FLAG_$$F, _WRITE_READ_BENIGN_FLAG_$$F, _TRACKING, _READ_HAS_OCCURRED_$$G, _WRITE_HAS_OCCURRED_$$G, _WRITE_READ_BENIGN_FLAG_$$G, _WRITE_READ_BENIGN_FLAG_$$G, _TRACKING;



implementation {:source_name "kernel3"} {:kernel} $kernel3($nl: int, $nj: int, $nm: int, $nk: int, $ni: int)
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
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $c41.0$1: int;
  var $c41.0$2: int;
  var $c22.0$1: int;
  var $c22.0$2: int;
  var $2$1: int;
  var $2$2: int;
  var $c03.0$1: int;
  var $c03.0$2: int;
  var $c14.0$1: int;
  var $c14.0$2: int;
  var $c25.0$1: int;
  var $c25.0$2: int;
  var $3$1: int;
  var $3$2: int;
  var $c36.0$1: int;
  var $c36.0$2: int;
  var $4$1: int;
  var $4$2: int;
  var $c47.0$1: int;
  var $c47.0$2: int;
  var $c28.0$1: int;
  var $c28.0$2: int;
  var $5$1: int;
  var $5$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3: bool;
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
  var v9$1: int;
  var v9$2: int;
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
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: int;
  var v27$2: int;
  var v28: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bool;
  var v32$2: bool;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: int;
  var v34$2: int;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bool;
  var v36$2: bool;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bool;
  var v38$2: bool;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: bool;
  var v43$2: bool;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: int;
  var v46$2: int;
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
  var p53$1: bool;
  var p53$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$F$ghost$$50: bool;
  var _WRITE_HAS_OCCURRED_$$F$ghost$$50: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50: bool;
  var _READ_HAS_OCCURRED_$$F$ghost$$53: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$53: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67: bool;
  var _WRITE_HAS_OCCURRED_$$F$ghost$$75: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$75: bool;
  var _READ_HAS_OCCURRED_$$F$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$F$ghost$$4: bool;
  var _READ_HAS_OCCURRED_$$G$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$G$ghost$$4: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4: bool;
  var _READ_HAS_OCCURRED_$$F$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$G$ghost$$16: bool;
  var _WRITE_HAS_OCCURRED_$$G$ghost$$16: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21: bool;
  var _READ_HAS_OCCURRED_$$G$ghost$$25: bool;
  var _WRITE_HAS_OCCURRED_$$G$ghost$$25: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$25: bool;
  var _WRITE_HAS_OCCURRED_$$F$ghost$$34: bool;
  var _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$34: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
    v3 := BV32_SGE($ni, 1);
    p0$1 := false;
    p0$2 := false;
    p29$1 := false;
    p29$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    v28 := BV32_SGE($nm, 1);
    goto $truebb14, $falsebb14;

  $falsebb14:
    assume {:partition} !v28;
    goto $87;

  $87:
    goto $88;

  $88:
    return;

  $truebb14:
    assume {:partition} v28;
    $c03.0$1 := BV64_MUL(32, v0$1);
    $c03.0$2 := BV64_MUL(32, v0$2);
    p29$1 := true;
    p29$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $48;

  $48:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b266 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b265 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "nowrite"} _b264 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "noread"} _b263 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b262 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b261 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b260 ==> !_WRITE_HAS_OCCURRED_$$F;
    assert {:tag "noread"} _b259 ==> !_READ_HAS_OCCURRED_$$F;
    assert {:tag "predicatedEquality"} _b258 ==> p29$1 && p29$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b257 ==> p29$1 && p29$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b256 ==> p29$1 && p29$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b255 ==> p29$1 && p29$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b254 ==> p29$1 && p29$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b253 ==> p29$1 && p29$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b252 ==> p29$1 && p29$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b251 ==> p29$1 && p29$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b250 ==> p29$1 && p29$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b249 ==> p29$1 && p29$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b248 ==> p29$1 && p29$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b247 ==> p29$1 && p29$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b246 ==> p29$1 && p29$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b245 ==> p29$1 && p29$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b244 ==> p29$1 && p29$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b243 ==> p29$1 && p29$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b242 ==> p29$1 && p29$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b241 ==> p29$1 && p29$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b240 ==> p29$1 && p29$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b239 ==> p29$1 && p29$2 ==> $c28.0$1 == $c28.0$2;
    assert {:tag "predicatedEquality"} _b238 ==> p29$1 && p29$2 ==> $c47.0$1 == $c47.0$2;
    assert {:tag "predicatedEquality"} _b237 ==> p29$1 && p29$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b236 ==> p29$1 && p29$2 ==> $c36.0$1 == $c36.0$2;
    assert {:tag "predicatedEquality"} _b235 ==> p29$1 && p29$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b234 ==> p29$1 && p29$2 ==> $c25.0$1 == $c25.0$2;
    assert {:tag "predicatedEquality"} _b233 ==> p29$1 && p29$2 ==> $c14.0$1 == $c14.0$2;
    assert {:tag "predicatedEquality"} _b232 ==> p29$1 && p29$2 ==> $c03.0$1 == $c03.0$2;
    assert {:tag "loopPredicateEquality"} _b231 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p29$1 == p29$2;
    assert {:tag "loopPredicateEquality"} _b230 ==> p29$1 == p29$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b12 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b11 ==> _WRITE_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b10 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b9 ==> _READ_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) ==> p29$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) ==> p29$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p29$1 ==> _b5 ==> p29$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p29$2 ==> _b5 ==> p29$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1);
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b4 ==> BV32_UGE($c03.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b4 ==> BV32_UGE($c03.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b3 ==> BV32_ULE($c03.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b3 ==> BV32_ULE($c03.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b2 ==> BV32_SGE($c03.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b2 ==> BV32_SGE($c03.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b1 ==> BV32_SLE($c03.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b1 ==> BV32_SLE($c03.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p29$1 ==> _b0 ==> $c03.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p29$2 ==> _b0 ==> $c03.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 75} p29$1 ==> true;
    v29$1 := (if p29$1 then BV64_SLT($c03.0$1, BV32_SEXT64($nl)) else v29$1);
    v29$2 := (if p29$2 then BV64_SLT($c03.0$2, BV32_SEXT64($nl)) else v29$2);
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p53$1 := false;
    p53$2 := false;
    p30$1 := (if p29$1 && v29$1 then v29$1 else p30$1);
    p30$2 := (if p29$2 && v29$2 then v29$2 else p30$2);
    p29$1 := (if p29$1 && !v29$1 then v29$1 else p29$1);
    p29$2 := (if p29$2 && !v29$2 then v29$2 else p29$2);
    $c14.0$1 := (if p30$1 then 0 else $c14.0$1);
    $c14.0$2 := (if p30$2 then 0 else $c14.0$2);
    p31$1 := (if p30$1 then true else p31$1);
    p31$2 := (if p30$2 then true else p31$2);
    _READ_HAS_OCCURRED_$$F$ghost$$50 := _READ_HAS_OCCURRED_$$F;
    _WRITE_HAS_OCCURRED_$$F$ghost$$50 := _WRITE_HAS_OCCURRED_$$F;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $50;

  $50:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b305 ==> !p30$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b304 ==> !p30$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$50 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b303 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b302 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "nowrite"} _b301 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "noread"} _b300 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b299 ==> !p30$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$50 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "disabledMaintainsInstrumentation"} _b298 ==> !p30$1 ==> _READ_HAS_OCCURRED_$$F$ghost$$50 == _READ_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b297 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b296 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b295 ==> !_WRITE_HAS_OCCURRED_$$F;
    assert {:tag "noread"} _b294 ==> !_READ_HAS_OCCURRED_$$F;
    assert {:tag "predicatedEquality"} _b293 ==> p31$1 && p31$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b292 ==> p31$1 && p31$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b291 ==> p31$1 && p31$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b290 ==> p31$1 && p31$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b289 ==> p31$1 && p31$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b288 ==> p31$1 && p31$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b287 ==> p31$1 && p31$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b286 ==> p31$1 && p31$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b285 ==> p31$1 && p31$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b284 ==> p31$1 && p31$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b283 ==> p31$1 && p31$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b282 ==> p31$1 && p31$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b281 ==> p31$1 && p31$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b280 ==> p31$1 && p31$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b279 ==> p31$1 && p31$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b278 ==> p31$1 && p31$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b277 ==> p31$1 && p31$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b276 ==> p31$1 && p31$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b275 ==> p31$1 && p31$2 ==> $c28.0$1 == $c28.0$2;
    assert {:tag "predicatedEquality"} _b274 ==> p31$1 && p31$2 ==> $c47.0$1 == $c47.0$2;
    assert {:tag "predicatedEquality"} _b273 ==> p31$1 && p31$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b272 ==> p31$1 && p31$2 ==> $c36.0$1 == $c36.0$2;
    assert {:tag "predicatedEquality"} _b271 ==> p31$1 && p31$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b270 ==> p31$1 && p31$2 ==> $c25.0$1 == $c25.0$2;
    assert {:tag "predicatedEquality"} _b269 ==> p31$1 && p31$2 ==> $c14.0$1 == $c14.0$2;
    assert {:tag "loopPredicateEquality"} _b268 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p31$1 == p31$2;
    assert {:tag "loopPredicateEquality"} _b267 ==> p31$1 == p31$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p31"} {:dominator_predicate "p30"} true;
    assert p31$1 ==> p29$1;
    assert p31$2 ==> p29$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _WRITE_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b26 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b25 ==> _READ_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b24 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b23 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b21 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) ==> p31$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b21 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) ==> p31$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p31$1 ==> _b20 ==> p31$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p31$2 ==> _b20 ==> p31$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl));
    assert {:tag "loopBound"} {:thread 1} p31$1 ==> _b19 ==> BV32_UGE($c14.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p31$2 ==> _b19 ==> BV32_UGE($c14.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p31$1 ==> _b18 ==> BV32_ULE($c14.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p31$2 ==> _b18 ==> BV32_ULE($c14.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p31$1 ==> _b17 ==> BV32_SGE($c14.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p31$2 ==> _b17 ==> BV32_SGE($c14.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p31$1 ==> _b16 ==> BV32_SLE($c14.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p31$2 ==> _b16 ==> BV32_SLE($c14.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p31$1 ==> _b15 ==> $c14.0$1 mod 32 == 0 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p31$2 ==> _b15 ==> $c14.0$2 mod 32 == 0 mod 32;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 77} p31$1 ==> true;
    v30$1 := (if p31$1 then BV64_SLT($c14.0$1, BV32_SEXT64($nj)) else v30$1);
    v30$2 := (if p31$2 then BV64_SLT($c14.0$2, BV32_SEXT64($nj)) else v30$2);
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p35$1 := false;
    p35$2 := false;
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p47$1 := false;
    p47$2 := false;
    p48$1 := false;
    p48$2 := false;
    p49$1 := false;
    p49$2 := false;
    p32$1 := (if p31$1 && v30$1 then v30$1 else p32$1);
    p32$2 := (if p31$2 && v30$2 then v30$2 else p32$2);
    p31$1 := (if p31$1 && !v30$1 then v30$1 else p31$1);
    p31$2 := (if p31$2 && !v30$2 then v30$2 else p31$2);
    v31$1 := (if p32$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c03.0$1), 1)) else v31$1);
    v31$2 := (if p32$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c03.0$2), 1)) else v31$2);
    p34$1 := (if p32$1 && v31$1 then v31$1 else p34$1);
    p34$2 := (if p32$2 && v31$2 then v31$2 else p34$2);
    $c25.0$1 := (if p34$1 then 0 else $c25.0$1);
    $c25.0$2 := (if p34$2 then 0 else $c25.0$2);
    p35$1 := (if p34$1 then true else p35$1);
    p35$2 := (if p34$2 then true else p35$2);
    _READ_HAS_OCCURRED_$$F$ghost$$53 := _READ_HAS_OCCURRED_$$F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$53 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $53;

  $53:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b309 ==> !p34$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$53 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b308 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b307 ==> !p34$1 ==> _READ_HAS_OCCURRED_$$F$ghost$$53 == _READ_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b306 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p35"} {:dominator_predicate "p34"} true;
    assert p35$1 ==> p31$1;
    assert p35$2 ==> p31$2;
    assert p31$1 ==> p29$1;
    assert p31$2 ==> p29$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b103 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b102 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b101 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b100 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b99 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b98 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b97 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b96 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b95 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b94 ==> _READ_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b93 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1)) && BV64_SLE($c25.0$1, $3$1) ==> p35$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b93 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1)) && BV64_SLE($c25.0$2, $3$2) ==> p35$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p35$1 ==> _b92 ==> p35$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p35$2 ==> _b92 ==> p35$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b91 ==> BV32_UGE($c25.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b91 ==> BV32_UGE($c25.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b90 ==> BV32_ULE($c25.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b90 ==> BV32_ULE($c25.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b89 ==> BV32_SGE($c25.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b89 ==> BV32_SGE($c25.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b88 ==> BV32_SLE($c25.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b88 ==> BV32_SLE($c25.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p35$1 ==> _b87 ==> $c25.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p35$2 ==> _b87 ==> $c25.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 80} p35$1 ==> true;
    v32$1 := (if p35$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1)) else v32$1);
    v32$2 := (if p35$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1)) else v32$2);
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p37$1 := (if p35$1 && v32$1 then v32$1 else p37$1);
    p37$2 := (if p35$2 && v32$2 then v32$2 else p37$2);
    p36$1 := (if p35$1 && !v32$1 then !v32$1 else p36$1);
    p36$2 := (if p35$2 && !v32$2 then !v32$2 else p36$2);
    $3$1 := (if p36$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1) else $3$1);
    $3$2 := (if p36$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1) else $3$2);
    $3$1 := (if p37$1 then 31 else $3$1);
    $3$2 := (if p37$2 then 31 else $3$2);
    v33$1 := (if p35$1 then BV64_SLE($c25.0$1, $3$1) else v33$1);
    v33$2 := (if p35$2 then BV64_SLE($c25.0$2, $3$2) else v33$2);
    p38$1 := (if p35$1 && v33$1 then v33$1 else p38$1);
    p38$2 := (if p35$2 && v33$2 then v33$2 else p38$2);
    p35$1 := (if p35$1 && !v33$1 then v33$1 else p35$1);
    p35$2 := (if p35$2 && !v33$2 then v33$2 else p35$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_READ_$$F(p38$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c25.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0), $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c25.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 85} _CHECK_READ_$$F(p38$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c25.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0), $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c25.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$F"} true;
    v34$1 := (if p38$1 then $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c25.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0)] else v34$1);
    v34$2 := (if p38$2 then $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c25.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0)] else v34$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$kernel3.shared_F(p38$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$1, 32, 0), 32), v1$1), v34$1, $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$1, 32, 0), 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(p38$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$2, 32, 0), 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$kernel3.shared_F(p38$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$2, 32, 0), 32), v1$2), v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel3.shared_F"} true;
    $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$1, 32, 0), 32), v1$1)] := (if p38$1 then v34$1 else $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$1, 32, 0), 32), v1$1)]);
    $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$2, 32, 0), 32), v1$2)] := (if p38$2 then v34$2 else $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c25.0$2, 32, 0), 32), v1$2)]);
    $c25.0$1 := (if p38$1 then BV64_ADD($c25.0$1, 1) else $c25.0$1);
    $c25.0$2 := (if p38$2 then BV64_ADD($c25.0$2, 1) else $c25.0$2);
    p35$1 := (if p38$1 then true else p35$1);
    p35$2 := (if p38$2 then true else p35$2);
    goto $53.backedge, __partitioned_block_$53.tail_0;

  __partitioned_block_$53.tail_0:
    assume !p35$1 && !p35$2;
    goto __partitioned_block_$53.tail_1;

  __partitioned_block_$53.tail_1:
    call {:sourceloc_num 90} $bugle_barrier_duplicated_0(-1, -1, p32$1, p32$2);
    v35$1 := (if p32$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c03.0$1), 1)) else v35$1);
    v35$2 := (if p32$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c03.0$2), 1)) else v35$2);
    p40$1 := (if p32$1 && v35$1 then v35$1 else p40$1);
    p40$2 := (if p32$2 && v35$2 then v35$2 else p40$2);
    $c36.0$1 := (if p40$1 then 0 else $c36.0$1);
    $c36.0$2 := (if p40$2 then 0 else $c36.0$2);
    p41$1 := (if p40$1 then true else p41$1);
    p41$2 := (if p40$2 then true else p41$2);
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $62;

  $62:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b313 ==> !p40$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b312 ==> !p40$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$62 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b311 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b310 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p41"} {:dominator_predicate "p40"} true;
    assert p41$1 ==> p31$1;
    assert p41$2 ==> p31$2;
    assert p31$1 ==> p29$1;
    assert p31$2 ==> p29$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b67 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b66 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b65 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b64 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b63 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b62 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b61 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b60 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b59 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b58 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b57 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1)) && BV64_SLE($c36.0$1, $4$1) ==> p41$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b57 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1)) && BV64_SLE($c36.0$2, $4$2) ==> p41$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p41$1 ==> _b56 ==> p41$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p41$2 ==> _b56 ==> p41$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p41$1 ==> _b55 ==> BV32_UGE($c36.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p41$2 ==> _b55 ==> BV32_UGE($c36.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p41$1 ==> _b54 ==> BV32_ULE($c36.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p41$2 ==> _b54 ==> BV32_ULE($c36.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p41$1 ==> _b53 ==> BV32_SGE($c36.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p41$2 ==> _b53 ==> BV32_SGE($c36.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p41$1 ==> _b52 ==> BV32_SLE($c36.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p41$2 ==> _b52 ==> BV32_SLE($c36.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p41$1 ==> _b51 ==> $c36.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p41$2 ==> _b51 ==> $c36.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 92} p41$1 ==> true;
    v36$1 := (if p41$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1)) else v36$1);
    v36$2 := (if p41$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1)) else v36$2);
    p42$1 := false;
    p42$2 := false;
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p43$1 := (if p41$1 && v36$1 then v36$1 else p43$1);
    p43$2 := (if p41$2 && v36$2 then v36$2 else p43$2);
    p42$1 := (if p41$1 && !v36$1 then !v36$1 else p42$1);
    p42$2 := (if p41$2 && !v36$2 then !v36$2 else p42$2);
    $4$1 := (if p42$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1) else $4$1);
    $4$2 := (if p42$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1) else $4$2);
    $4$1 := (if p43$1 then 31 else $4$1);
    $4$2 := (if p43$2 then 31 else $4$2);
    v37$1 := (if p41$1 then BV64_SLE($c36.0$1, $4$1) else v37$1);
    v37$2 := (if p41$2 then BV64_SLE($c36.0$2, $4$2) else v37$2);
    p44$1 := (if p41$1 && v37$1 then v37$1 else p44$1);
    p44$2 := (if p41$2 && v37$2 then v37$2 else p44$2);
    p41$1 := (if p41$1 && !v37$1 then v37$1 else p41$1);
    p41$2 := (if p41$2 && !v37$2 then v37$2 else p41$2);
    $c47.0$1 := (if p44$1 then 0 else $c47.0$1);
    $c47.0$2 := (if p44$2 then 0 else $c47.0$2);
    p45$1 := (if p44$1 then true else p45$1);
    p45$2 := (if p44$2 then true else p45$2);
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $67;

  $67:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b317 ==> !p44$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b316 ==> !p44$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$67 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b315 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b314 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p45"} {:dominator_predicate "p44"} true;
    assert p45$1 ==> p41$1;
    assert p45$2 ==> p41$2;
    assert p41$1 ==> p31$1;
    assert p41$2 ==> p31$2;
    assert p31$1 ==> p29$1;
    assert p31$2 ==> p29$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b86 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLE($c36.0$1, $4$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b85 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b84 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b83 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b82 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b81 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b80 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLE($c36.0$1, $4$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b79 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b78 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b77 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b76 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b75 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b74 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1)) && BV64_SLE($c36.0$1, $4$1) && BV64_SLT($c47.0$1, BV32_SEXT64($nm)) ==> p45$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b74 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1)) && BV64_SLE($c36.0$2, $4$2) && BV64_SLT($c47.0$2, BV32_SEXT64($nm)) ==> p45$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p45$1 ==> _b73 ==> p45$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1)) && BV64_SLE($c36.0$1, $4$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p45$2 ==> _b73 ==> p45$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1)) && BV64_SLE($c36.0$2, $4$2);
    assert {:tag "loopBound"} {:thread 1} p45$1 ==> _b72 ==> BV32_UGE($c47.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p45$2 ==> _b72 ==> BV32_UGE($c47.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p45$1 ==> _b71 ==> BV32_ULE($c47.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p45$2 ==> _b71 ==> BV32_ULE($c47.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p45$1 ==> _b70 ==> BV32_SGE($c47.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p45$2 ==> _b70 ==> BV32_SGE($c47.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p45$1 ==> _b69 ==> BV32_SLE($c47.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p45$2 ==> _b69 ==> BV32_SLE($c47.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p45$1 ==> _b68 ==> $c47.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p45$2 ==> _b68 ==> $c47.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 97} p45$1 ==> true;
    v38$1 := (if p45$1 then BV64_SLT($c47.0$1, BV32_SEXT64($nm)) else v38$1);
    v38$2 := (if p45$2 then BV64_SLT($c47.0$2, BV32_SEXT64($nm)) else v38$2);
    p46$1 := false;
    p46$2 := false;
    p46$1 := (if p45$1 && v38$1 then v38$1 else p46$1);
    p46$2 := (if p45$2 && v38$2 then v38$2 else p46$2);
    p45$1 := (if p45$1 && !v38$1 then v38$1 else p45$1);
    p45$2 := (if p45$2 && !v38$2 then v38$2 else p45$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p46$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p46$2 then _HAVOC_int$2 else v39$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p46$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p46$2 then _HAVOC_int$2 else v40$2);
    v41$1 := (if p46$1 then BV_EXTRACT($c36.0$1, 32, 0) else v41$1);
    v41$2 := (if p46$2 then BV_EXTRACT($c36.0$2, 32, 0) else v41$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_READ_$$kernel3.shared_F(p46$1, BV32_ADD(BV32_MUL(v41$1, 32), v1$1), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v41$1, 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 101} _CHECK_READ_$$kernel3.shared_F(p46$2, BV32_ADD(BV32_MUL(v41$2, 32), v1$2), $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v41$2, 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel3.shared_F"} true;
    v42$1 := (if p46$1 then $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v41$1, 32), v1$1)] else v42$1);
    v42$2 := (if p46$2 then $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v41$2, 32), v1$2)] else v42$2);
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$kernel3.shared_F(p46$1, BV32_ADD(BV32_MUL(v41$1, 32), v1$1), FADD64(v42$1, FMUL64(v39$1, v40$1)), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v41$1, 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(p46$2, BV32_ADD(BV32_MUL(v41$2, 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$kernel3.shared_F(p46$2, BV32_ADD(BV32_MUL(v41$2, 32), v1$2), FADD64(v42$2, FMUL64(v39$2, v40$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel3.shared_F"} true;
    $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v41$1, 32), v1$1)] := (if p46$1 then FADD64(v42$1, FMUL64(v39$1, v40$1)) else $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v41$1, 32), v1$1)]);
    $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v41$2, 32), v1$2)] := (if p46$2 then FADD64(v42$2, FMUL64(v39$2, v40$2)) else $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v41$2, 32), v1$2)]);
    $c47.0$1 := (if p46$1 then BV64_ADD($c47.0$1, 1) else $c47.0$1);
    $c47.0$2 := (if p46$2 then BV64_ADD($c47.0$2, 1) else $c47.0$2);
    p45$1 := (if p46$1 then true else p45$1);
    p45$2 := (if p46$2 then true else p45$2);
    goto $67.backedge, $67.tail;

  $67.tail:
    assume !p45$1 && !p45$2;
    $c36.0$1 := (if p44$1 then BV64_ADD($c36.0$1, 1) else $c36.0$1);
    $c36.0$2 := (if p44$2 then BV64_ADD($c36.0$2, 1) else $c36.0$2);
    p41$1 := (if p44$1 then true else p41$1);
    p41$2 := (if p44$2 then true else p41$2);
    goto $62.backedge, __partitioned_block_$62.tail_0;

  __partitioned_block_$62.tail_0:
    assume !p41$1 && !p41$2;
    goto __partitioned_block_$62.tail_1;

  __partitioned_block_$62.tail_1:
    call {:sourceloc_num 108} $bugle_barrier_duplicated_1(-1, -1, p32$1, p32$2);
    v43$1 := (if p32$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c03.0$1), 1)) else v43$1);
    v43$2 := (if p32$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c03.0$2), 1)) else v43$2);
    p48$1 := (if p32$1 && v43$1 then v43$1 else p48$1);
    p48$2 := (if p32$2 && v43$2 then v43$2 else p48$2);
    $c28.0$1 := (if p48$1 then 0 else $c28.0$1);
    $c28.0$2 := (if p48$2 then 0 else $c28.0$2);
    p49$1 := (if p48$1 then true else p49$1);
    p49$2 := (if p48$2 then true else p49$2);
    _WRITE_HAS_OCCURRED_$$F$ghost$$75 := _WRITE_HAS_OCCURRED_$$F;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$75 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $75;

  $75:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b321 ==> !p48$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$75 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b320 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b319 ==> !p48$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$75 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b318 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p49"} {:dominator_predicate "p48"} true;
    assert p49$1 ==> p31$1;
    assert p49$2 ==> p31$2;
    assert p31$1 ==> p29$1;
    assert p31$2 ==> p29$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _WRITE_HAS_OCCURRED_$$F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c14.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c03.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> !BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b40 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1)) && BV64_SLE($c28.0$1, $5$1) ==> p49$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b40 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1)) && BV64_SLE($c28.0$2, $5$2) ==> p49$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p49$1 ==> _b39 ==> p49$1 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$1, BV32_SEXT64($nl)) && BV64_SLT($c14.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c03.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p49$2 ==> _b39 ==> p49$2 ==> !BV32_SGE($ni, 1) && BV32_SGE($nm, 1) && BV64_SLT($c03.0$2, BV32_SEXT64($nl)) && BV64_SLT($c14.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c03.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p49$1 ==> _b38 ==> BV32_UGE($c28.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p49$2 ==> _b38 ==> BV32_UGE($c28.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p49$1 ==> _b37 ==> BV32_ULE($c28.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p49$2 ==> _b37 ==> BV32_ULE($c28.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p49$1 ==> _b36 ==> BV32_SGE($c28.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p49$2 ==> _b36 ==> BV32_SGE($c28.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p49$1 ==> _b35 ==> BV32_SLE($c28.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p49$2 ==> _b35 ==> BV32_SLE($c28.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p49$1 ==> _b34 ==> $c28.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p49$2 ==> _b34 ==> $c28.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 110} p49$1 ==> true;
    v44$1 := (if p49$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1)) else v44$1);
    v44$2 := (if p49$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1)) else v44$2);
    p50$1 := false;
    p50$2 := false;
    p51$1 := false;
    p51$2 := false;
    p52$1 := false;
    p52$2 := false;
    p51$1 := (if p49$1 && v44$1 then v44$1 else p51$1);
    p51$2 := (if p49$2 && v44$2 then v44$2 else p51$2);
    p50$1 := (if p49$1 && !v44$1 then !v44$1 else p50$1);
    p50$2 := (if p49$2 && !v44$2 then !v44$2 else p50$2);
    $5$1 := (if p50$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$1), 1) else $5$1);
    $5$2 := (if p50$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c14.0$2), 1) else $5$2);
    $5$1 := (if p51$1 then 31 else $5$1);
    $5$2 := (if p51$2 then 31 else $5$2);
    v45$1 := (if p49$1 then BV64_SLE($c28.0$1, $5$1) else v45$1);
    v45$2 := (if p49$2 then BV64_SLE($c28.0$2, $5$2) else v45$2);
    p52$1 := (if p49$1 && v45$1 then v45$1 else p52$1);
    p52$2 := (if p49$2 && v45$2 then v45$2 else p52$2);
    p49$1 := (if p49$1 && !v45$1 then v45$1 else p49$1);
    p49$2 := (if p49$2 && !v45$2 then v45$2 else p49$2);
    call {:sourceloc} {:sourceloc_num 115} _LOG_READ_$$kernel3.shared_F(p52$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$1, 32, 0), 32), v1$1), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 115} _CHECK_READ_$$kernel3.shared_F(p52$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$2, 32, 0), 32), v1$2), $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel3.shared_F"} true;
    v46$1 := (if p52$1 then $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$1, 32, 0), 32), v1$1)] else v46$1);
    v46$2 := (if p52$2 then $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c28.0$2, 32, 0), 32), v1$2)] else v46$2);
    call {:sourceloc} {:sourceloc_num 116} _LOG_WRITE_$$F(p52$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c28.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0), v46$1, $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c28.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(p52$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c28.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 116} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 116} _CHECK_WRITE_$$F(p52$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c28.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0), v46$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$F"} true;
    $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c28.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0)] := (if p52$1 then v46$1 else $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$1, $c28.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c03.0$1)), 32, 0)]);
    $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c28.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0)] := (if p52$2 then v46$2 else $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c14.0$2, $c28.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c03.0$2)), 32, 0)]);
    $c28.0$1 := (if p52$1 then BV64_ADD($c28.0$1, 1) else $c28.0$1);
    $c28.0$2 := (if p52$2 then BV64_ADD($c28.0$2, 1) else $c28.0$2);
    p49$1 := (if p52$1 then true else p49$1);
    p49$2 := (if p52$2 then true else p49$2);
    goto $75.backedge, $75.tail;

  $75.tail:
    assume !p49$1 && !p49$2;
    $c14.0$1 := (if p32$1 then BV64_ADD($c14.0$1, 32) else $c14.0$1);
    $c14.0$2 := (if p32$2 then BV64_ADD($c14.0$2, 32) else $c14.0$2);
    p31$1 := (if p32$1 then true else p31$1);
    p31$2 := (if p32$2 then true else p31$2);
    goto $50.backedge, $50.tail;

  $50.tail:
    assume !p31$1 && !p31$2;
    $c03.0$1 := (if p30$1 then BV64_ADD($c03.0$1, 1048576) else $c03.0$1);
    $c03.0$2 := (if p30$2 then BV64_ADD($c03.0$2, 1048576) else $c03.0$2);
    p29$1 := (if p30$1 then true else p29$1);
    p29$2 := (if p30$2 then true else p29$2);
    goto $48.backedge, $48.tail;

  $48.tail:
    assume !p29$1 && !p29$2;
    goto $87;

  $48.backedge:
    assume {:backedge} p29$1 || p29$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $48;

  $50.backedge:
    assume {:backedge} p31$1 || p31$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $50;

  $75.backedge:
    assume {:backedge} p49$1 || p49$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $75;

  $62.backedge:
    assume {:backedge} p41$1 || p41$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $62;

  $67.backedge:
    assume {:backedge} p45$1 || p45$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $67;

  $53.backedge:
    assume {:backedge} p35$1 || p35$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $53;

  $truebb:
    assume {:partition} v3;
    $c0.0$1 := BV64_MUL(32, v0$1);
    $c0.0$2 := BV64_MUL(32, v0$2);
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_6"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b369 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b368 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "nowrite"} _b367 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "noread"} _b366 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b365 ==> _WRITE_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b364 ==> _READ_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b363 ==> !_WRITE_HAS_OCCURRED_$$G;
    assert {:tag "noread"} _b362 ==> !_READ_HAS_OCCURRED_$$G;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b361 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b360 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b359 ==> !_WRITE_HAS_OCCURRED_$$F;
    assert {:tag "noread"} _b358 ==> !_READ_HAS_OCCURRED_$$F;
    assert {:tag "predicatedEquality"} _b357 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b356 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b355 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b354 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b353 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b352 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b351 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b350 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b349 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b348 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b347 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b346 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b345 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b344 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b343 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b342 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b341 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b340 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b339 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b338 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b337 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b336 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b335 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b334 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b333 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b332 ==> p0$1 && p0$2 ==> $c22.0$1 == $c22.0$2;
    assert {:tag "predicatedEquality"} _b331 ==> p0$1 && p0$2 ==> $c41.0$1 == $c41.0$2;
    assert {:tag "predicatedEquality"} _b330 ==> p0$1 && p0$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b329 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b328 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b327 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b326 ==> p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b325 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b324 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b323 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b322 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b116 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b115 ==> _WRITE_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b114 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b113 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b112 ==> _READ_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b111 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b110 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b110 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) ==> p0$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p0$1 ==> _b109 ==> p0$1 ==> BV32_SGE($ni, 1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p0$2 ==> _b109 ==> p0$2 ==> BV32_SGE($ni, 1);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b108 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b108 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b107 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b107 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b106 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b106 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b105 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b105 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b104 ==> $c0.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b104 ==> $c0.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 15} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($nl)) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($nl)) else v4$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p28$1 := false;
    p28$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    $c1.0$1 := (if p1$1 then 0 else $c1.0$1);
    $c1.0$2 := (if p1$2 then 0 else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$F$ghost$$4 := _READ_HAS_OCCURRED_$$F;
    _WRITE_HAS_OCCURRED_$$F$ghost$$4 := _WRITE_HAS_OCCURRED_$$F;
    _READ_HAS_OCCURRED_$$G$ghost$$4 := _READ_HAS_OCCURRED_$$G;
    _WRITE_HAS_OCCURRED_$$G$ghost$$4 := _WRITE_HAS_OCCURRED_$$G;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_7_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_7"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b421 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b420 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$4 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b419 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b418 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "nowrite"} _b417 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "noread"} _b416 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b415 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$G$ghost$$4 == _WRITE_HAS_OCCURRED_$$G;
    assert {:tag "disabledMaintainsInstrumentation"} _b414 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$G$ghost$$4 == _READ_HAS_OCCURRED_$$G;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b413 ==> _WRITE_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b412 ==> _READ_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b411 ==> !_WRITE_HAS_OCCURRED_$$G;
    assert {:tag "noread"} _b410 ==> !_READ_HAS_OCCURRED_$$G;
    assert {:tag "disabledMaintainsInstrumentation"} _b409 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$4 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "disabledMaintainsInstrumentation"} _b408 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$F$ghost$$4 == _READ_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b407 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b406 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b405 ==> !_WRITE_HAS_OCCURRED_$$F;
    assert {:tag "noread"} _b404 ==> !_READ_HAS_OCCURRED_$$F;
    assert {:tag "predicatedEquality"} _b403 ==> p2$1 && p2$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b402 ==> p2$1 && p2$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b401 ==> p2$1 && p2$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b400 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b399 ==> p2$1 && p2$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b398 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b397 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b396 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b395 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b394 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b393 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b392 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b391 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b390 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b389 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b388 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b387 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b386 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b385 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b384 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b383 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b382 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b381 ==> p2$1 && p2$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b380 ==> p2$1 && p2$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b379 ==> p2$1 && p2$2 ==> $c22.0$1 == $c22.0$2;
    assert {:tag "predicatedEquality"} _b378 ==> p2$1 && p2$2 ==> $c41.0$1 == $c41.0$2;
    assert {:tag "predicatedEquality"} _b377 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b376 ==> p2$1 && p2$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b375 ==> p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b374 ==> p2$1 && p2$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b373 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b372 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b371 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b370 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b135 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b134 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b133 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b132 ==> _WRITE_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b131 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b130 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b129 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b128 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b127 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b126 ==> _READ_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b125 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b124 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b123 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b123 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b122 ==> p2$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b122 ==> p2$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b121 ==> BV32_UGE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b121 ==> BV32_UGE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b120 ==> BV32_ULE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b120 ==> BV32_ULE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b119 ==> BV32_SGE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b119 ==> BV32_SGE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b118 ==> BV32_SLE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b118 ==> BV32_SLE($c1.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b117 ==> $c1.0$1 mod 32 == 0 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b117 ==> $c1.0$2 mod 32 == 0 mod 32;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 17} p2$1 ==> true;
    v5$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nj)) else v5$1);
    v5$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nj)) else v5$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
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
    p3$1 := (if p2$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p2$2 && v5$2 then v5$2 else p3$2);
    p2$1 := (if p2$1 && !v5$1 then v5$1 else p2$1);
    p2$2 := (if p2$2 && !v5$2 then v5$2 else p2$2);
    v6$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v6$1);
    v6$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    $c2.0$1 := (if p5$1 then 0 else $c2.0$1);
    $c2.0$2 := (if p5$2 then 0 else $c2.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$F$ghost$$7 := _READ_HAS_OCCURRED_$$F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$7 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_12_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_12"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b425 ==> !p5$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$7 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b424 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b423 ==> !p5$1 ==> _READ_HAS_OCCURRED_$$F$ghost$$7 == _READ_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b422 ==> _READ_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p2$1;
    assert p6$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b229 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b228 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b227 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b226 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b225 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b224 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b223 ==> _READ_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b222 ==> _READ_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b221 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c2.0$1, $0$1) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b221 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c2.0$2, $0$2) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b220 ==> p6$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b220 ==> p6$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b219 ==> BV32_UGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b219 ==> BV32_UGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b218 ==> BV32_ULE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b218 ==> BV32_ULE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b217 ==> BV32_SGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b217 ==> BV32_SGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b216 ==> BV32_SLE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b216 ==> BV32_SLE($c2.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b215 ==> $c2.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b215 ==> $c2.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 20} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1)) else v7$1);
    v7$2 := (if p6$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1)) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $0$1 := (if p7$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1) else $0$1);
    $0$2 := (if p7$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1) else $0$2);
    $0$1 := (if p8$1 then 31 else $0$1);
    $0$2 := (if p8$2 then 31 else $0$2);
    v8$1 := (if p6$1 then BV64_SLE($c2.0$1, $0$1) else v8$1);
    v8$2 := (if p6$2 then BV64_SLE($c2.0$2, $0$2) else v8$2);
    p9$1 := (if p6$1 && v8$1 then v8$1 else p9$1);
    p9$2 := (if p6$2 && v8$2 then v8$2 else p9$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$F(p9$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0), $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$F(p9$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0), $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$F"} true;
    v9$1 := (if p9$1 then $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)] else v9$1);
    v9$2 := (if p9$2 then $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)] else v9$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$kernel3.shared_F(p9$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1), v9$1, $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(p9$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$kernel3.shared_F(p9$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel3.shared_F"} true;
    $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)] := (if p9$1 then v9$1 else $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$1, 32, 0), 32), v1$1)]);
    $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2)] := (if p9$2 then v9$2 else $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c2.0$2, 32, 0), 32), v1$2)]);
    $c2.0$1 := (if p9$1 then BV64_ADD($c2.0$1, 1) else $c2.0$1);
    $c2.0$2 := (if p9$2 then BV64_ADD($c2.0$2, 1) else $c2.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $7.backedge, __partitioned_block_$7.tail_0;

  __partitioned_block_$7.tail_0:
    assume !p6$1 && !p6$2;
    goto __partitioned_block_$7.tail_1;

  __partitioned_block_$7.tail_1:
    call {:sourceloc_num 30} $bugle_barrier_duplicated_2(-1, -1, p3$1, p3$2);
    v10$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v10$1);
    v10$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v10$2);
    p11$1 := (if p3$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p3$2 && v10$2 then v10$2 else p11$2);
    $c3.0$1 := (if p11$1 then 0 else $c3.0$1);
    $c3.0$2 := (if p11$2 then 0 else $c3.0$2);
    p12$1 := (if p11$1 then true else p12$1);
    p12$2 := (if p11$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$G$ghost$$16 := _READ_HAS_OCCURRED_$$G;
    _WRITE_HAS_OCCURRED_$$G$ghost$$16 := _WRITE_HAS_OCCURRED_$$G;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_9_0"} true;
    goto $16;

  $16:
    assume {:captureState "loop_head_state_9"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b433 ==> !p11$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b432 ==> !p11$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$16 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b431 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b430 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32) || _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b429 ==> !p11$1 ==> _WRITE_HAS_OCCURRED_$$G$ghost$$16 == _WRITE_HAS_OCCURRED_$$G;
    assert {:tag "disabledMaintainsInstrumentation"} _b428 ==> !p11$1 ==> _READ_HAS_OCCURRED_$$G$ghost$$16 == _READ_HAS_OCCURRED_$$G;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b427 ==> _WRITE_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b426 ==> _READ_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p11"} true;
    assert p12$1 ==> p2$1;
    assert p12$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b175 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b174 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b173 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b172 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b171 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b170 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b169 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b168 ==> _WRITE_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b167 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b166 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b165 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b164 ==> _READ_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b163 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b162 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b161 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b160 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b159 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b159 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b158 ==> p12$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b158 ==> p12$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b157 ==> BV32_UGE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b157 ==> BV32_UGE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b156 ==> BV32_ULE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b156 ==> BV32_ULE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b155 ==> BV32_SGE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b155 ==> BV32_SGE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b154 ==> BV32_SLE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b154 ==> BV32_SLE($c3.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p12$1 ==> _b153 ==> $c3.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p12$2 ==> _b153 ==> $c3.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 32} p12$1 ==> true;
    v11$1 := (if p12$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1)) else v11$1);
    v11$2 := (if p12$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1)) else v11$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p18$1 := false;
    p18$2 := false;
    p14$1 := (if p12$1 && v11$1 then v11$1 else p14$1);
    p14$2 := (if p12$2 && v11$2 then v11$2 else p14$2);
    p13$1 := (if p12$1 && !v11$1 then !v11$1 else p13$1);
    p13$2 := (if p12$2 && !v11$2 then !v11$2 else p13$2);
    $1$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1) else $1$1);
    $1$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1) else $1$2);
    $1$1 := (if p14$1 then 31 else $1$1);
    $1$2 := (if p14$2 then 31 else $1$2);
    v12$1 := (if p12$1 then BV64_SLE($c3.0$1, $1$1) else v12$1);
    v12$2 := (if p12$2 then BV64_SLE($c3.0$2, $1$2) else v12$2);
    p15$1 := (if p12$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p12$2 && v12$2 then v12$2 else p15$2);
    p12$1 := (if p12$1 && !v12$1 then v12$1 else p12$1);
    p12$2 := (if p12$2 && !v12$2 then v12$2 else p12$2);
    $c4.0$1 := (if p15$1 then 0 else $c4.0$1);
    $c4.0$2 := (if p15$2 then 0 else $c4.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21 := _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_11_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_11"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b437 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21 == _WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "disabledMaintainsInstrumentation"} _b436 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$21 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b435 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b434 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p12$1;
    assert p16$2 ==> p12$2;
    assert p12$1 ==> p2$1;
    assert p12$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b192 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLE($c3.0$1, $1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b191 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b190 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b189 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b188 ==> _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b187 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLE($c3.0$1, $1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b186 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b185 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b184 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b183 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b182 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1) && BV64_SLT($c4.0$1, BV32_SEXT64($nm)) ==> p16$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b182 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2) && BV64_SLT($c4.0$2, BV32_SEXT64($nm)) ==> p16$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p16$1 ==> _b181 ==> p16$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p16$2 ==> _b181 ==> p16$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b180 ==> BV32_UGE($c4.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b180 ==> BV32_UGE($c4.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b179 ==> BV32_ULE($c4.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b179 ==> BV32_ULE($c4.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b178 ==> BV32_SGE($c4.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b178 ==> BV32_SGE($c4.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b177 ==> BV32_SLE($c4.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b177 ==> BV32_SLE($c4.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p16$1 ==> _b176 ==> $c4.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p16$2 ==> _b176 ==> $c4.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 37} p16$1 ==> true;
    v13$1 := (if p16$1 then BV64_SLT($c4.0$1, BV32_SEXT64($nm)) else v13$1);
    v13$2 := (if p16$2 then BV64_SLT($c4.0$2, BV32_SEXT64($nm)) else v13$2);
    p17$1 := false;
    p17$2 := false;
    p17$1 := (if p16$1 && v13$1 then v13$1 else p17$1);
    p17$2 := (if p16$2 && v13$2 then v13$2 else p17$2);
    p16$1 := (if p16$1 && !v13$1 then v13$1 else p16$1);
    p16$2 := (if p16$2 && !v13$2 then v13$2 else p16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p17$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p17$2 then _HAVOC_int$2 else v14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p17$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p17$2 then _HAVOC_int$2 else v15$2);
    v16$1 := (if p17$1 then BV_EXTRACT($c3.0$1, 32, 0) else v16$1);
    v16$2 := (if p17$2 then BV_EXTRACT($c3.0$2, 32, 0) else v16$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$kernel3.shared_F(p17$1, BV32_ADD(BV32_MUL(v16$1, 32), v1$1), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v16$1, 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$kernel3.shared_F(p17$2, BV32_ADD(BV32_MUL(v16$2, 32), v1$2), $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v16$2, 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel3.shared_F"} true;
    v17$1 := (if p17$1 then $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v16$1, 32), v1$1)] else v17$1);
    v17$2 := (if p17$2 then $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v16$2, 32), v1$2)] else v17$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$kernel3.shared_F(p17$1, BV32_ADD(BV32_MUL(v16$1, 32), v1$1), FADD64(v17$1, FMUL64(v14$1, v15$1)), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v16$1, 32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(p17$2, BV32_ADD(BV32_MUL(v16$2, 32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$kernel3.shared_F(p17$2, BV32_ADD(BV32_MUL(v16$2, 32), v1$2), FADD64(v17$2, FMUL64(v14$2, v15$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel3.shared_F"} true;
    $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v16$1, 32), v1$1)] := (if p17$1 then FADD64(v17$1, FMUL64(v14$1, v15$1)) else $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(v16$1, 32), v1$1)]);
    $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v16$2, 32), v1$2)] := (if p17$2 then FADD64(v17$2, FMUL64(v14$2, v15$2)) else $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v16$2, 32), v1$2)]);
    $c4.0$1 := (if p17$1 then BV64_ADD($c4.0$1, 1) else $c4.0$1);
    $c4.0$2 := (if p17$2 then BV64_ADD($c4.0$2, 1) else $c4.0$2);
    p16$1 := (if p17$1 then true else p16$1);
    p16$2 := (if p17$2 then true else p16$2);
    goto $21.backedge, $21.tail;

  $21.tail:
    assume !p16$1 && !p16$2;
    $c41.0$1 := (if p15$1 then 0 else $c41.0$1);
    $c41.0$2 := (if p15$2 then 0 else $c41.0$2);
    p18$1 := (if p15$1 then true else p18$1);
    p18$2 := (if p15$2 then true else p18$2);
    _READ_HAS_OCCURRED_$$G$ghost$$25 := _READ_HAS_OCCURRED_$$G;
    _WRITE_HAS_OCCURRED_$$G$ghost$$25 := _WRITE_HAS_OCCURRED_$$G;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$25 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_10_0"} true;
    goto $25;

  $25:
    assume {:captureState "loop_head_state_10"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b443 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$25 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b442 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b441 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$G$ghost$$25 == _WRITE_HAS_OCCURRED_$$G;
    assert {:tag "disabledMaintainsInstrumentation"} _b440 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$G$ghost$$25 == _READ_HAS_OCCURRED_$$G;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b439 ==> _WRITE_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b438 ==> _READ_HAS_OCCURRED_$$G ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p15"} true;
    assert p18$1 ==> p12$1;
    assert p18$2 ==> p12$2;
    assert p12$1 ==> p2$1;
    assert p12$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b214 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLE($c3.0$1, $1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b213 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b212 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b211 ==> _WRITE_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b210 ==> _WRITE_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b209 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLE($c3.0$1, $1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b208 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b207 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b206 ==> _READ_HAS_OCCURRED_$$G ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b205 ==> _READ_HAS_OCCURRED_$$G ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b204 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLE($c3.0$1, $1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b203 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b202 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b201 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b200 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b199 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1) && BV64_SLT($c41.0$1, BV32_SEXT64($ni)) ==> p18$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b199 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2) && BV64_SLT($c41.0$2, BV32_SEXT64($ni)) ==> p18$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p18$1 ==> _b198 ==> p18$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $1$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p18$2 ==> _b198 ==> p18$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b197 ==> BV32_UGE($c41.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b197 ==> BV32_UGE($c41.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b196 ==> BV32_ULE($c41.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b196 ==> BV32_ULE($c41.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b195 ==> BV32_SGE($c41.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b195 ==> BV32_SGE($c41.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b194 ==> BV32_SLE($c41.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b194 ==> BV32_SLE($c41.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p18$1 ==> _b193 ==> $c41.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p18$2 ==> _b193 ==> $c41.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 45} p18$1 ==> true;
    v18$1 := (if p18$1 then BV64_SLT($c41.0$1, BV32_SEXT64($ni)) else v18$1);
    v18$2 := (if p18$2 then BV64_SLT($c41.0$2, BV32_SEXT64($ni)) else v18$2);
    p19$1 := false;
    p19$2 := false;
    p19$1 := (if p18$1 && v18$1 then v18$1 else p19$1);
    p19$2 := (if p18$2 && v18$2 then v18$2 else p19$2);
    p18$1 := (if p18$1 && !v18$1 then v18$1 else p18$1);
    p18$2 := (if p18$2 && !v18$2 then v18$2 else p18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p19$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p19$2 then _HAVOC_int$2 else v19$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$kernel3.shared_F(p19$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$kernel3.shared_F(p19$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2), $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel3.shared_F"} true;
    v20$1 := (if p19$1 then $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$1, 32, 0), 32), v1$1)] else v20$1);
    v20$2 := (if p19$2 then $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c3.0$2, 32, 0), 32), v1$2)] else v20$2);
    v21$1 := (if p19$1 then BV_EXTRACT(BV64_ADD(BV64_MUL($c41.0$1, BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0) else v21$1);
    v21$2 := (if p19$2 then BV_EXTRACT(BV64_ADD(BV64_MUL($c41.0$2, BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0) else v21$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$G(p19$1, v21$1, $$G[v21$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$G(p19$2, v21$2, $$G[v21$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$G"} true;
    v22$1 := (if p19$1 then $$G[v21$1] else v22$1);
    v22$2 := (if p19$2 then $$G[v21$2] else v22$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$G(p19$1, v21$1, FADD64(v22$1, FMUL64(v19$1, v20$1)), $$G[v21$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(p19$2, v21$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$G(p19$2, v21$2, FADD64(v22$2, FMUL64(v19$2, v20$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$G"} true;
    $$G[v21$1] := (if p19$1 then FADD64(v22$1, FMUL64(v19$1, v20$1)) else $$G[v21$1]);
    $$G[v21$2] := (if p19$2 then FADD64(v22$2, FMUL64(v19$2, v20$2)) else $$G[v21$2]);
    $c41.0$1 := (if p19$1 then BV64_ADD($c41.0$1, 1) else $c41.0$1);
    $c41.0$2 := (if p19$2 then BV64_ADD($c41.0$2, 1) else $c41.0$2);
    p18$1 := (if p19$1 then true else p18$1);
    p18$2 := (if p19$2 then true else p18$2);
    goto $25.backedge, $25.tail;

  $25.tail:
    assume !p18$1 && !p18$2;
    $c3.0$1 := (if p15$1 then BV64_ADD($c3.0$1, 1) else $c3.0$1);
    $c3.0$2 := (if p15$2 then BV64_ADD($c3.0$2, 1) else $c3.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $16.backedge, __partitioned_block_$16.tail_0;

  __partitioned_block_$16.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$16.tail_1;

  __partitioned_block_$16.tail_1:
    call {:sourceloc_num 56} $bugle_barrier_duplicated_3(-1, -1, p3$1, p3$2);
    v23$1 := (if p3$1 then BV32_SGE($nm, 1) else v23$1);
    v23$2 := (if p3$2 then BV32_SGE($nm, 1) else v23$2);
    p21$1 := (if p3$1 && v23$1 then v23$1 else p21$1);
    p21$2 := (if p3$2 && v23$2 then v23$2 else p21$2);
    v24$1 := (if p21$1 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v24$1);
    v24$2 := (if p21$2 then BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v24$2);
    p23$1 := (if p21$1 && v24$1 then v24$1 else p23$1);
    p23$2 := (if p21$2 && v24$2 then v24$2 else p23$2);
    $c22.0$1 := (if p23$1 then 0 else $c22.0$1);
    $c22.0$2 := (if p23$2 then 0 else $c22.0$2);
    p24$1 := (if p23$1 then true else p24$1);
    p24$2 := (if p23$2 then true else p24$2);
    _WRITE_HAS_OCCURRED_$$F$ghost$$34 := _WRITE_HAS_OCCURRED_$$F;
    _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$34 := _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume {:captureState "loop_entry_state_8_0"} true;
    goto $34;

  $34:
    assume {:captureState "loop_head_state_8"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b447 ==> !p23$1 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F$ghost$$34 == _READ_HAS_OCCURRED_$$kernel3.shared_F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b446 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> _WATCHED_OFFSET mod BV32_MUL(1, 32) == BV32_ADD(BV32_MUL(0, 32), local_id_x$1) mod BV32_MUL(1, 32);
    assert {:tag "disabledMaintainsInstrumentation"} _b445 ==> !p23$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$34 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b444 ==> _WRITE_HAS_OCCURRED_$$F ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel3.shared_F ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p24"} {:dominator_predicate "p23"} true;
    assert p24$1 ==> p2$1;
    assert p24$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b152 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b151 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b150 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b149 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b148 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b147 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b146 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($nm, 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b145 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b144 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b143 ==> _READ_HAS_OCCURRED_$$kernel3.shared_F ==> BV32_SGE($ni, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b142 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV32_SGE($nm, 1) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c22.0$1, $2$1) ==> p24$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b142 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV32_SGE($nm, 1) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c22.0$2, $2$2) ==> p24$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p24$1 ==> _b141 ==> p24$1 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$1, BV32_SEXT64($nl)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV32_SGE($nm, 1) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p24$2 ==> _b141 ==> p24$2 ==> BV32_SGE($ni, 1) && BV64_SLT($c0.0$2, BV32_SEXT64($nl)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV32_SGE($nm, 1) && BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b140 ==> BV32_UGE($c22.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b140 ==> BV32_UGE($c22.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b139 ==> BV32_ULE($c22.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b139 ==> BV32_ULE($c22.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b138 ==> BV32_SGE($c22.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b138 ==> BV32_SGE($c22.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b137 ==> BV32_SLE($c22.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b137 ==> BV32_SLE($c22.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p24$1 ==> _b136 ==> $c22.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p24$2 ==> _b136 ==> $c22.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 12} {:thread 1} (if _READ_HAS_OCCURRED_$$C ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nm), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 11} {:thread 1} (if _READ_HAS_OCCURRED_$$F ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ni, 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ni, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 10} {:thread 1} (if _READ_HAS_OCCURRED_$$D ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nm, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nm), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nl), BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nj), 0) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nm, 1) then 1 else 0)), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $nj), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$G ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), $ni), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $nl))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 59} p24$1 ==> true;
    v25$1 := (if p24$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1)) else v25$1);
    v25$2 := (if p24$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1)) else v25$2);
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p26$1 := (if p24$1 && v25$1 then v25$1 else p26$1);
    p26$2 := (if p24$2 && v25$2 then v25$2 else p26$2);
    p25$1 := (if p24$1 && !v25$1 then !v25$1 else p25$1);
    p25$2 := (if p24$2 && !v25$2 then !v25$2 else p25$2);
    $2$1 := (if p25$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$1), 1) else $2$1);
    $2$2 := (if p25$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nj), $c1.0$2), 1) else $2$2);
    $2$1 := (if p26$1 then 31 else $2$1);
    $2$2 := (if p26$2 then 31 else $2$2);
    v26$1 := (if p24$1 then BV64_SLE($c22.0$1, $2$1) else v26$1);
    v26$2 := (if p24$2 then BV64_SLE($c22.0$2, $2$2) else v26$2);
    p27$1 := (if p24$1 && v26$1 then v26$1 else p27$1);
    p27$2 := (if p24$2 && v26$2 then v26$2 else p27$2);
    p24$1 := (if p24$1 && !v26$1 then v26$1 else p24$1);
    p24$2 := (if p24$2 && !v26$2 then v26$2 else p24$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$kernel3.shared_F(p27$1, BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$1, 32, 0), 32), v1$1), $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$1, 32, 0), 32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$kernel3.shared_F(p27$2, BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$2, 32, 0), 32), v1$2), $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$2, 32, 0), 32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel3.shared_F"} true;
    v27$1 := (if p27$1 then $$kernel3.shared_F[1bv1][BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$1, 32, 0), 32), v1$1)] else v27$1);
    v27$2 := (if p27$2 then $$kernel3.shared_F[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV_EXTRACT($c22.0$2, 32, 0), 32), v1$2)] else v27$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$F(p27$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c22.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0), v27$1, $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c22.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(p27$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c22.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$F(p27$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c22.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0), v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$F"} true;
    $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c22.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)] := (if p27$1 then v27$1 else $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c22.0$1), BV32_SEXT64($nl)), BV64_ADD(v2$1, $c0.0$1)), 32, 0)]);
    $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c22.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)] := (if p27$2 then v27$2 else $$F[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c22.0$2), BV32_SEXT64($nl)), BV64_ADD(v2$2, $c0.0$2)), 32, 0)]);
    $c22.0$1 := (if p27$1 then BV64_ADD($c22.0$1, 1) else $c22.0$1);
    $c22.0$2 := (if p27$2 then BV64_ADD($c22.0$2, 1) else $c22.0$2);
    p24$1 := (if p27$1 then true else p24$1);
    p24$2 := (if p27$2 then true else p24$2);
    goto $34.backedge, $34.tail;

  $34.tail:
    assume !p24$1 && !p24$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 32) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 32) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 1048576) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 1048576) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p0$1 && !p0$2;
    goto $88;

  $2.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $2;

  $4.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_7_0"} true;
    goto $4;

  $34.backedge:
    assume {:backedge} p24$1 || p24$2;
    assume {:captureState "loop_back_edge_state_8_0"} true;
    goto $34;

  $16.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_9_0"} true;
    goto $16;

  $25.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_10_0"} true;
    goto $25;

  $21.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_11_0"} true;
    goto $21;

  $7.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_12_0"} true;
    goto $7;
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
  modifies $$kernel3.shared_F, $$F, $$G, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel3.shared_F, $$F, $$G, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel3.shared_F, $$F, $$G, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel3.shared_F, $$F, $$G, _TRACKING;



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

const {:existential true} _b211: bool;

const {:existential true} _b212: bool;

const {:existential true} _b213: bool;

const {:existential true} _b214: bool;

const {:existential true} _b215: bool;

const {:existential true} _b216: bool;

const {:existential true} _b217: bool;

const {:existential true} _b218: bool;

const {:existential true} _b219: bool;

const {:existential true} _b220: bool;

const {:existential true} _b221: bool;

const {:existential true} _b222: bool;

const {:existential true} _b223: bool;

const {:existential true} _b224: bool;

const {:existential true} _b225: bool;

const {:existential true} _b226: bool;

const {:existential true} _b227: bool;

const {:existential true} _b228: bool;

const {:existential true} _b229: bool;

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



const _WATCHED_VALUE_$$D: int;

procedure {:inline 1} _LOG_READ_$$D(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$D;



implementation {:inline 1} _LOG_READ_$$D(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$D == _value then true else _READ_HAS_OCCURRED_$$D);
    return;
}



procedure _CHECK_READ_$$D(_P: bool, _offset: int, _value: int);
  requires {:source_name "D"} {:array "$$D"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$D);
  requires {:source_name "D"} {:array "$$D"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$D: bool;

procedure {:inline 1} _LOG_WRITE_$$D(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$D, _WRITE_READ_BENIGN_FLAG_$$D;



implementation {:inline 1} _LOG_WRITE_$$D(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$D == _value then true else _WRITE_HAS_OCCURRED_$$D);
    _WRITE_READ_BENIGN_FLAG_$$D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$D == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$D);
    return;
}



procedure _CHECK_WRITE_$$D(_P: bool, _offset: int, _value: int);
  requires {:source_name "D"} {:array "$$D"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$D != _value);
  requires {:source_name "D"} {:array "$$D"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$D != _value);
  requires {:source_name "D"} {:array "$$D"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$D(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$D;



implementation {:inline 1} _LOG_ATOMIC_$$D(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$D);
    return;
}



procedure _CHECK_ATOMIC_$$D(_P: bool, _offset: int);
  requires {:source_name "D"} {:array "$$D"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset);
  requires {:source_name "D"} {:array "$$D"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$D(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$D;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$D(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$D := (if _P && _WRITE_HAS_OCCURRED_$$D && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$D);
    return;
}



const _WATCHED_VALUE_$$E: int;

procedure {:inline 1} _LOG_READ_$$E(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$E;



implementation {:inline 1} _LOG_READ_$$E(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then true else _READ_HAS_OCCURRED_$$E);
    return;
}



procedure _CHECK_READ_$$E(_P: bool, _offset: int, _value: int);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$E);
  requires {:source_name "E"} {:array "$$E"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$E: bool;

procedure {:inline 1} _LOG_WRITE_$$E(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$E, _WRITE_READ_BENIGN_FLAG_$$E;



implementation {:inline 1} _LOG_WRITE_$$E(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then true else _WRITE_HAS_OCCURRED_$$E);
    _WRITE_READ_BENIGN_FLAG_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$E);
    return;
}



procedure _CHECK_WRITE_$$E(_P: bool, _offset: int, _value: int);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E != _value);
  requires {:source_name "E"} {:array "$$E"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E != _value);
  requires {:source_name "E"} {:array "$$E"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$E(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$E;



implementation {:inline 1} _LOG_ATOMIC_$$E(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$E);
    return;
}



procedure _CHECK_ATOMIC_$$E(_P: bool, _offset: int);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);
  requires {:source_name "E"} {:array "$$E"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$E;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$E := (if _P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$E);
    return;
}



const _WATCHED_VALUE_$$F: int;

procedure {:inline 1} _LOG_READ_$$F(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$F;



implementation {:inline 1} _LOG_READ_$$F(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then true else _READ_HAS_OCCURRED_$$F);
    return;
}



procedure _CHECK_READ_$$F(_P: bool, _offset: int, _value: int);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$F);
  requires {:source_name "F"} {:array "$$F"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$F: bool;

procedure {:inline 1} _LOG_WRITE_$$F(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$F, _WRITE_READ_BENIGN_FLAG_$$F;



implementation {:inline 1} _LOG_WRITE_$$F(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then true else _WRITE_HAS_OCCURRED_$$F);
    _WRITE_READ_BENIGN_FLAG_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$F);
    return;
}



procedure _CHECK_WRITE_$$F(_P: bool, _offset: int, _value: int);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F != _value);
  requires {:source_name "F"} {:array "$$F"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F != _value);
  requires {:source_name "F"} {:array "$$F"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$F(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$F;



implementation {:inline 1} _LOG_ATOMIC_$$F(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$F);
    return;
}



procedure _CHECK_ATOMIC_$$F(_P: bool, _offset: int);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);
  requires {:source_name "F"} {:array "$$F"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$F;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$F := (if _P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$F);
    return;
}



const _WATCHED_VALUE_$$G: int;

procedure {:inline 1} _LOG_READ_$$G(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$G;



implementation {:inline 1} _LOG_READ_$$G(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then true else _READ_HAS_OCCURRED_$$G);
    return;
}



procedure _CHECK_READ_$$G(_P: bool, _offset: int, _value: int);
  requires {:source_name "G"} {:array "$$G"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$G);
  requires {:source_name "G"} {:array "$$G"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$G: bool;

procedure {:inline 1} _LOG_WRITE_$$G(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$G, _WRITE_READ_BENIGN_FLAG_$$G;



implementation {:inline 1} _LOG_WRITE_$$G(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then true else _WRITE_HAS_OCCURRED_$$G);
    _WRITE_READ_BENIGN_FLAG_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$G);
    return;
}



procedure _CHECK_WRITE_$$G(_P: bool, _offset: int, _value: int);
  requires {:source_name "G"} {:array "$$G"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G != _value);
  requires {:source_name "G"} {:array "$$G"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G != _value);
  requires {:source_name "G"} {:array "$$G"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$G(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$G;



implementation {:inline 1} _LOG_ATOMIC_$$G(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$G);
    return;
}



procedure _CHECK_ATOMIC_$$G(_P: bool, _offset: int);
  requires {:source_name "G"} {:array "$$G"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);
  requires {:source_name "G"} {:array "$$G"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$G;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$G := (if _P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$G);
    return;
}



const _WATCHED_VALUE_$$kernel3.shared_F: int;

procedure {:inline 1} _LOG_READ_$$kernel3.shared_F(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel3.shared_F;



implementation {:inline 1} _LOG_READ_$$kernel3.shared_F(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel3.shared_F := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel3.shared_F == _value then true else _READ_HAS_OCCURRED_$$kernel3.shared_F);
    return;
}



procedure _CHECK_READ_$$kernel3.shared_F(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel3.shared_F(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel3.shared_F, _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F;



implementation {:inline 1} _LOG_WRITE_$$kernel3.shared_F(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel3.shared_F := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel3.shared_F == _value then true else _WRITE_HAS_OCCURRED_$$kernel3.shared_F);
    _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel3.shared_F == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F);
    return;
}



procedure _CHECK_WRITE_$$kernel3.shared_F(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel3.shared_F != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel3.shared_F != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel3.shared_F(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;



implementation {:inline 1} _LOG_ATOMIC_$$kernel3.shared_F(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel3.shared_F);
    return;
}



procedure _CHECK_ATOMIC_$$kernel3.shared_F(_P: bool, _offset: int);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_F"} {:array "$$kernel3.shared_F"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F := (if _P && _WRITE_HAS_OCCURRED_$$kernel3.shared_F && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel3.shared_F);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$F;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$G;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$F;
    goto anon7;

  anon7:
    havoc $$G;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel3.shared_F;
    goto anon3;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$F;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$G;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$F;
    goto anon7;

  anon7:
    havoc $$G;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel3.shared_F;
    goto anon3;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$F;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$G;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$F;
    goto anon7;

  anon7:
    havoc $$G;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel3.shared_F;
    goto anon3;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel3.shared_F;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel3.shared_F;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$F;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$F;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$G;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$G;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$F;
    goto anon7;

  anon7:
    havoc $$G;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel3.shared_F;
    goto anon3;

  anon9_Then:
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

const {:existential true} _b230: bool;

const {:existential true} _b231: bool;

const {:existential true} _b232: bool;

const {:existential true} _b233: bool;

const {:existential true} _b234: bool;

const {:existential true} _b235: bool;

const {:existential true} _b236: bool;

const {:existential true} _b237: bool;

const {:existential true} _b238: bool;

const {:existential true} _b239: bool;

const {:existential true} _b240: bool;

const {:existential true} _b241: bool;

const {:existential true} _b242: bool;

const {:existential true} _b243: bool;

const {:existential true} _b244: bool;

const {:existential true} _b245: bool;

const {:existential true} _b246: bool;

const {:existential true} _b247: bool;

const {:existential true} _b248: bool;

const {:existential true} _b249: bool;

const {:existential true} _b250: bool;

const {:existential true} _b251: bool;

const {:existential true} _b252: bool;

const {:existential true} _b253: bool;

const {:existential true} _b254: bool;

const {:existential true} _b255: bool;

const {:existential true} _b256: bool;

const {:existential true} _b257: bool;

const {:existential true} _b258: bool;

const {:existential true} _b259: bool;

const {:existential true} _b260: bool;

const {:existential true} _b261: bool;

const {:existential true} _b262: bool;

const {:existential true} _b263: bool;

const {:existential true} _b264: bool;

const {:existential true} _b265: bool;

const {:existential true} _b266: bool;

const {:existential true} _b267: bool;

const {:existential true} _b268: bool;

const {:existential true} _b269: bool;

const {:existential true} _b270: bool;

const {:existential true} _b271: bool;

const {:existential true} _b272: bool;

const {:existential true} _b273: bool;

const {:existential true} _b274: bool;

const {:existential true} _b275: bool;

const {:existential true} _b276: bool;

const {:existential true} _b277: bool;

const {:existential true} _b278: bool;

const {:existential true} _b279: bool;

const {:existential true} _b280: bool;

const {:existential true} _b281: bool;

const {:existential true} _b282: bool;

const {:existential true} _b283: bool;

const {:existential true} _b284: bool;

const {:existential true} _b285: bool;

const {:existential true} _b286: bool;

const {:existential true} _b287: bool;

const {:existential true} _b288: bool;

const {:existential true} _b289: bool;

const {:existential true} _b290: bool;

const {:existential true} _b291: bool;

const {:existential true} _b292: bool;

const {:existential true} _b293: bool;

const {:existential true} _b294: bool;

const {:existential true} _b295: bool;

const {:existential true} _b296: bool;

const {:existential true} _b297: bool;

const {:existential true} _b298: bool;

const {:existential true} _b299: bool;

const {:existential true} _b300: bool;

const {:existential true} _b301: bool;

const {:existential true} _b302: bool;

const {:existential true} _b303: bool;

const {:existential true} _b304: bool;

const {:existential true} _b305: bool;

const {:existential true} _b306: bool;

const {:existential true} _b307: bool;

const {:existential true} _b308: bool;

const {:existential true} _b309: bool;

const {:existential true} _b310: bool;

const {:existential true} _b311: bool;

const {:existential true} _b312: bool;

const {:existential true} _b313: bool;

const {:existential true} _b314: bool;

const {:existential true} _b315: bool;

const {:existential true} _b316: bool;

const {:existential true} _b317: bool;

const {:existential true} _b318: bool;

const {:existential true} _b319: bool;

const {:existential true} _b320: bool;

const {:existential true} _b321: bool;

const {:existential true} _b322: bool;

const {:existential true} _b323: bool;

const {:existential true} _b324: bool;

const {:existential true} _b325: bool;

const {:existential true} _b326: bool;

const {:existential true} _b327: bool;

const {:existential true} _b328: bool;

const {:existential true} _b329: bool;

const {:existential true} _b330: bool;

const {:existential true} _b331: bool;

const {:existential true} _b332: bool;

const {:existential true} _b333: bool;

const {:existential true} _b334: bool;

const {:existential true} _b335: bool;

const {:existential true} _b336: bool;

const {:existential true} _b337: bool;

const {:existential true} _b338: bool;

const {:existential true} _b339: bool;

const {:existential true} _b340: bool;

const {:existential true} _b341: bool;

const {:existential true} _b342: bool;

const {:existential true} _b343: bool;

const {:existential true} _b344: bool;

const {:existential true} _b345: bool;

const {:existential true} _b346: bool;

const {:existential true} _b347: bool;

const {:existential true} _b348: bool;

const {:existential true} _b349: bool;

const {:existential true} _b350: bool;

const {:existential true} _b351: bool;

const {:existential true} _b352: bool;

const {:existential true} _b353: bool;

const {:existential true} _b354: bool;

const {:existential true} _b355: bool;

const {:existential true} _b356: bool;

const {:existential true} _b357: bool;

const {:existential true} _b358: bool;

const {:existential true} _b359: bool;

const {:existential true} _b360: bool;

const {:existential true} _b361: bool;

const {:existential true} _b362: bool;

const {:existential true} _b363: bool;

const {:existential true} _b364: bool;

const {:existential true} _b365: bool;

const {:existential true} _b366: bool;

const {:existential true} _b367: bool;

const {:existential true} _b368: bool;

const {:existential true} _b369: bool;

const {:existential true} _b370: bool;

const {:existential true} _b371: bool;

const {:existential true} _b372: bool;

const {:existential true} _b373: bool;

const {:existential true} _b374: bool;

const {:existential true} _b375: bool;

const {:existential true} _b376: bool;

const {:existential true} _b377: bool;

const {:existential true} _b378: bool;

const {:existential true} _b379: bool;

const {:existential true} _b380: bool;

const {:existential true} _b381: bool;

const {:existential true} _b382: bool;

const {:existential true} _b383: bool;

const {:existential true} _b384: bool;

const {:existential true} _b385: bool;

const {:existential true} _b386: bool;

const {:existential true} _b387: bool;

const {:existential true} _b388: bool;

const {:existential true} _b389: bool;

const {:existential true} _b390: bool;

const {:existential true} _b391: bool;

const {:existential true} _b392: bool;

const {:existential true} _b393: bool;

const {:existential true} _b394: bool;

const {:existential true} _b395: bool;

const {:existential true} _b396: bool;

const {:existential true} _b397: bool;

const {:existential true} _b398: bool;

const {:existential true} _b399: bool;

const {:existential true} _b400: bool;

const {:existential true} _b401: bool;

const {:existential true} _b402: bool;

const {:existential true} _b403: bool;

const {:existential true} _b404: bool;

const {:existential true} _b405: bool;

const {:existential true} _b406: bool;

const {:existential true} _b407: bool;

const {:existential true} _b408: bool;

const {:existential true} _b409: bool;

const {:existential true} _b410: bool;

const {:existential true} _b411: bool;

const {:existential true} _b412: bool;

const {:existential true} _b413: bool;

const {:existential true} _b414: bool;

const {:existential true} _b415: bool;

const {:existential true} _b416: bool;

const {:existential true} _b417: bool;

const {:existential true} _b418: bool;

const {:existential true} _b419: bool;

const {:existential true} _b420: bool;

const {:existential true} _b421: bool;

const {:existential true} _b422: bool;

const {:existential true} _b423: bool;

const {:existential true} _b424: bool;

const {:existential true} _b425: bool;

const {:existential true} _b426: bool;

const {:existential true} _b427: bool;

const {:existential true} _b428: bool;

const {:existential true} _b429: bool;

const {:existential true} _b430: bool;

const {:existential true} _b431: bool;

const {:existential true} _b432: bool;

const {:existential true} _b433: bool;

const {:existential true} _b434: bool;

const {:existential true} _b435: bool;

const {:existential true} _b436: bool;

const {:existential true} _b437: bool;

const {:existential true} _b438: bool;

const {:existential true} _b439: bool;

const {:existential true} _b440: bool;

const {:existential true} _b441: bool;

const {:existential true} _b442: bool;

const {:existential true} _b443: bool;

const {:existential true} _b444: bool;

const {:existential true} _b445: bool;

const {:existential true} _b446: bool;

const {:existential true} _b447: bool;
