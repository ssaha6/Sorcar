type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "pos"} {:global} $$pos: [int]int;

axiom {:array_info "$$pos"} {:global} {:elem_width 32} {:source_name "pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pos: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

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

procedure {:source_name "simple_vbo_kernel"} {:kernel} $_Z17simple_vbo_kernelP6float4jjf($width: int, $height: int, $time: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 256 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$pos && !_WRITE_HAS_OCCURRED_$$pos && !_ATOMIC_HAS_OCCURRED_$$pos;
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
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:source_name "simple_vbo_kernel"} {:kernel} $_Z17simple_vbo_kernelP6float4jjf($width: int, $height: int, $time: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v3$1: int;
  var v3$2: int;
  var v2$1: int;
  var v2$2: int;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := FSUB32(FMUL32(FDIV32(UI32_TO_FP32(v0$1), UI32_TO_FP32($width)), 1073741824), 1065353216);
    v2$2 := FSUB32(FMUL32(FDIV32(UI32_TO_FP32(v0$2), UI32_TO_FP32($width)), 1073741824), 1065353216);
    v3$1 := FSUB32(FMUL32(FDIV32(UI32_TO_FP32(v1$1), UI32_TO_FP32($height)), 1073741824), 1065353216);
    v3$2 := FSUB32(FMUL32(FDIV32(UI32_TO_FP32(v1$2), UI32_TO_FP32($height)), 1073741824), 1065353216);
    call {:sourceloc_num 2} v4$1, v4$2 := $sinf(FADD32(FMUL32(v2$1, 1082130432), $time), FADD32(FMUL32(v2$2, 1082130432), $time));
    assume {:captureState "call_return_state_0"} {:procedureName "$sinf"} true;
    call {:sourceloc_num 3} v5$1, v5$2 := $cosf(FADD32(FMUL32(v3$1, 1082130432), $time), FADD32(FMUL32(v3$2, 1082130432), $time));
    assume {:captureState "call_return_state_0"} {:procedureName "$cosf"} true;
    $$0$0$1 := v2$1;
    $$0$0$2 := v2$2;
    $$0$1$1 := FMUL32(FMUL32(v4$1, v5$1), 1056964608);
    $$0$1$2 := FMUL32(FMUL32(v4$2, v5$2), 1056964608);
    $$0$2$1 := v3$1;
    $$0$2$2 := v3$2;
    $$0$3$1 := 1065353216;
    $$0$3$2 := 1065353216;
    v6$1 := $$0$0$1;
    v6$2 := $$0$0$2;
    v7$1 := $$0$1$1;
    v7$2 := $$0$1$2;
    v8$1 := $$0$2$1;
    v8$2 := $$0$2$2;
    v9$1 := $$0$3$1;
    v9$2 := $$0$3$2;
    $$1$0$1 := v6$1;
    $$1$0$2 := v6$2;
    $$1$1$1 := v7$1;
    $$1$1$2 := v7$2;
    $$1$2$1 := v8$1;
    $$1$2$2 := v8$2;
    $$1$3$1 := v9$1;
    $$1$3$2 := v9$2;
    v10$1 := $$1$0$1;
    v10$2 := $$1$0$2;
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), v10$1, $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)] := v10$1;
    $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4)] := v10$2;
    v11$1 := $$1$1$1;
    v11$2 := $$1$1$2;
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1), v11$1, $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)] := v11$1;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1)] := v11$2;
    v12$1 := $$1$2$1;
    v12$2 := $$1$2$2;
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2), v12$1, $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)] := v12$1;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2)] := v12$2;
    v13$1 := $$1$3$1;
    v13$2 := $$1$3$2;
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3), v13$1, $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)] := v13$1;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3)] := v13$2;
    return;
}



procedure {:source_name "sinf"} $sinf($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "cosf"} $cosf($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

const _WATCHED_VALUE_$$pos: int;

procedure {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _READ_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_READ_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pos);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pos: bool;

procedure {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _WRITE_HAS_OCCURRED_$$pos);
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pos);
    return;
}



procedure _CHECK_WRITE_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_ATOMIC_$$pos(_P: bool, _offset: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pos);
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
