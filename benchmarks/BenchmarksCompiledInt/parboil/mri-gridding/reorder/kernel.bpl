type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$idxValue_g"} {:global} {:elem_width 32} {:source_name "idxValue_g"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$idxValue_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$idxValue_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$idxValue_g: bool;

axiom {:array_info "$$samples_g"} {:global} {:elem_width 32} {:source_name "samples_g"} {:source_elem_width 192} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$samples_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$samples_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$samples_g: bool;

var {:source_name "sortedSample_g"} {:global} $$sortedSample_g: [int]int;

axiom {:array_info "$$sortedSample_g"} {:global} {:elem_width 32} {:source_name "sortedSample_g"} {:source_elem_width 192} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sortedSample_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sortedSample_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sortedSample_g: bool;

axiom {:array_info "$$pt"} {:elem_width 32} {:source_name "pt"} {:source_elem_width 192} {:source_dimensions "1"} true;

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

procedure {:source_name "reorder_kernel"} {:kernel} $reorder_kernel($n: int);
  requires !_READ_HAS_OCCURRED_$$idxValue_g && !_WRITE_HAS_OCCURRED_$$idxValue_g && !_ATOMIC_HAS_OCCURRED_$$idxValue_g;
  requires !_READ_HAS_OCCURRED_$$samples_g && !_WRITE_HAS_OCCURRED_$$samples_g && !_ATOMIC_HAS_OCCURRED_$$samples_g;
  requires !_READ_HAS_OCCURRED_$$sortedSample_g && !_WRITE_HAS_OCCURRED_$$sortedSample_g && !_ATOMIC_HAS_OCCURRED_$$sortedSample_g;
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
  modifies _WRITE_HAS_OCCURRED_$$sortedSample_g, _WRITE_READ_BENIGN_FLAG_$$sortedSample_g, _WRITE_READ_BENIGN_FLAG_$$sortedSample_g;



implementation {:source_name "reorder_kernel"} {:kernel} $reorder_kernel($n: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
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
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $n);
    v1$2 := BV32_ULT(v0$2, $n);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    $$pt$0$1 := (if p0$1 then v3$1 else $$pt$0$1);
    $$pt$0$2 := (if p0$2 then v3$2 else $$pt$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    $$pt$1$1 := (if p0$1 then v4$1 else $$pt$1$1);
    $$pt$1$2 := (if p0$2 then v4$2 else $$pt$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    $$pt$2$1 := (if p0$1 then v5$1 else $$pt$2$1);
    $$pt$2$2 := (if p0$2 then v5$2 else $$pt$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p0$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_int$2 else v6$2);
    $$pt$3$1 := (if p0$1 then v6$1 else $$pt$3$1);
    $$pt$3$2 := (if p0$2 then v6$2 else $$pt$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p0$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p0$2 then _HAVOC_int$2 else v7$2);
    $$pt$4$1 := (if p0$1 then v7$1 else $$pt$4$1);
    $$pt$4$2 := (if p0$2 then v7$2 else $$pt$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p0$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p0$2 then _HAVOC_int$2 else v8$2);
    $$pt$5$1 := (if p0$1 then v8$1 else $$pt$5$1);
    $$pt$5$2 := (if p0$2 then v8$2 else $$pt$5$2);
    v9$1 := (if p0$1 then $$pt$0$1 else v9$1);
    v9$2 := (if p0$2 then $$pt$0$2 else v9$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_MUL(v0$1, 6), v9$1, $$sortedSample_g[BV32_MUL(v0$1, 6)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_MUL(v0$2, 6));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_MUL(v0$2, 6), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_MUL(v0$1, 6)] := (if p0$1 then v9$1 else $$sortedSample_g[BV32_MUL(v0$1, 6)]);
    $$sortedSample_g[BV32_MUL(v0$2, 6)] := (if p0$2 then v9$2 else $$sortedSample_g[BV32_MUL(v0$2, 6)]);
    v10$1 := (if p0$1 then $$pt$1$1 else v10$1);
    v10$2 := (if p0$2 then $$pt$1$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_ADD(BV32_MUL(v0$1, 6), 1), v10$1, $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 1), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 1)] := (if p0$1 then v10$1 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 1)]);
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 1)] := (if p0$2 then v10$2 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 1)]);
    v11$1 := (if p0$1 then $$pt$2$1 else v11$1);
    v11$2 := (if p0$2 then $$pt$2$2 else v11$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_ADD(BV32_MUL(v0$1, 6), 2), v11$1, $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 2), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 2)] := (if p0$1 then v11$1 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 2)]);
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 2)] := (if p0$2 then v11$2 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 2)]);
    v12$1 := (if p0$1 then $$pt$3$1 else v12$1);
    v12$2 := (if p0$2 then $$pt$3$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_ADD(BV32_MUL(v0$1, 6), 3), v12$1, $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 3), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 3)] := (if p0$1 then v12$1 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 3)]);
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 3)] := (if p0$2 then v12$2 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 3)]);
    v13$1 := (if p0$1 then $$pt$4$1 else v13$1);
    v13$2 := (if p0$2 then $$pt$4$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_ADD(BV32_MUL(v0$1, 6), 4), v13$1, $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 4), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 4)] := (if p0$1 then v13$1 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 4)]);
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 4)] := (if p0$2 then v13$2 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 4)]);
    v14$1 := (if p0$1 then $$pt$5$1 else v14$1);
    v14$2 := (if p0$2 then $$pt$5$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$sortedSample_g(p0$1, BV32_ADD(BV32_MUL(v0$1, 6), 5), v14$1, $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 5));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$sortedSample_g(p0$2, BV32_ADD(BV32_MUL(v0$2, 6), 5), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedSample_g"} true;
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 5)] := (if p0$1 then v14$1 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$1, 6), 5)]);
    $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 5)] := (if p0$2 then v14$2 else $$sortedSample_g[BV32_ADD(BV32_MUL(v0$2, 6), 5)]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 2594 then 1 else 0) != 0;

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

