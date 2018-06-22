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
 b0039: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$c1"} {:global} {:elem_width 32} {:source_name "c1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$c1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$c1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$c1: bool;

var {:source_name "imgOut"} {:global} $$imgOut: [int]int;

axiom {:array_info "$$imgOut"} {:global} {:elem_width 32} {:source_name "imgOut"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$imgOut: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$imgOut: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$imgOut: bool;

axiom {:array_info "$$y1"} {:global} {:elem_width 32} {:source_name "y1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y1: bool;

axiom {:array_info "$$y2"} {:global} {:elem_width 32} {:source_name "y2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y2: bool;

var {:source_name "shared_c1"} {:group_shared} $$kernel24.shared_c1: [bv1][int]int;

axiom {:array_info "$$kernel24.shared_c1"} {:group_shared} {:elem_width 32} {:source_name "shared_c1"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel24.shared_c1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel24.shared_c1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1: bool;

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

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

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

procedure {:source_name "kernel24"} {:kernel} $kernel24($h: int, $w: int);
  requires {:sourceloc_num 0} {:thread 1} (if $h == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $w == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($h, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($h, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($w, 1) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($w, 2147483647) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$imgOut ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$y1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$c1 && !_WRITE_HAS_OCCURRED_$$c1 && !_ATOMIC_HAS_OCCURRED_$$c1;
  requires !_READ_HAS_OCCURRED_$$imgOut && !_WRITE_HAS_OCCURRED_$$imgOut && !_ATOMIC_HAS_OCCURRED_$$imgOut;
  requires !_READ_HAS_OCCURRED_$$y1 && !_WRITE_HAS_OCCURRED_$$y1 && !_ATOMIC_HAS_OCCURRED_$$y1;
  requires !_READ_HAS_OCCURRED_$$y2 && !_WRITE_HAS_OCCURRED_$$y2 && !_ATOMIC_HAS_OCCURRED_$$y2;
  requires !_READ_HAS_OCCURRED_$$kernel24.shared_c1 && !_WRITE_HAS_OCCURRED_$$kernel24.shared_c1 && !_ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1;
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
  modifies $$kernel24.shared_c1, _WRITE_HAS_OCCURRED_$$kernel24.shared_c1, _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1, _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1, $$imgOut, _TRACKING, _READ_HAS_OCCURRED_$$kernel24.shared_c1, _WRITE_HAS_OCCURRED_$$imgOut, _WRITE_READ_BENIGN_FLAG_$$imgOut, _WRITE_READ_BENIGN_FLAG_$$imgOut;



implementation {:source_name "kernel24"} {:kernel} $kernel24($h: int, $w: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1_0.0$1: int;
  var $c1_0.0$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
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
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$imgOut$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$imgOut$ghost$$9: bool;
  var _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$9: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    v4$1 := v2$1 == 0;
    v4$2 := v2$2 == 0;
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
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    v5$1 := (if p0$1 then v3$1 == 0 else v5$1);
    v5$2 := (if p0$2 then v3$2 == 0 else v5$2);
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p1$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p1$2 then _HAVOC_int$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel24.shared_c1(p1$1, 0, v6$1, $$kernel24.shared_c1[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1(p1$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel24.shared_c1(p1$2, 0, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel24.shared_c1"} true;
    $$kernel24.shared_c1[1bv1][0] := (if p1$1 then v6$1 else $$kernel24.shared_c1[1bv1][0]);
    $$kernel24.shared_c1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p1$2 then v6$2 else $$kernel24.shared_c1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(-1, -1);
    $c0.0$1 := BV64_MUL(32, v0$1);
    $c0.0$2 := BV64_MUL(32, v0$2);
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_0"} true;
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p4$1 ==> $c0.0$1 mod 8192 == BV64_MUL(32, v0$1) mod 8192 )  && ( p4$2 ==> $c0.0$2 mod 8192 == BV64_MUL(32, v0$2) mod 8192 ) ,  ( p4$1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p4$2 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p4$1 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p4$2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p4$1 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p4$2 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p4$1 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p4$2 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($w)) ==> p4$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($w)) ==> p4$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> _WATCHED_OFFSET == 0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$y1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$imgOut ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 13} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT($c0.0$1, BV32_SEXT64($w)) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT($c0.0$2, BV32_SEXT64($w)) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p14$1 := false;
    p14$2 := false;
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    v8$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v8$1);
    v8$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v8$2);
    p7$1 := (if p5$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p5$2 && v8$2 then v8$2 else p7$2);
    $c1_0.0$1 := (if p7$1 then BV64_MUL(32, v1$1) else $c1_0.0$1);
    $c1_0.0$2 := (if p7$2 then BV64_MUL(32, v1$2) else $c1_0.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _WRITE_HAS_OCCURRED_$$imgOut$ghost$$7 := _WRITE_HAS_OCCURRED_$$imgOut;
    _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$7 := _READ_HAS_OCCURRED_$$kernel24.shared_c1;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$imgOut$ghost$$7 == _WRITE_HAS_OCCURRED_$$imgOut ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> _WATCHED_OFFSET == 0 ) ,  (  !p7$1 ==> _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$7 == _READ_HAS_OCCURRED_$$kernel24.shared_c1 ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p4$1;
    assert p8$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> $c1_0.0$1 mod 8192 == BV64_MUL(32, v1$1) mod 8192 )  && ( p8$2 ==> $c1_0.0$2 mod 8192 == BV64_MUL(32, v1$2) mod 8192 ) ,  ( p8$1 ==> BV32_SLE($c1_0.0$1, BV64_MUL(32, v1$1)) )  && ( p8$2 ==> BV32_SLE($c1_0.0$2, BV64_MUL(32, v1$2)) ) ,  ( p8$1 ==> BV32_SGE($c1_0.0$1, BV64_MUL(32, v1$1)) )  && ( p8$2 ==> BV32_SGE($c1_0.0$2, BV64_MUL(32, v1$2)) ) ,  ( p8$1 ==> BV32_ULE($c1_0.0$1, BV64_MUL(32, v1$1)) )  && ( p8$2 ==> BV32_ULE($c1_0.0$2, BV64_MUL(32, v1$2)) ) ,  ( p8$1 ==> BV32_UGE($c1_0.0$1, BV64_MUL(32, v1$1)) )  && ( p8$2 ==> BV32_UGE($c1_0.0$2, BV64_MUL(32, v1$2)) ) ,  ( p8$1 ==> p8$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) )  && ( p8$2 ==> p8$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) ==> p8$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1_0.0$2, BV32_SEXT64($h)) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) ) ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$y1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$imgOut ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 16} p8$1 ==> true;
    v9$1 := (if p8$1 then BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) else v9$1);
    v9$2 := (if p8$2 then BV64_SLT($c1_0.0$2, BV32_SEXT64($h)) else v9$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p9$1 := (if p8$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p8$2 && v9$2 then v9$2 else p9$2);
    p8$1 := (if p8$1 && !v9$1 then v9$1 else p8$1);
    p8$2 := (if p8$2 && !v9$2 then v9$2 else p8$2);
    $c3.0$1 := (if p9$1 then v3$1 else $c3.0$1);
    $c3.0$2 := (if p9$2 then v3$2 else $c3.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _WRITE_HAS_OCCURRED_$$imgOut$ghost$$9 := _WRITE_HAS_OCCURRED_$$imgOut;
    _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$9 := _READ_HAS_OCCURRED_$$kernel24.shared_c1;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$imgOut$ghost$$9 == _WRITE_HAS_OCCURRED_$$imgOut ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> _WATCHED_OFFSET == 0 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$kernel24.shared_c1$ghost$$9 == _READ_HAS_OCCURRED_$$kernel24.shared_c1 )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p8$1;
    assert p10$2 ==> p8$2;
    assert p8$1 ==> p4$1;
    assert p8$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> $c3.0$1 mod 16 == v3$1 mod 16 )  && ( p10$2 ==> $c3.0$2 mod 16 == v3$2 mod 16 ) ,  ( p10$1 ==> BV32_SLE($c3.0$1, v3$1) )  && ( p10$2 ==> BV32_SLE($c3.0$2, v3$2) ) ,  ( p10$1 ==> BV32_SGE($c3.0$1, v3$1) )  && ( p10$2 ==> BV32_SGE($c3.0$2, v3$2) ) ,  ( p10$1 ==> BV32_ULE($c3.0$1, v3$1) )  && ( p10$2 ==> BV32_ULE($c3.0$2, v3$2) ) ,  ( p10$1 ==> BV32_UGE($c3.0$1, v3$1) )  && ( p10$2 ==> BV32_UGE($c3.0$2, v3$2) ) ,  ( p10$1 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) )  && ( p10$2 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1_0.0$2, BV32_SEXT64($h)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) && BV64_SLE($c3.0$1, $0$1) ==> p10$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($w)) && BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1_0.0$2, BV32_SEXT64($h)) && BV64_SLE($c3.0$2, $0$2) ==> p10$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _READ_HAS_OCCURRED_$$kernel24.shared_c1 ==> BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) ) ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> BV64_SLT($c0.0$1, BV32_SEXT64($w)) ) ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> BV64_SGE(BV32_SEXT64($w), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$imgOut ==> BV64_SLT($c1_0.0$1, BV32_SEXT64($h)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$y1 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y2 ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$imgOut ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($w, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($h, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h), $w))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $h))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 18} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($h), $c1_0.0$1), 1)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($h), $c1_0.0$2), 1)) else v10$2);
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
    $0$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($h), $c1_0.0$1), 1) else $0$1);
    $0$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($h), $c1_0.0$2), 1) else $0$2);
    $0$1 := (if p12$1 then 31 else $0$1);
    $0$2 := (if p12$2 then 31 else $0$2);
    v11$1 := (if p10$1 then BV64_SLE($c3.0$1, $0$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c3.0$2, $0$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$kernel24.shared_c1(p13$1, 0, $$kernel24.shared_c1[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$kernel24.shared_c1(p13$2, 0, $$kernel24.shared_c1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel24.shared_c1"} true;
    v12$1 := (if p13$1 then $$kernel24.shared_c1[1bv1][0] else v12$1);
    v12$2 := (if p13$2 then $$kernel24.shared_c1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p13$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p13$2 then _HAVOC_int$2 else v13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p13$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p13$2 then _HAVOC_int$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$imgOut(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($h)), BV64_ADD($c1_0.0$1, $c3.0$1)), 32, 0), FMUL32(v12$1, FADD32(v13$1, v14$1)), $$imgOut[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($h)), BV64_ADD($c1_0.0$1, $c3.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$imgOut(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($h)), BV64_ADD($c1_0.0$2, $c3.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$imgOut(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($h)), BV64_ADD($c1_0.0$2, $c3.0$2)), 32, 0), FMUL32(v12$2, FADD32(v13$2, v14$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$imgOut"} true;
    $$imgOut[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($h)), BV64_ADD($c1_0.0$1, $c3.0$1)), 32, 0)] := (if p13$1 then FMUL32(v12$1, FADD32(v13$1, v14$1)) else $$imgOut[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($h)), BV64_ADD($c1_0.0$1, $c3.0$1)), 32, 0)]);
    $$imgOut[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($h)), BV64_ADD($c1_0.0$2, $c3.0$2)), 32, 0)] := (if p13$2 then FMUL32(v12$2, FADD32(v13$2, v14$2)) else $$imgOut[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($h)), BV64_ADD($c1_0.0$2, $c3.0$2)), 32, 0)]);
    $c3.0$1 := (if p13$1 then BV64_ADD($c3.0$1, 16) else $c3.0$1);
    $c3.0$2 := (if p13$2 then BV64_ADD($c3.0$2, 16) else $c3.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $9.backedge, $9.tail;

  $9.tail:
    assume !p10$1 && !p10$2;
    $c1_0.0$1 := (if p9$1 then BV64_ADD($c1_0.0$1, 8192) else $c1_0.0$1);
    $c1_0.0$2 := (if p9$2 then BV64_ADD($c1_0.0$2, 8192) else $c1_0.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p8$1 && !p8$2;
    $c0.0$1 := (if p5$1 then BV64_ADD($c0.0$1, 8192) else $c0.0$1);
    $c0.0$2 := (if p5$2 then BV64_ADD($c0.0$2, 8192) else $c0.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    return;

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $4;

  $7.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $7;

  $9.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $9;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$kernel24.shared_c1, $$imgOut, _TRACKING;









function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}























































const _WATCHED_VALUE_$$c1: int;

procedure {:inline 1} _LOG_READ_$$c1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$c1;



implementation {:inline 1} _LOG_READ_$$c1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$c1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c1 == _value then true else _READ_HAS_OCCURRED_$$c1);
    return;
}



