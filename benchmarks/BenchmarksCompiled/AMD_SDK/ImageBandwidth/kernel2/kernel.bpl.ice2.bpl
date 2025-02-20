function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

var {:source_name "out"} {:global} $$out: [bv32]bv32;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

procedure {:source_name "write_kernel"} {:kernel} $write_kernel($np: bv32, $val: bv32, $nk: bv32);
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
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
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:source_name "write_kernel"} {:kernel} $write_kernel($np: bv32, $val: bv32, $nk: bv32)
{
  var $coord.0$1: bv64;
  var $coord.0$2: bv64;
  var $n.0: bv32;
  var $i.0: bv32;
  var $idx.0$1: bv32;
  var $idx.0$2: bv32;
  var $coord.1$1: bv64;
  var $coord.1$2: bv64;
  var v0: bool;
  var v1: bool;
  var v2: bool;
  var v3$1: bv32;
  var v3$2: bv32;


  $0:
    v0 := $nk == 0bv32;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v0;
    $coord.0$1, $n.0 := 0bv32 ++ BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 0bv32;
    $coord.0$2 := 0bv32 ++ BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
assert  my_inv (  (  BV32_SLE($n.0, 0bv32) ) ,  (  BV32_SGE($n.0, 0bv32) ) ,  (  BV32_ULE($n.0, 0bv32) ) ,  (  BV32_UGE($n.0, 0bv32) ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 3} true;
    assert {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if $coord.0$1[32:0] == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 4} {:thread 2} (if $coord.0$2[32:0] == BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 16bv32), 8192bv32) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 16bv32), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 8192bv32), BV32_MUL(group_size_y, num_groups_y)) == BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1) then 1bv1 else 0bv1) != 0bv1;
    v1 := BV32_ULT($n.0, $nk);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v1;
    goto $10;

  $10:
    return;

  $truebb0:
    assume {:partition} v1;
    $i.0, $idx.0$1, $coord.1$1 := 0bv32, BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $coord.0$1;
    $idx.0$2, $coord.1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $coord.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  (  BV32_AND(BV32_SUB(BV32_MUL(group_size_y, num_groups_y), 1bv32), $idx.0$1) == BV32_AND(BV32_SUB(BV32_MUL(group_size_y, num_groups_y), 1bv32), BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1)) )  && (  BV32_AND(BV32_SUB(BV32_MUL(group_size_y, num_groups_y), 1bv32), $idx.0$2) == BV32_AND(BV32_SUB(BV32_MUL(group_size_y, num_groups_y), 1bv32), BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2)) ) ,  (  BV32_SLE($i.0, 0bv32) ) ,  (  BV32_SGE($i.0, 0bv32) ) ,  (  BV32_ULE($i.0, 0bv32) ) ,  (  BV32_UGE($i.0, 0bv32) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 8} true;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 1} (if $coord.1$1[32:0] == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 2} (if $coord.1$2[32:0] == BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 10} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 16bv32), 8192bv32) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 11} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 16bv32), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 8192bv32), BV32_MUL(group_size_y, num_groups_y)) == BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1) then 1bv1 else 0bv1) != 0bv1;
    v2 := BV32_ULT($i.0, $np);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v2;
    $coord.0$1, $n.0 := $coord.1$1, BV32_ADD($n.0, 1bv32);
    $coord.0$2 := $coord.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $truebb1:
    assume {:partition} v2;
    v3$1 := $coord.1$1[32:0];
    v3$2 := $coord.1$2[32:0];
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), $val, $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32)] := $val;
    $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32)] := $val;
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 1bv32), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 1bv32), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 1bv32)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 1bv32)] := $val;
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 2bv32), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 2bv32), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 2bv32)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 2bv32)] := $val;
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 3bv32), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 3bv32), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192bv32), v3$1), 4bv32), 3bv32)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192bv32), v3$2), 4bv32), 3bv32)] := $val;
    $i.0, $idx.0$1, $coord.1$1 := BV32_ADD($i.0, 1bv32), BV32_ADD($idx.0$1, BV32_MUL(group_size_y, num_groups_y)), $idx.0$1 ++ v3$1;
    $idx.0$2, $coord.1$2 := BV32_ADD($idx.0$2, BV32_MUL(group_size_y, num_groups_y)), $idx.0$2 ++ v3$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v0;
    goto $10;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;



function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;



function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;











const _WATCHED_VALUE_$$in: bv32;

procedure {:inline 1} _LOG_READ_$$in(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_READ_$$in(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _READ_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_READ_$$in(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$in);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$in: bool;

procedure {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$in, _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _WRITE_HAS_OCCURRED_$$in);
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



procedure _CHECK_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_ATOMIC_$$in(_P: bool, _offset: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



const _WATCHED_VALUE_$$out: bv32;

procedure {:inline 1} _LOG_READ_$$out(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_READ_$$out(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _READ_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_READ_$$out(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$out);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$out: bool;

procedure {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _WRITE_HAS_OCCURRED_$$out);
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



procedure _CHECK_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_ATOMIC_$$out(_P: bool, _offset: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
