type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$old_variables"} {:global} {:elem_width 32} {:source_name "old_variables"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$old_variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$old_variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$old_variables: bool;

var {:source_name "variables"} {:global} $$variables: [int]int;

axiom {:array_info "$$variables"} {:global} {:elem_width 32} {:source_name "variables"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$variables: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$variables: bool;

axiom {:array_info "$$step_factors"} {:global} {:elem_width 32} {:source_name "step_factors"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$step_factors: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$step_factors: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$step_factors: bool;

axiom {:array_info "$$fluxes"} {:global} {:elem_width 32} {:source_name "fluxes"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$fluxes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$fluxes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$fluxes: bool;

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

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "time_step"} {:kernel} $time_step($j: int, $nelr: int);
  requires {:sourceloc_num 0} {:thread 1} (if $nelr == 97152 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$old_variables && !_WRITE_HAS_OCCURRED_$$old_variables && !_ATOMIC_HAS_OCCURRED_$$old_variables;
  requires !_READ_HAS_OCCURRED_$$variables && !_WRITE_HAS_OCCURRED_$$variables && !_ATOMIC_HAS_OCCURRED_$$variables;
  requires !_READ_HAS_OCCURRED_$$step_factors && !_WRITE_HAS_OCCURRED_$$step_factors && !_ATOMIC_HAS_OCCURRED_$$step_factors;
  requires !_READ_HAS_OCCURRED_$$fluxes && !_WRITE_HAS_OCCURRED_$$fluxes && !_ATOMIC_HAS_OCCURRED_$$fluxes;
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
  modifies _WRITE_HAS_OCCURRED_$$variables, _WRITE_READ_BENIGN_FLAG_$$variables, _WRITE_READ_BENIGN_FLAG_$$variables;



implementation {:source_name "time_step"} {:kernel} $time_step($j: int, $nelr: int)
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    havoc v1$1, v1$2;
    v2$1 := FDIV32(v1$1, SI32_TO_FP32(BV32_SUB(4, $j)));
    v2$2 := FDIV32(v1$2, SI32_TO_FP32(BV32_SUB(4, $j)));
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$variables(true, BV32_ADD(v0$1, BV32_MUL(0, $nelr)), FADD32(FMUL32(v2$1, v4$1), v3$1), $$variables[BV32_ADD(v0$1, BV32_MUL(0, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(true, BV32_ADD(v0$2, BV32_MUL(0, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$variables(true, BV32_ADD(v0$2, BV32_MUL(0, $nelr)), FADD32(FMUL32(v2$2, v4$2), v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$variables"} true;
    $$variables[BV32_ADD(v0$1, BV32_MUL(0, $nelr))] := FADD32(FMUL32(v2$1, v4$1), v3$1);
    $$variables[BV32_ADD(v0$2, BV32_MUL(0, $nelr))] := FADD32(FMUL32(v2$2, v4$2), v3$2);
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$variables(true, BV32_ADD(v0$1, BV32_MUL(4, $nelr)), FADD32(FMUL32(v2$1, v6$1), v5$1), $$variables[BV32_ADD(v0$1, BV32_MUL(4, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(true, BV32_ADD(v0$2, BV32_MUL(4, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$variables(true, BV32_ADD(v0$2, BV32_MUL(4, $nelr)), FADD32(FMUL32(v2$2, v6$2), v5$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$variables"} true;
    $$variables[BV32_ADD(v0$1, BV32_MUL(4, $nelr))] := FADD32(FMUL32(v2$1, v6$1), v5$1);
    $$variables[BV32_ADD(v0$2, BV32_MUL(4, $nelr))] := FADD32(FMUL32(v2$2, v6$2), v5$2);
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$variables(true, BV32_ADD(v0$1, $nelr), FADD32(FMUL32(v2$1, v8$1), v7$1), $$variables[BV32_ADD(v0$1, $nelr)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(true, BV32_ADD(v0$2, $nelr));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$variables(true, BV32_ADD(v0$2, $nelr), FADD32(FMUL32(v2$2, v8$2), v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$variables"} true;
    $$variables[BV32_ADD(v0$1, $nelr)] := FADD32(FMUL32(v2$1, v8$1), v7$1);
    $$variables[BV32_ADD(v0$2, $nelr)] := FADD32(FMUL32(v2$2, v8$2), v7$2);
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$variables(true, BV32_ADD(v0$1, BV32_MUL(2, $nelr)), FADD32(FMUL32(v2$1, v10$1), v9$1), $$variables[BV32_ADD(v0$1, BV32_MUL(2, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(true, BV32_ADD(v0$2, BV32_MUL(2, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$variables(true, BV32_ADD(v0$2, BV32_MUL(2, $nelr)), FADD32(FMUL32(v2$2, v10$2), v9$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$variables"} true;
    $$variables[BV32_ADD(v0$1, BV32_MUL(2, $nelr))] := FADD32(FMUL32(v2$1, v10$1), v9$1);
    $$variables[BV32_ADD(v0$2, BV32_MUL(2, $nelr))] := FADD32(FMUL32(v2$2, v10$2), v9$2);
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$variables(true, BV32_ADD(v0$1, BV32_MUL(3, $nelr)), FADD32(FMUL32(v2$1, v12$1), v11$1), $$variables[BV32_ADD(v0$1, BV32_MUL(3, $nelr))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(true, BV32_ADD(v0$2, BV32_MUL(3, $nelr)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$variables(true, BV32_ADD(v0$2, BV32_MUL(3, $nelr)), FADD32(FMUL32(v2$2, v12$2), v11$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$variables"} true;
    $$variables[BV32_ADD(v0$1, BV32_MUL(3, $nelr))] := FADD32(FMUL32(v2$1, v12$1), v11$1);
    $$variables[BV32_ADD(v0$2, BV32_MUL(3, $nelr))] := FADD32(FMUL32(v2$2, v12$2), v11$2);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 192 then 1 else 0) != 0;

axiom (if num_groups_x == 506 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$old_variables: int;

procedure {:inline 1} _LOG_READ_$$old_variables(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$old_variables;



implementation {:inline 1} _LOG_READ_$$old_variables(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$old_variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$old_variables == _value then true else _READ_HAS_OCCURRED_$$old_variables);
    return;
}



procedure _CHECK_READ_$$old_variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$old_variables);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$old_variables: bool;

procedure {:inline 1} _LOG_WRITE_$$old_variables(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$old_variables, _WRITE_READ_BENIGN_FLAG_$$old_variables;



implementation {:inline 1} _LOG_WRITE_$$old_variables(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$old_variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$old_variables == _value then true else _WRITE_HAS_OCCURRED_$$old_variables);
    _WRITE_READ_BENIGN_FLAG_$$old_variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$old_variables == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$old_variables);
    return;
}



procedure _CHECK_WRITE_$$old_variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$old_variables != _value);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$old_variables != _value);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$old_variables(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$old_variables;



implementation {:inline 1} _LOG_ATOMIC_$$old_variables(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$old_variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$old_variables);
    return;
}



procedure _CHECK_ATOMIC_$$old_variables(_P: bool, _offset: int);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset);
  requires {:source_name "old_variables"} {:array "$$old_variables"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$old_variables(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$old_variables;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$old_variables(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$old_variables := (if _P && _WRITE_HAS_OCCURRED_$$old_variables && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$old_variables);
    return;
}



const _WATCHED_VALUE_$$variables: int;

procedure {:inline 1} _LOG_READ_$$variables(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$variables;



implementation {:inline 1} _LOG_READ_$$variables(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then true else _READ_HAS_OCCURRED_$$variables);
    return;
}



procedure _CHECK_READ_$$variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$variables);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$variables: bool;

procedure {:inline 1} _LOG_WRITE_$$variables(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$variables, _WRITE_READ_BENIGN_FLAG_$$variables;



implementation {:inline 1} _LOG_WRITE_$$variables(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then true else _WRITE_HAS_OCCURRED_$$variables);
    _WRITE_READ_BENIGN_FLAG_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$variables);
    return;
}



procedure _CHECK_WRITE_$$variables(_P: bool, _offset: int, _value: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables != _value);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$variables != _value);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$variables(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$variables;



implementation {:inline 1} _LOG_ATOMIC_$$variables(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$variables := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$variables);
    return;
}



procedure _CHECK_ATOMIC_$$variables(_P: bool, _offset: int);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);
  requires {:source_name "variables"} {:array "$$variables"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$variables;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$variables(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$variables := (if _P && _WRITE_HAS_OCCURRED_$$variables && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$variables);
    return;
}



const _WATCHED_VALUE_$$step_factors: int;

procedure {:inline 1} _LOG_READ_$$step_factors(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$step_factors;



implementation {:inline 1} _LOG_READ_$$step_factors(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$step_factors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$step_factors == _value then true else _READ_HAS_OCCURRED_$$step_factors);
    return;
}



procedure _CHECK_READ_$$step_factors(_P: bool, _offset: int, _value: int);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$step_factors);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$step_factors: bool;

procedure {:inline 1} _LOG_WRITE_$$step_factors(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$step_factors, _WRITE_READ_BENIGN_FLAG_$$step_factors;



implementation {:inline 1} _LOG_WRITE_$$step_factors(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$step_factors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$step_factors == _value then true else _WRITE_HAS_OCCURRED_$$step_factors);
    _WRITE_READ_BENIGN_FLAG_$$step_factors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$step_factors == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$step_factors);
    return;
}



procedure _CHECK_WRITE_$$step_factors(_P: bool, _offset: int, _value: int);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$step_factors != _value);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$step_factors != _value);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$step_factors(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$step_factors;



implementation {:inline 1} _LOG_ATOMIC_$$step_factors(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$step_factors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$step_factors);
    return;
}



procedure _CHECK_ATOMIC_$$step_factors(_P: bool, _offset: int);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset);
  requires {:source_name "step_factors"} {:array "$$step_factors"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$step_factors(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$step_factors;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$step_factors(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$step_factors := (if _P && _WRITE_HAS_OCCURRED_$$step_factors && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$step_factors);
    return;
}



const _WATCHED_VALUE_$$fluxes: int;

procedure {:inline 1} _LOG_READ_$$fluxes(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$fluxes;



implementation {:inline 1} _LOG_READ_$$fluxes(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then true else _READ_HAS_OCCURRED_$$fluxes);
    return;
}



procedure _CHECK_READ_$$fluxes(_P: bool, _offset: int, _value: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$fluxes);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$fluxes: bool;

procedure {:inline 1} _LOG_WRITE_$$fluxes(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$fluxes, _WRITE_READ_BENIGN_FLAG_$$fluxes;



implementation {:inline 1} _LOG_WRITE_$$fluxes(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then true else _WRITE_HAS_OCCURRED_$$fluxes);
    _WRITE_READ_BENIGN_FLAG_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$fluxes);
    return;
}



procedure _CHECK_WRITE_$$fluxes(_P: bool, _offset: int, _value: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes != _value);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$fluxes != _value);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$fluxes(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$fluxes;



implementation {:inline 1} _LOG_ATOMIC_$$fluxes(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$fluxes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$fluxes);
    return;
}



procedure _CHECK_ATOMIC_$$fluxes(_P: bool, _offset: int);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);
  requires {:source_name "fluxes"} {:array "$$fluxes"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$fluxes;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$fluxes(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$fluxes := (if _P && _WRITE_HAS_OCCURRED_$$fluxes && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$fluxes);
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