procedure _CHECK_READ_$$c1(_P: bool, _offset: int, _value: int);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$c1);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$c1: bool;

procedure {:inline 1} _LOG_WRITE_$$c1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$c1, _WRITE_READ_BENIGN_FLAG_$$c1;



implementation {:inline 1} _LOG_WRITE_$$c1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$c1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c1 == _value then true else _WRITE_HAS_OCCURRED_$$c1);
    _WRITE_READ_BENIGN_FLAG_$$c1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$c1);
    return;
}



procedure _CHECK_WRITE_$$c1(_P: bool, _offset: int, _value: int);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c1 != _value);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c1 != _value);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$c1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$c1;



implementation {:inline 1} _LOG_ATOMIC_$$c1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$c1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$c1);
    return;
}



procedure _CHECK_ATOMIC_$$c1(_P: bool, _offset: int);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "c1"} {:array "$$c1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$c1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$c1 := (if _P && _WRITE_HAS_OCCURRED_$$c1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$c1);
    return;
}



const _WATCHED_VALUE_$$imgOut: int;

procedure {:inline 1} _LOG_READ_$$imgOut(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$imgOut;



implementation {:inline 1} _LOG_READ_$$imgOut(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$imgOut := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$imgOut == _value then true else _READ_HAS_OCCURRED_$$imgOut);
    return;
}



