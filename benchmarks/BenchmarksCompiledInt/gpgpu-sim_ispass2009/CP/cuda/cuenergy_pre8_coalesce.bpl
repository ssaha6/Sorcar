type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "energygrid"} {:global} $$energygrid: [int]int;

axiom {:array_info "$$energygrid"} {:global} {:elem_width 32} {:source_name "energygrid"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$energygrid: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$energygrid: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$energygrid: bool;

var {:source_name "atominfo"} {:constant} $$atominfo$1: [int]int;

var {:source_name "atominfo"} {:constant} $$atominfo$2: [int]int;

axiom {:array_info "$$atominfo"} {:constant} {:elem_width 32} {:source_name "atominfo"} {:source_elem_width 128} {:source_dimensions "1"} true;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "cenergy"} {:kernel} $_Z7cenergyifPf($numatoms: int, $gridspacing: int);
  requires !_READ_HAS_OCCURRED_$$energygrid && !_WRITE_HAS_OCCURRED_$$energygrid && !_ATOMIC_HAS_OCCURRED_$$energygrid;
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
  modifies _READ_HAS_OCCURRED_$$energygrid, _WRITE_HAS_OCCURRED_$$energygrid, _WRITE_READ_BENIGN_FLAG_$$energygrid, _WRITE_READ_BENIGN_FLAG_$$energygrid;



