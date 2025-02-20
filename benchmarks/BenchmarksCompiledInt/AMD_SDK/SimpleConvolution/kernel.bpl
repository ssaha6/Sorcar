type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

axiom {:array_info "$$mask"} {:global} {:elem_width 32} {:source_name "mask"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mask: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mask: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mask: bool;

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

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FP32_TO_UI32(int) : int;

function UI32_TO_FP32(int) : int;

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

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "simpleConvolution"} {:kernel} $simpleConvolution($inputDimensions: int, $maskDimensions: int);
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$mask && !_WRITE_HAS_OCCURRED_$$mask && !_ATOMIC_HAS_OCCURRED_$$mask;
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
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:source_name "simpleConvolution"} {:kernel} $simpleConvolution($inputDimensions: int, $maskDimensions: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $sumFX.0$1: int;
  var $sumFX.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $sumFX.1$1: int;
  var $sumFX.1$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var v2: int;
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5: int;
  var v6: int;
  var v7: int;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var p6$1: bool;
  var p6$2: bool;
  var p7$1: bool;
  var p7$2: bool;
  var p8$1: bool;
  var p8$2: bool;
  var p9$1: bool;
  var p9$2: bool;
  var p10$1: bool;
  var p10$2: bool;
  var p11$1: bool;
  var p11$2: bool;
  var p12$1: bool;
  var p12$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV_EXTRACT($inputDimensions, 32, 0);
    v2 := BV_EXTRACT($inputDimensions, 64, 32);
    v3$1 := BV32_UREM(v0$1, v1);
    v3$2 := BV32_UREM(v0$2, v1);
    v4$1 := BV32_UDIV(v0$1, v1);
    v4$2 := BV32_UDIV(v0$2, v1);
    v5 := BV_EXTRACT($maskDimensions, 32, 0);
    v6 := BV32_UDIV(BV32_SUB(v5, 1), 2);
    v7 := BV32_UDIV(BV32_SUB(BV_EXTRACT($maskDimensions, 64, 32), 1), 2);
    v8$1 := BV32_ULT(v3$1, v6);
    v8$2 := BV32_ULT(v3$2, v6);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p0$1 := (if v8$1 then v8$1 else p0$1);
    p0$2 := (if v8$2 then v8$2 else p0$2);
    p1$1 := (if !v8$1 then !v8$1 else p1$1);
    p1$2 := (if !v8$2 then !v8$2 else p1$2);
    $0$1 := (if p0$1 then 0 else $0$1);
    $0$2 := (if p0$2 then 0 else $0$2);
    $0$1 := (if p1$1 then BV32_SUB(v3$1, v6) else $0$1);
    $0$2 := (if p1$2 then BV32_SUB(v3$2, v6) else $0$2);
    v9$1 := BV32_UGE(BV32_ADD(v3$1, v6), v1);
    v9$2 := BV32_UGE(BV32_ADD(v3$2, v6), v1);
    p2$1 := (if v9$1 then v9$1 else p2$1);
    p2$2 := (if v9$2 then v9$2 else p2$2);
    p3$1 := (if !v9$1 then !v9$1 else p3$1);
    p3$2 := (if !v9$2 then !v9$2 else p3$2);
    $1$1 := (if p2$1 then BV32_SUB(v1, 1) else $1$1);
    $1$2 := (if p2$2 then BV32_SUB(v1, 1) else $1$2);
    $1$1 := (if p3$1 then BV32_ADD(v3$1, v6) else $1$1);
    $1$2 := (if p3$2 then BV32_ADD(v3$2, v6) else $1$2);
    v10$1 := BV32_ULT(v4$1, v7);
    v10$2 := BV32_ULT(v4$2, v7);
    p4$1 := (if v10$1 then v10$1 else p4$1);
    p4$2 := (if v10$2 then v10$2 else p4$2);
    p5$1 := (if !v10$1 then !v10$1 else p5$1);
    p5$2 := (if !v10$2 then !v10$2 else p5$2);
    $2$1 := (if p4$1 then 0 else $2$1);
    $2$2 := (if p4$2 then 0 else $2$2);
    $2$1 := (if p5$1 then BV32_SUB(v4$1, v7) else $2$1);
    $2$2 := (if p5$2 then BV32_SUB(v4$2, v7) else $2$2);
    v11$1 := BV32_UGE(BV32_ADD(v4$1, v7), v2);
    v11$2 := BV32_UGE(BV32_ADD(v4$2, v7), v2);
    p6$1 := (if v11$1 then v11$1 else p6$1);
    p6$2 := (if v11$2 then v11$2 else p6$2);
    p7$1 := (if !v11$1 then !v11$1 else p7$1);
    p7$2 := (if !v11$2 then !v11$2 else p7$2);
    $3$1 := (if p6$1 then BV32_SUB(v2, 1) else $3$1);
    $3$2 := (if p6$2 then BV32_SUB(v2, 1) else $3$2);
    $3$1 := (if p7$1 then BV32_ADD(v4$1, v7) else $3$1);
    $3$2 := (if p7$2 then BV32_ADD(v4$2, v7) else $3$2);
    $sumFX.0$1, $i.0$1 := 0, $0$1;
    $sumFX.0$2, $i.0$2 := 0, $0$2;
    p8$1 := true;
    p8$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 13} p8$1 ==> true;
    v12$1 := (if p8$1 then BV32_ULE($i.0$1, $1$1) else v12$1);
    v12$2 := (if p8$2 then BV32_ULE($i.0$2, $1$2) else v12$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p12$1 := false;
    p12$2 := false;
    p9$1 := (if p8$1 && v12$1 then v12$1 else p9$1);
    p9$2 := (if p8$2 && v12$2 then v12$2 else p9$2);
    p8$1 := (if p8$1 && !v12$1 then v12$1 else p8$1);
    p8$2 := (if p8$2 && !v12$2 then v12$2 else p8$2);
    $sumFX.1$1, $j.0$1 := (if p9$1 then $sumFX.0$1 else $sumFX.1$1), (if p9$1 then $2$1 else $j.0$1);
    $sumFX.1$2, $j.0$2 := (if p9$2 then $sumFX.0$2 else $sumFX.1$2), (if p9$2 then $2$2 else $j.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p8$1;
    assert p10$2 ==> p8$2;
    assert {:block_sourceloc} {:sourceloc_num 15} p10$1 ==> true;
    v13$1 := (if p10$1 then BV32_ULE($j.0$1, $3$1) else v13$1);
    v13$2 := (if p10$2 then BV32_ULE($j.0$2, $3$2) else v13$2);
    p11$1 := false;
    p11$2 := false;
    p11$1 := (if p10$1 && v13$1 then v13$1 else p11$1);
    p11$2 := (if p10$2 && v13$2 then v13$2 else p11$2);
    p10$1 := (if p10$1 && !v13$1 then v13$1 else p10$1);
    p10$2 := (if p10$2 && !v13$2 then v13$2 else p10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p11$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p11$2 then _HAVOC_int$2 else v14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p11$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p11$2 then _HAVOC_int$2 else v15$2);
    $sumFX.1$1, $j.0$1 := (if p11$1 then FADD32($sumFX.1$1, FMUL32(UI32_TO_FP32(v14$1), v15$1)) else $sumFX.1$1), (if p11$1 then BV32_ADD($j.0$1, 1) else $j.0$1);
    $sumFX.1$2, $j.0$2 := (if p11$2 then FADD32($sumFX.1$2, FMUL32(UI32_TO_FP32(v14$2), v15$2)) else $sumFX.1$2), (if p11$2 then BV32_ADD($j.0$2, 1) else $j.0$2);
    p10$1 := (if p11$1 then true else p10$1);
    p10$2 := (if p11$2 then true else p10$2);
    goto $15.backedge, $15.tail;

  $15.tail:
    assume !p10$1 && !p10$2;
    $sumFX.0$1, $i.0$1 := (if p9$1 then $sumFX.1$1 else $sumFX.0$1), (if p9$1 then BV32_ADD($i.0$1, 1) else $i.0$1);
    $sumFX.0$2, $i.0$2 := (if p9$2 then $sumFX.1$2 else $sumFX.0$2), (if p9$2 then BV32_ADD($i.0$2, 1) else $i.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p8$1 && !p8$2;
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$output(true, v0$1, FP32_TO_UI32(FADD32($sumFX.0$1, 1056964608)), $$output[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$output(true, v0$2, FP32_TO_UI32(FADD32($sumFX.0$2, 1056964608)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[v0$1] := FP32_TO_UI32(FADD32($sumFX.0$1, 1056964608));
    $$output[v0$2] := FP32_TO_UI32(FADD32($sumFX.0$2, 1056964608));
    return;

  $13.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $13;

  $15.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $15;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$output: int;

procedure {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _READ_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_READ_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output: bool;

procedure {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _WRITE_HAS_OCCURRED_$$output);
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



procedure _CHECK_WRITE_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_ATOMIC_$$output(_P: bool, _offset: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



const _WATCHED_VALUE_$$input: int;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$mask: int;

procedure {:inline 1} _LOG_READ_$$mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$mask;



implementation {:inline 1} _LOG_READ_$$mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mask == _value then true else _READ_HAS_OCCURRED_$$mask);
    return;
}



procedure _CHECK_READ_$$mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mask);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mask: bool;

procedure {:inline 1} _LOG_WRITE_$$mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$mask, _WRITE_READ_BENIGN_FLAG_$$mask;



implementation {:inline 1} _LOG_WRITE_$$mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mask == _value then true else _WRITE_HAS_OCCURRED_$$mask);
    _WRITE_READ_BENIGN_FLAG_$$mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mask);
    return;
}



procedure _CHECK_WRITE_$$mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mask != _value);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mask != _value);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$mask;



implementation {:inline 1} _LOG_ATOMIC_$$mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mask);
    return;
}



procedure _CHECK_ATOMIC_$$mask(_P: bool, _offset: int);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset);
  requires {:source_name "mask"} {:array "$$mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mask := (if _P && _WRITE_HAS_OCCURRED_$$mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mask);
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