procedure _CHECK_READ_$$imgOut(_P: bool, _offset: int, _value: int);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$imgOut);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$imgOut: bool;

procedure {:inline 1} _LOG_WRITE_$$imgOut(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$imgOut, _WRITE_READ_BENIGN_FLAG_$$imgOut;



implementation {:inline 1} _LOG_WRITE_$$imgOut(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$imgOut := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$imgOut == _value then true else _WRITE_HAS_OCCURRED_$$imgOut);
    _WRITE_READ_BENIGN_FLAG_$$imgOut := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$imgOut == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$imgOut);
    return;
}



procedure _CHECK_WRITE_$$imgOut(_P: bool, _offset: int, _value: int);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$imgOut != _value);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$imgOut != _value);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$imgOut(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$imgOut;



implementation {:inline 1} _LOG_ATOMIC_$$imgOut(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$imgOut := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$imgOut);
    return;
}



procedure _CHECK_ATOMIC_$$imgOut(_P: bool, _offset: int);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset);
  requires {:source_name "imgOut"} {:array "$$imgOut"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$imgOut(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$imgOut;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$imgOut(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$imgOut := (if _P && _WRITE_HAS_OCCURRED_$$imgOut && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$imgOut);
    return;
}



const _WATCHED_VALUE_$$y1: int;

procedure {:inline 1} _LOG_READ_$$y1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$y1;



implementation {:inline 1} _LOG_READ_$$y1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y1 == _value then true else _READ_HAS_OCCURRED_$$y1);
    return;
}



