type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "dst_vector"} {:global} $$dst_vector: [bv32]bv32;

axiom {:array_info "$$dst_vector"} {:global} {:elem_width 32} {:source_name "dst_vector"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst_vector: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst_vector: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst_vector: bool;

axiom {:array_info "$$d_data"} {:global} {:elem_width 32} {:source_name "d_data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_data: bool;

axiom {:array_info "$$d_index"} {:global} {:elem_width 32} {:source_name "d_index"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_index: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_index: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_index: bool;

axiom {:array_info "$$d_perm"} {:global} {:elem_width 32} {:source_name "d_perm"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_perm: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_perm: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_perm: bool;

axiom {:array_info "$$x_vec"} {:global} {:elem_width 32} {:source_name "x_vec"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$x_vec: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$x_vec: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$x_vec: bool;

var {:source_name "jds_ptr_int"} {:constant} $$jds_ptr_int$1: [bv32]bv32;

var {:source_name "jds_ptr_int"} {:constant} $$jds_ptr_int$2: [bv32]bv32;

axiom {:array_info "$$jds_ptr_int"} {:constant} {:elem_width 32} {:source_name "jds_ptr_int"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "sh_zcnt_int"} {:constant} $$sh_zcnt_int$1: [bv32]bv32;

var {:source_name "sh_zcnt_int"} {:constant} $$sh_zcnt_int$2: [bv32]bv32;

axiom {:array_info "$$sh_zcnt_int"} {:constant} {:elem_width 32} {:source_name "sh_zcnt_int"} {:source_elem_width 32} {:source_dimensions "*"} true;

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

function FADD32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

procedure {:source_name "spmv_jds_naive"} {:kernel} $spmv_jds_naive($dim: bv32);
  requires !_READ_HAS_OCCURRED_$$dst_vector && !_WRITE_HAS_OCCURRED_$$dst_vector && !_ATOMIC_HAS_OCCURRED_$$dst_vector;
  requires !_READ_HAS_OCCURRED_$$d_data && !_WRITE_HAS_OCCURRED_$$d_data && !_ATOMIC_HAS_OCCURRED_$$d_data;
  requires !_READ_HAS_OCCURRED_$$d_index && !_WRITE_HAS_OCCURRED_$$d_index && !_ATOMIC_HAS_OCCURRED_$$d_index;
  requires !_READ_HAS_OCCURRED_$$d_perm && !_WRITE_HAS_OCCURRED_$$d_perm && !_ATOMIC_HAS_OCCURRED_$$d_perm;
  requires !_READ_HAS_OCCURRED_$$x_vec && !_WRITE_HAS_OCCURRED_$$x_vec && !_ATOMIC_HAS_OCCURRED_$$x_vec;
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
  modifies _WRITE_HAS_OCCURRED_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:source_name "spmv_jds_naive"} {:kernel} $spmv_jds_naive($dim: bv32)
{
  var $sum.0$1: bv32;
  var $sum.0$2: bv32;
  var $k.0$1: bv32;
  var $k.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $dim);
    v1$2 := BV32_SLT(v0$2, $dim);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    v2$1 := (if p0$1 then $$sh_zcnt_int$1[BV32_SDIV(v0$1, 32bv32)] else v2$1);
    v2$2 := (if p0$2 then $$sh_zcnt_int$2[BV32_SDIV(v0$2, 32bv32)] else v2$2);
    $sum.0$1, $k.0$1 := (if p0$1 then 0bv32 else $sum.0$1), (if p0$1 then 0bv32 else $k.0$1);
    $sum.0$2, $k.0$2 := (if p0$2 then 0bv32 else $sum.0$2), (if p0$2 then 0bv32 else $k.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:block_sourceloc} {:sourceloc_num 3} p1$1 ==> true;
    v3$1 := (if p1$1 then BV32_SLT($k.0$1, v2$1) else v3$1);
    v3$2 := (if p1$2 then BV32_SLT($k.0$2, v2$2) else v3$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v3$1 then v3$1 else p2$1);
    p2$2 := (if p1$2 && v3$2 then v3$2 else p2$2);
    p1$1 := (if p1$1 && !v3$1 then v3$1 else p1$1);
    p1$2 := (if p1$2 && !v3$2 then v3$2 else p1$2);
    v4$1 := (if p2$1 then $$jds_ptr_int$1[$k.0$1] else v4$1);
    v4$2 := (if p2$2 then $$jds_ptr_int$2[$k.0$2] else v4$2);
    v5$1 := (if p2$1 then BV32_ADD(v4$1, v0$1) else v5$1);
    v5$2 := (if p2$2 then BV32_ADD(v4$2, v0$2) else v5$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v6$1 := (if p2$1 then _HAVOC_bv32$1 else v6$1);
    v6$2 := (if p2$2 then _HAVOC_bv32$2 else v6$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v7$1 := (if p2$1 then _HAVOC_bv32$1 else v7$1);
    v7$2 := (if p2$2 then _HAVOC_bv32$2 else v7$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v8$1 := (if p2$1 then _HAVOC_bv32$1 else v8$1);
    v8$2 := (if p2$2 then _HAVOC_bv32$2 else v8$2);
    $sum.0$1, $k.0$1 := (if p2$1 then FADD32($sum.0$1, FMUL32(v7$1, v8$1)) else $sum.0$1), (if p2$1 then BV32_ADD($k.0$1, 1bv32) else $k.0$1);
    $sum.0$2, $k.0$2 := (if p2$2 then FADD32($sum.0$2, FMUL32(v7$2, v8$2)) else $sum.0$2), (if p2$2 then BV32_ADD($k.0$2, 1bv32) else $k.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v9$1 := (if p0$1 then _HAVOC_bv32$1 else v9$1);
    v9$2 := (if p0$2 then _HAVOC_bv32$2 else v9$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$dst_vector(p0$1, v9$1, $sum.0$1, $$dst_vector[v9$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst_vector(p0$2, v9$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$dst_vector(p0$2, v9$2, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst_vector"} true;
    $$dst_vector[v9$1] := (if p0$1 then $sum.0$1 else $$dst_vector[v9$1]);
    $$dst_vector[v9$2] := (if p0$2 then $sum.0$2 else $$dst_vector[v9$2]);
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

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 36bv32 then 1bv1 else 0bv1) != 0bv1;

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

const _WATCHED_VALUE_$$dst_vector: bv32;

procedure {:inline 1} _LOG_READ_$$dst_vector(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$dst_vector;



implementation {:inline 1} _LOG_READ_$$dst_vector(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then true else _READ_HAS_OCCURRED_$$dst_vector);
    return;
}



procedure _CHECK_READ_$$dst_vector(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst_vector);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst_vector: bool;

procedure {:inline 1} _LOG_WRITE_$$dst_vector(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:inline 1} _LOG_WRITE_$$dst_vector(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then true else _WRITE_HAS_OCCURRED_$$dst_vector);
    _WRITE_READ_BENIGN_FLAG_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst_vector);
    return;
}



procedure _CHECK_WRITE_$$dst_vector(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector != _value);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector != _value);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst_vector(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$dst_vector;



implementation {:inline 1} _LOG_ATOMIC_$$dst_vector(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst_vector);
    return;
}



procedure _CHECK_ATOMIC_$$dst_vector(_P: bool, _offset: bv32);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst_vector(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst_vector(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst_vector := (if _P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst_vector);
    return;
}



const _WATCHED_VALUE_$$d_data: bv32;

procedure {:inline 1} _LOG_READ_$$d_data(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_data;



implementation {:inline 1} _LOG_READ_$$d_data(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then true else _READ_HAS_OCCURRED_$$d_data);
    return;
}



procedure _CHECK_READ_$$d_data(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_data);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_data: bool;

procedure {:inline 1} _LOG_WRITE_$$d_data(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_data, _WRITE_READ_BENIGN_FLAG_$$d_data;



implementation {:inline 1} _LOG_WRITE_$$d_data(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then true else _WRITE_HAS_OCCURRED_$$d_data);
    _WRITE_READ_BENIGN_FLAG_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_data);
    return;
}



procedure _CHECK_WRITE_$$d_data(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data != _value);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data != _value);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_data(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_data;



implementation {:inline 1} _LOG_ATOMIC_$$d_data(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_data);
    return;
}



procedure _CHECK_ATOMIC_$$d_data(_P: bool, _offset: bv32);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_data(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_data(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_data := (if _P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_data);
    return;
}



const _WATCHED_VALUE_$$d_index: bv32;

procedure {:inline 1} _LOG_READ_$$d_index(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_index;



implementation {:inline 1} _LOG_READ_$$d_index(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then true else _READ_HAS_OCCURRED_$$d_index);
    return;
}



procedure _CHECK_READ_$$d_index(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_index);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_index: bool;

procedure {:inline 1} _LOG_WRITE_$$d_index(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_index, _WRITE_READ_BENIGN_FLAG_$$d_index;



implementation {:inline 1} _LOG_WRITE_$$d_index(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then true else _WRITE_HAS_OCCURRED_$$d_index);
    _WRITE_READ_BENIGN_FLAG_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_index);
    return;
}



procedure _CHECK_WRITE_$$d_index(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index != _value);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index != _value);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_index(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_index;



implementation {:inline 1} _LOG_ATOMIC_$$d_index(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_index);
    return;
}



procedure _CHECK_ATOMIC_$$d_index(_P: bool, _offset: bv32);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_index(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_index;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_index(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_index := (if _P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_index);
    return;
}



const _WATCHED_VALUE_$$d_perm: bv32;

procedure {:inline 1} _LOG_READ_$$d_perm(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_perm;



implementation {:inline 1} _LOG_READ_$$d_perm(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then true else _READ_HAS_OCCURRED_$$d_perm);
    return;
}



procedure _CHECK_READ_$$d_perm(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_perm);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_perm: bool;

procedure {:inline 1} _LOG_WRITE_$$d_perm(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_perm, _WRITE_READ_BENIGN_FLAG_$$d_perm;



implementation {:inline 1} _LOG_WRITE_$$d_perm(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then true else _WRITE_HAS_OCCURRED_$$d_perm);
    _WRITE_READ_BENIGN_FLAG_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_perm);
    return;
}



procedure _CHECK_WRITE_$$d_perm(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm != _value);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm != _value);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_perm(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_perm;



implementation {:inline 1} _LOG_ATOMIC_$$d_perm(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_perm);
    return;
}



procedure _CHECK_ATOMIC_$$d_perm(_P: bool, _offset: bv32);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_perm(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_perm;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_perm(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_perm := (if _P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_perm);
    return;
}



const _WATCHED_VALUE_$$x_vec: bv32;

procedure {:inline 1} _LOG_READ_$$x_vec(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$x_vec;



implementation {:inline 1} _LOG_READ_$$x_vec(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then true else _READ_HAS_OCCURRED_$$x_vec);
    return;
}



procedure _CHECK_READ_$$x_vec(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$x_vec);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$x_vec: bool;

procedure {:inline 1} _LOG_WRITE_$$x_vec(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$x_vec, _WRITE_READ_BENIGN_FLAG_$$x_vec;



implementation {:inline 1} _LOG_WRITE_$$x_vec(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then true else _WRITE_HAS_OCCURRED_$$x_vec);
    _WRITE_READ_BENIGN_FLAG_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$x_vec);
    return;
}



procedure _CHECK_WRITE_$$x_vec(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec != _value);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec != _value);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$x_vec(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$x_vec;



implementation {:inline 1} _LOG_ATOMIC_$$x_vec(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$x_vec);
    return;
}



procedure _CHECK_ATOMIC_$$x_vec(_P: bool, _offset: bv32);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x_vec(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$x_vec;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x_vec(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$x_vec := (if _P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$x_vec);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;
