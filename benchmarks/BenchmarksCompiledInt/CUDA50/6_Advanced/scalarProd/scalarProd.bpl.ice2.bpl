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
 b0133: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_C"} {:global} $$d_C: [int]int;

axiom {:array_info "$$d_C"} {:global} {:elem_width 32} {:source_name "d_C"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_C: bool;

axiom {:array_info "$$d_A"} {:global} {:elem_width 32} {:source_name "d_A"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_A: bool;

axiom {:array_info "$$d_B"} {:global} {:elem_width 32} {:source_name "d_B"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_B: bool;

var {:source_name "accumResult"} {:group_shared} $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: [bv1][int]int;

axiom {:array_info "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:group_shared} {:elem_width 32} {:source_name "accumResult"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

const _WATCHED_OFFSET: int;

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

function BV32_ASHR(int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function  BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

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

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "scalarProdGPU"} {:kernel} $_Z13scalarProdGPUPfS_S_ii($vectorN: int, $elementN: int);
  requires {:sourceloc_num 0} {:thread 1} (if $vectorN == 65536 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $elementN == 65536 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_C && !_WRITE_HAS_OCCURRED_$$d_C && !_ATOMIC_HAS_OCCURRED_$$d_C;
  requires !_READ_HAS_OCCURRED_$$d_A && !_WRITE_HAS_OCCURRED_$$d_A && !_ATOMIC_HAS_OCCURRED_$$d_A;
  requires !_READ_HAS_OCCURRED_$$d_B && !_WRITE_HAS_OCCURRED_$$d_B && !_ATOMIC_HAS_OCCURRED_$$d_B;
  requires !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
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
  modifies $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, $$d_C, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_HAS_OCCURRED_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:source_name "scalarProdGPU"} {:kernel} $_Z13scalarProdGPUPfS_S_ii($vectorN: int, $elementN: int)
{
  var $vec.0$1: int;
  var $vec.0$2: int;
  var $iAccum.0$1: int;
  var $iAccum.0$2: int;
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $pos.0$1: int;
  var $pos.0$2: int;
  var $stride.0$1: int;
  var $stride.0$2: int;
  var $iAccum1.0$1: int;
  var $iAccum1.0$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13: bool;


  $0:
    $vec.0$1 := group_id_x$1;
    $vec.0$2 := group_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $vec.0$1 mod num_groups_x == group_id_x$1 mod num_groups_x )  && ( p0$2 ==> $vec.0$2 mod num_groups_x == group_id_x$2 mod num_groups_x ) ,  ( p0$1 ==> BV32_SLE($vec.0$1, group_id_x$1) )  && ( p0$2 ==> BV32_SLE($vec.0$2, group_id_x$2) ) ,  ( p0$1 ==> BV32_SGE($vec.0$1, group_id_x$1) )  && ( p0$2 ==> BV32_SGE($vec.0$2, group_id_x$2) ) ,  ( p0$1 ==> BV32_ULE($vec.0$1, group_id_x$1) )  && ( p0$2 ==> BV32_ULE($vec.0$2, group_id_x$2) ) ,  ( p0$1 ==> BV32_UGE($vec.0$1, group_id_x$1) )  && ( p0$2 ==> BV32_UGE($vec.0$2, group_id_x$2) ) ,  (  BV32_SLT($vec.0$1, $vectorN) ==> p0$1 )  && (  BV32_SLT($vec.0$2, $vectorN) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $stride.0$1 == 0 || BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0 ) ,  (  $stride.0$1 != 0 ) ,  (  $stride.0$2 == 0 || BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0 ) ,  (  $stride.0$2 != 0 ) ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $vec.0$1 == $vec.0$2 ) ,  (  p0$1 && p0$2 ==> $iAccum.0$1 == $iAccum.0$2 ) ,  (  p0$1 && p0$2 ==> $sum.0$1 == $sum.0$2 ) ,  (  p0$1 && p0$2 ==> $pos.0$1 == $pos.0$2 ) ,  (  p0$1 && p0$2 ==> $stride.0$1 == $stride.0$2 ) ,  (  p0$1 && p0$2 ==> $iAccum1.0$1 == $iAccum1.0$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v0$1 == v0$2 ) ,  (  p0$1 && p0$2 ==> v1$1 == v1$2 ) ,  (  p0$1 && p0$2 ==> v2$1 == v2$2 ) ,  (  p0$1 && p0$2 ==> v3$1 == v3$2 ) ,  (  p0$1 && p0$2 ==> v4$1 == v4$2 ) ,  (  p0$1 && p0$2 ==> v5$1 == v5$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  !_WRITE_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C ) ,  (  _WRITE_HAS_OCCURRED_$$d_C ==> _WATCHED_OFFSET mod num_groups_x == group_id_x$1 mod num_groups_x ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 3} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_C ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v0$1 := (if p0$1 then BV32_SLT($vec.0$1, $vectorN) else v0$1);
    v0$2 := (if p0$2 then BV32_SLT($vec.0$2, $vectorN) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p6$1 := false;
    p6$2 := false;
    p12$1 := false;
    p12$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    v1$1 := (if p1$1 then BV32_MUL($elementN, $vec.0$1) else v1$1);
    v1$2 := (if p1$2 then BV32_MUL($elementN, $vec.0$2) else v1$2);
    $iAccum.0$1 := (if p1$1 then local_id_x$1 else $iAccum.0$1);
    $iAccum.0$2 := (if p1$2 then local_id_x$2 else $iAccum.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $iAccum.0$1 == $iAccum.0$2 ) ,  (  p2$1 && p2$2 ==> $sum.0$1 == $sum.0$2 ) ,  (  p2$1 && p2$2 ==> $pos.0$1 == $pos.0$2 ) ,  (  p2$1 && p2$2 ==> v2$1 == v2$2 ) ,  (  p2$1 && p2$2 ==> v3$1 == v3$2 ) ,  (  p2$1 && p2$2 ==> v4$1 == v4$2 ) ,  (  p2$1 && p2$2 ==> v5$1 == v5$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> $iAccum.0$1 mod group_size_x == local_id_x$1 mod group_size_x )  && ( p2$2 ==> $iAccum.0$2 mod group_size_x == local_id_x$2 mod group_size_x ) ,  ( p2$1 ==> BV32_SLE($iAccum.0$1, local_id_x$1) )  && ( p2$2 ==> BV32_SLE($iAccum.0$2, local_id_x$2) ) ,  ( p2$1 ==> BV32_SGE($iAccum.0$1, local_id_x$1) )  && ( p2$2 ==> BV32_SGE($iAccum.0$2, local_id_x$2) ) ,  ( p2$1 ==> BV32_ULE($iAccum.0$1, local_id_x$1) )  && ( p2$2 ==> BV32_ULE($iAccum.0$2, local_id_x$2) ) ,  ( p2$1 ==> BV32_UGE($iAccum.0$1, local_id_x$1) )  && ( p2$2 ==> BV32_UGE($iAccum.0$2, local_id_x$2) ) ,  ( p2$1 ==> p2$1 ==> BV32_SLT($vec.0$1, $vectorN) )  && ( p2$2 ==> p2$2 ==> BV32_SLT($vec.0$2, $vectorN) ) ,  (  BV32_SLT($vec.0$1, $vectorN) && BV32_SLT($iAccum.0$1, 1024) ==> p2$1 )  && (  BV32_SLT($vec.0$2, $vectorN) && BV32_SLT($iAccum.0$2, 1024) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v2$1 := (if p2$1 then BV32_SLT($iAccum.0$1, 1024) else v2$1);
    v2$2 := (if p2$2 then BV32_SLT($iAccum.0$2, 1024) else v2$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p3$1 := (if p2$1 && v2$1 then v2$1 else p3$1);
    p3$2 := (if p2$2 && v2$2 then v2$2 else p3$2);
    p2$1 := (if p2$1 && !v2$1 then v2$1 else p2$1);
    p2$2 := (if p2$2 && !v2$2 then v2$2 else p2$2);
    $sum.0$1, $pos.0$1 := (if p3$1 then 0 else $sum.0$1), (if p3$1 then BV32_ADD(v1$1, $iAccum.0$1) else $pos.0$1);
    $sum.0$2, $pos.0$2 := (if p3$2 then 0 else $sum.0$2), (if p3$2 then BV32_ADD(v1$2, $iAccum.0$2) else $pos.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 10} p4$1 ==> true;
    v3$1 := (if p4$1 then BV32_SLT($pos.0$1, BV32_ADD(v1$1, $elementN)) else v3$1);
    v3$2 := (if p4$2 then BV32_SLT($pos.0$2, BV32_ADD(v1$2, $elementN)) else v3$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v3$1 then v3$1 else p5$1);
    p5$2 := (if p4$2 && v3$2 then v3$2 else p5$2);
    p4$1 := (if p4$1 && !v3$1 then v3$1 else p4$1);
    p4$2 := (if p4$2 && !v3$2 then v3$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p5$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p5$2 then _HAVOC_int$2 else v4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p5$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p5$2 then _HAVOC_int$2 else v5$2);
    $sum.0$1, $pos.0$1 := (if p5$1 then FADD32($sum.0$1, FMUL32(v4$1, v5$1)) else $sum.0$1), (if p5$1 then BV32_ADD($pos.0$1, 1024) else $pos.0$1);
    $sum.0$2, $pos.0$2 := (if p5$2 then FADD32($sum.0$2, FMUL32(v4$2, v5$2)) else $sum.0$2), (if p5$2 then BV32_ADD($pos.0$2, 1024) else $pos.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p3$1, p3$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$1, $iAccum.0$1, $sum.0$1, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$2, $iAccum.0$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$2, $iAccum.0$2, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p3$1, p3$2);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1] := (if p3$1 then $sum.0$1 else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1]);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum.0$2] := (if p3$2 then $sum.0$2 else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum.0$2]);
    $iAccum.0$1 := (if p3$1 then BV32_ADD($iAccum.0$1, group_size_x) else $iAccum.0$1);
    $iAccum.0$2 := (if p3$2 then BV32_ADD($iAccum.0$2, group_size_x) else $iAccum.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $stride.0$1 := (if p1$1 then 512 else $stride.0$1);
    $stride.0$2 := (if p1$2 then 512 else $stride.0$2);
    p6$1 := (if p1$1 then true else p6$1);
    p6$2 := (if p1$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 := _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$11_0;

  __partitioned_block_$11_0:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $stride.0$1 == 0 || BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0 ) ,  (  $stride.0$1 != 0 ) ,  (  $stride.0$2 == 0 || BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0 ) ,  (  $stride.0$2 != 0 ) ,  (  p6$1 == p6$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2 ) ,  (  p6$1 && p6$2 ==> $stride.0$1 == $stride.0$2 ) ,  (  p6$1 && p6$2 ==> $iAccum1.0$1 == $iAccum1.0$2 ) ,  (  p6$1 && p6$2 ==> v6$1 == v6$2 ) ,  (  p6$1 && p6$2 ==> v7$1 == v7$2 ) ,  (  p6$1 && p6$2 ==> v8$1 == v8$2 ) ,  (  p6$1 && p6$2 ==> v9$1 == v9$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 == _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p1"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p6$1 ==> BV32_SLE($stride.0$1, 512) )  && ( p6$2 ==> BV32_SLE($stride.0$2, 512) ) ,  ( p6$1 ==> BV32_SGE($stride.0$1, 512) )  && ( p6$2 ==> BV32_SGE($stride.0$2, 512) ) ,  ( p6$1 ==> BV32_ULE($stride.0$1, 512) )  && ( p6$2 ==> BV32_ULE($stride.0$2, 512) ) ,  ( p6$1 ==> BV32_UGE($stride.0$1, 512) )  && ( p6$2 ==> BV32_UGE($stride.0$2, 512) ) ,  ( p6$1 ==> p6$1 ==> BV32_SLT($vec.0$1, $vectorN) )  && ( p6$2 ==> p6$2 ==> BV32_SLT($vec.0$2, $vectorN) ) ,  (  BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0) ==> p6$1 )  && (  BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0) ==> p6$2 ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN) ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 19} p6$1 ==> true;
    assert {:originated_from_invariant} {:sourceloc_num 20} {:thread 1} p6$1 ==> (if BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 20} {:thread 2} p6$2 ==> (if BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 21} {:thread 1} (if BV32_SLT($vec.0$1, $vectorN) ==> BV32_AND(BV1_ZEXT32((if BV32_SLE(0, $stride.0$1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($stride.0$1, 512) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 21} {:thread 2} (if BV32_SLT($vec.0$2, $vectorN) ==> BV32_AND(BV1_ZEXT32((if BV32_SLE(0, $stride.0$2) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($stride.0$2, 512) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 22} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 23} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v6$1 := (if p6$1 then BV32_SGT($stride.0$1, 0) else v6$1);
    v6$2 := (if p6$2 then BV32_SGT($stride.0$2, 0) else v6$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p7$1 := (if p6$1 && v6$1 then v6$1 else p7$1);
    p7$2 := (if p6$2 && v6$2 then v6$2 else p7$2);
    p6$1 := (if p6$1 && !v6$1 then v6$1 else p6$1);
    p6$2 := (if p6$2 && !v6$2 then v6$2 else p6$2);
    goto __partitioned_block_$11_1;

  __partitioned_block_$11_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_0(-1, -1, p7$1, p7$2);
    $iAccum1.0$1 := (if p7$1 then local_id_x$1 else $iAccum1.0$1);
    $iAccum1.0$2 := (if p7$2 then local_id_x$2 else $iAccum1.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 := _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p8$1 == p8$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p8$1 == p8$2 ) ,  (  p8$1 && p8$2 ==> $iAccum1.0$1 == $iAccum1.0$2 ) ,  (  p8$1 && p8$2 ==> v7$1 == v7$2 ) ,  (  p8$1 && p8$2 ==> v8$1 == v8$2 ) ,  (  p8$1 && p8$2 ==> v9$1 == v9$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x ) ,  (  !p7$1 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 == _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> $iAccum1.0$1 mod group_size_x == local_id_x$1 mod group_size_x )  && ( p8$2 ==> $iAccum1.0$2 mod group_size_x == local_id_x$2 mod group_size_x ) ,  ( p8$1 ==> BV32_SLE($iAccum1.0$1, local_id_x$1) )  && ( p8$2 ==> BV32_SLE($iAccum1.0$2, local_id_x$2) ) ,  ( p8$1 ==> BV32_SGE($iAccum1.0$1, local_id_x$1) )  && ( p8$2 ==> BV32_SGE($iAccum1.0$2, local_id_x$2) ) ,  ( p8$1 ==> BV32_ULE($iAccum1.0$1, local_id_x$1) )  && ( p8$2 ==> BV32_ULE($iAccum1.0$2, local_id_x$2) ) ,  ( p8$1 ==> BV32_UGE($iAccum1.0$1, local_id_x$1) )  && ( p8$2 ==> BV32_UGE($iAccum1.0$2, local_id_x$2) ) ,  ( p8$1 ==> p8$1 ==> BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0) )  && ( p8$2 ==> p8$2 ==> BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0) ) ,  (  BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0) && BV32_SLT($iAccum1.0$1, $stride.0$1) ==> p8$1 )  && (  BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0) && BV32_SLT($iAccum1.0$2, $stride.0$2) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SGT($stride.0$1, 0) ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN) ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SGT($stride.0$1, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 26} p8$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 27} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), group_size_x) == local_id_x$1 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $stride.0$1), group_size_x) == local_id_x$1 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 28} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_MUL(2, $stride.0$1)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 29} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(local_id_x$1, $stride.0$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 30} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(local_id_x$1, $stride.0$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 31} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 32} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v7$1 := (if p8$1 then BV32_SLT($iAccum1.0$1, $stride.0$1) else v7$1);
    v7$2 := (if p8$2 then BV32_SLT($iAccum1.0$2, $stride.0$2) else v7$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v7$1 then v7$1 else p9$1);
    p9$2 := (if p8$2 && v7$2 then v7$2 else p9$2);
    p8$1 := (if p8$1 && !v7$1 then v7$1 else p8$1);
    p8$2 := (if p8$2 && !v7$2 then v7$2 else p8$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, BV32_ADD($stride.0$1, $iAccum1.0$1), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][BV32_ADD($stride.0$1, $iAccum1.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, BV32_ADD($stride.0$2, $iAccum1.0$2), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($stride.0$2, $iAccum1.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    v8$1 := (if p9$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][BV32_ADD($stride.0$1, $iAccum1.0$1)] else v8$1);
    v8$2 := (if p9$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($stride.0$2, $iAccum1.0$2)] else v8$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, $iAccum1.0$1, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    v9$1 := (if p9$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1] else v9$1);
    v9$2 := (if p9$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2] else v9$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, $iAccum1.0$1, FADD32(v9$1, v8$1), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2, FADD32(v9$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p9$1, p9$2);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1] := (if p9$1 then FADD32(v9$1, v8$1) else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2] := (if p9$2 then FADD32(v9$2, v8$2) else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2]);
    $iAccum1.0$1 := (if p9$1 then BV32_ADD($iAccum1.0$1, group_size_x) else $iAccum1.0$1);
    $iAccum1.0$2 := (if p9$2 then BV32_ADD($iAccum1.0$2, group_size_x) else $iAccum1.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p8$1 && !p8$2;
    $stride.0$1 := (if p7$1 then BV32_ASHR($stride.0$1, 1) else $stride.0$1);
    $stride.0$2 := (if p7$2 then BV32_ASHR($stride.0$2, 1) else $stride.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $11.backedge, $11.tail;

  $11.tail:
    assume !p6$1 && !p6$2;
    v10$1 := (if p1$1 then local_id_x$1 == 0 else v10$1);
    v10$2 := (if p1$2 then local_id_x$2 == 0 else v10$2);
    p11$1 := (if p1$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p1$2 && v10$2 then v10$2 else p11$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p11$1, 0, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p11$2, 0, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p11$1, p11$2);
    v11$1 := (if p11$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][0] else v11$1);
    v11$2 := (if p11$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v11$2);
    call _PRE_WARP_SYNC_$$d_C_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$d_C(p11$1, $vec.0$1, v11$1, $$d_C[$vec.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(p11$2, $vec.0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$d_C(p11$2, $vec.0$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_C"} true;
    call _POST_WARP_SYNC_$$d_C_WRITE(p11$1, p11$2);
    $$d_C[$vec.0$1] := (if p11$1 then v11$1 else $$d_C[$vec.0$1]);
    $$d_C[$vec.0$2] := (if p11$2 then v11$2 else $$d_C[$vec.0$2]);
    $vec.0$1 := (if p1$1 then BV32_ADD($vec.0$1, num_groups_x) else $vec.0$1);
    $vec.0$2 := (if p1$2 then BV32_ADD($vec.0$2, num_groups_x) else $vec.0$2);
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

  $11.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$11_0;

  $13.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $13;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $5;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, $$d_C, _TRACKING;







function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}



























































procedure {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool);



const _WATCHED_VALUE_$$d_C: int;

procedure {:inline 1} _LOG_READ_$$d_C(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_C;



implementation {:inline 1} _LOG_READ_$$d_C(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then true else _READ_HAS_OCCURRED_$$d_C);
    return;
}



procedure _CHECK_READ_$$d_C(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_C);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_C: bool;

procedure {:inline 1} _LOG_WRITE_$$d_C(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:inline 1} _LOG_WRITE_$$d_C(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then true else _WRITE_HAS_OCCURRED_$$d_C);
    _WRITE_READ_BENIGN_FLAG_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_C);
    return;
}



procedure _CHECK_WRITE_$$d_C(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C != _value);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C != _value);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_C(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_C;



implementation {:inline 1} _LOG_ATOMIC_$$d_C(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_C);
    return;
}



procedure _CHECK_ATOMIC_$$d_C(_P: bool, _offset: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_C := (if _P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_C);
    return;
}



const _WATCHED_VALUE_$$d_A: int;

procedure {:inline 1} _LOG_READ_$$d_A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_A;



implementation {:inline 1} _LOG_READ_$$d_A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then true else _READ_HAS_OCCURRED_$$d_A);
    return;
}



