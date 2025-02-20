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
 b0061: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "levels"} {:global} $$levels: [int]int;

axiom {:array_info "$$levels"} {:global} {:elem_width 32} {:source_name "levels"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$levels: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$levels: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$levels: bool;

var {:source_name "edgeArray"} {:global} $$edgeArray: [int]int;

axiom {:array_info "$$edgeArray"} {:global} {:elem_width 32} {:source_name "edgeArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArray: bool;

var {:source_name "edgeArrayAux"} {:global} $$edgeArrayAux: [int]int;

axiom {:array_info "$$edgeArrayAux"} {:global} {:elem_width 32} {:source_name "edgeArrayAux"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:source_name "flag"} {:global} $$flag: [int]int;

axiom {:array_info "$$flag"} {:global} {:elem_width 32} {:source_name "flag"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$flag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$flag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$flag: bool;

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

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "BFS_kernel_warp"} {:kernel} $BFS_kernel_warp($W_SZ: int, $CHUNK_SZ: int, $numVertices: int, $curr: int);
  requires {:sourceloc_num 0} {:thread 1} (if $W_SZ == 32 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $CHUNK_SZ == 32 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $numVertices == 10000 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$levels && !_WRITE_HAS_OCCURRED_$$levels && !_ATOMIC_HAS_OCCURRED_$$levels;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$flag && !_WRITE_HAS_OCCURRED_$$flag && !_ATOMIC_HAS_OCCURRED_$$flag;
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
  modifies _READ_HAS_OCCURRED_$$levels, _WRITE_HAS_OCCURRED_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels, _WRITE_HAS_OCCURRED_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:source_name "BFS_kernel_warp"} {:kernel} $BFS_kernel_warp($W_SZ: int, $CHUNK_SZ: int, $numVertices: int, $curr: int)
{
  var $chk_sz.1$1: int;
  var $chk_sz.1$2: int;
  var $chk_sz.0$1: int;
  var $chk_sz.0$2: int;
  var $v.0$1: int;
  var $v.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: int;
  var v6$2: int;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: bool;
  var v14$2: bool;
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
  var _READ_HAS_OCCURRED_$$levels$ghost$$8: bool;
  var _WRITE_HAS_OCCURRED_$$levels$ghost$$8: bool;
  var _WRITE_HAS_OCCURRED_$$flag$ghost$$8: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_MUL(BV32_SDIV(v0$1, $W_SZ), $CHUNK_SZ);
    v1$2 := BV32_MUL(BV32_SDIV(v0$2, $W_SZ), $CHUNK_SZ);
    v2$1 := BV32_UGE(BV32_ADD(v1$1, $CHUNK_SZ), $numVertices);
    v2$2 := BV32_UGE(BV32_ADD(v1$2, $CHUNK_SZ), $numVertices);
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p3$1 := (if !v2$1 then !v2$1 else p3$1);
    p3$2 := (if !v2$2 then !v2$2 else p3$2);
    v3$1 := (if p0$1 then BV32_ADD(BV32_SUB($numVertices, v1$1), 1) else v3$1);
    v3$2 := (if p0$2 then BV32_ADD(BV32_SUB($numVertices, v1$2), 1) else v3$2);
    v4$1 := (if p0$1 then BV32_SLT(v3$1, 0) else v4$1);
    v4$2 := (if p0$2 then BV32_SLT(v3$2, 0) else v4$2);
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p2$1 := (if p0$1 && !v4$1 then !v4$1 else p2$1);
    p2$2 := (if p0$2 && !v4$2 then !v4$2 else p2$2);
    $chk_sz.0$1 := (if p1$1 then 0 else $chk_sz.0$1);
    $chk_sz.0$2 := (if p1$2 then 0 else $chk_sz.0$2);
    $chk_sz.0$1 := (if p2$1 then v3$1 else $chk_sz.0$1);
    $chk_sz.0$2 := (if p2$2 then v3$2 else $chk_sz.0$2);
    $chk_sz.1$1 := (if p0$1 then $chk_sz.0$1 else $chk_sz.1$1);
    $chk_sz.1$2 := (if p0$2 then $chk_sz.0$2 else $chk_sz.1$2);
    $chk_sz.1$1 := (if p3$1 then BV32_ADD($CHUNK_SZ, 1) else $chk_sz.1$1);
    $chk_sz.1$2 := (if p3$2 then BV32_ADD($CHUNK_SZ, 1) else $chk_sz.1$2);
    $v.0$1 := v1$1;
    $v.0$2 := v1$2;
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p4$1 ==> $v.0$1 mod 1 == v1$1 mod 1 )  && ( p4$2 ==> $v.0$2 mod 1 == v1$2 mod 1 ) ,  ( p4$1 ==> BV32_SLE($v.0$1, v1$1) )  && ( p4$2 ==> BV32_SLE($v.0$2, v1$2) ) ,  ( p4$1 ==> BV32_SGE($v.0$1, v1$1) )  && ( p4$2 ==> BV32_SGE($v.0$2, v1$2) ) ,  ( p4$1 ==> BV32_ULE($v.0$1, v1$1) )  && ( p4$2 ==> BV32_ULE($v.0$2, v1$2) ) ,  ( p4$1 ==> BV32_UGE($v.0$1, v1$1) )  && ( p4$2 ==> BV32_UGE($v.0$2, v1$2) ) ,  (  BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) ==> p4$1 )  && (  BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) ==> p4$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $v.0$1 == $v.0$2 ) ,  (  p4$1 && p4$2 ==> $i.0$1 == $i.0$2 ) ,  (  p4$1 && p4$2 ==> v5$1 == v5$2 ) ,  (  p4$1 && p4$2 ==> v6$1 == v6$2 ) ,  (  p4$1 && p4$2 ==> v7$1 == v7$2 ) ,  (  p4$1 && p4$2 ==> v8$1 == v8$2 ) ,  (  p4$1 && p4$2 ==> v9$1 == v9$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$levels ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$levels ) ,  (  _READ_HAS_OCCURRED_$$levels ==> _WATCHED_OFFSET mod 1 == v1$1 mod 1 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArray ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArray ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArrayAux ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArrayAux ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$flag ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$flag ) ,  (  _WRITE_HAS_OCCURRED_$$flag ==> _WATCHED_OFFSET == 0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 8} p4$1 ==> true;
    v5$1 := (if p4$1 then BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), v1$1)) else v5$1);
    v5$2 := (if p4$2 then BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1), v1$2)) else v5$2);
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
    p5$1 := (if p4$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p4$2 && v5$2 then v5$2 else p5$2);
    p4$1 := (if p4$1 && !v5$1 then v5$1 else p4$1);
    p4$2 := (if p4$2 && !v5$2 then v5$2 else p4$2);
    call _PRE_WARP_SYNC_$$levels_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$levels(p5$1, $v.0$1, $$levels[$v.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$levels(p5$2, $v.0$2, $$levels[$v.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_READ(p5$1, p5$2);
    v6$1 := (if p5$1 then $$levels[$v.0$1] else v6$1);
    v6$2 := (if p5$2 then $$levels[$v.0$2] else v6$2);
    v7$1 := (if p5$1 then v6$1 == $curr else v7$1);
    v7$2 := (if p5$2 then v6$2 == $curr else v7$2);
    p7$1 := (if p5$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p5$2 && v7$2 then v7$2 else p7$2);
    v8$1 := (if p7$1 then $$edgeArray[BV32_ADD($v.0$1, 1)] else v8$1);
    v8$2 := (if p7$2 then $$edgeArray[BV32_ADD($v.0$2, 1)] else v8$2);
    v9$1 := (if p7$1 then $$edgeArray[$v.0$1] else v9$1);
    v9$2 := (if p7$2 then $$edgeArray[$v.0$2] else v9$2);
    v10$1 := (if p7$1 then $$edgeArray[$v.0$1] else v10$1);
    v10$2 := (if p7$2 then $$edgeArray[$v.0$2] else v10$2);
    $i.0$1 := (if p7$1 then BV32_SREM(v0$1, $W_SZ) else $i.0$1);
    $i.0$2 := (if p7$2 then BV32_SREM(v0$2, $W_SZ) else $i.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$levels$ghost$$8 := _READ_HAS_OCCURRED_$$levels;
    _WRITE_HAS_OCCURRED_$$levels$ghost$$8 := _WRITE_HAS_OCCURRED_$$levels;
    _WRITE_HAS_OCCURRED_$$flag$ghost$$8 := _WRITE_HAS_OCCURRED_$$flag;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p8$1 == p8$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p8$1 == p8$2 ) ,  (  p8$1 && p8$2 ==> $i.0$1 == $i.0$2 ) ,  (  p8$1 && p8$2 ==> v11$1 == v11$2 ) ,  (  p8$1 && p8$2 ==> v12$1 == v12$2 ) ,  (  p8$1 && p8$2 ==> v13$1 == v13$2 ) ,  (  p8$1 && p8$2 ==> v14$1 == v14$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$levels ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$levels ) ,  (  !p7$1 ==> _READ_HAS_OCCURRED_$$levels$ghost$$8 == _READ_HAS_OCCURRED_$$levels ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$levels$ghost$$8 == _WRITE_HAS_OCCURRED_$$levels ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArray ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArray ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArrayAux ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArrayAux ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$flag ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$flag ) ,  (  _WRITE_HAS_OCCURRED_$$flag ==> _WATCHED_OFFSET == 0 ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$flag$ghost$$8 == _WRITE_HAS_OCCURRED_$$flag )  ); 


    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p4$1;
    assert p8$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> $i.0$1 mod $W_SZ == BV32_SREM(v0$1, $W_SZ) mod $W_SZ )  && ( p8$2 ==> $i.0$2 mod $W_SZ == BV32_SREM(v0$2, $W_SZ) mod $W_SZ ) ,  ( p8$1 ==> BV32_SLE($i.0$1, BV32_SREM(v0$1, $W_SZ)) )  && ( p8$2 ==> BV32_SLE($i.0$2, BV32_SREM(v0$2, $W_SZ)) ) ,  ( p8$1 ==> BV32_SGE($i.0$1, BV32_SREM(v0$1, $W_SZ)) )  && ( p8$2 ==> BV32_SGE($i.0$2, BV32_SREM(v0$2, $W_SZ)) ) ,  ( p8$1 ==> BV32_ULE($i.0$1, BV32_SREM(v0$1, $W_SZ)) )  && ( p8$2 ==> BV32_ULE($i.0$2, BV32_SREM(v0$2, $W_SZ)) ) ,  ( p8$1 ==> BV32_UGE($i.0$1, BV32_SREM(v0$1, $W_SZ)) )  && ( p8$2 ==> BV32_UGE($i.0$2, BV32_SREM(v0$2, $W_SZ)) ) ,  ( p8$1 ==> p8$1 ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) && v6$1 == $curr )  && ( p8$2 ==> p8$2 ==> BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) && v6$2 == $curr ) ,  (  BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) && v6$1 == $curr && BV32_ULT($i.0$1, BV32_SUB(v8$1, v9$1)) ==> p8$1 )  && (  BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) && v6$2 == $curr && BV32_ULT($i.0$2, BV32_SUB(v8$2, v9$2)) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$levels ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) ) ,  (  _READ_HAS_OCCURRED_$$levels ==> v6$1 == $curr ) ,  (  _WRITE_HAS_OCCURRED_$$levels ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) ) ,  (  _WRITE_HAS_OCCURRED_$$levels ==> v6$1 == $curr ) ,  (  _WRITE_HAS_OCCURRED_$$flag ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) ) ,  (  _WRITE_HAS_OCCURRED_$$flag ==> v6$1 == $curr ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 15} p8$1 ==> true;
    v11$1 := (if p8$1 then BV32_ULT($i.0$1, BV32_SUB(v8$1, v9$1)) else v11$1);
    v11$2 := (if p8$2 then BV32_ULT($i.0$2, BV32_SUB(v8$2, v9$2)) else v11$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p9$1 := (if p8$1 && v11$1 then v11$1 else p9$1);
    p9$2 := (if p8$2 && v11$2 then v11$2 else p9$2);
    p8$1 := (if p8$1 && !v11$1 then v11$1 else p8$1);
    p8$2 := (if p8$2 && !v11$2 then v11$2 else p8$2);
    v12$1 := (if p9$1 then $$edgeArrayAux[BV32_ADD($i.0$1, v10$1)] else v12$1);
    v12$2 := (if p9$2 then $$edgeArrayAux[BV32_ADD($i.0$2, v10$2)] else v12$2);
    call _PRE_WARP_SYNC_$$levels_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$levels(p9$1, v12$1, $$levels[v12$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$levels(p9$2, v12$2, $$levels[v12$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_READ(p9$1, p9$2);
    v13$1 := (if p9$1 then $$levels[v12$1] else v13$1);
    v13$2 := (if p9$2 then $$levels[v12$2] else v13$2);
    v14$1 := (if p9$1 then v13$1 == -1 else v14$1);
    v14$2 := (if p9$2 then v13$2 == -1 else v14$2);
    p11$1 := (if p9$1 && v14$1 then v14$1 else p11$1);
    p11$2 := (if p9$2 && v14$2 then v14$2 else p11$2);
    call _PRE_WARP_SYNC_$$levels_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$levels(p11$1, v12$1, BV32_ADD($curr, 1), $$levels[v12$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(p11$2, v12$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$levels(p11$2, v12$2, BV32_ADD($curr, 1));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_WRITE(p11$1, p11$2);
    $$levels[v12$1] := (if p11$1 then BV32_ADD($curr, 1) else $$levels[v12$1]);
    $$levels[v12$2] := (if p11$2 then BV32_ADD($curr, 1) else $$levels[v12$2]);
    call _PRE_WARP_SYNC_$$flag_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$flag(p11$1, 0, 1, $$flag[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(p11$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$flag(p11$2, 0, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$flag"} true;
    call _POST_WARP_SYNC_$$flag_WRITE(p11$1, p11$2);
    $$flag[0] := (if p11$1 then 1 else $$flag[0]);
    $$flag[0] := (if p11$2 then 1 else $$flag[0]);
    $i.0$1 := (if p9$1 then BV32_ADD($i.0$1, $W_SZ) else $i.0$1);
    $i.0$2 := (if p9$2 then BV32_ADD($i.0$2, $W_SZ) else $i.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $8.backedge, $8.tail;

  $8.tail:
    assume !p8$1 && !p8$2;
    $v.0$1 := (if p5$1 then BV32_ADD($v.0$1, 1) else $v.0$1);
    $v.0$2 := (if p5$2 then BV32_ADD($v.0$2, 1) else $v.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    return;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $8.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $8;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 10 then 1 else 0) != 0;

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



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

































procedure {:inline 1} _PRE_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool);



const _WATCHED_VALUE_$$levels: int;

procedure {:inline 1} _LOG_READ_$$levels(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$levels;



implementation {:inline 1} _LOG_READ_$$levels(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then true else _READ_HAS_OCCURRED_$$levels);
    return;
}



procedure _CHECK_READ_$$levels(_P: bool, _offset: int, _value: int);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$levels);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$levels: bool;

procedure {:inline 1} _LOG_WRITE_$$levels(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels;



implementation {:inline 1} _LOG_WRITE_$$levels(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then true else _WRITE_HAS_OCCURRED_$$levels);
    _WRITE_READ_BENIGN_FLAG_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$levels);
    return;
}



procedure _CHECK_WRITE_$$levels(_P: bool, _offset: int, _value: int);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels != _value);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels != _value);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$levels(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$levels;



implementation {:inline 1} _LOG_ATOMIC_$$levels(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$levels);
    return;
}



procedure _CHECK_ATOMIC_$$levels(_P: bool, _offset: int);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$levels;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$levels := (if _P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$levels);
    return;
}



const _WATCHED_VALUE_$$edgeArray: int;

procedure {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _READ_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_READ_$$edgeArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArray);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArray: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$edgeArray, _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _WRITE_HAS_OCCURRED_$$edgeArray);
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



procedure _CHECK_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArray(_P: bool, _offset: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



const _WATCHED_VALUE_$$edgeArrayAux: int;

procedure {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _READ_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$edgeArrayAux, _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _WRITE_HAS_OCCURRED_$$edgeArrayAux);
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



procedure _CHECK_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



const _WATCHED_VALUE_$$flag: int;

procedure {:inline 1} _LOG_READ_$$flag(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$flag;



implementation {:inline 1} _LOG_READ_$$flag(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then true else _READ_HAS_OCCURRED_$$flag);
    return;
}



procedure _CHECK_READ_$$flag(_P: bool, _offset: int, _value: int);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$flag);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$flag: bool;

procedure {:inline 1} _LOG_WRITE_$$flag(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:inline 1} _LOG_WRITE_$$flag(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then true else _WRITE_HAS_OCCURRED_$$flag);
    _WRITE_READ_BENIGN_FLAG_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$flag);
    return;
}



procedure _CHECK_WRITE_$$flag(_P: bool, _offset: int, _value: int);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag != _value);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag != _value);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$flag(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$flag;



implementation {:inline 1} _LOG_ATOMIC_$$flag(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$flag);
    return;
}



procedure _CHECK_ATOMIC_$$flag(_P: bool, _offset: int);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$flag := (if _P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$flag);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}























































































implementation {:inline 1} _PRE_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$levels;
    assume !_ATOMIC_HAS_OCCURRED_$$levels;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$levels;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$levels;
    assume !_WRITE_HAS_OCCURRED_$$levels;
    assume !_ATOMIC_HAS_OCCURRED_$$levels;
    goto anon0;

  anon0:
    havoc $$levels;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$levels;
    goto anon0;

  anon0:
    havoc $$levels;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$flag;
    assume !_WRITE_HAS_OCCURRED_$$flag;
    assume !_ATOMIC_HAS_OCCURRED_$$flag;
    goto anon0;

  anon0:
    havoc $$flag;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$flag;
    goto anon0;

  anon0:
    havoc $$flag;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