var $$pt$0$1: int;

var $$pt$0$2: int;

var $$pt$1$1: int;

var $$pt$1$2: int;

var $$pt$2$1: int;

var $$pt$2$2: int;

var $$pt$3$1: int;

var $$pt$3$2: int;

var $$pt$4$1: int;

var $$pt$4$2: int;

var $$pt$5$1: int;

var $$pt$5$2: int;

const _WATCHED_VALUE_$$idxValue_g: int;

procedure {:inline 1} _LOG_READ_$$idxValue_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$idxValue_g;



implementation {:inline 1} _LOG_READ_$$idxValue_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$idxValue_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idxValue_g == _value then true else _READ_HAS_OCCURRED_$$idxValue_g);
    return;
}



procedure _CHECK_READ_$$idxValue_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$idxValue_g);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$idxValue_g: bool;

procedure {:inline 1} _LOG_WRITE_$$idxValue_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$idxValue_g, _WRITE_READ_BENIGN_FLAG_$$idxValue_g;



implementation {:inline 1} _LOG_WRITE_$$idxValue_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$idxValue_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idxValue_g == _value then true else _WRITE_HAS_OCCURRED_$$idxValue_g);
    _WRITE_READ_BENIGN_FLAG_$$idxValue_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idxValue_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$idxValue_g);
    return;
}



procedure _CHECK_WRITE_$$idxValue_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idxValue_g != _value);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$idxValue_g != _value);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$idxValue_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$idxValue_g;



implementation {:inline 1} _LOG_ATOMIC_$$idxValue_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$idxValue_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$idxValue_g);
    return;
}



procedure _CHECK_ATOMIC_$$idxValue_g(_P: bool, _offset: int);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "idxValue_g"} {:array "$$idxValue_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$idxValue_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$idxValue_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$idxValue_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$idxValue_g := (if _P && _WRITE_HAS_OCCURRED_$$idxValue_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$idxValue_g);
    return;
}



const _WATCHED_VALUE_$$samples_g: int;

procedure {:inline 1} _LOG_READ_$$samples_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$samples_g;



implementation {:inline 1} _LOG_READ_$$samples_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$samples_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$samples_g == _value then true else _READ_HAS_OCCURRED_$$samples_g);
    return;
}



procedure _CHECK_READ_$$samples_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$samples_g);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$samples_g: bool;

procedure {:inline 1} _LOG_WRITE_$$samples_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$samples_g, _WRITE_READ_BENIGN_FLAG_$$samples_g;



implementation {:inline 1} _LOG_WRITE_$$samples_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$samples_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$samples_g == _value then true else _WRITE_HAS_OCCURRED_$$samples_g);
    _WRITE_READ_BENIGN_FLAG_$$samples_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$samples_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$samples_g);
    return;
}



procedure _CHECK_WRITE_$$samples_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$samples_g != _value);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$samples_g != _value);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$samples_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$samples_g;



implementation {:inline 1} _LOG_ATOMIC_$$samples_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$samples_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$samples_g);
    return;
}



procedure _CHECK_ATOMIC_$$samples_g(_P: bool, _offset: int);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "samples_g"} {:array "$$samples_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$samples_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$samples_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$samples_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$samples_g := (if _P && _WRITE_HAS_OCCURRED_$$samples_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$samples_g);
    return;
}



const _WATCHED_VALUE_$$sortedSample_g: int;

procedure {:inline 1} _LOG_READ_$$sortedSample_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sortedSample_g;



implementation {:inline 1} _LOG_READ_$$sortedSample_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sortedSample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedSample_g == _value then true else _READ_HAS_OCCURRED_$$sortedSample_g);
    return;
}



procedure _CHECK_READ_$$sortedSample_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sortedSample_g);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sortedSample_g: bool;

procedure {:inline 1} _LOG_WRITE_$$sortedSample_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sortedSample_g, _WRITE_READ_BENIGN_FLAG_$$sortedSample_g;



implementation {:inline 1} _LOG_WRITE_$$sortedSample_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sortedSample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedSample_g == _value then true else _WRITE_HAS_OCCURRED_$$sortedSample_g);
    _WRITE_READ_BENIGN_FLAG_$$sortedSample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedSample_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sortedSample_g);
    return;
}



procedure _CHECK_WRITE_$$sortedSample_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedSample_g != _value);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedSample_g != _value);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sortedSample_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sortedSample_g;



implementation {:inline 1} _LOG_ATOMIC_$$sortedSample_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sortedSample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sortedSample_g);
    return;
}



procedure _CHECK_ATOMIC_$$sortedSample_g(_P: bool, _offset: int);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "sortedSample_g"} {:array "$$sortedSample_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sortedSample_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedSample_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sortedSample_g := (if _P && _WRITE_HAS_OCCURRED_$$sortedSample_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sortedSample_g);
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
