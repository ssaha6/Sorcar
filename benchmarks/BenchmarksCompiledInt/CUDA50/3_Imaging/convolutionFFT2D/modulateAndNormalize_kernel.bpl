type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Dst"} {:global} $$d_Dst: [int]int;

axiom {:array_info "$$d_Dst"} {:global} {:elem_width 32} {:source_name "d_Dst"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Dst: bool;

axiom {:array_info "$$d_Src"} {:global} {:elem_width 32} {:source_name "d_Src"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Src: bool;

axiom {:array_info "$$t.i"} {:elem_width 32} {:source_name "t.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$a"} {:elem_width 32} {:source_name "a"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$b"} {:elem_width 32} {:source_name "b"} {:source_elem_width 64} {:source_dimensions "1"} true;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "modulateAndNormalize_kernel"} {:kernel} $_Z27modulateAndNormalize_kernelP6float2S0_if($dataSize: int, $c: int);
  requires !_READ_HAS_OCCURRED_$$d_Dst && !_WRITE_HAS_OCCURRED_$$d_Dst && !_ATOMIC_HAS_OCCURRED_$$d_Dst;
  requires !_READ_HAS_OCCURRED_$$d_Src && !_WRITE_HAS_OCCURRED_$$d_Src && !_ATOMIC_HAS_OCCURRED_$$d_Src;
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
  modifies _READ_HAS_OCCURRED_$$d_Dst, _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:source_name "modulateAndNormalize_kernel"} {:kernel} $_Z27modulateAndNormalize_kernelP6float2S0_if($dataSize: int, $c: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
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
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_SGE(v0$1, $dataSize);
    v1$2 := BV32_SGE(v0$2, $dataSize);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    $$a$0$1 := (if p1$1 then v2$1 else $$a$0$1);
    $$a$0$2 := (if p1$2 then v2$2 else $$a$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p1$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_int$2 else v3$2);
    $$a$1$1 := (if p1$1 then v3$1 else $$a$1$1);
    $$a$1$2 := (if p1$2 then v3$2 else $$a$1$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$d_Dst(p1$1, BV32_MUL(v0$1, 2), $$d_Dst[BV32_MUL(v0$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$d_Dst(p1$2, BV32_MUL(v0$2, 2), $$d_Dst[BV32_MUL(v0$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Dst"} true;
    v4$1 := (if p1$1 then $$d_Dst[BV32_MUL(v0$1, 2)] else v4$1);
    v4$2 := (if p1$2 then $$d_Dst[BV32_MUL(v0$2, 2)] else v4$2);
    $$b$0$1 := (if p1$1 then v4$1 else $$b$0$1);
    $$b$0$2 := (if p1$2 then v4$2 else $$b$0$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$d_Dst(p1$1, BV32_ADD(BV32_MUL(v0$1, 2), 1), $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 2), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$d_Dst(p1$2, BV32_ADD(BV32_MUL(v0$2, 2), 1), $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 2), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Dst"} true;
    v5$1 := (if p1$1 then $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 2), 1)] else v5$1);
    v5$2 := (if p1$2 then $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 2), 1)] else v5$2);
    $$b$1$1 := (if p1$1 then v5$1 else $$b$1$1);
    $$b$1$2 := (if p1$2 then v5$2 else $$b$1$2);
    v6$1 := (if p1$1 then $$a$0$1 else v6$1);
    v6$2 := (if p1$2 then $$a$0$2 else v6$2);
    v7$1 := (if p1$1 then $$b$0$1 else v7$1);
    v7$2 := (if p1$2 then $$b$0$2 else v7$2);
    v8$1 := (if p1$1 then $$a$1$1 else v8$1);
    v8$2 := (if p1$2 then $$a$1$2 else v8$2);
    v9$1 := (if p1$1 then $$b$1$1 else v9$1);
    v9$2 := (if p1$2 then $$b$1$2 else v9$2);
    $$t.i$0$1 := (if p1$1 then FMUL32($c, FSUB32(FMUL32(v6$1, v7$1), FMUL32(v8$1, v9$1))) else $$t.i$0$1);
    $$t.i$0$2 := (if p1$2 then FMUL32($c, FSUB32(FMUL32(v6$2, v7$2), FMUL32(v8$2, v9$2))) else $$t.i$0$2);
    v10$1 := (if p1$1 then $$a$1$1 else v10$1);
    v10$2 := (if p1$2 then $$a$1$2 else v10$2);
    v11$1 := (if p1$1 then $$b$0$1 else v11$1);
    v11$2 := (if p1$2 then $$b$0$2 else v11$2);
    v12$1 := (if p1$1 then $$a$0$1 else v12$1);
    v12$2 := (if p1$2 then $$a$0$2 else v12$2);
    v13$1 := (if p1$1 then $$b$1$1 else v13$1);
    v13$2 := (if p1$2 then $$b$1$2 else v13$2);
    $$t.i$1$1 := (if p1$1 then FMUL32($c, FADD32(FMUL32(v10$1, v11$1), FMUL32(v12$1, v13$1))) else $$t.i$1$1);
    $$t.i$1$2 := (if p1$2 then FMUL32($c, FADD32(FMUL32(v10$2, v11$2), FMUL32(v12$2, v13$2))) else $$t.i$1$2);
    v14$1 := (if p1$1 then $$t.i$0$1 else v14$1);
    v14$2 := (if p1$2 then $$t.i$0$2 else v14$2);
    $$a$0$1 := (if p1$1 then v14$1 else $$a$0$1);
    $$a$0$2 := (if p1$2 then v14$2 else $$a$0$2);
    v15$1 := (if p1$1 then $$t.i$1$1 else v15$1);
    v15$2 := (if p1$2 then $$t.i$1$2 else v15$2);
    $$a$1$1 := (if p1$1 then v15$1 else $$a$1$1);
    $$a$1$2 := (if p1$2 then v15$2 else $$a$1$2);
    v16$1 := (if p1$1 then $$a$0$1 else v16$1);
    v16$2 := (if p1$2 then $$a$0$2 else v16$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$d_Dst(p1$1, BV32_MUL(v0$1, 2), v16$1, $$d_Dst[BV32_MUL(v0$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p1$2, BV32_MUL(v0$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$d_Dst(p1$2, BV32_MUL(v0$2, 2), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(v0$1, 2)] := (if p1$1 then v16$1 else $$d_Dst[BV32_MUL(v0$1, 2)]);
    $$d_Dst[BV32_MUL(v0$2, 2)] := (if p1$2 then v16$2 else $$d_Dst[BV32_MUL(v0$2, 2)]);
    v17$1 := (if p1$1 then $$a$1$1 else v17$1);
    v17$2 := (if p1$2 then $$a$1$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$d_Dst(p1$1, BV32_ADD(BV32_MUL(v0$1, 2), 1), v17$1, $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p1$2, BV32_ADD(BV32_MUL(v0$2, 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$d_Dst(p1$2, BV32_ADD(BV32_MUL(v0$2, 2), 1), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 2), 1)] := (if p1$1 then v17$1 else $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 2), 1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 2), 1)] := (if p1$2 then v17$2 else $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 2), 1)]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 8320 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$t.i$0$1: int;

var $$t.i$0$2: int;

var $$t.i$1$1: int;

var $$t.i$1$2: int;

var $$a$0$1: int;

var $$a$0$2: int;

var $$a$1$1: int;

var $$a$1$2: int;

var $$b$0$1: int;

var $$b$0$2: int;

var $$b$1$1: int;

var $$b$1$2: int;

const _WATCHED_VALUE_$$d_Dst: int;

procedure {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _READ_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Dst);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _WRITE_HAS_OCCURRED_$$d_Dst);
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



procedure _CHECK_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



const _WATCHED_VALUE_$$d_Src: int;

procedure {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _READ_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Src);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Src: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Src, _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _WRITE_HAS_OCCURRED_$$d_Src);
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



procedure _CHECK_WRITE_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_ATOMIC_$$d_Src(_P: bool, _offset: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Src);
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
