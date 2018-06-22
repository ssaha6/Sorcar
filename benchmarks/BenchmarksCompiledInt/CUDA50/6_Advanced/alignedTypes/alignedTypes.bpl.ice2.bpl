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

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_odata"} {:global} $$d_odata: [int]int;

axiom {:array_info "$$d_odata"} {:global} {:elem_width 32} {:source_name "d_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_odata: bool;

axiom {:array_info "$$d_idata"} {:global} {:elem_width 32} {:source_name "d_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_idata: bool;

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

procedure {:source_name "testKernel<int>"} {:kernel} $_Z10testKernelIiEvPT_S1_i($numElements: int);
  requires !_READ_HAS_OCCURRED_$$d_odata && !_WRITE_HAS_OCCURRED_$$d_odata && !_ATOMIC_HAS_OCCURRED_$$d_odata;
  requires !_READ_HAS_OCCURRED_$$d_idata && !_WRITE_HAS_OCCURRED_$$d_idata && !_ATOMIC_HAS_OCCURRED_$$d_idata;
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
  modifies _WRITE_HAS_OCCURRED_$$d_odata, _WRITE_READ_BENIGN_FLAG_$$d_odata, _WRITE_READ_BENIGN_FLAG_$$d_odata;



implementation {:source_name "testKernel<int>"} {:kernel} $_Z10testKernelIiEvPT_S1_i($numElements: int)
{
  var $pos.0$1: int;
  var $pos.0$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    $pos.0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    $pos.0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $pos.0$1 mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1) mod BV32_MUL(group_size_x, num_groups_x) )  && ( p0$2 ==> $pos.0$2 mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2) mod BV32_MUL(group_size_x, num_groups_x) ) ,  ( p0$1 ==> BV32_SLE($pos.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1)) )  && ( p0$2 ==> BV32_SLE($pos.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)) ) ,  ( p0$1 ==> BV32_SGE($pos.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1)) )  && ( p0$2 ==> BV32_SGE($pos.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)) ) ,  ( p0$1 ==> BV32_ULE($pos.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1)) )  && ( p0$2 ==> BV32_ULE($pos.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)) ) ,  ( p0$1 ==> BV32_UGE($pos.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1)) )  && ( p0$2 ==> BV32_UGE($pos.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)) ) ,  (  BV32_SLT($pos.0$1, $numElements) ==> p0$1 )  && (  BV32_SLT($pos.0$2, $numElements) ==> p0$2 ) ,  (  _WRITE_HAS_OCCURRED_$$d_odata ==> _WATCHED_OFFSET mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1) mod BV32_MUL(group_size_x, num_groups_x) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_SLT($pos.0$1, $numElements) else v0$1);
    v0$2 := (if p0$2 then BV32_SLT($pos.0$2, $numElements) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p1$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p1$2 then _HAVOC_int$2 else v1$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$d_odata(p1$1, $pos.0$1, v1$1, $$d_odata[$pos.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_odata(p1$2, $pos.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$d_odata(p1$2, $pos.0$2, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_odata"} true;
    $$d_odata[$pos.0$1] := (if p1$1 then v1$1 else $$d_odata[$pos.0$1]);
    $$d_odata[$pos.0$2] := (if p1$2 then v1$2 else $$d_odata[$pos.0$2]);
    $pos.0$1 := (if p1$1 then BV32_ADD($pos.0$1, BV32_MUL(group_size_x, num_groups_x)) else $pos.0$1);
    $pos.0$2 := (if p1$2 then BV32_ADD($pos.0$2, BV32_MUL(group_size_x, num_groups_x)) else $pos.0$2);
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

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

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





const _WATCHED_VALUE_$$d_odata: int;

procedure {:inline 1} _LOG_READ_$$d_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_odata;



implementation {:inline 1} _LOG_READ_$$d_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_odata == _value then true else _READ_HAS_OCCURRED_$$d_odata);
    return;
}



procedure _CHECK_READ_$$d_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_odata);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$d_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_odata, _WRITE_READ_BENIGN_FLAG_$$d_odata;



implementation {:inline 1} _LOG_WRITE_$$d_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_odata == _value then true else _WRITE_HAS_OCCURRED_$$d_odata);
    _WRITE_READ_BENIGN_FLAG_$$d_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_odata);
    return;
}



procedure _CHECK_WRITE_$$d_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_odata != _value);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_odata != _value);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_odata;



implementation {:inline 1} _LOG_ATOMIC_$$d_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_odata);
    return;
}



procedure _CHECK_ATOMIC_$$d_odata(_P: bool, _offset: int);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_odata"} {:array "$$d_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_odata := (if _P && _WRITE_HAS_OCCURRED_$$d_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_odata);
    return;
}



const _WATCHED_VALUE_$$d_idata: int;

procedure {:inline 1} _LOG_READ_$$d_idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_idata;



implementation {:inline 1} _LOG_READ_$$d_idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_idata == _value then true else _READ_HAS_OCCURRED_$$d_idata);
    return;
}



procedure _CHECK_READ_$$d_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_idata);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$d_idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_idata, _WRITE_READ_BENIGN_FLAG_$$d_idata;



implementation {:inline 1} _LOG_WRITE_$$d_idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_idata == _value then true else _WRITE_HAS_OCCURRED_$$d_idata);
    _WRITE_READ_BENIGN_FLAG_$$d_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_idata);
    return;
}



procedure _CHECK_WRITE_$$d_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_idata != _value);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_idata != _value);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_idata;



implementation {:inline 1} _LOG_ATOMIC_$$d_idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_idata);
    return;
}



procedure _CHECK_ATOMIC_$$d_idata(_P: bool, _offset: int);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_idata"} {:array "$$d_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_idata := (if _P && _WRITE_HAS_OCCURRED_$$d_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_idata);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}