procedure _CHECK_READ_$$y1(_P: bool, _offset: int, _value: int);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y1);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y1: bool;

procedure {:inline 1} _LOG_WRITE_$$y1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$y1, _WRITE_READ_BENIGN_FLAG_$$y1;



implementation {:inline 1} _LOG_WRITE_$$y1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y1 == _value then true else _WRITE_HAS_OCCURRED_$$y1);
    _WRITE_READ_BENIGN_FLAG_$$y1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y1);
    return;
}



procedure _CHECK_WRITE_$$y1(_P: bool, _offset: int, _value: int);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y1 != _value);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y1 != _value);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$y1;



implementation {:inline 1} _LOG_ATOMIC_$$y1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y1);
    return;
}



procedure _CHECK_ATOMIC_$$y1(_P: bool, _offset: int);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "y1"} {:array "$$y1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$y1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y1 := (if _P && _WRITE_HAS_OCCURRED_$$y1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y1);
    return;
}



const _WATCHED_VALUE_$$y2: int;

procedure {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _READ_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_READ_$$y2(_P: bool, _offset: int, _value: int);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y2);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y2: bool;

procedure {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$y2, _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _WRITE_HAS_OCCURRED_$$y2);
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



procedure _CHECK_WRITE_$$y2(_P: bool, _offset: int, _value: int);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_ATOMIC_$$y2(_P: bool, _offset: int);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



const _WATCHED_VALUE_$$kernel24.shared_c1: int;

procedure {:inline 1} _LOG_READ_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel24.shared_c1;



implementation {:inline 1} _LOG_READ_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel24.shared_c1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel24.shared_c1 == _value then true else _READ_HAS_OCCURRED_$$kernel24.shared_c1);
    return;
}



procedure _CHECK_READ_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel24.shared_c1, _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1;



implementation {:inline 1} _LOG_WRITE_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel24.shared_c1 == _value then true else _WRITE_HAS_OCCURRED_$$kernel24.shared_c1);
    _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel24.shared_c1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1);
    return;
}



procedure _CHECK_WRITE_$$kernel24.shared_c1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel24.shared_c1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel24.shared_c1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel24.shared_c1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1;



implementation {:inline 1} _LOG_ATOMIC_$$kernel24.shared_c1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1);
    return;
}



procedure _CHECK_ATOMIC_$$kernel24.shared_c1(_P: bool, _offset: int);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c1"} {:array "$$kernel24.shared_c1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1 := (if _P && _WRITE_HAS_OCCURRED_$$kernel24.shared_c1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel24.shared_c1);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel24.shared_c1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel24.shared_c1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel24.shared_c1;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$imgOut;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$imgOut;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$imgOut;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$imgOut;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel24.shared_c1;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
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




















