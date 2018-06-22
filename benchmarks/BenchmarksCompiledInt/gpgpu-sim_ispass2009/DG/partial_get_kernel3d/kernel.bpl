type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$g_index"} {:global} {:elem_width 32} {:source_name "g_index"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_index: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_index: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_index: bool;

var {:source_name "g_partQ"} {:global} $$g_partQ: [int]int;

axiom {:array_info "$$g_partQ"} {:global} {:elem_width 32} {:source_name "g_partQ"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_partQ: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_partQ: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_partQ: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$t_Q"} {:global} {:elem_width 8} {:source_name "t_Q"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$t_Q: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$t_Q: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$t_Q: bool;

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

function BV_CONCAT(int, int) : int;

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

procedure {:source_name "partial_get_kernel3d"} {:kernel} $_Z20partial_get_kernel3diPiPf($Ntotal: int);
  requires !_READ_HAS_OCCURRED_$$g_index && !_WRITE_HAS_OCCURRED_$$g_index && !_ATOMIC_HAS_OCCURRED_$$g_index;
  requires !_READ_HAS_OCCURRED_$$g_partQ && !_WRITE_HAS_OCCURRED_$$g_partQ && !_ATOMIC_HAS_OCCURRED_$$g_partQ;
  requires !_READ_HAS_OCCURRED_$$t_Q && !_WRITE_HAS_OCCURRED_$$t_Q && !_ATOMIC_HAS_OCCURRED_$$t_Q;
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
  modifies _WRITE_HAS_OCCURRED_$$g_partQ, _WRITE_READ_BENIGN_FLAG_$$g_partQ, _WRITE_READ_BENIGN_FLAG_$$g_partQ;



implementation {:source_name "partial_get_kernel3d"} {:kernel} $_Z20partial_get_kernel3diPiPf($Ntotal: int)
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
  var v10$1: int;
  var v10$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
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
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $Ntotal);
    v1$2 := BV32_SLT(v0$2, $Ntotal);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    $$0$0$1 := (if p0$1 then v2$1 else $$0$0$1);
    $$0$0$2 := (if p0$2 then v2$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    $$0$1$1 := (if p0$1 then v3$1 else $$0$1$1);
    $$0$1$2 := (if p0$2 then v3$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    $$0$2$1 := (if p0$1 then v4$1 else $$0$2$1);
    $$0$2$2 := (if p0$2 then v4$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    $$0$3$1 := (if p0$1 then v5$1 else $$0$3$1);
    $$0$3$2 := (if p0$2 then v5$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p0$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_int$2 else v6$2);
    $$0$4$1 := (if p0$1 then v6$1 else $$0$4$1);
    $$0$4$2 := (if p0$2 then v6$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p0$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p0$2 then _HAVOC_int$2 else v7$2);
    $$0$5$1 := (if p0$1 then v7$1 else $$0$5$1);
    $$0$5$2 := (if p0$2 then v7$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p0$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p0$2 then _HAVOC_int$2 else v8$2);
    $$0$6$1 := (if p0$1 then v8$1 else $$0$6$1);
    $$0$6$2 := (if p0$2 then v8$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p0$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p0$2 then _HAVOC_int$2 else v9$2);
    $$0$7$1 := (if p0$1 then v9$1 else $$0$7$1);
    $$0$7$2 := (if p0$2 then v9$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p0$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p0$2 then _HAVOC_int$2 else v10$2);
    $$0$8$1 := (if p0$1 then v10$1 else $$0$8$1);
    $$0$8$2 := (if p0$2 then v10$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p0$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p0$2 then _HAVOC_int$2 else v11$2);
    $$0$9$1 := (if p0$1 then v11$1 else $$0$9$1);
    $$0$9$2 := (if p0$2 then v11$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p0$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p0$2 then _HAVOC_int$2 else v12$2);
    $$0$10$1 := (if p0$1 then v12$1 else $$0$10$1);
    $$0$10$2 := (if p0$2 then v12$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p0$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p0$2 then _HAVOC_int$2 else v13$2);
    $$0$11$1 := (if p0$1 then v13$1 else $$0$11$1);
    $$0$11$2 := (if p0$2 then v13$2 else $$0$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p0$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p0$2 then _HAVOC_int$2 else v14$2);
    v15$1 := (if p0$1 then $$0$0$1 else v15$1);
    v15$2 := (if p0$2 then $$0$0$2 else v15$2);
    v16$1 := (if p0$1 then $$0$1$1 else v16$1);
    v16$2 := (if p0$2 then $$0$1$2 else v16$2);
    v17$1 := (if p0$1 then $$0$2$1 else v17$1);
    v17$2 := (if p0$2 then $$0$2$2 else v17$2);
    v18$1 := (if p0$1 then $$0$3$1 else v18$1);
    v18$2 := (if p0$2 then $$0$3$2 else v18$2);
    v19$1 := (if p0$1 then $$0$4$1 else v19$1);
    v19$2 := (if p0$2 then $$0$4$2 else v19$2);
    v20$1 := (if p0$1 then $$0$5$1 else v20$1);
    v20$2 := (if p0$2 then $$0$5$2 else v20$2);
    v21$1 := (if p0$1 then $$0$6$1 else v21$1);
    v21$2 := (if p0$2 then $$0$6$2 else v21$2);
    v22$1 := (if p0$1 then $$0$7$1 else v22$1);
    v22$2 := (if p0$2 then $$0$7$2 else v22$2);
    v23$1 := (if p0$1 then $$0$8$1 else v23$1);
    v23$2 := (if p0$2 then $$0$8$2 else v23$2);
    v24$1 := (if p0$1 then $$0$9$1 else v24$1);
    v24$2 := (if p0$2 then $$0$9$2 else v24$2);
    v25$1 := (if p0$1 then $$0$10$1 else v25$1);
    v25$2 := (if p0$2 then $$0$10$2 else v25$2);
    v26$1 := (if p0$1 then $$0$11$1 else v26$1);
    v26$2 := (if p0$2 then $$0$11$2 else v26$2);
    call {:sourceloc_num 39} v27$1, v27$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(p0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v18$1, v17$1), v16$1), v15$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v22$1, v21$1), v20$1), v19$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v26$1, v25$1), v24$1), v23$1), v14$1, p0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v18$2, v17$2), v16$2), v15$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v22$2, v21$2), v20$2), v19$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v26$2, v25$2), v24$2), v23$2), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$g_partQ(p0$1, v0$1, v27$1, $$g_partQ[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_partQ(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$g_partQ(p0$2, v0$2, v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_partQ"} true;
    $$g_partQ[v0$1] := (if p0$1 then v27$1 else $$g_partQ[v0$1]);
    $$g_partQ[v0$2] := (if p0$2 then v27$2 else $$g_partQ[v0$2]);
    return;
}



procedure {:source_name "_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

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

var $$0$4$1: int;

var $$0$4$2: int;

var $$0$5$1: int;

var $$0$5$2: int;

var $$0$6$1: int;

var $$0$6$2: int;

var $$0$7$1: int;

var $$0$7$2: int;

var $$0$8$1: int;

var $$0$8$2: int;

var $$0$9$1: int;

var $$0$9$2: int;

var $$0$10$1: int;

var $$0$10$2: int;

var $$0$11$1: int;

var $$0$11$2: int;

const _WATCHED_VALUE_$$g_index: int;

procedure {:inline 1} _LOG_READ_$$g_index(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_index;



implementation {:inline 1} _LOG_READ_$$g_index(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_index == _value then true else _READ_HAS_OCCURRED_$$g_index);
    return;
}



procedure _CHECK_READ_$$g_index(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_index);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_index: bool;

procedure {:inline 1} _LOG_WRITE_$$g_index(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_index, _WRITE_READ_BENIGN_FLAG_$$g_index;



implementation {:inline 1} _LOG_WRITE_$$g_index(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_index == _value then true else _WRITE_HAS_OCCURRED_$$g_index);
    _WRITE_READ_BENIGN_FLAG_$$g_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_index == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_index);
    return;
}



procedure _CHECK_WRITE_$$g_index(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_index != _value);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_index != _value);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_index(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_index;



implementation {:inline 1} _LOG_ATOMIC_$$g_index(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_index := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_index);
    return;
}



procedure _CHECK_ATOMIC_$$g_index(_P: bool, _offset: int);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_index"} {:array "$$g_index"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_index(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_index;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_index(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_index := (if _P && _WRITE_HAS_OCCURRED_$$g_index && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_index);
    return;
}



const _WATCHED_VALUE_$$g_partQ: int;

procedure {:inline 1} _LOG_READ_$$g_partQ(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_partQ;



implementation {:inline 1} _LOG_READ_$$g_partQ(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_partQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_partQ == _value then true else _READ_HAS_OCCURRED_$$g_partQ);
    return;
}



procedure _CHECK_READ_$$g_partQ(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_partQ);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_partQ: bool;

procedure {:inline 1} _LOG_WRITE_$$g_partQ(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_partQ, _WRITE_READ_BENIGN_FLAG_$$g_partQ;



implementation {:inline 1} _LOG_WRITE_$$g_partQ(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_partQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_partQ == _value then true else _WRITE_HAS_OCCURRED_$$g_partQ);
    _WRITE_READ_BENIGN_FLAG_$$g_partQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_partQ == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_partQ);
    return;
}



