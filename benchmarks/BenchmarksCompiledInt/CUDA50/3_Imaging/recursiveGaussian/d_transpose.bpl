type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "odata"} {:global} $$odata: [int]int;

axiom {:array_info "$$odata"} {:global} {:elem_width 32} {:source_name "odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$odata: bool;

axiom {:array_info "$$idata"} {:global} {:elem_width 32} {:source_name "idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$idata: bool;

var {:source_name "block"} {:group_shared} $$_ZZ11d_transposePjS_iiE5block: [bv1][int]int;

axiom {:array_info "$$_ZZ11d_transposePjS_iiE5block"} {:group_shared} {:elem_width 32} {:source_name "block"} {:source_elem_width 32} {:source_dimensions "16,17"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,17"} _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,17"} _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,17"} _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block: bool;

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

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "d_transpose"} {:kernel} $_Z11d_transposePjS_ii($width: int, $height: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $height == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$odata && !_WRITE_HAS_OCCURRED_$$odata && !_ATOMIC_HAS_OCCURRED_$$odata;
  requires !_READ_HAS_OCCURRED_$$idata && !_WRITE_HAS_OCCURRED_$$idata && !_ATOMIC_HAS_OCCURRED_$$idata;
  requires !_READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && !_WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && !_ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;
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
  modifies $$_ZZ11d_transposePjS_iiE5block, _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block, $$odata, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block, _WRITE_HAS_OCCURRED_$$odata, _WRITE_READ_BENIGN_FLAG_$$odata, _WRITE_READ_BENIGN_FLAG_$$odata;



implementation {:source_name "d_transpose"} {:kernel} $_Z11d_transposePjS_ii($width: int, $height: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v6$1: int;
  var v6$2: int;
  var v5$1: int;
  var v5$2: int;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
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
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var p6$1: bool;
  var p6$2: bool;
  var p7$1: bool;
  var p7$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 16), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 16), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, 16), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, 16), local_id_y$2);
    v2$1 := BV32_ULT(v0$1, $width);
    v2$2 := BV32_ULT(v0$2, $width);
    p0$1 := false;
    p0$2 := false;
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
    p7$1 := false;
    p7$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    v3$1 := (if p0$1 then BV32_ULT(v1$1, $height) else v3$1);
    v3$2 := (if p0$2 then BV32_ULT(v1$2, $height) else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ11d_transposePjS_iiE5block(p1$1, BV32_ADD(BV32_MUL(local_id_y$1, 17), local_id_x$1), v4$1, $$_ZZ11d_transposePjS_iiE5block[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 17), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block(p1$2, BV32_ADD(BV32_MUL(local_id_y$2, 17), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ11d_transposePjS_iiE5block(p1$2, BV32_ADD(BV32_MUL(local_id_y$2, 17), local_id_x$2), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11d_transposePjS_iiE5block"} true;
    $$_ZZ11d_transposePjS_iiE5block[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 17), local_id_x$1)] := (if p1$1 then v4$1 else $$_ZZ11d_transposePjS_iiE5block[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 17), local_id_x$1)]);
    $$_ZZ11d_transposePjS_iiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 17), local_id_x$2)] := (if p1$2 then v4$2 else $$_ZZ11d_transposePjS_iiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 17), local_id_x$2)]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 8} $bugle_barrier_duplicated_0(-1, -1);
    v5$1 := BV32_ADD(BV32_MUL(group_id_y$1, 16), local_id_x$1);
    v5$2 := BV32_ADD(BV32_MUL(group_id_y$2, 16), local_id_x$2);
    v6$1 := BV32_ADD(BV32_MUL(group_id_x$1, 16), local_id_y$1);
    v6$2 := BV32_ADD(BV32_MUL(group_id_x$2, 16), local_id_y$2);
    v7$1 := BV32_ULT(v5$1, $height);
    v7$2 := BV32_ULT(v5$2, $height);
    p4$1 := (if v7$1 then v7$1 else p4$1);
    p4$2 := (if v7$2 then v7$2 else p4$2);
    v8$1 := (if p4$1 then BV32_ULT(v6$1, $width) else v8$1);
    v8$2 := (if p4$2 then BV32_ULT(v6$2, $width) else v8$2);
    p5$1 := (if p4$1 && v8$1 then v8$1 else p5$1);
    p5$2 := (if p4$2 && v8$2 then v8$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ11d_transposePjS_iiE5block(p5$1, BV32_ADD(BV32_MUL(local_id_x$1, 17), local_id_y$1), $$_ZZ11d_transposePjS_iiE5block[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 17), local_id_y$1)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ11d_transposePjS_iiE5block(p5$2, BV32_ADD(BV32_MUL(local_id_x$2, 17), local_id_y$2), $$_ZZ11d_transposePjS_iiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 17), local_id_y$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11d_transposePjS_iiE5block"} true;
    v9$1 := (if p5$1 then $$_ZZ11d_transposePjS_iiE5block[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 17), local_id_y$1)] else v9$1);
    v9$2 := (if p5$2 then $$_ZZ11d_transposePjS_iiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 17), local_id_y$2)] else v9$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$odata(p5$1, BV32_ADD(BV32_MUL(v6$1, $height), v5$1), v9$1, $$odata[BV32_ADD(BV32_MUL(v6$1, $height), v5$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$odata(p5$2, BV32_ADD(BV32_MUL(v6$2, $height), v5$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$odata(p5$2, BV32_ADD(BV32_MUL(v6$2, $height), v5$2), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$odata"} true;
    $$odata[BV32_ADD(BV32_MUL(v6$1, $height), v5$1)] := (if p5$1 then v9$1 else $$odata[BV32_ADD(BV32_MUL(v6$1, $height), v5$1)]);
    $$odata[BV32_ADD(BV32_MUL(v6$2, $height), v5$2)] := (if p5$2 then v9$2 else $$odata[BV32_ADD(BV32_MUL(v6$2, $height), v5$2)]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ11d_transposePjS_iiE5block, $$odata, _TRACKING;



const _WATCHED_VALUE_$$odata: int;

procedure {:inline 1} _LOG_READ_$$odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$odata;



implementation {:inline 1} _LOG_READ_$$odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$odata == _value then true else _READ_HAS_OCCURRED_$$odata);
    return;
}



procedure _CHECK_READ_$$odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$odata);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$odata: bool;

procedure {:inline 1} _LOG_WRITE_$$odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$odata, _WRITE_READ_BENIGN_FLAG_$$odata;



implementation {:inline 1} _LOG_WRITE_$$odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$odata == _value then true else _WRITE_HAS_OCCURRED_$$odata);
    _WRITE_READ_BENIGN_FLAG_$$odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$odata);
    return;
}



procedure _CHECK_WRITE_$$odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$odata != _value);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$odata != _value);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$odata;



