type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(y: int, _P$1: bool, x$1: [int]int, _P$2: bool, x$2: [int]int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);
  requires _P$1 ==> y == 0;
  requires _P$2 ==> y == 0;



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$g_idata"} {:global} {:elem_width 32} {:source_name "g_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_idata: bool;

var {:source_name "g_odata"} {:global} $$g_odata: [int]int;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

var {:source_name "sdata"} {:group_shared} $$sdata: [bv1][int]int;

axiom {:array_info "$$sdata"} {:group_shared} {:elem_width 32} {:source_name "sdata"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sdata: bool;

axiom {:array_info "$$retirementCount"} {:global} {:elem_width 32} {:source_name "retirementCount"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$retirementCount: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$retirementCount: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$retirementCount: bool;

var {:source_name "amLast"} {:group_shared} $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: [bv1][int]int;

axiom {:array_info "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:group_shared} {:elem_width 8} {:source_name "amLast"} {:source_elem_width 8} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: bool;

var {:source_name "smem"} {:group_shared} $$smem: [bv1][int]int;

axiom {:array_info "$$smem"} {:group_shared} {:elem_width 32} {:source_name "smem"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$smem: bool;

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

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "reduceSinglePass<128, true>"} {:kernel} $_Z16reduceSinglePassILj128ELb1EEvPKfPfj($n: int);
  requires !_READ_HAS_OCCURRED_$$g_idata && !_WRITE_HAS_OCCURRED_$$g_idata && !_ATOMIC_HAS_OCCURRED_$$g_idata;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$retirementCount && !_WRITE_HAS_OCCURRED_$$retirementCount && !_ATOMIC_HAS_OCCURRED_$$retirementCount;
  requires !_READ_HAS_OCCURRED_$$sdata && !_WRITE_HAS_OCCURRED_$$sdata && !_ATOMIC_HAS_OCCURRED_$$sdata;
  requires !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
  requires !_READ_HAS_OCCURRED_$$smem && !_WRITE_HAS_OCCURRED_$$smem && !_ATOMIC_HAS_OCCURRED_$$smem;
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
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, $$g_odata, _TRACKING, _READ_HAS_OCCURRED_$$sdata, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _ATOMIC_HAS_OCCURRED_$$retirementCount, _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, _READ_HAS_OCCURRED_$$g_odata, _WRITE_HAS_OCCURRED_$$smem, _WRITE_READ_BENIGN_FLAG_$$smem, _WRITE_READ_BENIGN_FLAG_$$smem, _TRACKING, _READ_HAS_OCCURRED_$$smem, _TRACKING, _WRITE_HAS_OCCURRED_$$retirementCount, _WRITE_READ_BENIGN_FLAG_$$retirementCount, _WRITE_READ_BENIGN_FLAG_$$retirementCount;



implementation {:source_name "reduceSinglePass<128, true>"} {:kernel} $_Z16reduceSinglePassILj128ELb1EEvPKfPfj($n: int)
{
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $mySum.i.0$1: int;
  var $mySum.i.0$2: int;
  var $.01$1: int;
  var $.01$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $mySum.0$1: int;
  var $mySum.0$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
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
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
  var v20: bool;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v30$1: bool;
  var v30$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: int;
  var v26$2: int;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: int;
  var v43$2: int;
  var _abstracted_call_arg_0$1: int;
  var _abstracted_call_arg_0$2: int;
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
  var p13$1: bool;
  var p13$2: bool;
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var p17$1: bool;
  var p17$2: bool;
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$g_odata$ghost$$12: bool;


  $0:
    $i.i.0$1, $mySum.i.0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 256), local_id_x$1), 0;
    $i.i.0$2, $mySum.i.0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 256), local_id_x$2), 0;
    p0$1 := false;
    p0$2 := false;
    p12$1 := false;
    p12$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_ULT($i.i.0$1, $n) else v0$1);
    v0$2 := (if p0$2 then BV32_ULT($i.i.0$2, $n) else v0$2);
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
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p20$1 := false;
    p20$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p1$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p1$2 then _HAVOC_int$2 else v1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    $i.i.0$1, $mySum.i.0$1 := (if p1$1 then BV32_ADD($i.i.0$1, BV32_MUL(256, num_groups_x)) else $i.i.0$1), (if p1$1 then FADD32(FADD32($mySum.i.0$1, v1$1), v2$1) else $mySum.i.0$1);
    $i.i.0$2, $mySum.i.0$2 := (if p1$2 then BV32_ADD($i.i.0$2, BV32_MUL(256, num_groups_x)) else $i.i.0$2), (if p1$2 then FADD32(FADD32($mySum.i.0$2, v1$2), v2$2) else $mySum.i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$sdata(true, local_id_x$1, $mySum.i.0$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$sdata(true, local_id_x$2, $mySum.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := $mySum.i.0$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $mySum.i.0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    v3$1 := BV32_ULT(local_id_x$1, 64);
    v3$2 := BV32_ULT(local_id_x$2, 64);
    p3$1 := (if v3$1 then v3$1 else p3$1);
    p3$2 := (if v3$2 then v3$2 else p3$2);
    p4$1 := (if !v3$1 then !v3$1 else p4$1);
    p4$2 := (if !v3$2 then !v3$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$sdata(p3$1, BV32_ADD(local_id_x$1, 64), $$sdata[1bv1][BV32_ADD(local_id_x$1, 64)]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$sdata(p3$2, BV32_ADD(local_id_x$2, 64), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v4$1 := (if p3$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 64)] else v4$1);
    v4$2 := (if p3$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)] else v4$2);
    v5$1 := (if p3$1 then FADD32($mySum.i.0$1, v4$1) else v5$1);
    v5$2 := (if p3$2 then FADD32($mySum.i.0$2, v4$2) else v5$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$sdata(p3$1, local_id_x$1, v5$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p3$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$sdata(p3$2, local_id_x$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p3$1 then v5$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p3$2 then v5$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $.01$1 := (if p3$1 then v5$1 else $.01$1);
    $.01$2 := (if p3$2 then v5$2 else $.01$2);
    $.01$1 := (if p4$1 then $mySum.i.0$1 else $.01$1);
    $.01$2 := (if p4$2 then $mySum.i.0$2 else $.01$2);
    goto __partitioned_block_$1.tail_2;

  __partitioned_block_$1.tail_2:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_1(-1, -1);
    v6$1 := BV32_ULT(local_id_x$1, 32);
    v6$2 := BV32_ULT(local_id_x$2, 32);
    p5$1 := (if v6$1 then v6$1 else p5$1);
    p5$2 := (if v6$2 then v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 32), $$sdata[1bv1][BV32_ADD(local_id_x$1, 32)]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 32), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v7$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 32)] else v7$1);
    v7$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)] else v7$2);
    v8$1 := (if p5$1 then FADD32($.01$1, v7$1) else v8$1);
    v8$2 := (if p5$2 then FADD32($.01$2, v7$2) else v8$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v8$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v8$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v8$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 16), $$sdata[1bv1][BV32_ADD(local_id_x$1, 16)]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 16), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v9$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 16)] else v9$1);
    v9$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)] else v9$2);
    v10$1 := (if p5$1 then FADD32(v8$1, v9$1) else v10$1);
    v10$2 := (if p5$2 then FADD32(v8$2, v9$2) else v10$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v10$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v10$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v10$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 8), $$sdata[1bv1][BV32_ADD(local_id_x$1, 8)]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 8), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v11$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 8)] else v11$1);
    v11$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)] else v11$2);
    v12$1 := (if p5$1 then FADD32(v10$1, v11$1) else v12$1);
    v12$2 := (if p5$2 then FADD32(v10$2, v11$2) else v12$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v12$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v12$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v12$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 4), $$sdata[1bv1][BV32_ADD(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 4), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v13$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 4)] else v13$1);
    v13$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)] else v13$2);
    v14$1 := (if p5$1 then FADD32(v12$1, v13$1) else v14$1);
    v14$2 := (if p5$2 then FADD32(v12$2, v13$2) else v14$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v14$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v14$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v14$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 2), $$sdata[1bv1][BV32_ADD(local_id_x$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 2), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v15$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 2)] else v15$1);
    v15$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)] else v15$2);
    v16$1 := (if p5$1 then FADD32(v14$1, v15$1) else v16$1);
    v16$2 := (if p5$2 then FADD32(v14$2, v15$2) else v16$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v16$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v16$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v16$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 1), $$sdata[1bv1][BV32_ADD(local_id_x$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 1), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v17$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 1)] else v17$1);
    v17$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)] else v17$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, FADD32(v16$1, v17$1), $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, FADD32(v16$2, v17$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then FADD32(v16$1, v17$1) else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then FADD32(v16$2, v17$2) else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    v18$1 := local_id_x$1 == 0;
    v18$2 := local_id_x$2 == 0;
    p7$1 := (if v18$1 then v18$1 else p7$1);
    p7$2 := (if v18$2 then v18$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$sdata(p7$1, 0, $$sdata[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$sdata(p7$2, 0, $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v19$1 := (if p7$1 then $$sdata[1bv1][0] else v19$1);
    v19$2 := (if p7$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v19$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$g_odata(p7$1, group_id_x$1, v19$1, $$g_odata[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p7$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$g_odata(p7$2, group_id_x$2, v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[group_id_x$1] := (if p7$1 then v19$1 else $$g_odata[group_id_x$1]);
    $$g_odata[group_id_x$2] := (if p7$2 then v19$2 else $$g_odata[group_id_x$2]);
    v20 := BV32_UGT(num_groups_x, 1);
    goto __partitioned_block_$truebb3_0, $falsebb3;

  $falsebb3:
    assume {:partition} !v20;
    goto $21;

  $21:
    return;

  __partitioned_block_$truebb3_0:
    assume {:partition} v20;
    call {:sourceloc_num 32} $__threadfence();
    assume {:captureState "call_return_state_0"} {:procedureName "$__threadfence"} true;
    v21$1 := local_id_x$1 == 0;
    v21$2 := local_id_x$2 == 0;
    p9$1 := (if v21$1 then v21$1 else p9$1);
    p9$2 := (if v21$2 then v21$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_ATOMIC_$$retirementCount(p9$1, 0);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 34} _CHECK_ATOMIC_$$retirementCount(p9$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$retirementCount"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v22$1 := (if p9$1 then _HAVOC_int$1 else v22$1);
    v22$2 := (if p9$2 then _HAVOC_int$2 else v22$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(p9$1, 0, BV1_ZEXT8((if v22$1 == BV32_SUB(num_groups_x, 1) then 1 else 0)), $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(p9$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(p9$2, 0, BV1_ZEXT8((if v22$2 == BV32_SUB(num_groups_x, 1) then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} true;
    $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[1bv1][0] := (if p9$1 then BV1_ZEXT8((if v22$1 == BV32_SUB(num_groups_x, 1) then 1 else 0)) else $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[1bv1][0]);
    $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p9$2 then BV1_ZEXT8((if v22$2 == BV32_SUB(num_groups_x, 1) then 1 else 0)) else $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$truebb3_1;

  __partitioned_block_$truebb3_1:
    call {:sourceloc_num 37} $bugle_barrier_duplicated_2(-1, -1);
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(true, 0, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(true, 0, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} true;
    v23$1 := $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[1bv1][0];
    v23$2 := $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v24$1 := BV_EXTRACT(v23$1, 1, 0) == 1;
    v24$2 := BV_EXTRACT(v23$2, 1, 0) == 1;
    p11$1 := (if v24$1 then v24$1 else p11$1);
    p11$2 := (if v24$2 then v24$2 else p11$2);
    $i.0$1, $mySum.0$1 := (if p11$1 then local_id_x$1 else $i.0$1), (if p11$1 then 0 else $mySum.0$1);
    $i.0$2, $mySum.0$2 := (if p11$2 then local_id_x$2 else $i.0$2), (if p11$2 then 0 else $mySum.0$2);
    p12$1 := (if p11$1 then true else p12$1);
    p12$2 := (if p11$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$g_odata$ghost$$12 := _READ_HAS_OCCURRED_$$g_odata;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b10 ==> !p11$1 ==> _READ_HAS_OCCURRED_$$g_odata$ghost$$12 == _READ_HAS_OCCURRED_$$g_odata;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _READ_HAS_OCCURRED_$$g_odata ==> _WATCHED_OFFSET mod 128 == local_id_x$1 mod 128;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p11"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _READ_HAS_OCCURRED_$$g_odata ==> BV_EXTRACT(v23$1, 1, 0) == 1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$g_odata ==> BV32_UGT(num_groups_x, 1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_UGT(num_groups_x, 1) && BV_EXTRACT(v23$1, 1, 0) == 1 && BV32_ULT($i.0$1, num_groups_x) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_UGT(num_groups_x, 1) && BV_EXTRACT(v23$2, 1, 0) == 1 && BV32_ULT($i.0$2, num_groups_x) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b5 ==> p12$1 ==> BV32_UGT(num_groups_x, 1) && BV_EXTRACT(v23$1, 1, 0) == 1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b5 ==> p12$2 ==> BV32_UGT(num_groups_x, 1) && BV_EXTRACT(v23$2, 1, 0) == 1;
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b4 ==> BV32_UGE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b4 ==> BV32_UGE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b3 ==> BV32_ULE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b3 ==> BV32_ULE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b2 ==> BV32_SGE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b2 ==> BV32_SGE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b1 ==> BV32_SLE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b1 ==> BV32_SLE($i.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p12$1 ==> _b0 ==> $i.0$1 mod 128 == local_id_x$1 mod 128;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p12$2 ==> _b0 ==> $i.0$2 mod 128 == local_id_x$2 mod 128;
    assert {:block_sourceloc} {:sourceloc_num 40} p12$1 ==> true;
    v25$1 := (if p12$1 then BV32_ULT($i.0$1, num_groups_x) else v25$1);
    v25$2 := (if p12$2 then BV32_ULT($i.0$2, num_groups_x) else v25$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p13$1 := (if p12$1 && v25$1 then v25$1 else p13$1);
    p13$2 := (if p12$2 && v25$2 then v25$2 else p13$2);
    p12$1 := (if p12$1 && !v25$1 then v25$1 else p12$1);
    p12$2 := (if p12$2 && !v25$2 then v25$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$g_odata(p13$1, $i.0$1, $$g_odata[$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$g_odata(p13$2, $i.0$2, $$g_odata[$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_odata"} true;
    v26$1 := (if p13$1 then $$g_odata[$i.0$1] else v26$1);
    v26$2 := (if p13$2 then $$g_odata[$i.0$2] else v26$2);
    $i.0$1, $mySum.0$1 := (if p13$1 then BV32_ADD($i.0$1, 128) else $i.0$1), (if p13$1 then FADD32($mySum.0$1, v26$1) else $mySum.0$1);
    $i.0$2, $mySum.0$2 := (if p13$2 then BV32_ADD($i.0$2, 128) else $i.0$2), (if p13$2 then FADD32($mySum.0$2, v26$2) else $mySum.0$2);
    p12$1 := (if p13$1 then true else p12$1);
    p12$2 := (if p13$2 then true else p12$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p12$1 && !p12$2;
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$smem(p11$1, local_id_x$1, $mySum.0$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p11$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$smem(p11$2, local_id_x$2, $mySum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p11$1 then $mySum.0$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p11$2 then $mySum.0$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 45} $bugle_barrier_duplicated_3(-1, -1, p11$1, p11$2);
    v27$1 := (if p11$1 then BV32_ULT(local_id_x$1, 64) else v27$1);
    v27$2 := (if p11$2 then BV32_ULT(local_id_x$2, 64) else v27$2);
    p14$1 := (if p11$1 && v27$1 then v27$1 else p14$1);
    p14$2 := (if p11$2 && v27$2 then v27$2 else p14$2);
    p15$1 := (if p11$1 && !v27$1 then !v27$1 else p15$1);
    p15$2 := (if p11$2 && !v27$2 then !v27$2 else p15$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$smem(p14$1, BV32_ADD(local_id_x$1, 64), $$smem[1bv1][BV32_ADD(local_id_x$1, 64)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$smem(p14$2, BV32_ADD(local_id_x$2, 64), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v28$1 := (if p14$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 64)] else v28$1);
    v28$2 := (if p14$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)] else v28$2);
    v29$1 := (if p14$1 then FADD32($mySum.0$1, v28$1) else v29$1);
    v29$2 := (if p14$2 then FADD32($mySum.0$2, v28$2) else v29$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$smem(p14$1, local_id_x$1, v29$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p14$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$smem(p14$2, local_id_x$2, v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p14$1 then v29$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p14$2 then v29$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $.0$1 := (if p14$1 then v29$1 else $.0$1);
    $.0$2 := (if p14$2 then v29$2 else $.0$2);
    $.0$1 := (if p15$1 then $mySum.0$1 else $.0$1);
    $.0$2 := (if p15$2 then $mySum.0$2 else $.0$2);
    goto __partitioned_block_$12.tail_2;

  __partitioned_block_$12.tail_2:
    call {:sourceloc_num 50} $bugle_barrier_duplicated_4(-1, -1, p11$1, p11$2);
    v30$1 := (if p11$1 then BV32_ULT(local_id_x$1, 32) else v30$1);
    v30$2 := (if p11$2 then BV32_ULT(local_id_x$2, 32) else v30$2);
    p16$1 := (if p11$1 && v30$1 then v30$1 else p16$1);
    p16$2 := (if p11$2 && v30$2 then v30$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 32), $$smem[1bv1][BV32_ADD(local_id_x$1, 32)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 32), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v31$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 32)] else v31$1);
    v31$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)] else v31$2);
    v32$1 := (if p16$1 then FADD32($.0$1, v31$1) else v32$1);
    v32$2 := (if p16$2 then FADD32($.0$2, v31$2) else v32$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$smem(p16$1, local_id_x$1, v32$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, v32$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then v32$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then v32$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 16), $$smem[1bv1][BV32_ADD(local_id_x$1, 16)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 16), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v33$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 16)] else v33$1);
    v33$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)] else v33$2);
    v34$1 := (if p16$1 then FADD32(v32$1, v33$1) else v34$1);
    v34$2 := (if p16$2 then FADD32(v32$2, v33$2) else v34$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$smem(p16$1, local_id_x$1, v34$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then v34$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then v34$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 8), $$smem[1bv1][BV32_ADD(local_id_x$1, 8)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 8), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v35$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 8)] else v35$1);
    v35$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)] else v35$2);
    v36$1 := (if p16$1 then FADD32(v34$1, v35$1) else v36$1);
    v36$2 := (if p16$2 then FADD32(v34$2, v35$2) else v36$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$smem(p16$1, local_id_x$1, v36$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, v36$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then v36$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then v36$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 4), $$smem[1bv1][BV32_ADD(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 4), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v37$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 4)] else v37$1);
    v37$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)] else v37$2);
    v38$1 := (if p16$1 then FADD32(v36$1, v37$1) else v38$1);
    v38$2 := (if p16$2 then FADD32(v36$2, v37$2) else v38$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$smem(p16$1, local_id_x$1, v38$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, v38$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then v38$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then v38$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 60} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 2), $$smem[1bv1][BV32_ADD(local_id_x$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 60} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 2), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v39$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 2)] else v39$1);
    v39$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)] else v39$2);
    v40$1 := (if p16$1 then FADD32(v38$1, v39$1) else v40$1);
    v40$2 := (if p16$2 then FADD32(v38$2, v39$2) else v40$2);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$smem(p16$1, local_id_x$1, v40$1, $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, v40$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then v40$1 else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then v40$2 else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$smem(p16$1, BV32_ADD(local_id_x$1, 1), $$smem[1bv1][BV32_ADD(local_id_x$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$smem(p16$2, BV32_ADD(local_id_x$2, 1), $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v41$1 := (if p16$1 then $$smem[1bv1][BV32_ADD(local_id_x$1, 1)] else v41$1);
    v41$2 := (if p16$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)] else v41$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$smem(p16$1, local_id_x$1, FADD32(v40$1, v41$1), $$smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$smem(p16$2, local_id_x$2, FADD32(v40$2, v41$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$smem"} true;
    $$smem[1bv1][local_id_x$1] := (if p16$1 then FADD32(v40$1, v41$1) else $$smem[1bv1][local_id_x$1]);
    $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then FADD32(v40$2, v41$2) else $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    v42$1 := (if p11$1 then local_id_x$1 == 0 else v42$1);
    v42$2 := (if p11$2 then local_id_x$2 == 0 else v42$2);
    p18$1 := (if p11$1 && v42$1 then v42$1 else p18$1);
    p18$2 := (if p11$2 && v42$2 then v42$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$smem(p18$1, 0, $$smem[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$smem(p18$2, 0, $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$smem"} true;
    v43$1 := (if p18$1 then $$smem[1bv1][0] else v43$1);
    v43$2 := (if p18$2 then $$smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v43$2);
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$g_odata(p18$1, 0, v43$1, $$g_odata[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p18$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$g_odata(p18$2, 0, v43$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[0] := (if p18$1 then v43$1 else $$g_odata[0]);
    $$g_odata[0] := (if p18$2 then v43$2 else $$g_odata[0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_0$1 := (if p18$1 then _HAVOC_int$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p18$2 then _HAVOC_int$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_WRITE_$$retirementCount(p18$1, 0, 0, _abstracted_call_arg_0$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$retirementCount(p18$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 68} _CHECK_WRITE_$$retirementCount(p18$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$retirementCount"} true;
    goto $21;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $12;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



procedure {:source_name "__threadfence"} $__threadfence();



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$sdata, $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, $$smem, $$g_odata, _TRACKING;



const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const _WATCHED_VALUE_$$g_idata: int;

procedure {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _READ_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_idata);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_idata, _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _WRITE_HAS_OCCURRED_$$g_idata);
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



procedure _CHECK_WRITE_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_ATOMIC_$$g_idata(_P: bool, _offset: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$retirementCount: int;

procedure {:inline 1} _LOG_READ_$$retirementCount(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$retirementCount;



implementation {:inline 1} _LOG_READ_$$retirementCount(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$retirementCount := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$retirementCount == _value then true else _READ_HAS_OCCURRED_$$retirementCount);
    return;
}



procedure _CHECK_READ_$$retirementCount(_P: bool, _offset: int, _value: int);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$retirementCount);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$retirementCount: bool;

procedure {:inline 1} _LOG_WRITE_$$retirementCount(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$retirementCount, _WRITE_READ_BENIGN_FLAG_$$retirementCount;



implementation {:inline 1} _LOG_WRITE_$$retirementCount(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$retirementCount := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$retirementCount == _value then true else _WRITE_HAS_OCCURRED_$$retirementCount);
    _WRITE_READ_BENIGN_FLAG_$$retirementCount := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$retirementCount == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$retirementCount);
    return;
}



procedure _CHECK_WRITE_$$retirementCount(_P: bool, _offset: int, _value: int);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$retirementCount != _value);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$retirementCount != _value);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$retirementCount(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$retirementCount;



implementation {:inline 1} _LOG_ATOMIC_$$retirementCount(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$retirementCount := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$retirementCount);
    return;
}



procedure _CHECK_ATOMIC_$$retirementCount(_P: bool, _offset: int);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset);
  requires {:source_name "retirementCount"} {:array "$$retirementCount"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$retirementCount(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$retirementCount;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$retirementCount(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$retirementCount := (if _P && _WRITE_HAS_OCCURRED_$$retirementCount && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$retirementCount);
    return;
}



const _WATCHED_VALUE_$$sdata: int;

procedure {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _READ_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_READ_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sdata && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sdata: bool;

procedure {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _WRITE_HAS_OCCURRED_$$sdata);
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



procedure _CHECK_WRITE_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_ATOMIC_$$sdata(_P: bool, _offset: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



const _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: int;

procedure {:inline 1} _LOG_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;



implementation {:inline 1} _LOG_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast == _value then true else _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast);
    return;
}



procedure _CHECK_READ_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;



implementation {:inline 1} _LOG_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast);
    return;
}



procedure _CHECK_WRITE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int, _value: int);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "amLast"} {:array "$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast);
    return;
}



const _WATCHED_VALUE_$$smem: int;

procedure {:inline 1} _LOG_READ_$$smem(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$smem;



implementation {:inline 1} _LOG_READ_$$smem(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$smem == _value then true else _READ_HAS_OCCURRED_$$smem);
    return;
}



procedure _CHECK_READ_$$smem(_P: bool, _offset: int, _value: int);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$smem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$smem: bool;

procedure {:inline 1} _LOG_WRITE_$$smem(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$smem, _WRITE_READ_BENIGN_FLAG_$$smem;



implementation {:inline 1} _LOG_WRITE_$$smem(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$smem == _value then true else _WRITE_HAS_OCCURRED_$$smem);
    _WRITE_READ_BENIGN_FLAG_$$smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$smem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$smem);
    return;
}



procedure _CHECK_WRITE_$$smem(_P: bool, _offset: int, _value: int);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$smem(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$smem;



implementation {:inline 1} _LOG_ATOMIC_$$smem(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$smem);
    return;
}



procedure _CHECK_ATOMIC_$$smem(_P: bool, _offset: int);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$smem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$smem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$smem(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$smem := (if _P && _WRITE_HAS_OCCURRED_$$smem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$smem);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$smem;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$retirementCount;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$g_odata;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
    goto anon5;

  anon5:
    havoc $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon6;

  anon6:
    havoc $$smem;
    goto anon7;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$smem;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$retirementCount;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$g_odata;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
    goto anon5;

  anon5:
    havoc $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon6;

  anon6:
    havoc $$smem;
    goto anon7;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$smem;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$retirementCount;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$g_odata;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
    goto anon5;

  anon5:
    havoc $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon6;

  anon6:
    havoc $$smem;
    goto anon7;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$smem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$smem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$smem;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$retirementCount;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$g_odata;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$sdata;
    goto anon5;

  anon5:
    havoc $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon6;

  anon6:
    havoc $$smem;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$smem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$smem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$smem;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$retirementCount;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$retirementCount;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$g_odata;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$sdata;
    goto anon5;

  anon5:
    havoc $$_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast;
    goto anon6;

  anon6:
    havoc $$smem;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;
