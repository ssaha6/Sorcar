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
 b0012: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$feature"} {:global} {:elem_width 32} {:source_name "feature"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$feature: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$feature: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$feature: bool;

var {:source_name "feature_swap"} {:global} $$feature_swap: [bv32]bv32;

axiom {:array_info "$$feature_swap"} {:global} {:elem_width 32} {:source_name "feature_swap"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$feature_swap: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$feature_swap: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$feature_swap: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

procedure {:source_name "kmeans_swap"} {:kernel} $kmeans_swap($npoints: bv32, $nfeatures: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $npoints == 494020bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $nfeatures == 34bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$feature && !_WRITE_HAS_OCCURRED_$$feature && !_ATOMIC_HAS_OCCURRED_$$feature;
  requires !_READ_HAS_OCCURRED_$$feature_swap && !_WRITE_HAS_OCCURRED_$$feature_swap && !_ATOMIC_HAS_OCCURRED_$$feature_swap;
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
  modifies _WRITE_HAS_OCCURRED_$$feature_swap, _WRITE_READ_BENIGN_FLAG_$$feature_swap, _WRITE_READ_BENIGN_FLAG_$$feature_swap;



implementation {:source_name "kmeans_swap"} {:kernel} $kmeans_swap($npoints: bv32, $nfeatures: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _WRITE_HAS_OCCURRED_$$feature_swap$ghost$$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $npoints);
    v1$2 := BV32_ULT(v0$2, $npoints);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    $i.0$1 := (if p0$1 then 0bv32 else $i.0$1);
    $i.0$2 := (if p0$2 then 0bv32 else $i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _WRITE_HAS_OCCURRED_$$feature_swap$ghost$$2 := _WRITE_HAS_OCCURRED_$$feature_swap;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$feature_swap ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$feature_swap ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), group_size_x), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$feature_swap ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, $npoints), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, $npoints), 1bv32), BV32_ADD(BV32_MUL(0bv32, $npoints), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))) ) ,  (  _WRITE_HAS_OCCURRED_$$feature_swap ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, group_size_x) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$feature_swap$ghost$$2 == _WRITE_HAS_OCCURRED_$$feature_swap )  ); 


    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p1$1 ==> BV32_SLE(0bv32, $i.0$1) )  && ( p1$2 ==> BV32_SLE(0bv32, $i.0$2) ) ,  ( p1$1 ==> BV32_SLE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_SLE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_SGE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_SGE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_ULE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_ULE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_UGE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_UGE($i.0$2, 0bv32) ) ,  ( p1$1 ==> p1$1 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $npoints) )  && ( p1$2 ==> p1$2 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $npoints) ) ,  (  BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $npoints) && BV32_SLT($i.0$1, $nfeatures) ==> p1$1 )  && (  BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $npoints) && BV32_SLT($i.0$2, $nfeatures) ==> p1$2 ) ,  (  _WRITE_HAS_OCCURRED_$$feature_swap ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $npoints) ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 4} p1$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$feature_swap ==> BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $npoints) == v0$1 then 1bv1 else 0bv1) != 0bv1;
    v2$1 := (if p1$1 then BV32_SLT($i.0$1, $nfeatures) else v2$1);
    v2$2 := (if p1$2 then BV32_SLT($i.0$2, $nfeatures) else v2$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p1$1 := (if p1$1 && !v2$1 then v2$1 else p1$1);
    p1$2 := (if p1$2 && !v2$2 then v2$2 else p1$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v3$1 := (if p2$1 then _HAVOC_bv32$1 else v3$1);
    v3$2 := (if p2$2 then _HAVOC_bv32$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$feature_swap(p2$1, BV32_ADD(BV32_MUL($i.0$1, $npoints), v0$1), v3$1, $$feature_swap[BV32_ADD(BV32_MUL($i.0$1, $npoints), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature_swap(p2$2, BV32_ADD(BV32_MUL($i.0$2, $npoints), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$feature_swap(p2$2, BV32_ADD(BV32_MUL($i.0$2, $npoints), v0$2), v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$feature_swap"} true;
    $$feature_swap[BV32_ADD(BV32_MUL($i.0$1, $npoints), v0$1)] := (if p2$1 then v3$1 else $$feature_swap[BV32_ADD(BV32_MUL($i.0$1, $npoints), v0$1)]);
    $$feature_swap[BV32_ADD(BV32_MUL($i.0$2, $npoints), v0$2)] := (if p2$2 then v3$2 else $$feature_swap[BV32_ADD(BV32_MUL($i.0$2, $npoints), v0$2)]);
    $i.0$1 := (if p2$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1);
    $i.0$2 := (if p2$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2);
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



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1930bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;





function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;









const _WATCHED_VALUE_$$feature: bv32;

procedure {:inline 1} _LOG_READ_$$feature(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$feature;



implementation {:inline 1} _LOG_READ_$$feature(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then true else _READ_HAS_OCCURRED_$$feature);
    return;
}



procedure _CHECK_READ_$$feature(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$feature);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$feature: bool;

procedure {:inline 1} _LOG_WRITE_$$feature(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$feature, _WRITE_READ_BENIGN_FLAG_$$feature;



implementation {:inline 1} _LOG_WRITE_$$feature(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then true else _WRITE_HAS_OCCURRED_$$feature);
    _WRITE_READ_BENIGN_FLAG_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$feature);
    return;
}



procedure _CHECK_WRITE_$$feature(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature != _value);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature != _value);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$feature(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$feature;



implementation {:inline 1} _LOG_ATOMIC_$$feature(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$feature);
    return;
}



procedure _CHECK_ATOMIC_$$feature(_P: bool, _offset: bv32);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$feature;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$feature := (if _P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$feature);
    return;
}



const _WATCHED_VALUE_$$feature_swap: bv32;

procedure {:inline 1} _LOG_READ_$$feature_swap(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$feature_swap;



implementation {:inline 1} _LOG_READ_$$feature_swap(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$feature_swap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature_swap == _value then true else _READ_HAS_OCCURRED_$$feature_swap);
    return;
}



procedure _CHECK_READ_$$feature_swap(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$feature_swap);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$feature_swap: bool;

procedure {:inline 1} _LOG_WRITE_$$feature_swap(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$feature_swap, _WRITE_READ_BENIGN_FLAG_$$feature_swap;



implementation {:inline 1} _LOG_WRITE_$$feature_swap(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$feature_swap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature_swap == _value then true else _WRITE_HAS_OCCURRED_$$feature_swap);
    _WRITE_READ_BENIGN_FLAG_$$feature_swap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature_swap == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$feature_swap);
    return;
}



procedure _CHECK_WRITE_$$feature_swap(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature_swap != _value);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature_swap != _value);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$feature_swap(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$feature_swap;



implementation {:inline 1} _LOG_ATOMIC_$$feature_swap(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$feature_swap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$feature_swap);
    return;
}



procedure _CHECK_ATOMIC_$$feature_swap(_P: bool, _offset: bv32);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset);
  requires {:source_name "feature_swap"} {:array "$$feature_swap"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature_swap(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$feature_swap;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature_swap(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$feature_swap := (if _P && _WRITE_HAS_OCCURRED_$$feature_swap && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$feature_swap);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;





function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;



function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;




