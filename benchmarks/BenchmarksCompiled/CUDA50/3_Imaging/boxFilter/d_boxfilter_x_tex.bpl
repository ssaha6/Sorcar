type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "od"} {:global} $$od: [bv32]bv32;

axiom {:array_info "$$od"} {:global} {:elem_width 32} {:source_name "od"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$od: bool;

const $arrayId$$od: arrayId;

axiom $arrayId$$od == 1bv3;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$0: arrayId;

axiom $arrayId$$0 == 2bv3;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$1: arrayId;

axiom $arrayId$$1 == 3bv3;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$2: arrayId;

axiom $arrayId$$2 == 4bv3;

axiom {:array_info "$$tex"} {:global} {:elem_width 8} {:source_name "tex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex: bool;

const $arrayId$$tex: arrayId;

axiom $arrayId$$tex == 5bv3;

type ptr = bv32;

type arrayId = bv3;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[29:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:29]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv3 ++ p[29:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv3;

const _WATCHED_OFFSET: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FDIV32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function UI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "d_boxfilter_x_tex"} {:kernel} $_Z17d_boxfilter_x_texPfiii($w: bv32, $h: bv32, $r: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $w == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $h == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$od && !_WRITE_HAS_OCCURRED_$$od && !_ATOMIC_HAS_OCCURRED_$$od;
  requires !_READ_HAS_OCCURRED_$$tex && !_WRITE_HAS_OCCURRED_$$tex && !_ATOMIC_HAS_OCCURRED_$$tex;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:source_name "d_boxfilter_x_tex"} {:kernel} $_Z17d_boxfilter_x_texPfiii($w: bv32, $h: bv32, $r: bv32)
{
  var $t.0$1: bv32;
  var $t.0$2: bv32;
  var $x.0: bv32;
  var $t.1$1: bv32;
  var $t.1$2: bv32;
  var $x1.0: bv32;
  var v0: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2: bool;
  var v3$1: bv8;
  var v3$2: bv8;
  var v4$1: bv8;
  var v4$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v8$1: bv8;
  var v8$2: bv8;
  var v9$1: bv8;
  var v9$2: bv8;
  var v10$1: bv8;
  var v10$2: bv8;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bv8;
  var v13$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16: bool;
  var v17$1: bv8;
  var v17$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v22$1: bv8;
  var v22$2: bv8;
  var v23$1: bv8;
  var v23$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v25$1: bv8;
  var v25$2: bv8;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v28$1: bv8;
  var v28$2: bv8;
  var v29$1: bv32;
  var v29$2: bv32;
  var v30$1: bv8;
  var v30$2: bv8;
  var v31$1: bv8;
  var v31$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v33$1: bv8;
  var v33$2: bv8;
  var v34$1: bv8;
  var v34$2: bv8;
  var v35$1: bv8;
  var v35$2: bv8;
  var v36$1: bv8;
  var v36$2: bv8;
  var v37$1: bv8;
  var v37$2: bv8;
  var v38$1: bv8;
  var v38$2: bv8;
  var v39$1: bv8;
  var v39$2: bv8;
  var v40$1: bv8;
  var v40$2: bv8;
  var v41$1: bv8;
  var v41$2: bv8;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;


  $0:
    v0 := FDIV32(1065353216bv32, SI32_TO_FP32(BV32_ADD(BV32_SHL($r, 1bv32), 1bv32)));
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    $t.0$1, $x.0 := 0bv32, BV32_SUB(0bv32, $r);
    $t.0$2 := 0bv32;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 3} true;
    v2 := BV32_SLE($x.0, $r);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$od(true, BV32_MUL(v1$1, $w), FMUL32($t.0$1, v0), $$od[BV32_MUL(v1$1, $w)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_MUL(v1$2, $w));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$od(true, BV32_MUL(v1$2, $w), FMUL32($t.0$2, v0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_MUL(v1$1, $w)] := FMUL32($t.0$1, v0);
    $$od[BV32_MUL(v1$2, $w)] := FMUL32($t.0$2, v0);
    $t.1$1, $x1.0 := $t.0$1, 1bv32;
    $t.1$2 := $t.0$2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessBreak"} _b8 ==> _WRITE_HAS_OCCURRED_$$od ==> local_id_x$1 == BV32_SUB(BV32_DIV(_WATCHED_OFFSET, $w), BV32_MUL(group_id_x$1, group_size_x));
    assert {:tag "accessBreak"} _b7 ==> _WRITE_HAS_OCCURRED_$$od ==> group_id_x$1 == BV32_SUB(BV32_DIV(BV32_DIV(_WATCHED_OFFSET, $w), group_size_x), BV32_DIV(local_id_x$1, group_size_x));
    assert {:tag "accessUpperBoundBlock"} _b6 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), group_size_x), local_id_x$1), $w));
    assert {:tag "accessLowerBoundBlock"} _b5 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLE(BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $w), _WATCHED_OFFSET);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($x1.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($x1.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($x1.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($x1.0, 1bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $x1.0);
    assert {:block_sourceloc} {:sourceloc_num 33} true;
    v16 := BV32_SLT($x1.0, $w);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v16;
    return;

  $truebb0:
    assume {:partition} v16;
    havoc v17$1, v17$2;
    $$1$0bv32$1 := v17$1;
    $$1$0bv32$2 := v17$2;
    havoc v18$1, v18$2;
    $$1$1bv32$1 := v18$1;
    $$1$1bv32$2 := v18$2;
    havoc v19$1, v19$2;
    $$1$2bv32$1 := v19$1;
    $$1$2bv32$2 := v19$2;
    havoc v20$1, v20$2;
    $$1$3bv32$1 := v20$1;
    $$1$3bv32$2 := v20$2;
    havoc v21$1, v21$2;
    $$1$4bv32$1 := v21$1;
    $$1$4bv32$2 := v21$2;
    havoc v22$1, v22$2;
    $$1$5bv32$1 := v22$1;
    $$1$5bv32$2 := v22$2;
    havoc v23$1, v23$2;
    $$1$6bv32$1 := v23$1;
    $$1$6bv32$2 := v23$2;
    havoc v24$1, v24$2;
    $$1$7bv32$1 := v24$1;
    $$1$7bv32$2 := v24$2;
    havoc v25$1, v25$2;
    $$1$8bv32$1 := v25$1;
    $$1$8bv32$2 := v25$2;
    havoc v26$1, v26$2;
    $$1$9bv32$1 := v26$1;
    $$1$9bv32$2 := v26$2;
    havoc v27$1, v27$2;
    $$1$10bv32$1 := v27$1;
    $$1$10bv32$2 := v27$2;
    havoc v28$1, v28$2;
    $$1$11bv32$1 := v28$1;
    $$1$11bv32$2 := v28$2;
    call {:sourceloc_num 59} v29$1, v29$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$1, 0bv32), SI32_TO_FP32(BV32_ADD($x1.0, $r)), UI32_TO_FP32(v1$1), UI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc v30$1, v30$2;
    $$2$0bv32$1 := v30$1;
    $$2$0bv32$2 := v30$2;
    havoc v31$1, v31$2;
    $$2$1bv32$1 := v31$1;
    $$2$1bv32$2 := v31$2;
    havoc v32$1, v32$2;
    $$2$2bv32$1 := v32$1;
    $$2$2bv32$2 := v32$2;
    havoc v33$1, v33$2;
    $$2$3bv32$1 := v33$1;
    $$2$3bv32$2 := v33$2;
    havoc v34$1, v34$2;
    $$2$4bv32$1 := v34$1;
    $$2$4bv32$2 := v34$2;
    havoc v35$1, v35$2;
    $$2$5bv32$1 := v35$1;
    $$2$5bv32$2 := v35$2;
    havoc v36$1, v36$2;
    $$2$6bv32$1 := v36$1;
    $$2$6bv32$2 := v36$2;
    havoc v37$1, v37$2;
    $$2$7bv32$1 := v37$1;
    $$2$7bv32$2 := v37$2;
    havoc v38$1, v38$2;
    $$2$8bv32$1 := v38$1;
    $$2$8bv32$2 := v38$2;
    havoc v39$1, v39$2;
    $$2$9bv32$1 := v39$1;
    $$2$9bv32$2 := v39$2;
    havoc v40$1, v40$2;
    $$2$10bv32$1 := v40$1;
    $$2$10bv32$2 := v40$2;
    havoc v41$1, v41$2;
    $$2$11bv32$1 := v41$1;
    $$2$11bv32$2 := v41$2;
    call {:sourceloc_num 84} v42$1, v42$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$2, 0bv32), SI32_TO_FP32(BV32_SUB(BV32_SUB($x1.0, $r), 1bv32)), UI32_TO_FP32(v1$1), UI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    v43$1 := FSUB32(FADD32($t.1$1, v29$1), v42$1);
    v43$2 := FSUB32(FADD32($t.1$2, v29$2), v42$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$od(true, BV32_ADD(BV32_MUL(v1$1, $w), $x1.0), FMUL32(v43$1, v0), $$od[BV32_ADD(BV32_MUL(v1$1, $w), $x1.0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_ADD(BV32_MUL(v1$2, $w), $x1.0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$od(true, BV32_ADD(BV32_MUL(v1$2, $w), $x1.0), FMUL32(v43$2, v0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(BV32_MUL(v1$1, $w), $x1.0)] := FMUL32(v43$1, v0);
    $$od[BV32_ADD(BV32_MUL(v1$2, $w), $x1.0)] := FMUL32(v43$2, v0);
    $t.1$1, $x1.0 := v43$1, BV32_ADD($x1.0, 1bv32);
    $t.1$2 := v43$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v2;
    havoc v3$1, v3$2;
    $$0$0bv32$1 := v3$1;
    $$0$0bv32$2 := v3$2;
    havoc v4$1, v4$2;
    $$0$1bv32$1 := v4$1;
    $$0$1bv32$2 := v4$2;
    havoc v5$1, v5$2;
    $$0$2bv32$1 := v5$1;
    $$0$2bv32$2 := v5$2;
    havoc v6$1, v6$2;
    $$0$3bv32$1 := v6$1;
    $$0$3bv32$2 := v6$2;
    havoc v7$1, v7$2;
    $$0$4bv32$1 := v7$1;
    $$0$4bv32$2 := v7$2;
    havoc v8$1, v8$2;
    $$0$5bv32$1 := v8$1;
    $$0$5bv32$2 := v8$2;
    havoc v9$1, v9$2;
    $$0$6bv32$1 := v9$1;
    $$0$6bv32$2 := v9$2;
    havoc v10$1, v10$2;
    $$0$7bv32$1 := v10$1;
    $$0$7bv32$2 := v10$2;
    havoc v11$1, v11$2;
    $$0$8bv32$1 := v11$1;
    $$0$8bv32$2 := v11$2;
    havoc v12$1, v12$2;
    $$0$9bv32$1 := v12$1;
    $$0$9bv32$2 := v12$2;
    havoc v13$1, v13$2;
    $$0$10bv32$1 := v13$1;
    $$0$10bv32$2 := v13$2;
    havoc v14$1, v14$2;
    $$0$11bv32$1 := v14$1;
    $$0$11bv32$2 := v14$2;
    call {:sourceloc_num 29} v15$1, v15$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$0, 0bv32), SI32_TO_FP32($x.0), UI32_TO_FP32(v1$1), UI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    $t.0$1, $x.0 := FADD32($t.0$1, v15$1), BV32_ADD($x.0, 1bv32);
    $t.0$2 := FADD32($t.0$2, v15$2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0: ptr, $1: bv32, $2$1: bv32, $2$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

var $$0$0bv32$1: bv8;

var $$0$0bv32$2: bv8;

var $$0$1bv32$1: bv8;

var $$0$1bv32$2: bv8;

var $$0$2bv32$1: bv8;

var $$0$2bv32$2: bv8;

var $$0$3bv32$1: bv8;

var $$0$3bv32$2: bv8;

var $$0$4bv32$1: bv8;

var $$0$4bv32$2: bv8;

var $$0$5bv32$1: bv8;

var $$0$5bv32$2: bv8;

var $$0$6bv32$1: bv8;

var $$0$6bv32$2: bv8;

var $$0$7bv32$1: bv8;

var $$0$7bv32$2: bv8;

var $$0$8bv32$1: bv8;

var $$0$8bv32$2: bv8;

var $$0$9bv32$1: bv8;

var $$0$9bv32$2: bv8;

var $$0$10bv32$1: bv8;

var $$0$10bv32$2: bv8;

var $$0$11bv32$1: bv8;

var $$0$11bv32$2: bv8;

var $$1$0bv32$1: bv8;

var $$1$0bv32$2: bv8;

var $$1$1bv32$1: bv8;

var $$1$1bv32$2: bv8;

var $$1$2bv32$1: bv8;

var $$1$2bv32$2: bv8;

var $$1$3bv32$1: bv8;

var $$1$3bv32$2: bv8;

var $$1$4bv32$1: bv8;

var $$1$4bv32$2: bv8;

var $$1$5bv32$1: bv8;

var $$1$5bv32$2: bv8;

var $$1$6bv32$1: bv8;

var $$1$6bv32$2: bv8;

var $$1$7bv32$1: bv8;

var $$1$7bv32$2: bv8;

var $$1$8bv32$1: bv8;

var $$1$8bv32$2: bv8;

var $$1$9bv32$1: bv8;

var $$1$9bv32$2: bv8;

var $$1$10bv32$1: bv8;

var $$1$10bv32$2: bv8;

var $$1$11bv32$1: bv8;

var $$1$11bv32$2: bv8;

var $$2$0bv32$1: bv8;

var $$2$0bv32$2: bv8;

var $$2$1bv32$1: bv8;

var $$2$1bv32$2: bv8;

var $$2$2bv32$1: bv8;

var $$2$2bv32$2: bv8;

var $$2$3bv32$1: bv8;

var $$2$3bv32$2: bv8;

var $$2$4bv32$1: bv8;

var $$2$4bv32$2: bv8;

var $$2$5bv32$1: bv8;

var $$2$5bv32$2: bv8;

var $$2$6bv32$1: bv8;

var $$2$6bv32$2: bv8;

var $$2$7bv32$1: bv8;

var $$2$7bv32$2: bv8;

var $$2$8bv32$1: bv8;

var $$2$8bv32$2: bv8;

var $$2$9bv32$1: bv8;

var $$2$9bv32$2: bv8;

var $$2$10bv32$1: bv8;

var $$2$10bv32$2: bv8;

var $$2$11bv32$1: bv8;

var $$2$11bv32$2: bv8;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$od: bv32;

procedure {:inline 1} _LOG_READ_$$od(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_READ_$$od(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _READ_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_READ_$$od(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$od);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$od: bool;

procedure {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _WRITE_HAS_OCCURRED_$$od);
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



procedure _CHECK_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_ATOMIC_$$od(_P: bool, _offset: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



const _WATCHED_VALUE_$$tex: bv8;

procedure {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _READ_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_READ_$$tex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex: bool;

procedure {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$tex, _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _WRITE_HAS_OCCURRED_$$tex);
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



procedure _CHECK_WRITE_$$tex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_ATOMIC_$$tex(_P: bool, _offset: bv32);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;
