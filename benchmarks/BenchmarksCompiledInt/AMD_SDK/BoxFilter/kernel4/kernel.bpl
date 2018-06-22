type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FP32_TO_SI32(int) : int;

function FPOW32(int, int) : int;

function SI32_TO_FP32(int) : int;

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

procedure {:source_name "verticalSAT"} {:kernel} $verticalSAT($i: int, $r: int, $width: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
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



implementation {:source_name "verticalSAT"} {:kernel} $verticalSAT($i: int, $r: int, $width: int)
{
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2 := FP32_TO_SI32(FPOW32(SI32_TO_FP32($r), SI32_TO_FP32($i)));
    $sum.0$1, $j.0$1 := 0, 0;
    $sum.0$2, $j.0$2 := 0, 0;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 2} p0$1 ==> true;
    v3$1 := (if p0$1 then BV32_SLT($j.0$1, $r) else v3$1);
    v3$2 := (if p0$2 then BV32_SLT($j.0$2, $r) else v3$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p3$1 := (if p0$1 && !v3$1 then !v3$1 else p3$1);
    p3$2 := (if p0$2 && !v3$2 then !v3$2 else p3$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    v4$1 := (if p1$1 then BV32_SLT(BV32_SUB(v1$1, BV32_MUL($j.0$1, v2)), 0) else v4$1);
    v4$2 := (if p1$2 then BV32_SLT(BV32_SUB(v1$2, BV32_MUL($j.0$2, v2)), 0) else v4$2);
    p4$1 := (if p1$1 && v4$1 then v4$1 else p4$1);
    p4$2 := (if p1$2 && v4$2 then v4$2 else p4$2);
    p0$1 := (if p1$1 && v4$1 then !v4$1 else p0$1);
    p0$2 := (if p1$2 && v4$2 then !v4$2 else p0$2);
    p2$1 := (if p1$1 && !v4$1 then !v4$1 else p2$1);
    p2$2 := (if p1$2 && !v4$2 then !v4$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p2$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p2$2 then _HAVOC_int$2 else v5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p2$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p2$2 then _HAVOC_int$2 else v6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p2$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p2$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p2$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p2$2 then _HAVOC_int$2 else v8$2);
    $sum.0$1, $j.0$1 := (if p2$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV_EXTRACT($sum.0$1, 128, 96), v8$1), BV32_ADD(BV_EXTRACT($sum.0$1, 96, 64), v7$1)), BV32_ADD(BV_EXTRACT($sum.0$1, 64, 32), v6$1)), BV32_ADD(BV_EXTRACT($sum.0$1, 32, 0), v5$1)) else $sum.0$1), (if p2$1 then BV32_ADD($j.0$1, 1) else $j.0$1);
    $sum.0$2, $j.0$2 := (if p2$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV_EXTRACT($sum.0$2, 128, 96), v8$2), BV32_ADD(BV_EXTRACT($sum.0$2, 96, 64), v7$2)), BV32_ADD(BV_EXTRACT($sum.0$2, 64, 32), v6$2)), BV32_ADD(BV_EXTRACT($sum.0$2, 32, 0), v5$2)) else $sum.0$2), (if p2$2 then BV32_ADD($j.0$2, 1) else $j.0$2);
    p0$1 := (if p2$1 then true else p0$1);
    p0$2 := (if p2$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$output(p3$1, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), BV_EXTRACT($sum.0$1, 32, 0), $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p3$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$output(p3$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), BV_EXTRACT($sum.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)] := (if p3$1 then BV_EXTRACT($sum.0$1, 32, 0) else $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)]);
    $$output[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4)] := (if p3$2 then BV_EXTRACT($sum.0$2, 32, 0) else $$output[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4)]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$output(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1), BV_EXTRACT($sum.0$1, 64, 32), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1), BV_EXTRACT($sum.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)] := (if p3$1 then BV_EXTRACT($sum.0$1, 64, 32) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1)] := (if p3$2 then BV_EXTRACT($sum.0$2, 64, 32) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1)]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$output(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2), BV_EXTRACT($sum.0$1, 96, 64), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2), BV_EXTRACT($sum.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)] := (if p3$1 then BV_EXTRACT($sum.0$1, 96, 64) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2)] := (if p3$2 then BV_EXTRACT($sum.0$2, 96, 64) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2)]);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$output(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3), BV_EXTRACT($sum.0$1, 128, 96), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$output(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3), BV_EXTRACT($sum.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)] := (if p3$1 then BV_EXTRACT($sum.0$1, 128, 96) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3)] := (if p3$2 then BV_EXTRACT($sum.0$2, 128, 96) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3)]);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$output(p4$1, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), BV_EXTRACT($sum.0$1, 32, 0), $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p4$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$output(p4$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), BV_EXTRACT($sum.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)] := (if p4$1 then BV_EXTRACT($sum.0$1, 32, 0) else $$output[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4)]);
    $$output[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4)] := (if p4$2 then BV_EXTRACT($sum.0$2, 32, 0) else $$output[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4)]);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$output(p4$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1), BV_EXTRACT($sum.0$1, 64, 32), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1), BV_EXTRACT($sum.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)] := (if p4$1 then BV_EXTRACT($sum.0$1, 64, 32) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 1)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1)] := (if p4$2 then BV_EXTRACT($sum.0$2, 64, 32) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 1)]);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$output(p4$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2), BV_EXTRACT($sum.0$1, 96, 64), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2), BV_EXTRACT($sum.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)] := (if p4$1 then BV_EXTRACT($sum.0$1, 96, 64) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 2)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2)] := (if p4$2 then BV_EXTRACT($sum.0$2, 96, 64) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 2)]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$output(p4$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3), BV_EXTRACT($sum.0$1, 128, 96), $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$output(p4$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3), BV_EXTRACT($sum.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)] := (if p4$1 then BV_EXTRACT($sum.0$1, 128, 96) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(v1$1, $width)), 4), 3)]);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3)] := (if p4$2 then BV_EXTRACT($sum.0$2, 128, 96) else $$output[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(v1$2, $width)), 4), 3)]);
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 1024 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

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



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
