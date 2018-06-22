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
 b0011: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "v"} {:global} $$v: [int]int;

axiom {:array_info "$$v"} {:global} {:elem_width 8} {:source_name "v"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v: bool;

axiom {:array_info "$$vx"} {:global} {:elem_width 32} {:source_name "vx"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vx: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vx: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vx: bool;

axiom {:array_info "$$vy"} {:global} {:elem_width 32} {:source_name "vy"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vy: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vy: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vy: bool;

axiom {:array_info "$$nvterm"} {:elem_width 8} {:source_name "nvterm"} {:source_elem_width 64} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: int;

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

function BV_EXTRACT(int, int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function SI32_TO_FP32(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "updateVelocity_k"} {:kernel} $_Z16updateVelocity_kP6float2PfS1_iiiij($dx: int, $pdx: int, $dy: int, $lb: int, $pitch: int);
  requires {:sourceloc_num 0} {:thread 1} (if $dx == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $dy == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $lb == 16 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $pitch == 4096 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$v && !_WRITE_HAS_OCCURRED_$$v && !_ATOMIC_HAS_OCCURRED_$$v;
  requires !_READ_HAS_OCCURRED_$$vx && !_WRITE_HAS_OCCURRED_$$vx && !_ATOMIC_HAS_OCCURRED_$$vx;
  requires !_READ_HAS_OCCURRED_$$vy && !_WRITE_HAS_OCCURRED_$$vy && !_ATOMIC_HAS_OCCURRED_$$vy;
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
  modifies _WRITE_HAS_OCCURRED_$$v, _WRITE_READ_BENIGN_FLAG_$$v, _WRITE_READ_BENIGN_FLAG_$$v;



implementation {:source_name "updateVelocity_k"} {:kernel} $_Z16updateVelocity_kP6float2PfS1_iiiij($dx: int, $pdx: int, $dy: int, $lb: int, $pitch: int)
{
  var $p.0$1: int;
  var $p.0$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v0$1: int;
  var v0$2: int;
  var v10$1: int;
  var v10$2: int;
  var v15$1: int;
  var v15$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v3$1: int;
  var v3$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$v$ghost$$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $dx);
    v1$2 := BV32_SLT(v0$2, $dx);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p5$1 := false;
    p5$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    $p.0$1 := (if p0$1 then 0 else $p.0$1);
    $p.0$2 := (if p0$2 then 0 else $p.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _WRITE_HAS_OCCURRED_$$v$ghost$$2 := _WRITE_HAS_OCCURRED_$$v;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$v ==> BV32_SLE(BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8), _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$v ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1), group_size_x), local_id_x$1), 8)) ) ,  (  _WRITE_HAS_OCCURRED_$$v ==> _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 1) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 2) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 3) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 4) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 5) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 6) mod BV32_MUL(1, $pitch) || _WATCHED_OFFSET mod BV32_MUL(1, $pitch) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb))), $pitch), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 8)), 7) mod BV32_MUL(1, $pitch) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$v$ghost$$2 == _WRITE_HAS_OCCURRED_$$v )  ); 


    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p1$1 ==> $p.0$1 mod 1 == 0 mod 1 )  && ( p1$2 ==> $p.0$2 mod 1 == 0 mod 1 ) ,  ( p1$1 ==> BV32_SLE($p.0$1, 0) )  && ( p1$2 ==> BV32_SLE($p.0$2, 0) ) ,  ( p1$1 ==> BV32_SGE($p.0$1, 0) )  && ( p1$2 ==> BV32_SGE($p.0$2, 0) ) ,  ( p1$1 ==> BV32_ULE($p.0$1, 0) )  && ( p1$2 ==> BV32_ULE($p.0$2, 0) ) ,  ( p1$1 ==> BV32_UGE($p.0$1, 0) )  && ( p1$2 ==> BV32_UGE($p.0$2, 0) ) ,  ( p1$1 ==> p1$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $dx) )  && ( p1$2 ==> p1$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $dx) ) ,  (  BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $dx) && BV32_SLT($p.0$1, $lb) ==> p1$1 )  && (  BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $dx) && BV32_SLT($p.0$2, $lb) ==> p1$2 ) ,  (  _WRITE_HAS_OCCURRED_$$v ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $dx) ) ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 6} p1$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$v ==> BV32_UREM(BV32_UDIV(BV32_UDIV(_WATCHED_OFFSET, $pitch), $lb), group_size_y) == local_id_y$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if _WRITE_HAS_OCCURRED_$$v ==> BV32_UDIV(BV32_UDIV(BV32_UDIV(_WATCHED_OFFSET, $pitch), $lb), group_size_y) == group_id_y$1 then 1 else 0) != 0;
    v2$1 := (if p1$1 then BV32_SLT($p.0$1, $lb) else v2$1);
    v2$2 := (if p1$2 then BV32_SLT($p.0$2, $lb) else v2$2);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p1$1 := (if p1$1 && !v2$1 then v2$1 else p1$1);
    p1$2 := (if p1$2 && !v2$2 then v2$2 else p1$2);
    v3$1 := (if p2$1 then BV32_ADD(BV32_ADD(BV32_MUL(group_id_y$1, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$1, $lb)), $p.0$1) else v3$1);
    v3$2 := (if p2$2 then BV32_ADD(BV32_ADD(BV32_MUL(group_id_y$2, BV32_MUL($lb, group_size_y)), BV32_MUL(local_id_y$2, $lb)), $p.0$2) else v3$2);
    v4$1 := (if p2$1 then BV32_SLT(v3$1, $dy) else v4$1);
    v4$2 := (if p2$2 then BV32_SLT(v3$2, $dy) else v4$2);
    p4$1 := (if p2$1 && v4$1 then v4$1 else p4$1);
    p4$2 := (if p2$2 && v4$2 then v4$2 else p4$2);
    v5$1 := (if p4$1 then BV32_ADD(BV32_MUL(v3$1, $pdx), v0$1) else v5$1);
    v5$2 := (if p4$2 then BV32_ADD(BV32_MUL(v3$2, $pdx), v0$2) else v5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p4$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p4$2 then _HAVOC_int$2 else v6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p4$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p4$2 then _HAVOC_int$2 else v7$2);
    v8$1 := (if p4$1 then FDIV32(1065353216, SI32_TO_FP32(BV32_MUL($dx, $dy))) else v8$1);
    v8$2 := (if p4$2 then FDIV32(1065353216, SI32_TO_FP32(BV32_MUL($dx, $dy))) else v8$2);
    v9$1 := (if p4$1 then FMUL32(v6$1, v8$1) else v9$1);
    v9$2 := (if p4$2 then FMUL32(v6$2, v8$2) else v9$2);
    $$nvterm$0$1 := (if p4$1 then BV_EXTRACT(v9$1, 8, 0) else $$nvterm$0$1);
    $$nvterm$0$2 := (if p4$2 then BV_EXTRACT(v9$2, 8, 0) else $$nvterm$0$2);
    $$nvterm$1$1 := (if p4$1 then BV_EXTRACT(v9$1, 16, 8) else $$nvterm$1$1);
    $$nvterm$1$2 := (if p4$2 then BV_EXTRACT(v9$2, 16, 8) else $$nvterm$1$2);
    $$nvterm$2$1 := (if p4$1 then BV_EXTRACT(v9$1, 24, 16) else $$nvterm$2$1);
    $$nvterm$2$2 := (if p4$2 then BV_EXTRACT(v9$2, 24, 16) else $$nvterm$2$2);
    $$nvterm$3$1 := (if p4$1 then BV_EXTRACT(v9$1, 32, 24) else $$nvterm$3$1);
    $$nvterm$3$2 := (if p4$2 then BV_EXTRACT(v9$2, 32, 24) else $$nvterm$3$2);
    v10$1 := (if p4$1 then FMUL32(v7$1, v8$1) else v10$1);
    v10$2 := (if p4$2 then FMUL32(v7$2, v8$2) else v10$2);
    $$nvterm$4$1 := (if p4$1 then BV_EXTRACT(v10$1, 8, 0) else $$nvterm$4$1);
    $$nvterm$4$2 := (if p4$2 then BV_EXTRACT(v10$2, 8, 0) else $$nvterm$4$2);
    $$nvterm$5$1 := (if p4$1 then BV_EXTRACT(v10$1, 16, 8) else $$nvterm$5$1);
    $$nvterm$5$2 := (if p4$2 then BV_EXTRACT(v10$2, 16, 8) else $$nvterm$5$2);
    $$nvterm$6$1 := (if p4$1 then BV_EXTRACT(v10$1, 24, 16) else $$nvterm$6$1);
    $$nvterm$6$2 := (if p4$2 then BV_EXTRACT(v10$2, 24, 16) else $$nvterm$6$2);
    $$nvterm$7$1 := (if p4$1 then BV_EXTRACT(v10$1, 32, 24) else $$nvterm$7$1);
    $$nvterm$7$2 := (if p4$2 then BV_EXTRACT(v10$2, 32, 24) else $$nvterm$7$2);
    v11$1 := (if p4$1 then $$nvterm$0$1 else v11$1);
    v11$2 := (if p4$2 then $$nvterm$0$2 else v11$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), v11$1, $$v[BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8))] := (if p4$1 then v11$1 else $$v[BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8))]);
    $$v[BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8))] := (if p4$2 then v11$2 else $$v[BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8))]);
    v12$1 := (if p4$1 then $$nvterm$1$1 else v12$1);
    v12$2 := (if p4$2 then $$nvterm$1$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 1), v12$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 1), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 1)] := (if p4$1 then v12$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 1)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 1)] := (if p4$2 then v12$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 1)]);
    v13$1 := (if p4$1 then $$nvterm$2$1 else v13$1);
    v13$2 := (if p4$2 then $$nvterm$2$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 2), v13$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 2), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 2)] := (if p4$1 then v13$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 2)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 2)] := (if p4$2 then v13$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 2)]);
    v14$1 := (if p4$1 then $$nvterm$3$1 else v14$1);
    v14$2 := (if p4$2 then $$nvterm$3$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 3), v14$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 3), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 3)] := (if p4$1 then v14$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 3)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 3)] := (if p4$2 then v14$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 3)]);
    v15$1 := (if p4$1 then $$nvterm$4$1 else v15$1);
    v15$2 := (if p4$2 then $$nvterm$4$2 else v15$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 4), v15$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 4), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 4)] := (if p4$1 then v15$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 4)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 4)] := (if p4$2 then v15$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 4)]);
    v16$1 := (if p4$1 then $$nvterm$5$1 else v16$1);
    v16$2 := (if p4$2 then $$nvterm$5$2 else v16$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 5), v16$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 5));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 5), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 5)] := (if p4$1 then v16$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 5)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 5)] := (if p4$2 then v16$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 5)]);
    v17$1 := (if p4$1 then $$nvterm$6$1 else v17$1);
    v17$2 := (if p4$2 then $$nvterm$6$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 6), v17$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 6)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 6));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 6), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 6)] := (if p4$1 then v17$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 6)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 6)] := (if p4$2 then v17$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 6)]);
    v18$1 := (if p4$1 then $$nvterm$7$1 else v18$1);
    v18$2 := (if p4$2 then $$nvterm$7$2 else v18$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$v(p4$1, BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 7), v18$1, $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 7)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 7));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$v(p4$2, BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 7), v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v"} true;
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 7)] := (if p4$1 then v18$1 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$1, $pitch), BV32_MUL(v0$1, 8)), 7)]);
    $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 7)] := (if p4$2 then v18$2 else $$v[BV32_ADD(BV32_ADD(BV32_MUL(v3$2, $pitch), BV32_MUL(v0$2, 8)), 7)]);
    $p.0$1 := (if p2$1 then BV32_ADD($p.0$1, 1) else $p.0$1);
    $p.0$2 := (if p2$2 then BV32_ADD($p.0$2, 1) else $p.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 4 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$nvterm$0$1: int;

var $$nvterm$0$2: int;

var $$nvterm$1$1: int;

var $$nvterm$1$2: int;

var $$nvterm$2$1: int;

var $$nvterm$2$2: int;

var $$nvterm$3$1: int;

var $$nvterm$3$2: int;

var $$nvterm$4$1: int;

var $$nvterm$4$2: int;

var $$nvterm$5$1: int;

var $$nvterm$5$2: int;

var $$nvterm$6$1: int;

var $$nvterm$6$2: int;

var $$nvterm$7$1: int;

var $$nvterm$7$2: int;



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



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
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



const _WATCHED_VALUE_$$vx: int;

procedure {:inline 1} _LOG_READ_$$vx(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vx;



implementation {:inline 1} _LOG_READ_$$vx(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vx := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vx == _value then true else _READ_HAS_OCCURRED_$$vx);
    return;
}



procedure _CHECK_READ_$$vx(_P: bool, _offset: int, _value: int);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vx);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vx: bool;

