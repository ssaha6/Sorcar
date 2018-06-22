type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "corr"} {:global} $$corr: [int]int;

axiom {:array_info "$$corr"} {:global} {:elem_width 64} {:source_name "corr"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$corr: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_SEXT64(int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "kernel9"} {:kernel} $kernel9($m: int, $n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_AND(BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($m, 2) then $m else 1)), (if BV32_SGE($m, 2) then $m else 1)), 1) == $m then 1 else 0)), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($m, 2) then $m else 1)), 1) == $m then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$corr && !_WRITE_HAS_OCCURRED_$$corr && !_ATOMIC_HAS_OCCURRED_$$corr;
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
  modifies _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:source_name "kernel9"} {:kernel} $kernel9($m: int, $n: int)
{
  var $0: int;
  var v0: bool;


  $0:
    v0 := BV32_SGE($m, 2);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v0;
    $0 := 1;
    goto $3;

  $3:
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$corr(true, BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1)), 4607182418800017408, $$corr[BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(true, BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$corr(true, BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1)), 4607182418800017408);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$corr"} true;
    $$corr[BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1))] := 4607182418800017408;
    $$corr[BV32_ADD(BV32_MUL(BV32_SUB($m, 1), $0), BV32_SUB($m, 1))] := 4607182418800017408;
    return;

  $truebb:
    assume {:partition} v0;
    $0 := $m;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

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

const _WATCHED_VALUE_$$corr: int;

procedure {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _READ_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_READ_$$corr(_P: bool, _offset: int, _value: int);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$corr);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$corr: bool;

procedure {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _WRITE_HAS_OCCURRED_$$corr);
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$corr);
    return;
}



procedure _CHECK_WRITE_$$corr(_P: bool, _offset: int, _value: int);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_ATOMIC_$$corr(_P: bool, _offset: int);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$corr);
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
