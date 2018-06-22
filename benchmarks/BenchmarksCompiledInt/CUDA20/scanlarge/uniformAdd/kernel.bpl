type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_data"} {:global} $$g_data: [int]int;

axiom {:array_info "$$g_data"} {:global} {:elem_width 32} {:source_name "g_data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_data: bool;

axiom {:array_info "$$uniforms"} {:global} {:elem_width 32} {:source_name "uniforms"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$uniforms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$uniforms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$uniforms: bool;

var {:source_name "uni"} {:group_shared} $$_ZZ10uniformAddPfS_iiiE3uni: [bv1][int]int;

axiom {:array_info "$$_ZZ10uniformAddPfS_iiiE3uni"} {:group_shared} {:elem_width 32} {:source_name "uni"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni: bool;

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

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "uniformAdd"} {:kernel} $_Z10uniformAddPfS_iii($n: int, $blockOffset: int, $baseIndex: int);
  requires !_READ_HAS_OCCURRED_$$g_data && !_WRITE_HAS_OCCURRED_$$g_data && !_ATOMIC_HAS_OCCURRED_$$g_data;
  requires !_READ_HAS_OCCURRED_$$uniforms && !_WRITE_HAS_OCCURRED_$$uniforms && !_ATOMIC_HAS_OCCURRED_$$uniforms;
  requires !_READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && !_WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && !_ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;
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
  modifies $$_ZZ10uniformAddPfS_iiiE3uni, _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni, _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni, _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni, $$g_data, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni, _READ_HAS_OCCURRED_$$g_data, _WRITE_HAS_OCCURRED_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:source_name "uniformAdd"} {:kernel} $_Z10uniformAddPfS_iii($n: int, $blockOffset: int, $baseIndex: int)
{
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1 == 0;
    v0$2 := local_id_x$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p0$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p0$2 then _HAVOC_int$2 else v1$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni(p0$1, 0, v1$1, $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni(p0$2, 0, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni"} true;
    $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0] := (if p0$1 then v1$1 else $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0]);
    $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v1$2 else $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    v2$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, BV32_SHL(group_size_x, 1)), $baseIndex), local_id_x$1);
    v2$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, BV32_SHL(group_size_x, 1)), $baseIndex), local_id_x$2);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 5} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$_ZZ10uniformAddPfS_iiiE3uni(true, 0, $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$_ZZ10uniformAddPfS_iiiE3uni(true, 0, $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ10uniformAddPfS_iiiE3uni"} true;
    v3$1 := $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0];
    v3$2 := $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$g_data(true, v2$1, $$g_data[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$g_data(true, v2$2, $$g_data[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v4$1 := $$g_data[v2$1];
    v4$2 := $$g_data[v2$2];
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$g_data(true, v2$1, FADD32(v4$1, v3$1), $$g_data[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$g_data(true, v2$2, FADD32(v4$2, v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_data"} true;
    $$g_data[v2$1] := FADD32(v4$1, v3$1);
    $$g_data[v2$2] := FADD32(v4$2, v3$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$_ZZ10uniformAddPfS_iiiE3uni(true, 0, $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$_ZZ10uniformAddPfS_iiiE3uni(true, 0, $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ10uniformAddPfS_iiiE3uni"} true;
    v5$1 := $$_ZZ10uniformAddPfS_iiiE3uni[1bv1][0];
    v5$2 := $$_ZZ10uniformAddPfS_iiiE3uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v6$1 := BV32_ADD(v2$1, group_size_x);
    v6$2 := BV32_ADD(v2$2, group_size_x);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$g_data(true, v6$1, $$g_data[v6$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$g_data(true, v6$2, $$g_data[v6$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v7$1 := $$g_data[v6$1];
    v7$2 := $$g_data[v6$2];
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$g_data(true, v6$1, FADD32(v7$1, FMUL32(SI32_TO_FP32(BV1_ZEXT32((if BV32_ULT(BV32_ADD(local_id_x$1, group_size_x), $n) then 1 else 0))), v5$1)), $$g_data[v6$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(true, v6$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$g_data(true, v6$2, FADD32(v7$2, FMUL32(SI32_TO_FP32(BV1_ZEXT32((if BV32_ULT(BV32_ADD(local_id_x$2, group_size_x), $n) then 1 else 0))), v5$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_data"} true;
    $$g_data[v6$1] := FADD32(v7$1, FMUL32(SI32_TO_FP32(BV1_ZEXT32((if BV32_ULT(BV32_ADD(local_id_x$1, group_size_x), $n) then 1 else 0))), v5$1));
    $$g_data[v6$2] := FADD32(v7$2, FMUL32(SI32_TO_FP32(BV1_ZEXT32((if BV32_ULT(BV32_ADD(local_id_x$2, group_size_x), $n) then 1 else 0))), v5$2));
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ10uniformAddPfS_iiiE3uni, $$g_data, _TRACKING;



const _WATCHED_VALUE_$$g_data: int;

procedure {:inline 1} _LOG_READ_$$g_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_data;



implementation {:inline 1} _LOG_READ_$$g_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then true else _READ_HAS_OCCURRED_$$g_data);
    return;
}



procedure _CHECK_READ_$$g_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_data);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_data: bool;

procedure {:inline 1} _LOG_WRITE_$$g_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:inline 1} _LOG_WRITE_$$g_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then true else _WRITE_HAS_OCCURRED_$$g_data);
    _WRITE_READ_BENIGN_FLAG_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_data);
    return;
}



procedure _CHECK_WRITE_$$g_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data != _value);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data != _value);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_data;



implementation {:inline 1} _LOG_ATOMIC_$$g_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_data);
    return;
}



procedure _CHECK_ATOMIC_$$g_data(_P: bool, _offset: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_data := (if _P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_data);
    return;
}



const _WATCHED_VALUE_$$uniforms: int;

procedure {:inline 1} _LOG_READ_$$uniforms(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$uniforms;



implementation {:inline 1} _LOG_READ_$$uniforms(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$uniforms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniforms == _value then true else _READ_HAS_OCCURRED_$$uniforms);
    return;
}



procedure _CHECK_READ_$$uniforms(_P: bool, _offset: int, _value: int);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$uniforms);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$uniforms: bool;

procedure {:inline 1} _LOG_WRITE_$$uniforms(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$uniforms, _WRITE_READ_BENIGN_FLAG_$$uniforms;



implementation {:inline 1} _LOG_WRITE_$$uniforms(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$uniforms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniforms == _value then true else _WRITE_HAS_OCCURRED_$$uniforms);
    _WRITE_READ_BENIGN_FLAG_$$uniforms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniforms == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$uniforms);
    return;
}



procedure _CHECK_WRITE_$$uniforms(_P: bool, _offset: int, _value: int);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniforms != _value);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniforms != _value);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$uniforms(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$uniforms;



implementation {:inline 1} _LOG_ATOMIC_$$uniforms(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$uniforms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$uniforms);
    return;
}



procedure _CHECK_ATOMIC_$$uniforms(_P: bool, _offset: int);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset);
  requires {:source_name "uniforms"} {:array "$$uniforms"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$uniforms(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$uniforms;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$uniforms(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$uniforms := (if _P && _WRITE_HAS_OCCURRED_$$uniforms && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$uniforms);
    return;
}



const _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni: int;

procedure {:inline 1} _LOG_READ_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;



implementation {:inline 1} _LOG_READ_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni == _value then true else _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni);
    return;
}



procedure _CHECK_READ_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni, _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni;



implementation {:inline 1} _LOG_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni);
    return;
}



procedure _CHECK_WRITE_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int, _value: int);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ10uniformAddPfS_iiiE3uni != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$_ZZ10uniformAddPfS_iiiE3uni"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ10uniformAddPfS_iiiE3uni);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ10uniformAddPfS_iiiE3uni;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_data;
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
    havoc $$g_data;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ10uniformAddPfS_iiiE3uni;
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