procedure _CHECK_WRITE_$$g_partQ(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_partQ != _value);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_partQ != _value);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_partQ(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_partQ;



implementation {:inline 1} _LOG_ATOMIC_$$g_partQ(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_partQ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_partQ);
    return;
}



procedure _CHECK_ATOMIC_$$g_partQ(_P: bool, _offset: int);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_partQ"} {:array "$$g_partQ"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_partQ(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_partQ;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_partQ(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_partQ := (if _P && _WRITE_HAS_OCCURRED_$$g_partQ && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_partQ);
    return;
}



const _WATCHED_VALUE_$$t_Q: int;

procedure {:inline 1} _LOG_READ_$$t_Q(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$t_Q;



implementation {:inline 1} _LOG_READ_$$t_Q(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then true else _READ_HAS_OCCURRED_$$t_Q);
    return;
}



procedure _CHECK_READ_$$t_Q(_P: bool, _offset: int, _value: int);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$t_Q);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$t_Q: bool;

procedure {:inline 1} _LOG_WRITE_$$t_Q(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$t_Q, _WRITE_READ_BENIGN_FLAG_$$t_Q;



implementation {:inline 1} _LOG_WRITE_$$t_Q(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then true else _WRITE_HAS_OCCURRED_$$t_Q);
    _WRITE_READ_BENIGN_FLAG_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$t_Q);
    return;
}



procedure _CHECK_WRITE_$$t_Q(_P: bool, _offset: int, _value: int);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q != _value);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$t_Q != _value);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$t_Q(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$t_Q;



implementation {:inline 1} _LOG_ATOMIC_$$t_Q(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$t_Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$t_Q);
    return;
}



procedure _CHECK_ATOMIC_$$t_Q(_P: bool, _offset: int);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);
  requires {:source_name "t_Q"} {:array "$$t_Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_Q(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$t_Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$t_Q(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$t_Q := (if _P && _WRITE_HAS_OCCURRED_$$t_Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$t_Q);
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