procedure {:inline 1} _LOG_WRITE_$$vx(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vx, _WRITE_READ_BENIGN_FLAG_$$vx;



implementation {:inline 1} _LOG_WRITE_$$vx(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vx := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vx == _value then true else _WRITE_HAS_OCCURRED_$$vx);
    _WRITE_READ_BENIGN_FLAG_$$vx := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vx == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vx);
    return;
}



procedure _CHECK_WRITE_$$vx(_P: bool, _offset: int, _value: int);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vx != _value);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vx != _value);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vx(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vx;



implementation {:inline 1} _LOG_ATOMIC_$$vx(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vx := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vx);
    return;
}



procedure _CHECK_ATOMIC_$$vx(_P: bool, _offset: int);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset);
  requires {:source_name "vx"} {:array "$$vx"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vx(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vx;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vx(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vx := (if _P && _WRITE_HAS_OCCURRED_$$vx && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vx);
    return;
}



const _WATCHED_VALUE_$$vy: int;

procedure {:inline 1} _LOG_READ_$$vy(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vy;



implementation {:inline 1} _LOG_READ_$$vy(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vy == _value then true else _READ_HAS_OCCURRED_$$vy);
    return;
}



procedure _CHECK_READ_$$vy(_P: bool, _offset: int, _value: int);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vy);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vy: bool;

procedure {:inline 1} _LOG_WRITE_$$vy(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vy, _WRITE_READ_BENIGN_FLAG_$$vy;



implementation {:inline 1} _LOG_WRITE_$$vy(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vy == _value then true else _WRITE_HAS_OCCURRED_$$vy);
    _WRITE_READ_BENIGN_FLAG_$$vy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vy == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vy);
    return;
}



procedure _CHECK_WRITE_$$vy(_P: bool, _offset: int, _value: int);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vy != _value);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vy != _value);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vy(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vy;



implementation {:inline 1} _LOG_ATOMIC_$$vy(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vy);
    return;
}



procedure _CHECK_ATOMIC_$$vy(_P: bool, _offset: int);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset);
  requires {:source_name "vy"} {:array "$$vy"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vy(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vy;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vy(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vy := (if _P && _WRITE_HAS_OCCURRED_$$vy && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vy);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}








