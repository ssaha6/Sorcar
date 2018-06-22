type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$input_h0"} {:global} {:elem_width 32} {:source_name "input_h0"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input_h0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input_h0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input_h0: bool;

axiom {:array_info "$$input_omega"} {:global} {:elem_width 32} {:source_name "input_omega"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input_omega: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input_omega: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input_omega: bool;

var {:source_name "output_ht"} {:global} $$output_ht: [int]int;

axiom {:array_info "$$output_ht"} {:global} {:elem_width 32} {:source_name "output_ht"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output_ht: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output_ht: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output_ht: bool;

axiom {:array_info "$$h0_k"} {:elem_width 32} {:source_name "h0_k"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$h0_mk"} {:elem_width 32} {:source_name "h0_mk"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$ht"} {:elem_width 32} {:source_name "ht"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$dt_x"} {:elem_width 32} {:source_name "dt_x"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$dt_y"} {:elem_width 32} {:source_name "dt_y"} {:source_elem_width 64} {:source_dimensions "1"} true;

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

function FCOS64(int) : int;

function FDIV64(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSIN64(int) : int;

function FSQRT64(int) : int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "update_spectrum"} {:kernel} $_Z15update_spectrumPK6float2PKfPS_jjjjjjf($immutable_actualdim: int, $immutable_inwidth: int, $immutable_outwidth: int, $immutable_outheight: int, $immutable_dddressoffset: int, $immutable_addressoffset: int, $perframe_time: int);
  requires {:sourceloc_num 0} {:thread 1} (if $immutable_actualdim == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $immutable_inwidth == 516 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $immutable_outwidth == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $immutable_outheight == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 4} {:thread 1} (if $immutable_dddressoffset == 262144 then 1 else 0) != 0;
  requires {:sourceloc_num 5} {:thread 1} (if $immutable_addressoffset == 524288 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$input_h0 && !_WRITE_HAS_OCCURRED_$$input_h0 && !_ATOMIC_HAS_OCCURRED_$$input_h0;
  requires !_READ_HAS_OCCURRED_$$input_omega && !_WRITE_HAS_OCCURRED_$$input_omega && !_ATOMIC_HAS_OCCURRED_$$input_omega;
  requires !_READ_HAS_OCCURRED_$$output_ht && !_WRITE_HAS_OCCURRED_$$output_ht && !_ATOMIC_HAS_OCCURRED_$$output_ht;
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
  modifies _WRITE_HAS_OCCURRED_$$output_ht, _WRITE_READ_BENIGN_FLAG_$$output_ht, _WRITE_READ_BENIGN_FLAG_$$output_ht;



implementation {:source_name "update_spectrum"} {:kernel} $_Z15update_spectrumPK6float2PKfPS_jjjjjjf($immutable_actualdim: int, $immutable_inwidth: int, $immutable_outwidth: int, $immutable_outheight: int, $immutable_dddressoffset: int, $immutable_addressoffset: int, $perframe_time: int)
{
  var $rsqr_k.0$1: int;
  var $rsqr_k.0$2: int;
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
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: bool;
  var v21$2: bool;
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
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: int;
  var v30$2: int;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $immutable_inwidth), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    v0$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $immutable_inwidth), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    v1$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $immutable_outwidth), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    v1$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $immutable_outwidth), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    havoc v2$1, v2$2;
    $$h0_k$0$1 := v2$1;
    $$h0_k$0$2 := v2$2;
    havoc v3$1, v3$2;
    $$h0_k$1$1 := v3$1;
    $$h0_k$1$2 := v3$2;
    havoc v4$1, v4$2;
    $$h0_mk$0$1 := v4$1;
    $$h0_mk$0$2 := v4$2;
    havoc v5$1, v5$2;
    $$h0_mk$1$1 := v5$1;
    $$h0_mk$1$2 := v5$2;
    havoc v6$1, v6$2;
    v7$1 := FP64_CONV32(FSIN64(FP32_CONV64(FMUL32(v6$1, $perframe_time))));
    v7$2 := FP64_CONV32(FSIN64(FP32_CONV64(FMUL32(v6$2, $perframe_time))));
    havoc v8$1, v8$2;
    v9$1 := FP64_CONV32(FCOS64(FP32_CONV64(FMUL32(v8$1, $perframe_time))));
    v9$2 := FP64_CONV32(FCOS64(FP32_CONV64(FMUL32(v8$2, $perframe_time))));
    v10$1 := $$h0_k$0$1;
    v10$2 := $$h0_k$0$2;
    v11$1 := $$h0_mk$0$1;
    v11$2 := $$h0_mk$0$2;
    v12$1 := $$h0_k$1$1;
    v12$2 := $$h0_k$1$2;
    v13$1 := $$h0_mk$1$1;
    v13$2 := $$h0_mk$1$2;
    $$ht$0$1 := FSUB32(FMUL32(FADD32(v10$1, v11$1), v9$1), FMUL32(FADD32(v12$1, v13$1), v7$1));
    $$ht$0$2 := FSUB32(FMUL32(FADD32(v10$2, v11$2), v9$2), FMUL32(FADD32(v12$2, v13$2), v7$2));
    v14$1 := $$h0_k$0$1;
    v14$2 := $$h0_k$0$2;
    v15$1 := $$h0_mk$0$1;
    v15$2 := $$h0_mk$0$2;
    v16$1 := $$h0_k$1$1;
    v16$2 := $$h0_k$1$2;
    v17$1 := $$h0_mk$1$1;
    v17$2 := $$h0_mk$1$2;
    $$ht$1$1 := FADD32(FMUL32(FSUB32(v14$1, v15$1), v7$1), FMUL32(FSUB32(v16$1, v17$1), v9$1));
    $$ht$1$2 := FADD32(FMUL32(FSUB32(v14$2, v15$2), v7$2), FMUL32(FSUB32(v16$2, v17$2), v9$2));
    v18$1 := FSUB32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(UI32_TO_FP32($immutable_actualdim), 1056964608));
    v18$2 := FSUB32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(UI32_TO_FP32($immutable_actualdim), 1056964608));
    v19$1 := FSUB32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1)), FMUL32(UI32_TO_FP32($immutable_actualdim), 1056964608));
    v19$2 := FSUB32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2)), FMUL32(UI32_TO_FP32($immutable_actualdim), 1056964608));
    v20$1 := FADD32(FMUL32(v18$1, v18$1), FMUL32(v19$1, v19$1));
    v20$2 := FADD32(FMUL32(v18$2, v18$2), FMUL32(v19$2, v19$2));
    v21$1 := FLT32(730643660, v20$1);
    v21$2 := FLT32(730643660, v20$2);
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
    p0$1 := (if v21$1 then v21$1 else p0$1);
    p0$2 := (if v21$2 then v21$2 else p0$2);
    p1$1 := (if !v21$1 then !v21$1 else p1$1);
    p1$2 := (if !v21$2 then !v21$2 else p1$2);
    $rsqr_k.0$1 := (if p0$1 then FP64_CONV32(FDIV64(4607182418800017408, FSQRT64(FP32_CONV64(v20$1)))) else $rsqr_k.0$1);
    $rsqr_k.0$2 := (if p0$2 then FP64_CONV32(FDIV64(4607182418800017408, FSQRT64(FP32_CONV64(v20$2)))) else $rsqr_k.0$2);
    $rsqr_k.0$1 := (if p1$1 then 0 else $rsqr_k.0$1);
    $rsqr_k.0$2 := (if p1$2 then 0 else $rsqr_k.0$2);
    v22$1 := FMUL32(v18$1, $rsqr_k.0$1);
    v22$2 := FMUL32(v18$2, $rsqr_k.0$2);
    v23$1 := FMUL32(v19$1, $rsqr_k.0$1);
    v23$2 := FMUL32(v19$2, $rsqr_k.0$2);
    v24$1 := $$ht$1$1;
    v24$2 := $$ht$1$2;
    $$dt_x$0$1 := FMUL32(v24$1, v22$1);
    $$dt_x$0$2 := FMUL32(v24$2, v22$2);
    v25$1 := $$ht$0$1;
    v25$2 := $$ht$0$2;
    $$dt_x$1$1 := FMUL32(FSUB32(-2147483648, v25$1), v22$1);
    $$dt_x$1$2 := FMUL32(FSUB32(-2147483648, v25$2), v22$2);
    v26$1 := $$ht$1$1;
    v26$2 := $$ht$1$2;
    $$dt_y$0$1 := FMUL32(v26$1, v23$1);
    $$dt_y$0$2 := FMUL32(v26$2, v23$2);
    v27$1 := $$ht$0$1;
    v27$2 := $$ht$0$2;
    $$dt_y$1$1 := FMUL32(FSUB32(-2147483648, v27$1), v23$1);
    $$dt_y$1$2 := FMUL32(FSUB32(-2147483648, v27$2), v23$2);
    v28$1 := BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $immutable_outwidth);
    v28$2 := BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $immutable_outwidth);
    p2$1 := (if v28$1 then v28$1 else p2$1);
    p2$2 := (if v28$2 then v28$2 else p2$2);
    v29$1 := (if p2$1 then BV32_ULT(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $immutable_outwidth) else v29$1);
    v29$2 := (if p2$2 then BV32_ULT(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $immutable_outwidth) else v29$2);
    p3$1 := (if p2$1 && v29$1 then v29$1 else p3$1);
    p3$2 := (if p2$2 && v29$2 then v29$2 else p3$2);
    v30$1 := (if p3$1 then $$ht$0$1 else v30$1);
    v30$2 := (if p3$2 then $$ht$0$2 else v30$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$output_ht(p3$1, BV32_MUL(v1$1, 2), v30$1, $$output_ht[BV32_MUL(v1$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_MUL(v1$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$output_ht(p3$2, BV32_MUL(v1$2, 2), v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_MUL(v1$1, 2)] := (if p3$1 then v30$1 else $$output_ht[BV32_MUL(v1$1, 2)]);
    $$output_ht[BV32_MUL(v1$2, 2)] := (if p3$2 then v30$2 else $$output_ht[BV32_MUL(v1$2, 2)]);
    v31$1 := (if p3$1 then $$ht$1$1 else v31$1);
    v31$2 := (if p3$2 then $$ht$1$2 else v31$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$output_ht(p3$1, BV32_ADD(BV32_MUL(v1$1, 2), 1), v31$1, $$output_ht[BV32_ADD(BV32_MUL(v1$1, 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_ADD(BV32_MUL(v1$2, 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$output_ht(p3$2, BV32_ADD(BV32_MUL(v1$2, 2), 1), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_ADD(BV32_MUL(v1$1, 2), 1)] := (if p3$1 then v31$1 else $$output_ht[BV32_ADD(BV32_MUL(v1$1, 2), 1)]);
    $$output_ht[BV32_ADD(BV32_MUL(v1$2, 2), 1)] := (if p3$2 then v31$2 else $$output_ht[BV32_ADD(BV32_MUL(v1$2, 2), 1)]);
    v32$1 := (if p3$1 then $$dt_x$0$1 else v32$1);
    v32$2 := (if p3$2 then $$dt_x$0$2 else v32$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$output_ht(p3$1, BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2), v32$1, $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$output_ht(p3$2, BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2), v32$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2)] := (if p3$1 then v32$1 else $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2)]);
    $$output_ht[BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2)] := (if p3$2 then v32$2 else $$output_ht[BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2)]);
    v33$1 := (if p3$1 then $$dt_x$1$1 else v33$1);
    v33$2 := (if p3$2 then $$dt_x$1$2 else v33$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$output_ht(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2), 1), v33$1, $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$output_ht(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2), 1), v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2), 1)] := (if p3$1 then v33$1 else $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_dddressoffset), 2), 1)]);
    $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2), 1)] := (if p3$2 then v33$2 else $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_dddressoffset), 2), 1)]);
    v34$1 := (if p3$1 then $$dt_y$0$1 else v34$1);
    v34$2 := (if p3$2 then $$dt_y$0$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$output_ht(p3$1, BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2), v34$1, $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$output_ht(p3$2, BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2), v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2)] := (if p3$1 then v34$1 else $$output_ht[BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2)]);
    $$output_ht[BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2)] := (if p3$2 then v34$2 else $$output_ht[BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2)]);
    v35$1 := (if p3$1 then $$dt_y$1$1 else v35$1);
    v35$2 := (if p3$2 then $$dt_y$1$2 else v35$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$output_ht(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2), 1), v35$1, $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$output_ht(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2), 1), v35$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output_ht"} true;
    $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2), 1)] := (if p3$1 then v35$1 else $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, $immutable_addressoffset), 2), 1)]);
    $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2), 1)] := (if p3$2 then v35$2 else $$output_ht[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, $immutable_addressoffset), 2), 1)]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$h0_k$0$1: int;

