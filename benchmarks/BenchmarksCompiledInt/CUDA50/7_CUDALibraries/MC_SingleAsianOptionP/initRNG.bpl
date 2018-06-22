type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "rngStates"} {:global} $$rngStates: [int]int;

axiom {:array_info "$$rngStates"} {:global} {:elem_width 32} {:source_name "rngStates"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$rngStates: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$rngStates: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$rngStates: bool;

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

procedure {:source_name "initRNG"} {:kernel} $_Z7initRNGP17curandStateXORWOWj($seed: int);
  requires !_READ_HAS_OCCURRED_$$rngStates && !_WRITE_HAS_OCCURRED_$$rngStates && !_ATOMIC_HAS_OCCURRED_$$rngStates;
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
  modifies _WRITE_HAS_OCCURRED_$$rngStates, _WRITE_READ_BENIGN_FLAG_$$rngStates, _WRITE_READ_BENIGN_FLAG_$$rngStates;



implementation {:source_name "initRNG"} {:kernel} $_Z7initRNGP17curandStateXORWOWj($seed: int)
{
  var v0$1: int;
  var v0$2: int;


  $0:
    call {:sourceloc_num 1} v0$1, v0$2 := $_Z19__bugle_random_uintv();
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z19__bugle_random_uintv"} true;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$rngStates(true, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), v0$1, $$rngStates[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$rngStates(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$rngStates(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$rngStates"} true;
    $$rngStates[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := v0$1;
    $$rngStates[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := v0$2;
    return;
}



procedure {:source_name "_Z19__bugle_random_uintv"} $_Z19__bugle_random_uintv() returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 195 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$rngStates: int;

procedure {:inline 1} _LOG_READ_$$rngStates(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$rngStates;



implementation {:inline 1} _LOG_READ_$$rngStates(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then true else _READ_HAS_OCCURRED_$$rngStates);
    return;
}



procedure _CHECK_READ_$$rngStates(_P: bool, _offset: int, _value: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$rngStates);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$rngStates: bool;

procedure {:inline 1} _LOG_WRITE_$$rngStates(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$rngStates, _WRITE_READ_BENIGN_FLAG_$$rngStates;



implementation {:inline 1} _LOG_WRITE_$$rngStates(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then true else _WRITE_HAS_OCCURRED_$$rngStates);
    _WRITE_READ_BENIGN_FLAG_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$rngStates);
    return;
}



procedure _CHECK_WRITE_$$rngStates(_P: bool, _offset: int, _value: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates != _value);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates != _value);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$rngStates(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$rngStates;



implementation {:inline 1} _LOG_ATOMIC_$$rngStates(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$rngStates);
    return;
}



procedure _CHECK_ATOMIC_$$rngStates(_P: bool, _offset: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rngStates(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$rngStates;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rngStates(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$rngStates := (if _P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$rngStates);
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
