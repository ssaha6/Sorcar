type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "dataBase"} {:global} $$dataBase: [int]int;

axiom {:array_info "$$dataBase"} {:global} {:elem_width 32} {:source_name "dataBase"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dataBase: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dataBase: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dataBase: bool;

axiom {:array_info "$$interBase"} {:global} {:elem_width 32} {:source_name "interBase"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$interBase: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$interBase: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$interBase: bool;

var {:source_name "uni"} {:group_shared} $$uniformAdd.uni: [bv1][int]int;

axiom {:array_info "$$uniformAdd.uni"} {:group_shared} {:elem_width 32} {:source_name "uni"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$uniformAdd.uni: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$uniformAdd.uni: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni: bool;

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

procedure {:source_name "uniformAdd"} {:kernel} $uniformAdd($n: int, $data_offset: int, $inter_offset: int);
  requires !_READ_HAS_OCCURRED_$$dataBase && !_WRITE_HAS_OCCURRED_$$dataBase && !_ATOMIC_HAS_OCCURRED_$$dataBase;
  requires !_READ_HAS_OCCURRED_$$interBase && !_WRITE_HAS_OCCURRED_$$interBase && !_ATOMIC_HAS_OCCURRED_$$interBase;
  requires !_READ_HAS_OCCURRED_$$uniformAdd.uni && !_WRITE_HAS_OCCURRED_$$uniformAdd.uni && !_ATOMIC_HAS_OCCURRED_$$uniformAdd.uni;
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
  modifies $$uniformAdd.uni, _WRITE_HAS_OCCURRED_$$uniformAdd.uni, _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni, _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni, $$dataBase, _TRACKING, _READ_HAS_OCCURRED_$$uniformAdd.uni, _READ_HAS_OCCURRED_$$dataBase, _WRITE_HAS_OCCURRED_$$dataBase, _WRITE_READ_BENIGN_FLAG_$$dataBase, _WRITE_READ_BENIGN_FLAG_$$dataBase;



implementation {:source_name "uniformAdd"} {:kernel} $uniformAdd($n: int, $data_offset: int, $inter_offset: int)
{
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: bool;
  var v7$2: bool;
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
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1 == 0;
    v0$2 := local_id_x$2 == 0;
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
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p0$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p0$2 then _HAVOC_int$2 else v1$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$uniformAdd.uni(p0$1, 0, v1$1, $$uniformAdd.uni[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$uniformAdd.uni(p0$2, 0, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$uniformAdd.uni"} true;
    $$uniformAdd.uni[1bv1][0] := (if p0$1 then v1$1 else $$uniformAdd.uni[1bv1][0]);
    $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v1$2 else $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 5} $bugle_barrier_duplicated_0(-1, 0);
    v2$1 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 2), group_size_x), local_id_x$1);
    v2$2 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 2), group_size_x), local_id_x$2);
    v3$1 := BV32_ADD(v2$1, group_size_x);
    v3$2 := BV32_ADD(v2$2, group_size_x);
    v4$1 := BV32_ULT(v2$1, $n);
    v4$2 := BV32_ULT(v2$2, $n);
    p2$1 := (if v4$1 then v4$1 else p2$1);
    p2$2 := (if v4$2 then v4$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$uniformAdd.uni(p2$1, 0, $$uniformAdd.uni[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$uniformAdd.uni(p2$2, 0, $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$uniformAdd.uni"} true;
    v5$1 := (if p2$1 then $$uniformAdd.uni[1bv1][0] else v5$1);
    v5$2 := (if p2$2 then $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v5$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$dataBase(p2$1, BV32_ADD($data_offset, v2$1), $$dataBase[BV32_ADD($data_offset, v2$1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$dataBase(p2$2, BV32_ADD($data_offset, v2$2), $$dataBase[BV32_ADD($data_offset, v2$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dataBase"} true;
    v6$1 := (if p2$1 then $$dataBase[BV32_ADD($data_offset, v2$1)] else v6$1);
    v6$2 := (if p2$2 then $$dataBase[BV32_ADD($data_offset, v2$2)] else v6$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$dataBase(p2$1, BV32_ADD($data_offset, v2$1), BV32_ADD(v6$1, v5$1), $$dataBase[BV32_ADD($data_offset, v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dataBase(p2$2, BV32_ADD($data_offset, v2$2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$dataBase(p2$2, BV32_ADD($data_offset, v2$2), BV32_ADD(v6$2, v5$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dataBase"} true;
    $$dataBase[BV32_ADD($data_offset, v2$1)] := (if p2$1 then BV32_ADD(v6$1, v5$1) else $$dataBase[BV32_ADD($data_offset, v2$1)]);
    $$dataBase[BV32_ADD($data_offset, v2$2)] := (if p2$2 then BV32_ADD(v6$2, v5$2) else $$dataBase[BV32_ADD($data_offset, v2$2)]);
    v7$1 := BV32_ULT(v3$1, $n);
    v7$2 := BV32_ULT(v3$2, $n);
    p4$1 := (if v7$1 then v7$1 else p4$1);
    p4$2 := (if v7$2 then v7$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$uniformAdd.uni(p4$1, 0, $$uniformAdd.uni[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$uniformAdd.uni(p4$2, 0, $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$uniformAdd.uni"} true;
    v8$1 := (if p4$1 then $$uniformAdd.uni[1bv1][0] else v8$1);
    v8$2 := (if p4$2 then $$uniformAdd.uni[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v8$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$dataBase(p4$1, BV32_ADD($data_offset, v3$1), $$dataBase[BV32_ADD($data_offset, v3$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$dataBase(p4$2, BV32_ADD($data_offset, v3$2), $$dataBase[BV32_ADD($data_offset, v3$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dataBase"} true;
    v9$1 := (if p4$1 then $$dataBase[BV32_ADD($data_offset, v3$1)] else v9$1);
    v9$2 := (if p4$2 then $$dataBase[BV32_ADD($data_offset, v3$2)] else v9$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$dataBase(p4$1, BV32_ADD($data_offset, v3$1), BV32_ADD(v9$1, v8$1), $$dataBase[BV32_ADD($data_offset, v3$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dataBase(p4$2, BV32_ADD($data_offset, v3$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$dataBase(p4$2, BV32_ADD($data_offset, v3$2), BV32_ADD(v9$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dataBase"} true;
    $$dataBase[BV32_ADD($data_offset, v3$1)] := (if p4$1 then BV32_ADD(v9$1, v8$1) else $$dataBase[BV32_ADD($data_offset, v3$1)]);
    $$dataBase[BV32_ADD($data_offset, v3$2)] := (if p4$2 then BV32_ADD(v9$2, v8$2) else $$dataBase[BV32_ADD($data_offset, v3$2)]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 16385 then 1 else 0) != 0;

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
  modifies $$uniformAdd.uni, $$dataBase, _TRACKING;



const _WATCHED_VALUE_$$dataBase: int;

procedure {:inline 1} _LOG_READ_$$dataBase(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dataBase;



implementation {:inline 1} _LOG_READ_$$dataBase(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dataBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dataBase == _value then true else _READ_HAS_OCCURRED_$$dataBase);
    return;
}



procedure _CHECK_READ_$$dataBase(_P: bool, _offset: int, _value: int);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dataBase);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dataBase: bool;

procedure {:inline 1} _LOG_WRITE_$$dataBase(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dataBase, _WRITE_READ_BENIGN_FLAG_$$dataBase;



implementation {:inline 1} _LOG_WRITE_$$dataBase(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dataBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dataBase == _value then true else _WRITE_HAS_OCCURRED_$$dataBase);
    _WRITE_READ_BENIGN_FLAG_$$dataBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dataBase == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dataBase);
    return;
}



procedure _CHECK_WRITE_$$dataBase(_P: bool, _offset: int, _value: int);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dataBase != _value);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dataBase != _value);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dataBase(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dataBase;



implementation {:inline 1} _LOG_ATOMIC_$$dataBase(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dataBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dataBase);
    return;
}



procedure _CHECK_ATOMIC_$$dataBase(_P: bool, _offset: int);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset);
  requires {:source_name "dataBase"} {:array "$$dataBase"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dataBase(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dataBase;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dataBase(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dataBase := (if _P && _WRITE_HAS_OCCURRED_$$dataBase && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dataBase);
    return;
}



const _WATCHED_VALUE_$$interBase: int;

procedure {:inline 1} _LOG_READ_$$interBase(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$interBase;



implementation {:inline 1} _LOG_READ_$$interBase(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$interBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$interBase == _value then true else _READ_HAS_OCCURRED_$$interBase);
    return;
}



procedure _CHECK_READ_$$interBase(_P: bool, _offset: int, _value: int);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$interBase);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$interBase: bool;

procedure {:inline 1} _LOG_WRITE_$$interBase(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$interBase, _WRITE_READ_BENIGN_FLAG_$$interBase;



implementation {:inline 1} _LOG_WRITE_$$interBase(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$interBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$interBase == _value then true else _WRITE_HAS_OCCURRED_$$interBase);
    _WRITE_READ_BENIGN_FLAG_$$interBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$interBase == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$interBase);
    return;
}



procedure _CHECK_WRITE_$$interBase(_P: bool, _offset: int, _value: int);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$interBase != _value);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$interBase != _value);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$interBase(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$interBase;



implementation {:inline 1} _LOG_ATOMIC_$$interBase(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$interBase := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$interBase);
    return;
}



procedure _CHECK_ATOMIC_$$interBase(_P: bool, _offset: int);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset);
  requires {:source_name "interBase"} {:array "$$interBase"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$interBase(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$interBase;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$interBase(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$interBase := (if _P && _WRITE_HAS_OCCURRED_$$interBase && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$interBase);
    return;
}



const _WATCHED_VALUE_$$uniformAdd.uni: int;

procedure {:inline 1} _LOG_READ_$$uniformAdd.uni(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$uniformAdd.uni;



implementation {:inline 1} _LOG_READ_$$uniformAdd.uni(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$uniformAdd.uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniformAdd.uni == _value then true else _READ_HAS_OCCURRED_$$uniformAdd.uni);
    return;
}



procedure _CHECK_READ_$$uniformAdd.uni(_P: bool, _offset: int, _value: int);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni: bool;

procedure {:inline 1} _LOG_WRITE_$$uniformAdd.uni(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$uniformAdd.uni, _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni;



implementation {:inline 1} _LOG_WRITE_$$uniformAdd.uni(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$uniformAdd.uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniformAdd.uni == _value then true else _WRITE_HAS_OCCURRED_$$uniformAdd.uni);
    _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniformAdd.uni == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni);
    return;
}



procedure _CHECK_WRITE_$$uniformAdd.uni(_P: bool, _offset: int, _value: int);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniformAdd.uni != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$uniformAdd.uni != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$uniformAdd.uni(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni;



implementation {:inline 1} _LOG_ATOMIC_$$uniformAdd.uni(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$uniformAdd.uni);
    return;
}



procedure _CHECK_ATOMIC_$$uniformAdd.uni(_P: bool, _offset: int);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "uni"} {:array "$$uniformAdd.uni"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni := (if _P && _WRITE_HAS_OCCURRED_$$uniformAdd.uni && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$uniformAdd.uni);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$uniformAdd.uni;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$uniformAdd.uni;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$uniformAdd.uni;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$dataBase;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$dataBase;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$dataBase;
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
    havoc $$dataBase;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$uniformAdd.uni;
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
