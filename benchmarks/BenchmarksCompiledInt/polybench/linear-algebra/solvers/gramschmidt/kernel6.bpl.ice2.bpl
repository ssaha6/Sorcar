function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "Q"} {:global} $$Q: [int]int;

axiom {:array_info "$$Q"} {:global} {:elem_width 64} {:source_name "Q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Q: bool;

axiom {:array_info "$$R"} {:global} {:elem_width 64} {:source_name "R"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$R: bool;

var {:source_name "shared_R"} {:group_shared} $$kernel6.shared_R: [bv1][int]int;

axiom {:array_info "$$kernel6.shared_R"} {:group_shared} {:elem_width 64} {:source_name "shared_R"} {:source_elem_width 64} {:source_dimensions "1,1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _READ_HAS_OCCURRED_$$kernel6.shared_R: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _WRITE_HAS_OCCURRED_$$kernel6.shared_R: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R: bool;

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

function FDIV64(int, int) : int;

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

function  BV64_SDIV(x: int, y: int) : int
{
  x div y
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

procedure {:source_name "kernel6"} {:kernel} $kernel6($n: int, $m: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $m == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(5, $n)), BV64_ADD($c0, 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB($c0, 3), 5) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 3)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 3)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), 3)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$Q && !_WRITE_HAS_OCCURRED_$$Q && !_ATOMIC_HAS_OCCURRED_$$Q;
  requires !_READ_HAS_OCCURRED_$$R && !_WRITE_HAS_OCCURRED_$$R && !_ATOMIC_HAS_OCCURRED_$$R;
  requires !_READ_HAS_OCCURRED_$$kernel6.shared_R && !_WRITE_HAS_OCCURRED_$$kernel6.shared_R && !_ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;
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
  modifies $$kernel6.shared_R, _WRITE_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R, $$Q, _TRACKING, _READ_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_HAS_OCCURRED_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:source_name "kernel6"} {:kernel} $kernel6($n: int, $m: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


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
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$kernel6.shared_R(p0$1, 0, v3$1, $$kernel6.shared_R[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$kernel6.shared_R(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel6.shared_R"} true;
    $$kernel6.shared_R[1bv1][0] := (if p0$1 then v3$1 else $$kernel6.shared_R[1bv1][0]);
    $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576 )  && ( p2$2 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576 ) ,  ( p2$1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64($m)) ==> p2$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64($m)) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$Q ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _READ_HAS_OCCURRED_$$kernel6.shared_R ==> _WATCHED_OFFSET == 0 )  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n)), 3)) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 3)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 3)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $m))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 12} p2$1 ==> true;
    v4$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($m)) else v4$1);
    v4$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($m)) else v4$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 1)) else v5$1);
    v5$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 1)) else v5$2);
    p5$1 := (if p3$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p3$2 && v5$2 then v5$2 else p5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p5$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p5$2 then _HAVOC_int$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$kernel6.shared_R(p5$1, 0, $$kernel6.shared_R[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$kernel6.shared_R(p5$2, 0, $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel6.shared_R"} true;
    v7$1 := (if p5$1 then $$kernel6.shared_R[1bv1][0] else v7$1);
    v7$2 := (if p5$2 then $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v7$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$Q(p5$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0), FDIV64(v6$1, v7$1), $$Q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(p5$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$Q(p5$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0), FDIV64(v6$2, v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Q"} true;
    $$Q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0)] := (if p5$1 then FDIV64(v6$1, v7$1) else $$Q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0)]);
    $$Q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0)] := (if p5$2 then FDIV64(v6$2, v7$2) else $$Q[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3), 5)), 32, 0)]);
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
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

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
  modifies $$kernel6.shared_R, $$Q, _TRACKING;









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



const _WATCHED_VALUE_$$kernel6.shared_R: int;

procedure {:inline 1} _LOG_READ_$$kernel6.shared_R(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel6.shared_R;



implementation {:inline 1} _LOG_READ_$$kernel6.shared_R(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then true else _READ_HAS_OCCURRED_$$kernel6.shared_R);
    return;
}



procedure _CHECK_READ_$$kernel6.shared_R(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel6.shared_R(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R;



implementation {:inline 1} _LOG_WRITE_$$kernel6.shared_R(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then true else _WRITE_HAS_OCCURRED_$$kernel6.shared_R);
    _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R);
    return;
}



procedure _CHECK_WRITE_$$kernel6.shared_R(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;



implementation {:inline 1} _LOG_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R);
    return;
}



procedure _CHECK_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: int);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R := (if _P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel6.shared_R;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel6.shared_R;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$Q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$Q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$Q;
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
    havoc $$Q;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel6.shared_R;
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