implementation {:inline 1} _LOG_ATOMIC_$$odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$odata);
    return;
}



procedure _CHECK_ATOMIC_$$odata(_P: bool, _offset: int);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "odata"} {:array "$$odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$odata := (if _P && _WRITE_HAS_OCCURRED_$$odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$odata);
    return;
}



const _WATCHED_VALUE_$$idata: int;

procedure {:inline 1} _LOG_READ_$$idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$idata;



implementation {:inline 1} _LOG_READ_$$idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idata == _value then true else _READ_HAS_OCCURRED_$$idata);
    return;
}



procedure _CHECK_READ_$$idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$idata);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$idata: bool;

procedure {:inline 1} _LOG_WRITE_$$idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$idata, _WRITE_READ_BENIGN_FLAG_$$idata;



implementation {:inline 1} _LOG_WRITE_$$idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idata == _value then true else _WRITE_HAS_OCCURRED_$$idata);
    _WRITE_READ_BENIGN_FLAG_$$idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$idata);
    return;
}



procedure _CHECK_WRITE_$$idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idata != _value);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idata != _value);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$idata;



implementation {:inline 1} _LOG_ATOMIC_$$idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$idata);
    return;
}



procedure _CHECK_ATOMIC_$$idata(_P: bool, _offset: int);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "idata"} {:array "$$idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$idata := (if _P && _WRITE_HAS_OCCURRED_$$idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$idata);
    return;
}



const _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;



implementation {:inline 1} _LOG_READ_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block == _value then true else _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block);
    return;
}



procedure _CHECK_READ_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int, _value: int);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11d_transposePjS_iiE5block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ11d_transposePjS_iiE5block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11d_transposePjS_iiE5block);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11d_transposePjS_iiE5block;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$odata;
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
    havoc $$odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ11d_transposePjS_iiE5block;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
