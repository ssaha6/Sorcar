type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "dst_vector"} {:global} $$dst_vector: [int]int;

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

var {:source_name "jds_ptr_int"} {:constant} $$jds_ptr_int$1: [int]int;

var {:source_name "jds_ptr_int"} {:constant} $$jds_ptr_int$2: [int]int;

axiom {:array_info "$$jds_ptr_int"} {:constant} {:elem_width 32} {:source_name "jds_ptr_int"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "sh_zcnt_int"} {:constant} $$sh_zcnt_int$1: [int]int;

var {:source_name "sh_zcnt_int"} {:constant} $$sh_zcnt_int$2: [int]int;

axiom {:array_info "$$sh_zcnt_int"} {:constant} {:elem_width 32} {:source_name "sh_zcnt_int"} {:source_elem_width 32} {:source_dimensions "*"} true;

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

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "spmv_jds_naive"} {:kernel} $spmv_jds_naive($dim: int);
  requires !_READ_HAS_OCCURRED_$$dst_vector && !_WRITE_HAS_OCCURRED_$$dst_vector && !_ATOMIC_HAS_OCCURRED_$$dst_vector;
  requires !_READ_HAS_OCCURRED_$$d_data && !_WRITE_HAS_OCCURRED_$$d_data && !_ATOMIC_HAS_OCCURRED_$$d_data;
  requires !_READ_HAS_OCCURRED_$$d_index && !_WRITE_HAS_OCCURRED_$$d_index && !_ATOMIC_HAS_OCCURRED_$$d_index;
  requires !_READ_HAS_OCCURRED_$$d_perm && !_WRITE_HAS_OCCURRED_$$d_perm && !_ATOMIC_HAS_OCCURRED_$$d_perm;
  requires !_READ_HAS_OCCURRED_$$x_vec && !_WRITE_HAS_OCCURRED_$$x_vec && !_ATOMIC_HAS_OCCURRED_$$x_vec;
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
  modifies _WRITE_HAS_OCCURRED_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:source_name "spmv_jds_naive"} {:kernel} $spmv_jds_naive($dim: int)
{
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $k.0$1: int;
  var $k.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


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
    v2$1 := (if p0$1 then $$sh_zcnt_int$1[BV32_SDIV(v0$1, 32)] else v2$1);
    v2$2 := (if p0$2 then $$sh_zcnt_int$2[BV32_SDIV(v0$2, 32)] else v2$2);
    $sum.0$1, $k.0$1 := (if p0$1 then 0 else $sum.0$1), (if p0$1 then 0 else $k.0$1);
    $sum.0$2, $k.0$2 := (if p0$2 then 0 else $sum.0$2), (if p0$2 then 0 else $k.0$2);
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
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p2$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p2$2 then _HAVOC_int$2 else v6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p2$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p2$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p2$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p2$2 then _HAVOC_int$2 else v8$2);
    $sum.0$1, $k.0$1 := (if p2$1 then FADD32($sum.0$1, FMUL32(v7$1, v8$1)) else $sum.0$1), (if p2$1 then BV32_ADD($k.0$1, 1) else $k.0$1);
    $sum.0$2, $k.0$2 := (if p2$2 then FADD32($sum.0$2, FMUL32(v7$2, v8$2)) else $sum.0$2), (if p2$2 then BV32_ADD($k.0$2, 1) else $k.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p0$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p0$2 then _HAVOC_int$2 else v9$2);
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



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 36 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$dst_vector: int;

procedure {:inline 1} _LOG_READ_$$dst_vector(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dst_vector;



implementation {:inline 1} _LOG_READ_$$dst_vector(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then true else _READ_HAS_OCCURRED_$$dst_vector);
    return;
}



procedure _CHECK_READ_$$dst_vector(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst_vector);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst_vector: bool;

procedure {:inline 1} _LOG_WRITE_$$dst_vector(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dst_vector, _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:inline 1} _LOG_WRITE_$$dst_vector(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then true else _WRITE_HAS_OCCURRED_$$dst_vector);
    _WRITE_READ_BENIGN_FLAG_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst_vector);
    return;
}



procedure _CHECK_WRITE_$$dst_vector(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector != _value);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst_vector != _value);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst_vector(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dst_vector;



implementation {:inline 1} _LOG_ATOMIC_$$dst_vector(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst_vector := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst_vector);
    return;
}



procedure _CHECK_ATOMIC_$$dst_vector(_P: bool, _offset: int);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst_vector"} {:array "$$dst_vector"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst_vector(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst_vector;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst_vector(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst_vector := (if _P && _WRITE_HAS_OCCURRED_$$dst_vector && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst_vector);
    return;
}



const _WATCHED_VALUE_$$d_data: int;

procedure {:inline 1} _LOG_READ_$$d_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_data;



