type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "info"} {:global} $$info: [int]int;

axiom {:array_info "$$info"} {:global} {:elem_width 8} {:source_name "info"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$info: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$info: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$info: bool;

const _WATCHED_OFFSET: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV1_ZEXT8(x: int) : int
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

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "VoteAnyKernel3"} {:kernel} $_Z14VoteAnyKernel3Pbi($warp_size: int);
  requires !_READ_HAS_OCCURRED_$$info && !_WRITE_HAS_OCCURRED_$$info && !_ATOMIC_HAS_OCCURRED_$$info;
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
  modifies _WRITE_HAS_OCCURRED_$$info, _WRITE_READ_BENIGN_FLAG_$$info, _WRITE_READ_BENIGN_FLAG_$$info;



implementation {:source_name "VoteAnyKernel3"} {:kernel} $_Z14VoteAnyKernel3Pbi($warp_size: int)
{
  var v1$1: int;
  var v1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := BV32_MUL(local_id_x$1, 3);
    v0$2 := BV32_MUL(local_id_x$2, 3);
    call {:sourceloc_num 1} v1$1, v1$2 := $_Z3anyj(BV1_ZEXT32((if BV32_SGE(local_id_x$1, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_SGE(local_id_x$2, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3anyj"} true;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$info(true, v0$1, BV1_ZEXT8((if v1$1 != 0 then 1 else 0)), $$info[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$info(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$info(true, v0$2, BV1_ZEXT8((if v1$2 != 0 then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$info"} true;
    $$info[v0$1] := BV1_ZEXT8((if v1$1 != 0 then 1 else 0));
    $$info[v0$2] := BV1_ZEXT8((if v1$2 != 0 then 1 else 0));
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$info(true, BV32_ADD(v0$1, 1), BV1_ZEXT8((if BV32_SGE(local_id_x$1, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then -1 else 0)), $$info[BV32_ADD(v0$1, 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$info(true, BV32_ADD(v0$2, 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$info(true, BV32_ADD(v0$2, 1), BV1_ZEXT8((if BV32_SGE(local_id_x$2, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then -1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$info"} true;
    $$info[BV32_ADD(v0$1, 1)] := BV1_ZEXT8((if BV32_SGE(local_id_x$1, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then -1 else 0));
    $$info[BV32_ADD(v0$2, 1)] := BV1_ZEXT8((if BV32_SGE(local_id_x$2, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then -1 else 0));
    call {:sourceloc_num 4} v2$1, v2$2 := $_Z3allj(BV1_ZEXT32((if BV32_SGE(local_id_x$1, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_SGE(local_id_x$2, BV32_SDIV(BV32_MUL($warp_size, 3), 2)) then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3allj"} true;
    v3$1 := v2$1 != 0;
    v3$2 := v2$2 != 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$info(p0$1, BV32_ADD(v0$1, 2), 1, $$info[BV32_ADD(v0$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$info(p0$2, BV32_ADD(v0$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$info(p0$2, BV32_ADD(v0$2, 2), 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$info"} true;
    $$info[BV32_ADD(v0$1, 2)] := (if p0$1 then 1 else $$info[BV32_ADD(v0$1, 2)]);
    $$info[BV32_ADD(v0$2, 2)] := (if p0$2 then 1 else $$info[BV32_ADD(v0$2, 2)]);
    return;
}



procedure {:source_name "_Z3anyj"} $_Z3anyj($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z3allj"} $_Z3allj($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$info: int;

procedure {:inline 1} _LOG_READ_$$info(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$info;



implementation {:inline 1} _LOG_READ_$$info(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$info := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$info == _value then true else _READ_HAS_OCCURRED_$$info);
    return;
}



procedure _CHECK_READ_$$info(_P: bool, _offset: int, _value: int);
  requires {:source_name "info"} {:array "$$info"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$info);
  requires {:source_name "info"} {:array "$$info"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$info: bool;

procedure {:inline 1} _LOG_WRITE_$$info(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$info, _WRITE_READ_BENIGN_FLAG_$$info;



implementation {:inline 1} _LOG_WRITE_$$info(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$info := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$info == _value then true else _WRITE_HAS_OCCURRED_$$info);
    _WRITE_READ_BENIGN_FLAG_$$info := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$info == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$info);
    return;
}



procedure _CHECK_WRITE_$$info(_P: bool, _offset: int, _value: int);
  requires {:source_name "info"} {:array "$$info"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$info != _value);
  requires {:source_name "info"} {:array "$$info"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$info != _value);
  requires {:source_name "info"} {:array "$$info"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$info(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$info;



implementation {:inline 1} _LOG_ATOMIC_$$info(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$info := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$info);
    return;
}



procedure _CHECK_ATOMIC_$$info(_P: bool, _offset: int);
  requires {:source_name "info"} {:array "$$info"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset);
  requires {:source_name "info"} {:array "$$info"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$info(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$info;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$info(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$info := (if _P && _WRITE_HAS_OCCURRED_$$info && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$info);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