var $$h0_k$0$2: int;

var $$h0_k$1$1: int;

var $$h0_k$1$2: int;

var $$h0_mk$0$1: int;

var $$h0_mk$0$2: int;

var $$h0_mk$1$1: int;

var $$h0_mk$1$2: int;

var $$ht$0$1: int;

var $$ht$0$2: int;

var $$ht$1$1: int;

var $$ht$1$2: int;

var $$dt_x$0$1: int;

var $$dt_x$0$2: int;

var $$dt_x$1$1: int;

var $$dt_x$1$2: int;

var $$dt_y$0$1: int;

var $$dt_y$0$2: int;

var $$dt_y$1$1: int;

var $$dt_y$1$2: int;

const _WATCHED_VALUE_$$input_h0: int;

procedure {:inline 1} _LOG_READ_$$input_h0(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input_h0;



implementation {:inline 1} _LOG_READ_$$input_h0(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input_h0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_h0 == _value then true else _READ_HAS_OCCURRED_$$input_h0);
    return;
}



procedure _CHECK_READ_$$input_h0(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input_h0);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input_h0: bool;

procedure {:inline 1} _LOG_WRITE_$$input_h0(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input_h0, _WRITE_READ_BENIGN_FLAG_$$input_h0;



implementation {:inline 1} _LOG_WRITE_$$input_h0(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input_h0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_h0 == _value then true else _WRITE_HAS_OCCURRED_$$input_h0);
    _WRITE_READ_BENIGN_FLAG_$$input_h0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_h0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input_h0);
    return;
}



