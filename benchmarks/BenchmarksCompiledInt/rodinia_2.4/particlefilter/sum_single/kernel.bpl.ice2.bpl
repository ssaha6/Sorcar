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
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "partial_sums"} {:global} $$partial_sums: [int]int;

axiom {:array_info "$$partial_sums"} {:global} {:elem_width 32} {:source_name "partial_sums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$partial_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$partial_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$partial_sums: bool;

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

function FADD32(int, int) : int;

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

procedure {:source_name "sum_kernel"} {:kernel} $sum_kernel($Nparticles: int);
  requires {:sourceloc_num 0} {:thread 1} (if $Nparticles == 400000 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$partial_sums && !_WRITE_HAS_OCCURRED_$$partial_sums && !_ATOMIC_HAS_OCCURRED_$$partial_sums;
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
  modifies _READ_HAS_OCCURRED_$$partial_sums, _WRITE_HAS_OCCURRED_$$partial_sums, _WRITE_READ_BENIGN_FLAG_$$partial_sums, _WRITE_READ_BENIGN_FLAG_$$partial_sums;



implementation {:source_name "sum_kernel"} {:kernel} $sum_kernel($Nparticles: int)
{
  var $x.0$1: int;
  var $x.0$2: int;
  var $sum.0$1: int;
  var $sum.0$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _READ_HAS_OCCURRED_$$partial_sums$ghost$$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) == 0;
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    $x.0$1, $sum.0$1 := (if p0$1 then 0 else $x.0$1), (if p0$1 then 0 else $sum.0$1);
    $x.0$2, $sum.0$2 := (if p0$2 then 0 else $x.0$2), (if p0$2 then 0 else $sum.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _READ_HAS_OCCURRED_$$partial_sums$ghost$$2 := _READ_HAS_OCCURRED_$$partial_sums;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$partial_sums ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$partial_sums$ghost$$2 == _READ_HAS_OCCURRED_$$partial_sums )  ); 


    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p1$1 ==> $x.0$1 mod 1 == 0 mod 1 )  && ( p1$2 ==> $x.0$2 mod 1 == 0 mod 1 ) ,  ( p1$1 ==> BV32_SLE($x.0$1, 0) )  && ( p1$2 ==> BV32_SLE($x.0$2, 0) ) ,  ( p1$1 ==> BV32_SGE($x.0$1, 0) )  && ( p1$2 ==> BV32_SGE($x.0$2, 0) ) ,  ( p1$1 ==> BV32_ULE($x.0$1, 0) )  && ( p1$2 ==> BV32_ULE($x.0$2, 0) ) ,  ( p1$1 ==> BV32_UGE($x.0$1, 0) )  && ( p1$2 ==> BV32_UGE($x.0$2, 0) ) ,  ( p1$1 ==> p1$1 ==> BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) == 0 )  && ( p1$2 ==> p1$2 ==> BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) == 0 ) ,  (  BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) == 0 && BV32_SLT($x.0$1, BV32_ADD(BV32_UDIV($Nparticles, group_size_x), 1)) ==> p1$1 )  && (  BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) == 0 && BV32_SLT($x.0$2, BV32_ADD(BV32_UDIV($Nparticles, group_size_x), 1)) ==> p1$2 ) ,  (  _READ_HAS_OCCURRED_$$partial_sums ==> BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) == 0 ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 3} p1$1 ==> true;
    v1$1 := (if p1$1 then BV32_SLT($x.0$1, BV32_ADD(BV32_UDIV($Nparticles, group_size_x), 1)) else v1$1);
    v1$2 := (if p1$2 then BV32_SLT($x.0$2, BV32_ADD(BV32_UDIV($Nparticles, group_size_x), 1)) else v1$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v1$1 then v1$1 else p2$1);
    p2$2 := (if p1$2 && v1$2 then v1$2 else p2$2);
    p1$1 := (if p1$1 && !v1$1 then v1$1 else p1$1);
    p1$2 := (if p1$2 && !v1$2 then v1$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$partial_sums(p2$1, $x.0$1, $$partial_sums[$x.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$partial_sums(p2$2, $x.0$2, $$partial_sums[$x.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$partial_sums"} true;
    v2$1 := (if p2$1 then $$partial_sums[$x.0$1] else v2$1);
    v2$2 := (if p2$2 then $$partial_sums[$x.0$2] else v2$2);
    $x.0$1, $sum.0$1 := (if p2$1 then BV32_ADD($x.0$1, 1) else $x.0$1), (if p2$1 then FADD32($sum.0$1, v2$1) else $sum.0$1);
    $x.0$2, $sum.0$2 := (if p2$2 then BV32_ADD($x.0$2, 1) else $x.0$2), (if p2$2 then FADD32($sum.0$2, v2$2) else $sum.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$partial_sums(p0$1, 0, $sum.0$1, $$partial_sums[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$partial_sums(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$partial_sums(p0$2, 0, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$partial_sums"} true;
    $$partial_sums[0] := (if p0$1 then $sum.0$1 else $$partial_sums[0]);
    $$partial_sums[0] := (if p0$2 then $sum.0$2 else $$partial_sums[0]);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 782 then 1 else 0) != 0;

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



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}









const _WATCHED_VALUE_$$partial_sums: int;

procedure {:inline 1} _LOG_READ_$$partial_sums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$partial_sums;



implementation {:inline 1} _LOG_READ_$$partial_sums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$partial_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$partial_sums == _value then true else _READ_HAS_OCCURRED_$$partial_sums);
    return;
}



procedure _CHECK_READ_$$partial_sums(_P: bool, _offset: int, _value: int);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$partial_sums);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$partial_sums: bool;

procedure {:inline 1} _LOG_WRITE_$$partial_sums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$partial_sums, _WRITE_READ_BENIGN_FLAG_$$partial_sums;



implementation {:inline 1} _LOG_WRITE_$$partial_sums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$partial_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$partial_sums == _value then true else _WRITE_HAS_OCCURRED_$$partial_sums);
    _WRITE_READ_BENIGN_FLAG_$$partial_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$partial_sums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$partial_sums);
    return;
}



procedure _CHECK_WRITE_$$partial_sums(_P: bool, _offset: int, _value: int);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$partial_sums != _value);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$partial_sums != _value);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$partial_sums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$partial_sums;



implementation {:inline 1} _LOG_ATOMIC_$$partial_sums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$partial_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$partial_sums);
    return;
}



procedure _CHECK_ATOMIC_$$partial_sums(_P: bool, _offset: int);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset);
  requires {:source_name "partial_sums"} {:array "$$partial_sums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$partial_sums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$partial_sums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$partial_sums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$partial_sums := (if _P && _WRITE_HAS_OCCURRED_$$partial_sums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$partial_sums);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}