implementation {:source_name "cenergy"} {:kernel} $_Z7cenergyifPf($numatoms: int, $gridspacing: int)
{
  var $energyvalx1.0$1: int;
  var $energyvalx1.0$2: int;
  var $energyvalx2.0$1: int;
  var $energyvalx2.0$2: int;
  var $atomid.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3: bool;
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
  var v15$1: int;
  var v15$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, group_size_x), 2), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, group_size_x), 2), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := BV32_ADD(BV32_MUL(BV32_MUL(BV32_MUL(num_groups_x, group_size_x), 2), v1$1), v0$1);
    v2$2 := BV32_ADD(BV32_MUL(BV32_MUL(BV32_MUL(num_groups_x, group_size_x), 2), v1$2), v0$2);
    $energyvalx1.0$1, $energyvalx2.0$1, $atomid.0 := 0, 0, 0;
    $energyvalx1.0$2, $energyvalx2.0$2 := 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v3 := BV32_SLT($atomid.0, $numatoms);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$energygrid(true, v2$1, $$energygrid[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$energygrid(true, v2$2, $$energygrid[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$energygrid"} true;
    v13$1 := $$energygrid[v2$1];
    v13$2 := $$energygrid[v2$2];
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$energygrid(true, v2$1, FADD32(v13$1, $energyvalx1.0$1), $$energygrid[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$energygrid(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$energygrid(true, v2$2, FADD32(v13$2, $energyvalx1.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$energygrid"} true;
    $$energygrid[v2$1] := FADD32(v13$1, $energyvalx1.0$1);
    $$energygrid[v2$2] := FADD32(v13$2, $energyvalx1.0$2);
    v14$1 := BV32_ADD(v2$1, 16);
    v14$2 := BV32_ADD(v2$2, 16);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$energygrid(true, v14$1, $$energygrid[v14$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$energygrid(true, v14$2, $$energygrid[v14$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$energygrid"} true;
    v15$1 := $$energygrid[v14$1];
    v15$2 := $$energygrid[v14$2];
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$energygrid(true, v14$1, FADD32(v15$1, $energyvalx2.0$1), $$energygrid[v14$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$energygrid(true, v14$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$energygrid(true, v14$2, FADD32(v15$2, $energyvalx2.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$energygrid"} true;
    $$energygrid[v14$1] := FADD32(v15$1, $energyvalx2.0$1);
    $$energygrid[v14$2] := FADD32(v15$2, $energyvalx2.0$2);
    return;

  $truebb:
    assume {:partition} v3;
    v4$1 := $$atominfo$1[BV32_ADD(BV32_MUL($atomid.0, 4), 1)];
    v4$2 := $$atominfo$2[BV32_ADD(BV32_MUL($atomid.0, 4), 1)];
    v5$1 := FSUB32(FMUL32($gridspacing, UI32_TO_FP32(v1$1)), v4$1);
    v5$2 := FSUB32(FMUL32($gridspacing, UI32_TO_FP32(v1$2)), v4$2);
    v6$1 := $$atominfo$1[BV32_ADD(BV32_MUL($atomid.0, 4), 2)];
    v6$2 := $$atominfo$2[BV32_ADD(BV32_MUL($atomid.0, 4), 2)];
    v7$1 := FADD32(FMUL32(v5$1, v5$1), v6$1);
    v7$2 := FADD32(FMUL32(v5$2, v5$2), v6$2);
    v8$1 := $$atominfo$1[BV32_MUL($atomid.0, 4)];
    v8$2 := $$atominfo$2[BV32_MUL($atomid.0, 4)];
    v9$1 := FSUB32(FMUL32($gridspacing, UI32_TO_FP32(v0$1)), v8$1);
    v9$2 := FSUB32(FMUL32($gridspacing, UI32_TO_FP32(v0$2)), v8$2);
    v10$1 := FADD32(v9$1, FMUL32($gridspacing, 1098907648));
    v10$2 := FADD32(v9$2, FMUL32($gridspacing, 1098907648));
    v11$1 := $$atominfo$1[BV32_ADD(BV32_MUL($atomid.0, 4), 3)];
    v11$2 := $$atominfo$2[BV32_ADD(BV32_MUL($atomid.0, 4), 3)];
    v12$1 := $$atominfo$1[BV32_ADD(BV32_MUL($atomid.0, 4), 3)];
    v12$2 := $$atominfo$2[BV32_ADD(BV32_MUL($atomid.0, 4), 3)];
    $energyvalx1.0$1, $energyvalx2.0$1, $atomid.0 := FADD32($energyvalx1.0$1, FMUL32(v11$1, FDIV32(1065353216, FSQRT32(FADD32(FMUL32(v9$1, v9$1), v7$1))))), FADD32($energyvalx2.0$1, FMUL32(v12$1, FDIV32(1065353216, FSQRT32(FADD32(FMUL32(v10$1, v10$1), v7$1))))), BV32_ADD($atomid.0, 1);
    $energyvalx1.0$2, $energyvalx2.0$2 := FADD32($energyvalx1.0$2, FMUL32(v11$2, FDIV32(1065353216, FSQRT32(FADD32(FMUL32(v9$2, v9$2), v7$2))))), FADD32($energyvalx2.0$2, FMUL32(v12$2, FDIV32(1065353216, FSQRT32(FADD32(FMUL32(v10$2, v10$2), v7$2)))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$energygrid: int;

procedure {:inline 1} _LOG_READ_$$energygrid(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$energygrid;



implementation {:inline 1} _LOG_READ_$$energygrid(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$energygrid := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$energygrid == _value then true else _READ_HAS_OCCURRED_$$energygrid);
    return;
}



procedure _CHECK_READ_$$energygrid(_P: bool, _offset: int, _value: int);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$energygrid);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$energygrid: bool;

procedure {:inline 1} _LOG_WRITE_$$energygrid(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$energygrid, _WRITE_READ_BENIGN_FLAG_$$energygrid;



implementation {:inline 1} _LOG_WRITE_$$energygrid(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$energygrid := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$energygrid == _value then true else _WRITE_HAS_OCCURRED_$$energygrid);
    _WRITE_READ_BENIGN_FLAG_$$energygrid := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$energygrid == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$energygrid);
    return;
}



procedure _CHECK_WRITE_$$energygrid(_P: bool, _offset: int, _value: int);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$energygrid != _value);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$energygrid != _value);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$energygrid(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$energygrid;



implementation {:inline 1} _LOG_ATOMIC_$$energygrid(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$energygrid := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$energygrid);
    return;
}



procedure _CHECK_ATOMIC_$$energygrid(_P: bool, _offset: int);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset);
  requires {:source_name "energygrid"} {:array "$$energygrid"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$energygrid(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$energygrid;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$energygrid(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$energygrid := (if _P && _WRITE_HAS_OCCURRED_$$energygrid && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$energygrid);
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
