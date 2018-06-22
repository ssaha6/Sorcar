type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "values"} {:global} $$values: [int]int;

axiom {:array_info "$$values"} {:global} {:elem_width 32} {:source_name "values"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$values: bool;

axiom {:array_info "$$paths"} {:global} {:elem_width 32} {:source_name "paths"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$paths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$paths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$paths: bool;

var {:source_name "option"} {:global} $$option: [int]int;

axiom {:array_info "$$option"} {:global} {:elem_width 8} {:source_name "option"} {:source_elem_width 288} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$option: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$option: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$option: bool;

var {:source_name "sdata.i"} $$sdata.i$1: [int]int;

var {:source_name "sdata.i"} $$sdata.i$2: [int]int;

axiom {:array_info "$$sdata.i"} {:elem_width 32} {:source_name "sdata.i"} {:source_elem_width 32} {:source_dimensions "1"} true;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

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

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "computeValue<float>"} {:kernel} $_Z12computeValueIfEvPT_PKS0_PK11AsianOptionIS0_Ejj($numSims: int, $numTimesteps: int);
  requires !_READ_HAS_OCCURRED_$$values && !_WRITE_HAS_OCCURRED_$$values && !_ATOMIC_HAS_OCCURRED_$$values;
  requires !_READ_HAS_OCCURRED_$$paths && !_WRITE_HAS_OCCURRED_$$paths && !_ATOMIC_HAS_OCCURRED_$$paths;
  requires !_READ_HAS_OCCURRED_$$option && !_WRITE_HAS_OCCURRED_$$option && !_ATOMIC_HAS_OCCURRED_$$option;
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
  modifies $$values, _TRACKING, _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _TRACKING;



implementation {:source_name "computeValue<float>"} {:kernel} $_Z12computeValueIfEvPT_PKS0_PK11AsianOptionIS0_Ejj($numSims: int, $numTimesteps: int)
{
  var $sumPayoffs.0$1: int;
  var $sumPayoffs.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $path.0$1: int;
  var $path.0$2: int;
  var $avg.0$1: int;
  var $avg.0$2: int;
  var $t.0$1: int;
  var $t.0$2: int;
  var $payoff.0$1: int;
  var $payoff.0$2: int;
  var $s.i.0: int;
  var v17$1: int;
  var v17$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: bool;
  var v23$2: bool;
  var v0$1: bool;
  var v0$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v2$1: int;
  var v2$2: int;
  var v16$1: bool;
  var v16$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v18: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v6$1: int;
  var v6$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    $sumPayoffs.0$1, $i.0$1 := 0, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    $sumPayoffs.0$2, $i.0$2 := 0, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_ULT($i.0$1, $numSims) else v0$1);
    v0$2 := (if p0$2 then BV32_ULT($i.0$2, $numSims) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p6$1 := false;
    p6$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    $path.0$1, $avg.0$1, $t.0$1 := (if p1$1 then $i.0$1 else $path.0$1), (if p1$1 then 0 else $avg.0$1), (if p1$1 then 0 else $t.0$1);
    $path.0$2, $avg.0$2, $t.0$2 := (if p1$2 then $i.0$2 else $path.0$2), (if p1$2 then 0 else $avg.0$2), (if p1$2 then 0 else $t.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 3} p2$1 ==> true;
    v1$1 := (if p2$1 then BV32_ULT($t.0$1, $numTimesteps) else v1$1);
    v1$2 := (if p2$2 then BV32_ULT($t.0$2, $numTimesteps) else v1$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p3$1 := (if p2$1 && v1$1 then v1$1 else p3$1);
    p3$2 := (if p2$2 && v1$2 then v1$2 else p3$2);
    p2$1 := (if p2$1 && !v1$1 then v1$1 else p2$1);
    p2$2 := (if p2$2 && !v1$2 then v1$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p3$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p3$2 then _HAVOC_int$2 else v2$2);
    $path.0$1, $avg.0$1, $t.0$1 := (if p3$1 then BV32_ADD($path.0$1, $numSims) else $path.0$1), (if p3$1 then FADD32($avg.0$1, v2$1) else $avg.0$1), (if p3$1 then BV32_ADD($t.0$1, 1) else $t.0$1);
    $path.0$2, $avg.0$2, $t.0$2 := (if p3$2 then BV32_ADD($path.0$2, $numSims) else $path.0$2), (if p3$2 then FADD32($avg.0$2, v2$2) else $avg.0$2), (if p3$2 then BV32_ADD($t.0$2, 1) else $t.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    v3$1 := (if p1$1 then $$option[0] else v3$1);
    v3$2 := (if p1$2 then $$option[0] else v3$2);
    v4$1 := (if p1$1 then $$option[1] else v4$1);
    v4$2 := (if p1$2 then $$option[1] else v4$2);
    v5$1 := (if p1$1 then $$option[2] else v5$1);
    v5$2 := (if p1$2 then $$option[2] else v5$2);
    v6$1 := (if p1$1 then $$option[3] else v6$1);
    v6$2 := (if p1$2 then $$option[3] else v6$2);
    v7$1 := (if p1$1 then $$option[4] else v7$1);
    v7$2 := (if p1$2 then $$option[4] else v7$2);
    v8$1 := (if p1$1 then $$option[5] else v8$1);
    v8$2 := (if p1$2 then $$option[5] else v8$2);
    v9$1 := (if p1$1 then $$option[6] else v9$1);
    v9$2 := (if p1$2 then $$option[6] else v9$2);
    v10$1 := (if p1$1 then $$option[7] else v10$1);
    v10$2 := (if p1$2 then $$option[7] else v10$2);
    v11$1 := (if p1$1 then FSUB32(FDIV32(FMUL32($avg.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v6$1, v5$1), v4$1), v3$1)), UI32_TO_FP32($numTimesteps)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v10$1, v9$1), v8$1), v7$1)) else v11$1);
    v11$2 := (if p1$2 then FSUB32(FDIV32(FMUL32($avg.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v6$2, v5$2), v4$2), v3$2)), UI32_TO_FP32($numTimesteps)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v10$2, v9$2), v8$2), v7$2)) else v11$2);
    v12$1 := (if p1$1 then $$option[32] else v12$1);
    v12$2 := (if p1$2 then $$option[32] else v12$2);
    v13$1 := (if p1$1 then $$option[33] else v13$1);
    v13$2 := (if p1$2 then $$option[33] else v13$2);
    v14$1 := (if p1$1 then $$option[34] else v14$1);
    v14$2 := (if p1$2 then $$option[34] else v14$2);
    v15$1 := (if p1$1 then $$option[35] else v15$1);
    v15$2 := (if p1$2 then $$option[35] else v15$2);
    v16$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v15$1, v14$1), v13$1), v12$1) == 1 else v16$1);
    v16$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v15$2, v14$2), v13$2), v12$2) == 1 else v16$2);
    p5$1 := (if p1$1 && v16$1 then v16$1 else p5$1);
    p5$2 := (if p1$2 && v16$2 then v16$2 else p5$2);
    p4$1 := (if p1$1 && !v16$1 then !v16$1 else p4$1);
    p4$2 := (if p1$2 && !v16$2 then !v16$2 else p4$2);
    $payoff.0$1 := (if p4$1 then v11$1 else $payoff.0$1);
    $payoff.0$2 := (if p4$2 then v11$2 else $payoff.0$2);
    $payoff.0$1 := (if p5$1 then FSUB32(-2147483648, v11$1) else $payoff.0$1);
    $payoff.0$2 := (if p5$2 then FSUB32(-2147483648, v11$2) else $payoff.0$2);
    call {:sourceloc_num 22} v17$1, v17$2 := $_Z3maxff(0, p1$1, $payoff.0$1, p1$2, $payoff.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z3maxff"} true;
    $sumPayoffs.0$1, $i.0$1 := (if p1$1 then FADD32($sumPayoffs.0$1, v17$1) else $sumPayoffs.0$1), (if p1$1 then BV32_ADD($i.0$1, BV32_MUL(num_groups_x, group_size_x)) else $i.0$1);
    $sumPayoffs.0$2, $i.0$2 := (if p1$2 then FADD32($sumPayoffs.0$2, v17$2) else $sumPayoffs.0$2), (if p1$2 then BV32_ADD($i.0$2, BV32_MUL(num_groups_x, group_size_x)) else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    $$sdata.i$1[local_id_x$1] := $sumPayoffs.0$1;
    $$sdata.i$2[local_id_x$2] := $sumPayoffs.0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 26} $bugle_barrier_duplicated_0(-1, -1);
    $s.i.0 := BV32_UDIV(group_size_x, 2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 27} true;
    v18 := BV32_UGT($s.i.0, 0);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    goto __partitioned_block_$truebb2_0, $falsebb2;

  $falsebb2:
    assume {:partition} !v18;
    v22$1 := $$sdata.i$1[0];
    v22$2 := $$sdata.i$2[0];
    v23$1 := local_id_x$1 == 0;
    v23$2 := local_id_x$2 == 0;
    p9$1 := (if v23$1 then v23$1 else p9$1);
    p9$2 := (if v23$2 then v23$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$values(p9$1, group_id_x$1, v22$1, $$values[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(p9$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$values(p9$2, group_id_x$2, v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[group_id_x$1] := (if p9$1 then v22$1 else $$values[group_id_x$1]);
    $$values[group_id_x$2] := (if p9$2 then v22$2 else $$values[group_id_x$2]);
    return;

  __partitioned_block_$truebb2_0:
    assume {:partition} v18;
    v19$1 := BV32_ULT(local_id_x$1, $s.i.0);
    v19$2 := BV32_ULT(local_id_x$2, $s.i.0);
    p8$1 := (if v19$1 then v19$1 else p8$1);
    p8$2 := (if v19$2 then v19$2 else p8$2);
    v20$1 := (if p8$1 then $$sdata.i$1[BV32_ADD(local_id_x$1, $s.i.0)] else v20$1);
    v20$2 := (if p8$2 then $$sdata.i$2[BV32_ADD(local_id_x$2, $s.i.0)] else v20$2);
    v21$1 := (if p8$1 then $$sdata.i$1[local_id_x$1] else v21$1);
    v21$2 := (if p8$2 then $$sdata.i$2[local_id_x$2] else v21$2);
    $$sdata.i$1[local_id_x$1] := (if p8$1 then FADD32(v21$1, v20$1) else $$sdata.i$1[local_id_x$1]);
    $$sdata.i$2[local_id_x$2] := (if p8$2 then FADD32(v21$2, v20$2) else $$sdata.i$2[local_id_x$2]);
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 34} $bugle_barrier_duplicated_1(-1, -1);
    $s.i.0 := BV32_LSHR($s.i.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $11;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $3;
}



procedure {:source_name "_Z3maxff"} $_Z3maxff($0: int, _P$1: bool, $1$1: int, _P$2: bool, $1$2: int) returns ($ret$1: int, $ret$2: int);
  requires _P$1 ==> $0 == 0;
  requires _P$2 ==> $0 == 0;



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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$values, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$values, _TRACKING;



const _WATCHED_VALUE_$$values: int;

procedure {:inline 1} _LOG_READ_$$values(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_READ_$$values(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _READ_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_READ_$$values(_P: bool, _offset: int, _value: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$values);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$values: bool;

procedure {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _WRITE_HAS_OCCURRED_$$values);
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$values);
    return;
}



procedure _CHECK_WRITE_$$values(_P: bool, _offset: int, _value: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_ATOMIC_$$values(_P: bool, _offset: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$values);
    return;
}



const _WATCHED_VALUE_$$paths: int;

procedure {:inline 1} _LOG_READ_$$paths(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$paths;



implementation {:inline 1} _LOG_READ_$$paths(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then true else _READ_HAS_OCCURRED_$$paths);
    return;
}



procedure _CHECK_READ_$$paths(_P: bool, _offset: int, _value: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$paths);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$paths: bool;

procedure {:inline 1} _LOG_WRITE_$$paths(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$paths, _WRITE_READ_BENIGN_FLAG_$$paths;



implementation {:inline 1} _LOG_WRITE_$$paths(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then true else _WRITE_HAS_OCCURRED_$$paths);
    _WRITE_READ_BENIGN_FLAG_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$paths);
    return;
}



procedure _CHECK_WRITE_$$paths(_P: bool, _offset: int, _value: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths != _value);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths != _value);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$paths(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$paths;



implementation {:inline 1} _LOG_ATOMIC_$$paths(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$paths);
    return;
}



procedure _CHECK_ATOMIC_$$paths(_P: bool, _offset: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$paths(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$paths;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$paths(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$paths := (if _P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$paths);
    return;
}



const _WATCHED_VALUE_$$option: int;

procedure {:inline 1} _LOG_READ_$$option(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$option;



implementation {:inline 1} _LOG_READ_$$option(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then true else _READ_HAS_OCCURRED_$$option);
    return;
}



procedure _CHECK_READ_$$option(_P: bool, _offset: int, _value: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$option);
  requires {:source_name "option"} {:array "$$option"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$option: bool;

procedure {:inline 1} _LOG_WRITE_$$option(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$option, _WRITE_READ_BENIGN_FLAG_$$option;



implementation {:inline 1} _LOG_WRITE_$$option(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then true else _WRITE_HAS_OCCURRED_$$option);
    _WRITE_READ_BENIGN_FLAG_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$option);
    return;
}



procedure _CHECK_WRITE_$$option(_P: bool, _offset: int, _value: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option != _value);
  requires {:source_name "option"} {:array "$$option"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option != _value);
  requires {:source_name "option"} {:array "$$option"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$option(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$option;



implementation {:inline 1} _LOG_ATOMIC_$$option(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$option);
    return;
}



procedure _CHECK_ATOMIC_$$option(_P: bool, _offset: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);
  requires {:source_name "option"} {:array "$$option"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$option(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$option;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$option(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$option := (if _P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$option);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon1;

  anon1:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon3;

  anon3:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$values;
    goto anon3;

  anon4_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon1;

  anon1:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon3;

  anon3:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$values;
    goto anon3;

  anon4_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



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
