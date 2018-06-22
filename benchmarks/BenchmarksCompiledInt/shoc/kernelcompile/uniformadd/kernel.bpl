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

procedure {:source_name "uniformAdd"} {:kernel} $uniformAdd($n: int, $blockOffset: int, $baseIndex: int);
  requires !_READ_HAS_OCCURRED_$$g_data && !_WRITE_HAS_OCCURRED_$$g_data && !_ATOMIC_HAS_OCCURRED_$$g_data;
  requires !_READ_HAS_OCCURRED_$$uniforms && !_WRITE_HAS_OCCURRED_$$uniforms && !_ATOMIC_HAS_OCCURRED_$$uniforms;
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
  modifies $$g_data, _TRACKING, _READ_HAS_OCCURRED_$$g_data, _WRITE_HAS_OCCURRED_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:source_name "uniformAdd"} {:kernel} $uniformAdd($n: int, $blockOffset: int, $baseIndex: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  __partitioned_block_$0_0:
    havoc v0$1, v0$2;
    v1$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, BV32_SHL(group_size_x, 1)), $baseIndex), local_id_x$1);
    v1$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, BV32_SHL(group_size_x, 1)), $baseIndex), local_id_x$2);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 2} $bugle_barrier_duplicated_0(-1, 0);
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$g_data(true, v1$1, $$g_data[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$g_data(true, v1$2, $$g_data[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v2$1 := $$g_data[v1$1];
    v2$2 := $$g_data[v1$2];
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$g_data(true, v1$1, FADD32(v2$1, v0$1), $$g_data[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(true, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$g_data(true, v1$2, FADD32(v2$2, v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_data"} true;
    $$g_data[v1$1] := FADD32(v2$1, v0$1);
    $$g_data[v1$2] := FADD32(v2$2, v0$2);
    v3$1 := BV32_ULT(BV32_ADD(local_id_x$1, group_size_x), $n);
    v3$2 := BV32_ULT(BV32_ADD(local_id_x$2, group_size_x), $n);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    v4$1 := (if p0$1 then BV32_ADD(v1$1, group_size_x) else v4$1);
    v4$2 := (if p0$2 then BV32_ADD(v1$2, group_size_x) else v4$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$g_data(p0$1, v4$1, $$g_data[v4$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$g_data(p0$2, v4$2, $$g_data[v4$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v5$1 := (if p0$1 then $$g_data[v4$1] else v5$1);
    v5$2 := (if p0$2 then $$g_data[v4$2] else v5$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$g_data(p0$1, v4$1, FADD32(v5$1, v0$1), $$g_data[v4$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(p0$2, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$g_data(p0$2, v4$2, FADD32(v5$2, v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_data"} true;
    $$g_data[v4$1] := (if p0$1 then FADD32(v5$1, v0$1) else $$g_data[v4$1]);
    $$g_data[v4$2] := (if p0$2 then FADD32(v5$2, v0$2) else $$g_data[v4$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 2 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$g_data, _TRACKING;



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



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_data;
    goto anon1;

  anon1:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon3;

  anon3:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$g_data;
    goto anon3;

  anon4_Then:
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