procedure _CHECK_WRITE_$$input_h0(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_h0 != _value);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_h0 != _value);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input_h0(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input_h0;



implementation {:inline 1} _LOG_ATOMIC_$$input_h0(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input_h0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input_h0);
    return;
}



procedure _CHECK_ATOMIC_$$input_h0(_P: bool, _offset: int);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset);
  requires {:source_name "input_h0"} {:array "$$input_h0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_h0(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input_h0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_h0(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input_h0 := (if _P && _WRITE_HAS_OCCURRED_$$input_h0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input_h0);
    return;
}



const _WATCHED_VALUE_$$input_omega: int;

procedure {:inline 1} _LOG_READ_$$input_omega(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input_omega;



implementation {:inline 1} _LOG_READ_$$input_omega(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input_omega := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_omega == _value then true else _READ_HAS_OCCURRED_$$input_omega);
    return;
}



procedure _CHECK_READ_$$input_omega(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input_omega);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input_omega: bool;

procedure {:inline 1} _LOG_WRITE_$$input_omega(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input_omega, _WRITE_READ_BENIGN_FLAG_$$input_omega;



implementation {:inline 1} _LOG_WRITE_$$input_omega(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input_omega := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_omega == _value then true else _WRITE_HAS_OCCURRED_$$input_omega);
    _WRITE_READ_BENIGN_FLAG_$$input_omega := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_omega == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input_omega);
    return;
}



