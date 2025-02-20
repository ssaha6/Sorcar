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

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "ey"} {:global} $$ey: [bv32]bv64;

axiom {:array_info "$$ey"} {:global} {:elem_width 64} {:source_name "ey"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ey: bool;

axiom {:array_info "$$hz"} {:global} {:elem_width 64} {:source_name "hz"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$hz: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel1"} {:kernel} $kernel1($ny: bv32, $tmax: bv32, $nx: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $ny == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $tmax == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $nx == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ny, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($ny, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($tmax, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nx, 2bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nx, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tmax), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$ey && !_WRITE_HAS_OCCURRED_$$ey && !_ATOMIC_HAS_OCCURRED_$$ey;
  requires !_READ_HAS_OCCURRED_$$hz && !_WRITE_HAS_OCCURRED_$$hz && !_ATOMIC_HAS_OCCURRED_$$hz;
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
  modifies _READ_HAS_OCCURRED_$$ey, _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:source_name "kernel1"} {:kernel} $kernel1($ny: bv32, $tmax: bv32, $nx: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv64;
  var v2$2: bv64;
  var v3$1: bv64;
  var v3$2: bv64;
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
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv64;
  var v10$2: bv64;
  var v11$1: bv64;
  var v11$2: bv64;
  var v12$1: bv64;
  var v12$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _READ_HAS_OCCURRED_$$ey$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$ey$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$ey$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$ey$ghost$$7: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    $c1.0$1 := BV64_MUL(32bv64, v0$1);
    $c1.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p0$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p0$1 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p0$1 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p0$2 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ==> p0$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64($nx)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nx)) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nx)) else v4$2);
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
    p12$1 := false;
    p12$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    v5$1 := (if p1$1 then BV64_SGE(BV64_ADD(v2$1, $c1.0$1), 1bv64) else v5$1);
    v5$2 := (if p1$2 then BV64_SGE(BV64_ADD(v2$2, $c1.0$2), 1bv64) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    v6$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$1, $c1.0$1), 1bv64)) else v6$1);
    v6$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$2, $c1.0$2), 1bv64)) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    $c2.0$1 := (if p5$1 then BV64_MUL(32bv64, v1$1) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_MUL(32bv64, v1$2) else $c2.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$ey$ghost$$5 := _READ_HAS_OCCURRED_$$ey;
    _WRITE_HAS_OCCURRED_$$ey$ghost$$5 := _WRITE_HAS_OCCURRED_$$ey;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p5$1 ==> _READ_HAS_OCCURRED_$$ey$ghost$$5 == _READ_HAS_OCCURRED_$$ey ) ,  (  !p5$1 ==> _WRITE_HAS_OCCURRED_$$ey$ghost$$5 == _WRITE_HAS_OCCURRED_$$ey ) ,  true ,  true ,  true ,  true  ); 


    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p6$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$1)) )  && ( p6$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$2)) ) ,  ( p6$1 ==> BV64_SLE(0bv64, $c2.0$1) )  && ( p6$2 ==> BV64_SLE(0bv64, $c2.0$2) ) ,  ( p6$1 ==> BV64_SLE($c2.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p6$2 ==> BV64_SLE($c2.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p6$1 ==> BV64_SGE($c2.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p6$2 ==> BV64_SGE($c2.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p6$1 ==> BV64_ULE($c2.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p6$2 ==> BV64_ULE($c2.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p6$1 ==> BV64_UGE($c2.0$1, BV64_MUL(32bv64, v1$1)) )  && ( p6$2 ==> BV64_UGE($c2.0$2, BV64_MUL(32bv64, v1$2)) ) ,  ( p6$1 ==> p6$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) )  && ( p6$2 ==> p6$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny)) ==> p6$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny)) ==> p6$2 ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLT($c2.0$1, BV32_SEXT64($ny)) else v7$1);
    v7$2 := (if p6$2 then BV64_SLT($c2.0$2, BV32_SEXT64($ny)) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p7$1 := (if p6$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p6$2 && v7$2 then v7$2 else p7$2);
    p6$1 := (if p6$1 && !v7$1 then v7$1 else p6$1);
    p6$2 := (if p6$2 && !v7$2 then v7$2 else p6$2);
    $c4.0$1 := (if p7$1 then v3$1 else $c4.0$1);
    $c4.0$2 := (if p7$2 then v3$2 else $c4.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$ey$ghost$$7 := _READ_HAS_OCCURRED_$$ey;
    _WRITE_HAS_OCCURRED_$$ey$ghost$$7 := _WRITE_HAS_OCCURRED_$$ey;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p7$1 ==> _READ_HAS_OCCURRED_$$ey$ghost$$7 == _READ_HAS_OCCURRED_$$ey ) ,  (  !p7$1 ==> _WRITE_HAS_OCCURRED_$$ey$ghost$$7 == _WRITE_HAS_OCCURRED_$$ey )  ); 


    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$1) )  && ( p8$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$2) ) ,  ( p8$1 ==> BV64_SLE(0bv64, $c4.0$1) )  && ( p8$2 ==> BV64_SLE(0bv64, $c4.0$2) ) ,  ( p8$1 ==> BV64_SLE(0bv64, $0$1) )  && ( p8$2 ==> BV64_SLE(0bv64, $0$2) ) ,  ( p8$1 ==> BV64_SLE($c4.0$1, v3$1) )  && ( p8$2 ==> BV64_SLE($c4.0$2, v3$2) ) ,  ( p8$1 ==> BV64_SGE($c4.0$1, v3$1) )  && ( p8$2 ==> BV64_SGE($c4.0$2, v3$2) ) ,  ( p8$1 ==> BV64_ULE($c4.0$1, v3$1) )  && ( p8$2 ==> BV64_ULE($c4.0$2, v3$2) ) ,  ( p8$1 ==> BV64_UGE($c4.0$1, v3$1) )  && ( p8$2 ==> BV64_UGE($c4.0$2, v3$2) ) ,  ( p8$1 ==> p8$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny)) )  && ( p8$2 ==> p8$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny)) && BV64_SLE($c4.0$1, $0$1) ==> p8$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny)) && BV64_SLE($c4.0$2, $0$2) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  (  _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c2.0$1, BV32_SEXT64($ny)) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  (  _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c2.0$1, BV32_SEXT64($ny)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 14} p8$1 ==> true;
    v8$1 := (if p8$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 1bv64)) else v8$1);
    v8$2 := (if p8$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 1bv64)) else v8$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p10$1 := (if p8$1 && v8$1 then v8$1 else p10$1);
    p10$2 := (if p8$2 && v8$2 then v8$2 else p10$2);
    p9$1 := (if p8$1 && !v8$1 then !v8$1 else p9$1);
    p9$2 := (if p8$2 && !v8$2 then !v8$2 else p9$2);
    $0$1 := (if p9$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 1bv64) else $0$1);
    $0$2 := (if p9$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 1bv64) else $0$2);
    $0$1 := (if p10$1 then 31bv64 else $0$1);
    $0$2 := (if p10$2 then 31bv64 else $0$2);
    v9$1 := (if p8$1 then BV64_SLE($c4.0$1, $0$1) else v9$1);
    v9$2 := (if p8$2 then BV64_SLE($c4.0$2, $0$2) else v9$2);
    p11$1 := (if p8$1 && v9$1 then v9$1 else p11$1);
    p11$2 := (if p8$2 && v9$2 then v9$2 else p11$2);
    p8$1 := (if p8$1 && !v9$1 then v9$1 else p8$1);
    p8$2 := (if p8$2 && !v9$2 then v9$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$ey(p11$1, BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ey"} true;
    v10$1 := (if p11$1 then $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] else v10$1);
    v10$2 := (if p11$2 then $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] else v10$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v11$1 := (if p11$1 then _HAVOC_bv64$1 else v11$1);
    v11$2 := (if p11$2 then _HAVOC_bv64$2 else v11$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v12$1 := (if p11$1 then _HAVOC_bv64$1 else v12$1);
    v12$2 := (if p11$2 then _HAVOC_bv64$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$ey(p11$1, BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$1, v12$1)), v10$1), $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$2, v12$2)), v10$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ey"} true;
    $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] := (if p11$1 then FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$1, v12$1)), v10$1) else $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] := (if p11$2 then FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$2, v12$2)), v10$2) else $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    $c4.0$1 := (if p11$1 then BV64_ADD($c4.0$1, 16bv64) else $c4.0$1);
    $c4.0$2 := (if p11$2 then BV64_ADD($c4.0$2, 16bv64) else $c4.0$2);
    p8$1 := (if p11$1 then true else p8$1);
    p8$2 := (if p11$2 then true else p8$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p8$1 && !p8$2;
    $c2.0$1 := (if p7$1 then BV64_ADD($c2.0$1, 8192bv64) else $c2.0$1);
    $c2.0$2 := (if p7$2 then BV64_ADD($c2.0$2, 8192bv64) else $c2.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p6$1 && !p6$2;
    $c1.0$1 := (if p1$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
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

  $5.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $7.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $7;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;









function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;



function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;



































































const _WATCHED_VALUE_$$ey: bv64;

procedure {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _READ_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_READ_$$ey(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ey);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ey: bool;

procedure {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _WRITE_HAS_OCCURRED_$$ey);
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



procedure _CHECK_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_ATOMIC_$$ey(_P: bool, _offset: bv32);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



const _WATCHED_VALUE_$$hz: bv64;

procedure {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _READ_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_READ_$$hz(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$hz);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$hz: bool;

procedure {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$hz, _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _WRITE_HAS_OCCURRED_$$hz);
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



procedure _CHECK_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_ATOMIC_$$hz(_P: bool, _offset: bv32);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;




















