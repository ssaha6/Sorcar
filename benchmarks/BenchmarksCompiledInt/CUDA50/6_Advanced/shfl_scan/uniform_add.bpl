type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data"} {:global} $$data: [int]int;

axiom {:array_info "$$data"} {:global} {:elem_width 32} {:source_name "data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

axiom {:array_info "$$partial_sums"} {:global} {:elem_width 32} {:source_name "partial_sums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$partial_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$partial_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$partial_sums: bool;

var {:source_name "buf"} {:group_shared} $$_ZZ11uniform_addPiS_iE3buf: [bv1][int]int;

axiom {:array_info "$$_ZZ11uniform_addPiS_iE3buf"} {:group_shared} {:elem_width 32} {:source_name "buf"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf: bool;

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

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

procedure {:source_name "uniform_add"} {:kernel} $_Z11uniform_addPiS_i($len: int);
  requires {:sourceloc_num 0} {:thread 1} (if $len == 65536 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$partial_sums && !_WRITE_HAS_OCCURRED_$$partial_sums && !_ATOMIC_HAS_OCCURRED_$$partial_sums;
  requires !_READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && !_WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && !_ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;
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
  modifies $$_ZZ11uniform_addPiS_iE3buf, _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf, $$data, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:source_name "uniform_add"} {:kernel} $_Z11uniform_addPiS_i($len: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
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


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SGT(v0$1, $len);
    v1$2 := BV32_SGT(v0$2, $len);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    v2$1 := (if p1$1 then local_id_x$1 == 0 else v2$1);
    v2$2 := (if p1$2 then local_id_x$2 == 0 else v2$2);
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p2$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p2$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ11uniform_addPiS_iE3buf(p2$1, 0, v3$1, $$_ZZ11uniform_addPiS_iE3buf[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf(p2$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ11uniform_addPiS_iE3buf(p2$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11uniform_addPiS_iE3buf"} true;
    $$_ZZ11uniform_addPiS_iE3buf[1bv1][0] := (if p2$1 then v3$1 else $$_ZZ11uniform_addPiS_iE3buf[1bv1][0]);
    $$_ZZ11uniform_addPiS_iE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p2$2 then v3$2 else $$_ZZ11uniform_addPiS_iE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 8} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$_ZZ11uniform_addPiS_iE3buf(p1$1, 0, $$_ZZ11uniform_addPiS_iE3buf[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$_ZZ11uniform_addPiS_iE3buf(p1$2, 0, $$_ZZ11uniform_addPiS_iE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11uniform_addPiS_iE3buf"} true;
    v4$1 := (if p1$1 then $$_ZZ11uniform_addPiS_iE3buf[1bv1][0] else v4$1);
    v4$2 := (if p1$2 then $$_ZZ11uniform_addPiS_iE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$data(p1$1, v0$1, $$data[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$data(p1$2, v0$2, $$data[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v5$1 := (if p1$1 then $$data[v0$1] else v5$1);
    v5$2 := (if p1$2 then $$data[v0$2] else v5$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$data(p1$1, v0$1, BV32_ADD(v5$1, v4$1), $$data[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$data(p1$2, v0$2, BV32_ADD(v5$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v0$1] := (if p1$1 then BV32_ADD(v5$1, v4$1) else $$data[v0$1]);
    $$data[v0$2] := (if p1$2 then BV32_ADD(v5$2, v4$2) else $$data[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 255 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ11uniform_addPiS_iE3buf, $$data, _TRACKING;



const _WATCHED_VALUE_$$data: int;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
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



const _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;



implementation {:inline 1} _LOG_READ_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf == _value then true else _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf);
    return;
}



procedure _CHECK_READ_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11uniform_addPiS_iE3buf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ11uniform_addPiS_iE3buf"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11uniform_addPiS_iE3buf);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11uniform_addPiS_iE3buf;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$data;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ11uniform_addPiS_iE3buf;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