procedure _CHECK_WRITE_$$input_omega(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_omega != _value);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_omega != _value);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input_omega(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input_omega;



implementation {:inline 1} _LOG_ATOMIC_$$input_omega(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input_omega := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input_omega);
    return;
}



procedure _CHECK_ATOMIC_$$input_omega(_P: bool, _offset: int);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset);
  requires {:source_name "input_omega"} {:array "$$input_omega"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_omega(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input_omega;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_omega(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input_omega := (if _P && _WRITE_HAS_OCCURRED_$$input_omega && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input_omega);
    return;
}



const _WATCHED_VALUE_$$output_ht: int;

procedure {:inline 1} _LOG_READ_$$output_ht(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output_ht;



implementation {:inline 1} _LOG_READ_$$output_ht(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output_ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_ht == _value then true else _READ_HAS_OCCURRED_$$output_ht);
    return;
}



procedure _CHECK_READ_$$output_ht(_P: bool, _offset: int, _value: int);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output_ht);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output_ht: bool;

procedure {:inline 1} _LOG_WRITE_$$output_ht(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output_ht, _WRITE_READ_BENIGN_FLAG_$$output_ht;



implementation {:inline 1} _LOG_WRITE_$$output_ht(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output_ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_ht == _value then true else _WRITE_HAS_OCCURRED_$$output_ht);
    _WRITE_READ_BENIGN_FLAG_$$output_ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_ht == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output_ht);
    return;
}



procedure _CHECK_WRITE_$$output_ht(_P: bool, _offset: int, _value: int);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_ht != _value);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_ht != _value);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output_ht(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output_ht;



implementation {:inline 1} _LOG_ATOMIC_$$output_ht(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output_ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output_ht);
    return;
}



procedure _CHECK_ATOMIC_$$output_ht(_P: bool, _offset: int);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset);
  requires {:source_name "output_ht"} {:array "$$output_ht"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output_ht;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_ht(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output_ht := (if _P && _WRITE_HAS_OCCURRED_$$output_ht && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output_ht);
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