procedure _CHECK_READ_$$d_A(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_A);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_A: bool;

procedure {:inline 1} _LOG_WRITE_$$d_A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_A, _WRITE_READ_BENIGN_FLAG_$$d_A;



implementation {:inline 1} _LOG_WRITE_$$d_A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then true else _WRITE_HAS_OCCURRED_$$d_A);
    _WRITE_READ_BENIGN_FLAG_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_A);
    return;
}



procedure _CHECK_WRITE_$$d_A(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A != _value);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A != _value);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_A;



implementation {:inline 1} _LOG_ATOMIC_$$d_A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_A);
    return;
}



procedure _CHECK_ATOMIC_$$d_A(_P: bool, _offset: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_A := (if _P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_A);
    return;
}



const _WATCHED_VALUE_$$d_B: int;

procedure {:inline 1} _LOG_READ_$$d_B(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_B;



implementation {:inline 1} _LOG_READ_$$d_B(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then true else _READ_HAS_OCCURRED_$$d_B);
    return;
}



procedure _CHECK_READ_$$d_B(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_B);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_B: bool;

procedure {:inline 1} _LOG_WRITE_$$d_B(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_B, _WRITE_READ_BENIGN_FLAG_$$d_B;



implementation {:inline 1} _LOG_WRITE_$$d_B(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then true else _WRITE_HAS_OCCURRED_$$d_B);
    _WRITE_READ_BENIGN_FLAG_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_B);
    return;
}



procedure _CHECK_WRITE_$$d_B(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B != _value);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B != _value);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_B(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_B;



implementation {:inline 1} _LOG_ATOMIC_$$d_B(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_B);
    return;
}



procedure _CHECK_ATOMIC_$$d_B(_P: bool, _offset: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_B(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_B;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_B(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_B := (if _P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_B);
    return;
}



const _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then true else _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_C;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$d_C;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}













































































































































































































implementation {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$d_C;
    assume !_WRITE_HAS_OCCURRED_$$d_C;
    assume !_ATOMIC_HAS_OCCURRED_$$d_C;
    goto anon0;

  anon0:
    havoc $$d_C;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$d_C;
    goto anon0;

  anon0:
    havoc $$d_C;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon0;

  anon0:
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon0;

  anon0:
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


