type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$memA"} {:global} {:elem_width 32} {:source_name "memA"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$memA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$memA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$memA: bool;

axiom {:array_info "$$memB"} {:global} {:elem_width 32} {:source_name "memB"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$memB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$memB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$memB: bool;

var {:source_name "memC"} {:global} $$memC: [int]int;

axiom {:array_info "$$memC"} {:global} {:elem_width 32} {:source_name "memC"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$memC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$memC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$memC: bool;

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

procedure {:source_name "Triad"} {:kernel} $Triad();
  requires !_READ_HAS_OCCURRED_$$memA && !_WRITE_HAS_OCCURRED_$$memA && !_ATOMIC_HAS_OCCURRED_$$memA;
  requires !_READ_HAS_OCCURRED_$$memB && !_WRITE_HAS_OCCURRED_$$memB && !_ATOMIC_HAS_OCCURRED_$$memB;
  requires !_READ_HAS_OCCURRED_$$memC && !_WRITE_HAS_OCCURRED_$$memC && !_ATOMIC_HAS_OCCURRED_$$memC;
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
  modifies _WRITE_HAS_OCCURRED_$$memC, _WRITE_READ_BENIGN_FLAG_$$memC, _WRITE_READ_BENIGN_FLAG_$$memC;



implementation {:source_name "Triad"} {:kernel} $Triad()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    havoc v1$1, v1$2;
    havoc v2$1, v2$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$memC(true, v0$1, FADD32(v1$1, v2$1), $$memC[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$memC(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$memC(true, v0$2, FADD32(v1$2, v2$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$memC"} true;
    $$memC[v0$1] := FADD32(v1$1, v2$1);
    $$memC[v0$2] := FADD32(v1$2, v2$2);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 1024 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$memA: int;

procedure {:inline 1} _LOG_READ_$$memA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$memA;



implementation {:inline 1} _LOG_READ_$$memA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$memA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memA == _value then true else _READ_HAS_OCCURRED_$$memA);
    return;
}



procedure _CHECK_READ_$$memA(_P: bool, _offset: int, _value: int);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$memA);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$memA: bool;

procedure {:inline 1} _LOG_WRITE_$$memA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$memA, _WRITE_READ_BENIGN_FLAG_$$memA;



implementation {:inline 1} _LOG_WRITE_$$memA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$memA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memA == _value then true else _WRITE_HAS_OCCURRED_$$memA);
    _WRITE_READ_BENIGN_FLAG_$$memA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$memA);
    return;
}



procedure _CHECK_WRITE_$$memA(_P: bool, _offset: int, _value: int);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memA != _value);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memA != _value);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$memA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$memA;



implementation {:inline 1} _LOG_ATOMIC_$$memA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$memA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$memA);
    return;
}



procedure _CHECK_ATOMIC_$$memA(_P: bool, _offset: int);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset);
  requires {:source_name "memA"} {:array "$$memA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$memA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$memA := (if _P && _WRITE_HAS_OCCURRED_$$memA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$memA);
    return;
}



const _WATCHED_VALUE_$$memB: int;

procedure {:inline 1} _LOG_READ_$$memB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$memB;



implementation {:inline 1} _LOG_READ_$$memB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$memB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memB == _value then true else _READ_HAS_OCCURRED_$$memB);
    return;
}



procedure _CHECK_READ_$$memB(_P: bool, _offset: int, _value: int);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$memB);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$memB: bool;

procedure {:inline 1} _LOG_WRITE_$$memB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$memB, _WRITE_READ_BENIGN_FLAG_$$memB;



implementation {:inline 1} _LOG_WRITE_$$memB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$memB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memB == _value then true else _WRITE_HAS_OCCURRED_$$memB);
    _WRITE_READ_BENIGN_FLAG_$$memB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$memB);
    return;
}



procedure _CHECK_WRITE_$$memB(_P: bool, _offset: int, _value: int);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memB != _value);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memB != _value);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$memB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$memB;



implementation {:inline 1} _LOG_ATOMIC_$$memB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$memB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$memB);
    return;
}



procedure _CHECK_ATOMIC_$$memB(_P: bool, _offset: int);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset);
  requires {:source_name "memB"} {:array "$$memB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$memB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$memB := (if _P && _WRITE_HAS_OCCURRED_$$memB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$memB);
    return;
}



const _WATCHED_VALUE_$$memC: int;

procedure {:inline 1} _LOG_READ_$$memC(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$memC;



implementation {:inline 1} _LOG_READ_$$memC(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$memC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memC == _value then true else _READ_HAS_OCCURRED_$$memC);
    return;
}



procedure _CHECK_READ_$$memC(_P: bool, _offset: int, _value: int);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$memC);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$memC: bool;

procedure {:inline 1} _LOG_WRITE_$$memC(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$memC, _WRITE_READ_BENIGN_FLAG_$$memC;



implementation {:inline 1} _LOG_WRITE_$$memC(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$memC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memC == _value then true else _WRITE_HAS_OCCURRED_$$memC);
    _WRITE_READ_BENIGN_FLAG_$$memC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memC == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$memC);
    return;
}



procedure _CHECK_WRITE_$$memC(_P: bool, _offset: int, _value: int);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memC != _value);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$memC != _value);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$memC(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$memC;



implementation {:inline 1} _LOG_ATOMIC_$$memC(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$memC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$memC);
    return;
}



procedure _CHECK_ATOMIC_$$memC(_P: bool, _offset: int);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset);
  requires {:source_name "memC"} {:array "$$memC"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memC(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$memC;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$memC(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$memC := (if _P && _WRITE_HAS_OCCURRED_$$memC && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$memC);
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