implementation {:inline 1} _LOG_READ_$$d_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then true else _READ_HAS_OCCURRED_$$d_data);
    return;
}



procedure _CHECK_READ_$$d_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_data);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_data: bool;

procedure {:inline 1} _LOG_WRITE_$$d_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_data, _WRITE_READ_BENIGN_FLAG_$$d_data;



implementation {:inline 1} _LOG_WRITE_$$d_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then true else _WRITE_HAS_OCCURRED_$$d_data);
    _WRITE_READ_BENIGN_FLAG_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_data);
    return;
}



procedure _CHECK_WRITE_$$d_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data != _value);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_data != _value);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_data;



implementation {:inline 1} _LOG_ATOMIC_$$d_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_data);
    return;
}



procedure _CHECK_ATOMIC_$$d_data(_P: bool, _offset: int);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_data"} {:array "$$d_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_data := (if _P && _WRITE_HAS_OCCURRED_$$d_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_data);
    return;
}



const _WATCHED_VALUE_$$d_index: int;

procedure {:inline 1} _LOG_READ_$$d_index(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_index;



implementation {:inline 1} _LOG_READ_$$d_index(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then true else _READ_HAS_OCCURRED_$$d_index);
    return;
}



procedure _CHECK_READ_$$d_index(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_index);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_index: bool;

procedure {:inline 1} _LOG_WRITE_$$d_index(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_index, _WRITE_READ_BENIGN_FLAG_$$d_index;



implementation {:inline 1} _LOG_WRITE_$$d_index(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then true else _WRITE_HAS_OCCURRED_$$d_index);
    _WRITE_READ_BENIGN_FLAG_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_index);
    return;
}



procedure _CHECK_WRITE_$$d_index(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index != _value);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_index != _value);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_index(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_index;



implementation {:inline 1} _LOG_ATOMIC_$$d_index(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_index);
    return;
}



procedure _CHECK_ATOMIC_$$d_index(_P: bool, _offset: int);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_index"} {:array "$$d_index"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_index(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_index;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_index(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_index := (if _P && _WRITE_HAS_OCCURRED_$$d_index && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_index);
    return;
}



const _WATCHED_VALUE_$$d_perm: int;

procedure {:inline 1} _LOG_READ_$$d_perm(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_perm;



implementation {:inline 1} _LOG_READ_$$d_perm(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then true else _READ_HAS_OCCURRED_$$d_perm);
    return;
}



procedure _CHECK_READ_$$d_perm(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_perm);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_perm: bool;

procedure {:inline 1} _LOG_WRITE_$$d_perm(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_perm, _WRITE_READ_BENIGN_FLAG_$$d_perm;



implementation {:inline 1} _LOG_WRITE_$$d_perm(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then true else _WRITE_HAS_OCCURRED_$$d_perm);
    _WRITE_READ_BENIGN_FLAG_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_perm);
    return;
}



procedure _CHECK_WRITE_$$d_perm(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm != _value);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_perm != _value);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_perm(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_perm;



implementation {:inline 1} _LOG_ATOMIC_$$d_perm(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_perm := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_perm);
    return;
}



procedure _CHECK_ATOMIC_$$d_perm(_P: bool, _offset: int);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_perm"} {:array "$$d_perm"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_perm(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_perm;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_perm(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_perm := (if _P && _WRITE_HAS_OCCURRED_$$d_perm && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_perm);
    return;
}



const _WATCHED_VALUE_$$x_vec: int;

procedure {:inline 1} _LOG_READ_$$x_vec(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$x_vec;



implementation {:inline 1} _LOG_READ_$$x_vec(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then true else _READ_HAS_OCCURRED_$$x_vec);
    return;
}



procedure _CHECK_READ_$$x_vec(_P: bool, _offset: int, _value: int);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$x_vec);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$x_vec: bool;

procedure {:inline 1} _LOG_WRITE_$$x_vec(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$x_vec, _WRITE_READ_BENIGN_FLAG_$$x_vec;



implementation {:inline 1} _LOG_WRITE_$$x_vec(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then true else _WRITE_HAS_OCCURRED_$$x_vec);
    _WRITE_READ_BENIGN_FLAG_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$x_vec);
    return;
}



procedure _CHECK_WRITE_$$x_vec(_P: bool, _offset: int, _value: int);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec != _value);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x_vec != _value);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$x_vec(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$x_vec;



implementation {:inline 1} _LOG_ATOMIC_$$x_vec(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$x_vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$x_vec);
    return;
}



procedure _CHECK_ATOMIC_$$x_vec(_P: bool, _offset: int);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);
  requires {:source_name "x_vec"} {:array "$$x_vec"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x_vec(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$x_vec;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x_vec(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$x_vec := (if _P && _WRITE_HAS_OCCURRED_$$x_vec && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$x_vec);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
