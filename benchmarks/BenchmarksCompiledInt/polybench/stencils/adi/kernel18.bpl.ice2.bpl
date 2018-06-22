function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "q"} {:global} $$q: [int]int;

axiom {:array_info "$$q"} {:global} {:elem_width 64} {:source_name "q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$q: bool;

axiom {:array_info "$$v"} {:global} {:elem_width 64} {:source_name "v"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v: bool;

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

procedure {:source_name "kernel18"} {:kernel} $kernel18($n: int, $tsteps: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) == 0 then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$q && !_WRITE_HAS_OCCURRED_$$q && !_ATOMIC_HAS_OCCURRED_$$q;
  requires !_READ_HAS_OCCURRED_$$v && !_WRITE_HAS_OCCURRED_$$v && !_ATOMIC_HAS_OCCURRED_$$v;
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
  modifies _WRITE_HAS_OCCURRED_$$q, _WRITE_READ_BENIGN_FLAG_$$q, _WRITE_READ_BENIGN_FLAG_$$q;



implementation {:source_name "kernel18"} {:kernel} $kernel18($n: int, $tsteps: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
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


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576 )  && ( p0$2 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576 ) ,  ( p0$1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p0$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p0$2 ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$v ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) == 0 then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 6} p0$1 ==> true;
    v2$1 := (if p0$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v2$1);
    v2$2 := (if p0$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v2$2);
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
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    v3$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2)) else v3$1);
    v3$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2)) else v3$2);
    p3$1 := (if p1$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p1$2 && v3$2 then v3$2 else p3$2);
    v4$1 := (if p3$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1) else v4$1);
    v4$2 := (if p3$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1) else v4$2);
    p5$1 := (if p3$1 && v4$1 then v4$1 else p5$1);
    p5$2 := (if p3$2 && v4$2 then v4$2 else p5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p5$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p5$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$q(p5$1, BV_EXTRACT(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), 32, 0), v5$1, $$q[BV_EXTRACT(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(p5$2, BV_EXTRACT(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$q(p5$2, BV_EXTRACT(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), 32, 0), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$q"} true;
    $$q[BV_EXTRACT(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), 32, 0)] := (if p5$1 then v5$1 else $$q[BV_EXTRACT(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), 32, 0)]);
    $$q[BV_EXTRACT(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), 32, 0)] := (if p5$2 then v5$2 else $$q[BV_EXTRACT(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), 32, 0)]);
    $c1.0$1 := (if p1$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
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







function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
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



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}


