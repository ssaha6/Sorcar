type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$delta"} {:global} {:elem_width 32} {:source_name "delta"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$delta: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$delta: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$delta: bool;

axiom {:array_info "$$ly"} {:global} {:elem_width 32} {:source_name "ly"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ly: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ly: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ly: bool;

var {:source_name "w"} {:global} $$w: [int]int;

axiom {:array_info "$$w"} {:global} {:elem_width 32} {:source_name "w"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$w: bool;

var {:source_name "oldw"} {:global} $$oldw: [int]int;

axiom {:array_info "$$oldw"} {:global} {:elem_width 32} {:source_name "oldw"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$oldw: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$oldw: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$oldw: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

procedure {:source_name "bpnn_adjust_weights_ocl"} {:kernel} $bpnn_adjust_weights_ocl($hid: int, $in: int);
  requires {:sourceloc_num 0} {:thread 1} (if $hid == 16 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $in == 65536 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$delta && !_WRITE_HAS_OCCURRED_$$delta && !_ATOMIC_HAS_OCCURRED_$$delta;
  requires !_READ_HAS_OCCURRED_$$ly && !_WRITE_HAS_OCCURRED_$$ly && !_ATOMIC_HAS_OCCURRED_$$ly;
  requires !_READ_HAS_OCCURRED_$$w && !_WRITE_HAS_OCCURRED_$$w && !_ATOMIC_HAS_OCCURRED_$$w;
  requires !_READ_HAS_OCCURRED_$$oldw && !_WRITE_HAS_OCCURRED_$$oldw && !_ATOMIC_HAS_OCCURRED_$$oldw;
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
  modifies _READ_HAS_OCCURRED_$$oldw, _READ_HAS_OCCURRED_$$w, _WRITE_HAS_OCCURRED_$$w, _WRITE_READ_BENIGN_FLAG_$$w, _WRITE_READ_BENIGN_FLAG_$$w, _WRITE_HAS_OCCURRED_$$oldw, _WRITE_READ_BENIGN_FLAG_$$oldw, _WRITE_READ_BENIGN_FLAG_$$oldw, $$w, $$oldw, _TRACKING;



implementation {:source_name "bpnn_adjust_weights_ocl"} {:kernel} $bpnn_adjust_weights_ocl($hid: int, $in: int)
{
  var v0$1: int;
  var v0$2: int;
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
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
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
    v0$1 := group_id_y$1;
    v0$2 := group_id_y$2;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := local_id_y$1;
    v2$2 := local_id_y$2;
    v3$1 := BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD($hid, 1), 16), v0$1), BV32_MUL(BV32_ADD($hid, 1), v2$1)), v1$1), 1), BV32_ADD($hid, 1));
    v3$2 := BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD($hid, 1), 16), v0$2), BV32_MUL(BV32_ADD($hid, 1), v2$2)), v1$2), 1), BV32_ADD($hid, 1));
    v4$1 := BV32_ADD(BV32_ADD(BV32_MUL(16, v0$1), v2$1), 1);
    v4$2 := BV32_ADD(BV32_ADD(BV32_MUL(16, v0$2), v2$2), 1);
    v5$1 := BV32_ADD(v1$1, 1);
    v5$2 := BV32_ADD(v1$2, 1);
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$oldw(true, v3$1, $$oldw[v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$oldw(true, v3$2, $$oldw[v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$oldw"} true;
    v8$1 := $$oldw[v3$1];
    v8$2 := $$oldw[v3$2];
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$w(true, v3$1, $$w[v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$w(true, v3$2, $$w[v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$w"} true;
    v9$1 := $$w[v3$1];
    v9$2 := $$w[v3$2];
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$w(true, v3$1, FADD32(v9$1, FADD32(FMUL32(FMUL32(1050253722, v6$1), v7$1), FMUL32(1050253722, v8$1))), $$w[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$w(true, v3$2, FADD32(v9$2, FADD32(FMUL32(FMUL32(1050253722, v6$2), v7$2), FMUL32(1050253722, v8$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$w"} true;
    $$w[v3$1] := FADD32(v9$1, FADD32(FMUL32(FMUL32(1050253722, v6$1), v7$1), FMUL32(1050253722, v8$1)));
    $$w[v3$2] := FADD32(v9$2, FADD32(FMUL32(FMUL32(1050253722, v6$2), v7$2), FMUL32(1050253722, v8$2)));
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$oldw(true, v3$1, $$oldw[v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$oldw(true, v3$2, $$oldw[v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$oldw"} true;
    v12$1 := $$oldw[v3$1];
    v12$2 := $$oldw[v3$2];
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$oldw(true, v3$1, FADD32(FMUL32(FMUL32(1050253722, v10$1), v11$1), FMUL32(1050253722, v12$1)), $$oldw[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldw(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$oldw(true, v3$2, FADD32(FMUL32(FMUL32(1050253722, v10$2), v11$2), FMUL32(1050253722, v12$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$oldw"} true;
    $$oldw[v3$1] := FADD32(FMUL32(FMUL32(1050253722, v10$1), v11$1), FMUL32(1050253722, v12$1));
    $$oldw[v3$2] := FADD32(FMUL32(FMUL32(1050253722, v10$2), v11$2), FMUL32(1050253722, v12$2));
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(-1, 0);
    v13$1 := v2$1 == 0;
    v13$2 := v2$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v13$1 then v13$1 else p0$1);
    p0$2 := (if v13$2 then v13$2 else p0$2);
    v14$1 := (if p0$1 then v0$1 == 0 else v14$1);
    v14$2 := (if p0$2 then v0$2 == 0 else v14$2);
    p1$1 := (if p0$1 && v14$1 then v14$1 else p1$1);
    p1$2 := (if p0$2 && v14$2 then v14$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p1$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p1$2 then _HAVOC_int$2 else v15$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$oldw(p1$1, v5$1, $$oldw[v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$oldw(p1$2, v5$2, $$oldw[v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$oldw"} true;
    v16$1 := (if p1$1 then $$oldw[v5$1] else v16$1);
    v16$2 := (if p1$2 then $$oldw[v5$2] else v16$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$w(p1$1, v5$1, $$w[v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$w(p1$2, v5$2, $$w[v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$w"} true;
    v17$1 := (if p1$1 then $$w[v5$1] else v17$1);
    v17$2 := (if p1$2 then $$w[v5$2] else v17$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$w(p1$1, v5$1, FADD32(v17$1, FADD32(FMUL32(1050253722, v15$1), FMUL32(1050253722, v16$1))), $$w[v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(p1$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$w(p1$2, v5$2, FADD32(v17$2, FADD32(FMUL32(1050253722, v15$2), FMUL32(1050253722, v16$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$w"} true;
    $$w[v5$1] := (if p1$1 then FADD32(v17$1, FADD32(FMUL32(1050253722, v15$1), FMUL32(1050253722, v16$1))) else $$w[v5$1]);
    $$w[v5$2] := (if p1$2 then FADD32(v17$2, FADD32(FMUL32(1050253722, v15$2), FMUL32(1050253722, v16$2))) else $$w[v5$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p1$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p1$2 then _HAVOC_int$2 else v18$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$oldw(p1$1, v5$1, $$oldw[v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$oldw(p1$2, v5$2, $$oldw[v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$oldw"} true;
    v19$1 := (if p1$1 then $$oldw[v5$1] else v19$1);
    v19$2 := (if p1$2 then $$oldw[v5$2] else v19$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$oldw(p1$1, v5$1, FADD32(FMUL32(1050253722, v18$1), FMUL32(1050253722, v19$1)), $$oldw[v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldw(p1$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$oldw(p1$2, v5$2, FADD32(FMUL32(1050253722, v18$2), FMUL32(1050253722, v19$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$oldw"} true;
    $$oldw[v5$1] := (if p1$1 then FADD32(FMUL32(1050253722, v18$1), FMUL32(1050253722, v19$1)) else $$oldw[v5$1]);
    $$oldw[v5$2] := (if p1$2 then FADD32(FMUL32(1050253722, v18$2), FMUL32(1050253722, v19$2)) else $$oldw[v5$2]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 4096 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$w, $$oldw, _TRACKING;



const _WATCHED_VALUE_$$delta: int;

procedure {:inline 1} _LOG_READ_$$delta(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$delta;



implementation {:inline 1} _LOG_READ_$$delta(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$delta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$delta == _value then true else _READ_HAS_OCCURRED_$$delta);
    return;
}



procedure _CHECK_READ_$$delta(_P: bool, _offset: int, _value: int);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$delta);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$delta: bool;

procedure {:inline 1} _LOG_WRITE_$$delta(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$delta, _WRITE_READ_BENIGN_FLAG_$$delta;



implementation {:inline 1} _LOG_WRITE_$$delta(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$delta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$delta == _value then true else _WRITE_HAS_OCCURRED_$$delta);
    _WRITE_READ_BENIGN_FLAG_$$delta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$delta == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$delta);
    return;
}



procedure _CHECK_WRITE_$$delta(_P: bool, _offset: int, _value: int);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$delta != _value);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$delta != _value);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$delta(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$delta;



implementation {:inline 1} _LOG_ATOMIC_$$delta(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$delta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$delta);
    return;
}



procedure _CHECK_ATOMIC_$$delta(_P: bool, _offset: int);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset);
  requires {:source_name "delta"} {:array "$$delta"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$delta(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$delta;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$delta(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$delta := (if _P && _WRITE_HAS_OCCURRED_$$delta && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$delta);
    return;
}



const _WATCHED_VALUE_$$ly: int;

procedure {:inline 1} _LOG_READ_$$ly(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ly;



implementation {:inline 1} _LOG_READ_$$ly(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ly := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ly == _value then true else _READ_HAS_OCCURRED_$$ly);
    return;
}



procedure _CHECK_READ_$$ly(_P: bool, _offset: int, _value: int);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ly);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ly: bool;

procedure {:inline 1} _LOG_WRITE_$$ly(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ly, _WRITE_READ_BENIGN_FLAG_$$ly;



implementation {:inline 1} _LOG_WRITE_$$ly(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ly := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ly == _value then true else _WRITE_HAS_OCCURRED_$$ly);
    _WRITE_READ_BENIGN_FLAG_$$ly := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ly == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ly);
    return;
}



procedure _CHECK_WRITE_$$ly(_P: bool, _offset: int, _value: int);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ly != _value);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ly != _value);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ly(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ly;



implementation {:inline 1} _LOG_ATOMIC_$$ly(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ly := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ly);
    return;
}



procedure _CHECK_ATOMIC_$$ly(_P: bool, _offset: int);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset);
  requires {:source_name "ly"} {:array "$$ly"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ly(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ly;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ly(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ly := (if _P && _WRITE_HAS_OCCURRED_$$ly && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ly);
    return;
}



const _WATCHED_VALUE_$$w: int;

procedure {:inline 1} _LOG_READ_$$w(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_READ_$$w(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _READ_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_READ_$$w(_P: bool, _offset: int, _value: int);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$w);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$w: bool;

procedure {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$w, _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _WRITE_HAS_OCCURRED_$$w);
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



procedure _CHECK_WRITE_$$w(_P: bool, _offset: int, _value: int);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_ATOMIC_$$w(_P: bool, _offset: int);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



const _WATCHED_VALUE_$$oldw: int;

procedure {:inline 1} _LOG_READ_$$oldw(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$oldw;



implementation {:inline 1} _LOG_READ_$$oldw(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$oldw := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldw == _value then true else _READ_HAS_OCCURRED_$$oldw);
    return;
}



procedure _CHECK_READ_$$oldw(_P: bool, _offset: int, _value: int);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$oldw);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$oldw: bool;

procedure {:inline 1} _LOG_WRITE_$$oldw(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$oldw, _WRITE_READ_BENIGN_FLAG_$$oldw;



implementation {:inline 1} _LOG_WRITE_$$oldw(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$oldw := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldw == _value then true else _WRITE_HAS_OCCURRED_$$oldw);
    _WRITE_READ_BENIGN_FLAG_$$oldw := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldw == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$oldw);
    return;
}



procedure _CHECK_WRITE_$$oldw(_P: bool, _offset: int, _value: int);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldw != _value);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldw != _value);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$oldw(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$oldw;



implementation {:inline 1} _LOG_ATOMIC_$$oldw(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$oldw := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$oldw);
    return;
}



procedure _CHECK_ATOMIC_$$oldw(_P: bool, _offset: int);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset);
  requires {:source_name "oldw"} {:array "$$oldw"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldw(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$oldw;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldw(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$oldw := (if _P && _WRITE_HAS_OCCURRED_$$oldw && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$oldw);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$w;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$w;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$w;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$oldw;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$oldw;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$oldw;
    goto anon2;

  anon2:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon5;

  anon5:
    havoc _TRACKING;
    return;

  anon7_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$w;
    goto anon4;

  anon4:
    havoc $$oldw;
    goto anon5;

  anon6_Then:
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
