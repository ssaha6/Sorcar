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
 b0087: bool
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

axiom {:array_info "$$private_mean"} {:elem_width 64} {:source_name "private_mean"} {:source_elem_width 64} {:source_dimensions "1"} true;

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

procedure {:source_name "kernel1"} {:kernel} $kernel1($float_n: int, $m: int, $n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$mean && !_WRITE_HAS_OCCURRED_$$mean && !_ATOMIC_HAS_OCCURRED_$$mean;
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
  modifies _READ_HAS_OCCURRED_$$mean, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, $$data, $$mean, _TRACKING;



implementation {:source_name "kernel1"} {:kernel} $kernel1($float_n: int, $m: int, $n: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $c31.0$1: int;
  var $c31.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
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
  var v10$1: int;
  var v10$2: int;
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
  var _READ_HAS_OCCURRED_$$data$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$4: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$10: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$17: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$17: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $c0.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576 )  && ( p0$2 ==> $c0.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576 ) ,  ( p0$1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) ==> p0$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2 ) ,  (  p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p0$1 && p0$2 ==> $0$1 == $0$2 ) ,  (  p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2 ) ,  (  p0$1 && p0$2 ==> $c31.0$1 == $c31.0$2 ) ,  (  p0$1 && p0$2 ==> $1$1 == $1$2 ) ,  (  p0$1 && p0$2 ==> v2$1 == v2$2 ) ,  (  p0$1 && p0$2 ==> v3$1 == v3$2 ) ,  (  p0$1 && p0$2 ==> v4$1 == v4$2 ) ,  (  p0$1 && p0$2 ==> v5$1 == v5$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  p0$1 && p0$2 ==> v12$1 == v12$2 ) ,  (  p0$1 && p0$2 ==> v13$1 == v13$2 ) ,  (  p0$1 && p0$2 ==> v14$1 == v14$2 ) ,  (  p0$1 && p0$2 ==> v15$1 == v15$2 ) ,  (  p0$1 && p0$2 ==> v16$1 == v16$2 ) ,  (  p0$1 && p0$2 ==> v17$1 == v17$2 ) ,  (  p0$1 && p0$2 ==> v18$1 == v18$2 ) ,  (  p0$1 && p0$2 ==> v19$1 == v19$2 ) ,  (  p0$1 && p0$2 ==> v20$1 == v20$2 ) ,  (  !_READ_HAS_OCCURRED_$$data ) ,  (  !_WRITE_HAS_OCCURRED_$$data ) ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$mean ) ,  (  !_WRITE_HAS_OCCURRED_$$mean ) ,  (  _READ_HAS_OCCURRED_$$mean ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$mean ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v2$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($m)) else v2$1);
    v2$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($m)) else v2$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p20$1 := false;
    p20$2 := false;
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    v3$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$1, $c0.0$1), 1)) else v3$1);
    v3$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$2, $c0.0$2), 1)) else v3$2);
    p3$1 := (if p1$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p1$2 && v3$2 then v3$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$mean(p3$1, BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0), $$mean[BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$mean(p3$2, BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0), $$mean[BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$mean"} true;
    v4$1 := (if p3$1 then $$mean[BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0)] else v4$1);
    v4$2 := (if p3$2 then $$mean[BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0)] else v4$2);
    $$private_mean$0$1 := (if p3$1 then v4$1 else $$private_mean$0$1);
    $$private_mean$0$2 := (if p3$2 then v4$2 else $$private_mean$0$2);
    $c1.0$1 := (if p3$1 then BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n)) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n)) else $c1.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$data$ghost$$4 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$4 := _WRITE_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$4 == _READ_HAS_OCCURRED_$$data ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$4 == _WRITE_HAS_OCCURRED_$$data ) ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> $c1.0$1 mod 32 == BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n)) mod 32 )  && ( p4$2 ==> $c1.0$2 mod 32 == BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n)) mod 32 ) ,  ( p4$1 ==> BV32_SLE($c1.0$1, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) )  && ( p4$2 ==> BV32_SLE($c1.0$2, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) ) ,  ( p4$1 ==> BV32_SGE($c1.0$1, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) )  && ( p4$2 ==> BV32_SGE($c1.0$2, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) ) ,  ( p4$1 ==> BV32_ULE($c1.0$1, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) )  && ( p4$2 ==> BV32_ULE($c1.0$2, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) ) ,  ( p4$1 ==> BV32_UGE($c1.0$1, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) )  && ( p4$2 ==> BV32_UGE($c1.0$2, BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0, $n)), 2147483648), 32)), BV32_SEXT64($n))) ) ,  ( p4$1 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) )  && ( p4$2 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p4$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p4$2 ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 13} p4$1 ==> true;
    v5$1 := (if p4$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v5$1);
    v5$2 := (if p4$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v5$2);
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
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p5$1 := (if p4$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p4$2 && v5$2 then v5$2 else p5$2);
    p4$1 := (if p4$1 && !v5$1 then v5$1 else p4$1);
    p4$2 := (if p4$2 && !v5$2 then v5$2 else p4$2);
    v6$1 := (if p5$1 then BV64_SLE($c1.0$1, -32) else v6$1);
    v6$2 := (if p5$2 then BV64_SLE($c1.0$2, -32) else v6$2);
    p6$1 := (if p5$1 && v6$1 then v6$1 else p6$1);
    p6$2 := (if p5$2 && v6$2 then v6$2 else p6$2);
    p11$1 := (if p5$1 && !v6$1 then !v6$1 else p11$1);
    p11$2 := (if p5$2 && !v6$2 then !v6$2 else p11$2);
    v7$1 := (if p6$1 then BV64_SGT(0, BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), $c1.0$1)) else v7$1);
    v7$2 := (if p6$2 then BV64_SGT(0, BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), $c1.0$2)) else v7$2);
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $0$1 := (if p7$1 then BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), $c1.0$1) else $0$1);
    $0$2 := (if p7$2 then BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), $c1.0$2) else $0$2);
    $0$1 := (if p8$1 then 0 else $0$1);
    $0$2 := (if p8$2 then 0 else $0$2);
    $c3.0$1 := (if p6$1 then $0$1 else $c3.0$1);
    $c3.0$2 := (if p6$2 then $0$2 else $c3.0$2);
    p9$1 := (if p6$1 then true else p9$1);
    p9$2 := (if p6$2 then true else p9$2);
    _READ_HAS_OCCURRED_$$data$ghost$$10 := _READ_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_3"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p6$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$10 == _READ_HAS_OCCURRED_$$data ) ,  true ,  true ,  true ,  true  ); 


    assume {:predicate "p9"} {:dominator_predicate "p6"} true;
    assert p9$1 ==> p4$1;
    assert p9$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p9$1 ==> $c3.0$1 mod 1 == $0$1 mod 1 )  && ( p9$2 ==> $c3.0$2 mod 1 == $0$2 mod 1 ) ,  ( p9$1 ==> BV32_SLE($c3.0$1, $0$1) )  && ( p9$2 ==> BV32_SLE($c3.0$2, $0$2) ) ,  ( p9$1 ==> BV32_SGE($c3.0$1, $0$1) )  && ( p9$2 ==> BV32_SGE($c3.0$2, $0$2) ) ,  ( p9$1 ==> BV32_ULE($c3.0$1, $0$1) )  && ( p9$2 ==> BV32_ULE($c3.0$2, $0$2) ) ,  ( p9$1 ==> BV32_UGE($c3.0$1, $0$1) )  && ( p9$2 ==> BV32_UGE($c3.0$2, $0$2) ) ,  ( p9$1 ==> p9$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, -32) )  && ( p9$2 ==> p9$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, -32) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, -32) && BV64_SLE($c3.0$1, 31) ==> p9$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, -32) && BV64_SLE($c3.0$2, 31) ==> p9$2 ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLE($c1.0$1, -32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 19} p9$1 ==> true;
    v8$1 := (if p9$1 then BV64_SLE($c3.0$1, 31) else v8$1);
    v8$2 := (if p9$2 then BV64_SLE($c3.0$2, 31) else v8$2);
    p10$1 := false;
    p10$2 := false;
    p10$1 := (if p9$1 && v8$1 then v8$1 else p10$1);
    p10$2 := (if p9$2 && v8$2 then v8$2 else p10$2);
    p9$1 := (if p9$1 && !v8$1 then v8$1 else p9$1);
    p9$2 := (if p9$2 && !v8$2 then v8$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$data(p10$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1)), 32, 0), $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$data(p10$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2)), 32, 0), $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v9$1 := (if p10$1 then $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1)), 32, 0)] else v9$1);
    v9$2 := (if p10$2 then $$data[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2)), 32, 0)] else v9$2);
    v10$1 := (if p10$1 then $$private_mean$0$1 else v10$1);
    v10$2 := (if p10$2 then $$private_mean$0$2 else v10$2);
    $$private_mean$0$1 := (if p10$1 then FADD64(v10$1, v9$1) else $$private_mean$0$1);
    $$private_mean$0$2 := (if p10$2 then FADD64(v10$2, v9$2) else $$private_mean$0$2);
    $c3.0$1 := (if p10$1 then BV64_ADD($c3.0$1, 1) else $c3.0$1);
    $c3.0$2 := (if p10$2 then BV64_ADD($c3.0$2, 1) else $c3.0$2);
    p9$1 := (if p10$1 then true else p9$1);
    p9$2 := (if p10$2 then true else p9$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p9$1 && !p9$2;
    v11$1 := (if p11$1 then $c1.0$1 == 0 else v11$1);
    v11$2 := (if p11$2 then $c1.0$2 == 0 else v11$2);
    p13$1 := (if p11$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p11$2 && v11$2 then v11$2 else p13$2);
    v12$1 := (if p13$1 then $$private_mean$0$1 else v12$1);
    v12$2 := (if p13$2 then $$private_mean$0$2 else v12$2);
    $$private_mean$0$1 := (if p13$1 then FDIV64(v12$1, $float_n) else $$private_mean$0$1);
    $$private_mean$0$2 := (if p13$2 then FDIV64(v12$2, $float_n) else $$private_mean$0$2);
    $c31.0$1 := (if p11$1 then 0 else $c31.0$1);
    $c31.0$2 := (if p11$2 then 0 else $c31.0$2);
    p14$1 := (if p11$1 then true else p14$1);
    p14$2 := (if p11$2 then true else p14$2);
    _READ_HAS_OCCURRED_$$data$ghost$$17 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$17 := _WRITE_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $17;

  $17:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p11$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$17 == _READ_HAS_OCCURRED_$$data ) ,  (  !p11$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$17 == _WRITE_HAS_OCCURRED_$$data )  ); 


    assume {:predicate "p14"} {:dominator_predicate "p11"} true;
    assert p14$1 ==> p4$1;
    assert p14$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p14$1 ==> $c31.0$1 mod 1 == 0 mod 1 )  && ( p14$2 ==> $c31.0$2 mod 1 == 0 mod 1 ) ,  ( p14$1 ==> BV32_SLE($c31.0$1, 0) )  && ( p14$2 ==> BV32_SLE($c31.0$2, 0) ) ,  ( p14$1 ==> BV32_SGE($c31.0$1, 0) )  && ( p14$2 ==> BV32_SGE($c31.0$2, 0) ) ,  ( p14$1 ==> BV32_ULE($c31.0$1, 0) )  && ( p14$2 ==> BV32_ULE($c31.0$2, 0) ) ,  ( p14$1 ==> BV32_UGE($c31.0$1, 0) )  && ( p14$2 ==> BV32_UGE($c31.0$2, 0) ) ,  ( p14$1 ==> p14$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && !BV64_SLE($c1.0$1, -32) )  && ( p14$2 ==> p14$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && !BV64_SLE($c1.0$2, -32) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && !BV64_SLE($c1.0$1, -32) && BV64_SLE($c31.0$1, $1$1) ==> p14$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && !BV64_SLE($c1.0$2, -32) && BV64_SLE($c31.0$2, $1$2) ==> p14$2 ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _READ_HAS_OCCURRED_$$data ==> !BV64_SLE($c1.0$1, -32) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ) ,  (  _WRITE_HAS_OCCURRED_$$data ==> !BV64_SLE($c1.0$1, -32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 31} p14$1 ==> true;
    v13$1 := (if p14$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1)) else v13$1);
    v13$2 := (if p14$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1)) else v13$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p16$1 := (if p14$1 && v13$1 then v13$1 else p16$1);
    p16$2 := (if p14$2 && v13$2 then v13$2 else p16$2);
    p15$1 := (if p14$1 && !v13$1 then !v13$1 else p15$1);
    p15$2 := (if p14$2 && !v13$2 then !v13$2 else p15$2);
    $1$1 := (if p15$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1) else $1$1);
    $1$2 := (if p15$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1) else $1$2);
    $1$1 := (if p16$1 then 31 else $1$1);
    $1$2 := (if p16$2 then 31 else $1$2);
    v14$1 := (if p14$1 then BV64_SLE($c31.0$1, $1$1) else v14$1);
    v14$2 := (if p14$2 then BV64_SLE($c31.0$2, $1$2) else v14$2);
    p17$1 := (if p14$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p14$2 && v14$2 then v14$2 else p17$2);
    p14$1 := (if p14$1 && !v14$1 then v14$1 else p14$1);
    p14$2 := (if p14$2 && !v14$2 then v14$2 else p14$2);
    v15$1 := (if p17$1 then $$private_mean$0$1 else v15$1);
    v15$2 := (if p17$2 then $$private_mean$0$2 else v15$2);
    v16$1 := (if p17$1 then BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c31.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1)), 32, 0) else v16$1);
    v16$2 := (if p17$2 then BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c31.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2)), 32, 0) else v16$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$data(p17$1, v16$1, $$data[v16$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$data(p17$2, v16$2, $$data[v16$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v17$1 := (if p17$1 then $$data[v16$1] else v17$1);
    v17$2 := (if p17$2 then $$data[v16$2] else v17$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$data(p17$1, v16$1, FSUB64(v17$1, v15$1), $$data[v16$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(p17$2, v16$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$data(p17$2, v16$2, FSUB64(v17$2, v15$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v16$1] := (if p17$1 then FSUB64(v17$1, v15$1) else $$data[v16$1]);
    $$data[v16$2] := (if p17$2 then FSUB64(v17$2, v15$2) else $$data[v16$2]);
    $c31.0$1 := (if p17$1 then BV64_ADD($c31.0$1, 1) else $c31.0$1);
    $c31.0$2 := (if p17$2 then BV64_ADD($c31.0$2, 1) else $c31.0$2);
    p14$1 := (if p17$1 then true else p14$1);
    p14$2 := (if p17$2 then true else p14$2);
    goto $17.backedge, $17.tail;

  $17.tail:
    assume !p14$1 && !p14$2;
    $c1.0$1 := (if p5$1 then BV64_ADD($c1.0$1, 32) else $c1.0$1);
    $c1.0$2 := (if p5$2 then BV64_ADD($c1.0$2, 32) else $c1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, __partitioned_block_$4.tail_0;

  __partitioned_block_$4.tail_0:
    assume !p4$1 && !p4$2;
    v18$1 := (if p3$1 then BV32_SLE($n, 0) else v18$1);
    v18$2 := (if p3$2 then BV32_SLE($n, 0) else v18$2);
    p19$1 := (if p3$1 && v18$1 then v18$1 else p19$1);
    p19$2 := (if p3$2 && v18$2 then v18$2 else p19$2);
    v19$1 := (if p19$1 then $$private_mean$0$1 else v19$1);
    v19$2 := (if p19$2 then $$private_mean$0$2 else v19$2);
    $$private_mean$0$1 := (if p19$1 then FDIV64(v19$1, $float_n) else $$private_mean$0$1);
    $$private_mean$0$2 := (if p19$2 then FDIV64(v19$2, $float_n) else $$private_mean$0$2);
    v20$1 := (if p3$1 then $$private_mean$0$1 else v20$1);
    v20$2 := (if p3$2 then $$private_mean$0$2 else v20$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$mean(p3$1, BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0), v20$1, $$mean[BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(p3$2, BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$mean(p3$2, BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0), v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$mean"} true;
    $$mean[BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0)] := (if p3$1 then v20$1 else $$mean[BV_EXTRACT(BV64_ADD(v1$1, $c0.0$1), 32, 0)]);
    $$mean[BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0)] := (if p3$2 then v20$2 else $$mean[BV_EXTRACT(BV64_ADD(v1$2, $c0.0$2), 32, 0)]);
    goto __partitioned_block_$4.tail_1;

  __partitioned_block_$4.tail_1:
    call {:sourceloc_num 50} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
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

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $4;

  $17.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $17;

  $10.backedge:
    assume {:backedge} p9$1 || p9$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $10;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$data, $$mean, _TRACKING;



var $$private_mean$0$1: int;

var $$private_mean$0$2: int;







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



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon2;

  anon2:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon5;

  anon5:
    havoc _TRACKING;
    return;

  anon7_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon4;

  anon4:
    havoc $$mean;
    goto anon5;

  anon6_Then:
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


























































































