type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$A0"} {:global} {:elem_width 32} {:source_name "A0"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A0: bool;

var {:source_name "Anext"} {:global} $$Anext: [int]int;

axiom {:array_info "$$Anext"} {:global} {:elem_width 32} {:source_name "Anext"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Anext: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Anext: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Anext: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "naive_kernel"} {:kernel} $naive_kernel($c0: int, $c1: int, $nx: int, $ny: int, $nz: int);
  requires {:sourceloc_num 0} {:thread 1} (if $nx == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $ny == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A0 && !_WRITE_HAS_OCCURRED_$$A0 && !_ATOMIC_HAS_OCCURRED_$$A0;
  requires !_READ_HAS_OCCURRED_$$Anext && !_WRITE_HAS_OCCURRED_$$Anext && !_ATOMIC_HAS_OCCURRED_$$Anext;
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
  modifies _WRITE_HAS_OCCURRED_$$Anext, _WRITE_READ_BENIGN_FLAG_$$Anext, _WRITE_READ_BENIGN_FLAG_$$Anext;



implementation {:source_name "naive_kernel"} {:kernel} $naive_kernel($c0: int, $c1: int, $nx: int, $ny: int, $nz: int)
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
  var v6$1: bool;
  var v6$2: bool;
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
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(v0$1, 1);
    v1$2 := BV32_ADD(v0$2, 1);
    v2$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v2$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v3$1 := BV32_ADD(v2$1, 1);
    v3$2 := BV32_ADD(v2$2, 1);
    v4$1 := BV32_ADD(BV32_MUL(group_id_z$1, group_size_z), local_id_z$1);
    v4$2 := BV32_ADD(BV32_MUL(group_id_z$2, group_size_z), local_id_z$2);
    v5$1 := BV32_ADD(v4$1, 1);
    v5$2 := BV32_ADD(v4$2, 1);
    v6$1 := BV32_SLT(v1$1, BV32_SUB($nx, 1));
    v6$2 := BV32_SLT(v1$2, BV32_SUB($nx, 1));
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v6$1 then v6$1 else p0$1);
    p0$2 := (if v6$2 then v6$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p0$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p0$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p0$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p0$2 then _HAVOC_int$2 else v8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p0$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p0$2 then _HAVOC_int$2 else v9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p0$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p0$2 then _HAVOC_int$2 else v10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p0$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p0$2 then _HAVOC_int$2 else v11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p0$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p0$2 then _HAVOC_int$2 else v12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p0$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p0$2 then _HAVOC_int$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$Anext(p0$1, BV32_ADD(v1$1, BV32_MUL($nx, BV32_ADD(v3$1, BV32_MUL($ny, v5$1)))), FADD32(FMUL32($c1, FADD32(FADD32(FADD32(FADD32(FADD32(v7$1, v8$1), v9$1), v10$1), v11$1), v12$1)), FSUB32(-2147483648, FMUL32(v13$1, $c0))), $$Anext[BV32_ADD(v1$1, BV32_MUL($nx, BV32_ADD(v3$1, BV32_MUL($ny, v5$1))))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Anext(p0$2, BV32_ADD(v1$2, BV32_MUL($nx, BV32_ADD(v3$2, BV32_MUL($ny, v5$2)))));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$Anext(p0$2, BV32_ADD(v1$2, BV32_MUL($nx, BV32_ADD(v3$2, BV32_MUL($ny, v5$2)))), FADD32(FMUL32($c1, FADD32(FADD32(FADD32(FADD32(FADD32(v7$2, v8$2), v9$2), v10$2), v11$2), v12$2)), FSUB32(-2147483648, FMUL32(v13$2, $c0))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Anext"} true;
    $$Anext[BV32_ADD(v1$1, BV32_MUL($nx, BV32_ADD(v3$1, BV32_MUL($ny, v5$1))))] := (if p0$1 then FADD32(FMUL32($c1, FADD32(FADD32(FADD32(FADD32(FADD32(v7$1, v8$1), v9$1), v10$1), v11$1), v12$1)), FSUB32(-2147483648, FMUL32(v13$1, $c0))) else $$Anext[BV32_ADD(v1$1, BV32_MUL($nx, BV32_ADD(v3$1, BV32_MUL($ny, v5$1))))]);
    $$Anext[BV32_ADD(v1$2, BV32_MUL($nx, BV32_ADD(v3$2, BV32_MUL($ny, v5$2))))] := (if p0$2 then FADD32(FMUL32($c1, FADD32(FADD32(FADD32(FADD32(FADD32(v7$2, v8$2), v9$2), v10$2), v11$2), v12$2)), FSUB32(-2147483648, FMUL32(v13$2, $c0))) else $$Anext[BV32_ADD(v1$2, BV32_MUL($nx, BV32_ADD(v3$2, BV32_MUL($ny, v5$2))))]);
    return;
}



axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if num_groups_y == 510 then 1 else 0) != 0;

axiom (if num_groups_z == 62 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const _WATCHED_VALUE_$$A0: int;

procedure {:inline 1} _LOG_READ_$$A0(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$A0;



implementation {:inline 1} _LOG_READ_$$A0(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A0 == _value then true else _READ_HAS_OCCURRED_$$A0);
    return;
}



procedure _CHECK_READ_$$A0(_P: bool, _offset: int, _value: int);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A0);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A0: bool;

procedure {:inline 1} _LOG_WRITE_$$A0(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$A0, _WRITE_READ_BENIGN_FLAG_$$A0;



implementation {:inline 1} _LOG_WRITE_$$A0(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A0 == _value then true else _WRITE_HAS_OCCURRED_$$A0);
    _WRITE_READ_BENIGN_FLAG_$$A0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A0);
    return;
}



procedure _CHECK_WRITE_$$A0(_P: bool, _offset: int, _value: int);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A0 != _value);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A0 != _value);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A0(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$A0;



implementation {:inline 1} _LOG_ATOMIC_$$A0(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A0);
    return;
}



procedure _CHECK_ATOMIC_$$A0(_P: bool, _offset: int);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset);
  requires {:source_name "A0"} {:array "$$A0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A0(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$A0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A0(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A0 := (if _P && _WRITE_HAS_OCCURRED_$$A0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A0);
    return;
}



const _WATCHED_VALUE_$$Anext: int;

procedure {:inline 1} _LOG_READ_$$Anext(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Anext;



implementation {:inline 1} _LOG_READ_$$Anext(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Anext := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Anext == _value then true else _READ_HAS_OCCURRED_$$Anext);
    return;
}



procedure _CHECK_READ_$$Anext(_P: bool, _offset: int, _value: int);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Anext);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Anext: bool;

procedure {:inline 1} _LOG_WRITE_$$Anext(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Anext, _WRITE_READ_BENIGN_FLAG_$$Anext;



implementation {:inline 1} _LOG_WRITE_$$Anext(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Anext := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Anext == _value then true else _WRITE_HAS_OCCURRED_$$Anext);
    _WRITE_READ_BENIGN_FLAG_$$Anext := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Anext == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Anext);
    return;
}



procedure _CHECK_WRITE_$$Anext(_P: bool, _offset: int, _value: int);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Anext != _value);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Anext != _value);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Anext(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Anext;



implementation {:inline 1} _LOG_ATOMIC_$$Anext(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Anext := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Anext);
    return;
}



procedure _CHECK_ATOMIC_$$Anext(_P: bool, _offset: int);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset);
  requires {:source_name "Anext"} {:array "$$Anext"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Anext(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Anext;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Anext(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Anext := (if _P && _WRITE_HAS_OCCURRED_$$Anext && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Anext);
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
