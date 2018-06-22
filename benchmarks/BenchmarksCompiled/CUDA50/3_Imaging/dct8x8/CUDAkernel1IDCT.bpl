type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "Dst"} {:global} $$Dst: [bv32]bv32;

axiom {:array_info "$$Dst"} {:global} {:elem_width 32} {:source_name "Dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Dst: bool;

const $arrayId$$Dst: arrayId;

axiom $arrayId$$Dst == 1bv3;

axiom {:array_info "$$agg.tmp"} {:elem_width 8} {:source_name "agg.tmp"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp: arrayId;

axiom $arrayId$$agg.tmp == 2bv3;

axiom {:array_info "$$TexSrc"} {:global} {:elem_width 8} {:source_name "TexSrc"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$TexSrc: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$TexSrc: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$TexSrc: bool;

const $arrayId$$TexSrc: arrayId;

axiom $arrayId$$TexSrc == 3bv3;

var {:source_name "CurBlockLocal1"} {:group_shared} $$CurBlockLocal1: [bv1][bv32]bv32;

axiom {:array_info "$$CurBlockLocal1"} {:group_shared} {:elem_width 32} {:source_name "CurBlockLocal1"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$CurBlockLocal1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1: bool;

const $arrayId$$CurBlockLocal1: arrayId;

axiom $arrayId$$CurBlockLocal1 == 4bv3;

var {:source_name "DCTv8matrix"} {:constant} $$DCTv8matrix$1: [bv32]bv32;

var {:source_name "DCTv8matrix"} {:constant} $$DCTv8matrix$2: [bv32]bv32;

axiom {:array_info "$$DCTv8matrix"} {:constant} {:elem_width 32} {:source_name "DCTv8matrix"} {:source_elem_width 32} {:source_dimensions "64"} true;

const $arrayId$$DCTv8matrix: arrayId;

axiom $arrayId$$DCTv8matrix == 5bv3;

var {:source_name "CurBlockLocal2"} {:group_shared} $$CurBlockLocal2: [bv1][bv32]bv32;

axiom {:array_info "$$CurBlockLocal2"} {:group_shared} {:elem_width 32} {:source_name "CurBlockLocal2"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$CurBlockLocal2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2: bool;

const $arrayId$$CurBlockLocal2: arrayId;

axiom $arrayId$$CurBlockLocal2 == 6bv3;

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

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

procedure {:source_name "CUDAkernel1IDCT"} {:kernel} $_Z15CUDAkernel1IDCTPfiii($ImgWidth: bv32, $OffsetXBlocks: bv32, $OffsetYBlocks: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $ImgWidth == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$Dst && !_WRITE_HAS_OCCURRED_$$Dst && !_ATOMIC_HAS_OCCURRED_$$Dst;
  requires !_READ_HAS_OCCURRED_$$TexSrc && !_WRITE_HAS_OCCURRED_$$TexSrc && !_ATOMIC_HAS_OCCURRED_$$TexSrc;
  requires !_READ_HAS_OCCURRED_$$CurBlockLocal1 && !_WRITE_HAS_OCCURRED_$$CurBlockLocal1 && !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
  requires !_READ_HAS_OCCURRED_$$CurBlockLocal2 && !_WRITE_HAS_OCCURRED_$$CurBlockLocal2 && !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
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
  modifies $$CurBlockLocal1, $$CurBlockLocal2, _WRITE_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1, $$Dst, _TRACKING, _WRITE_HAS_OCCURRED_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_HAS_OCCURRED_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst, _READ_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:source_name "CUDAkernel1IDCT"} {:kernel} $_Z15CUDAkernel1IDCTPfiii($ImgWidth: bv32, $OffsetXBlocks: bv32, $OffsetYBlocks: bv32)
{
  var $curelem.0$1: bv32;
  var $curelem.0$2: bv32;
  var $DCTv8matrixIndex.0$1: bv32;
  var $DCTv8matrixIndex.0$2: bv32;
  var $CurBlockLocal1Index.0$1: bv32;
  var $CurBlockLocal1Index.0$2: bv32;
  var $i.0: bv32;
  var $curelem.1$1: bv32;
  var $curelem.1$2: bv32;
  var $DCTv8matrixIndex.1$1: bv32;
  var $DCTv8matrixIndex.1$2: bv32;
  var $CurBlockLocal2Index.0$1: bv32;
  var $CurBlockLocal2Index.0$2: bv32;
  var $i26.0: bv32;
  var v10$1: bv8;
  var v10$2: bv8;
  var v1$1: bv32;
  var v1$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v2$1: bv8;
  var v2$2: bv8;
  var v3$1: bv8;
  var v3$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v4$1: bv8;
  var v4$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v8$1: bv8;
  var v8$2: bv8;
  var v9$1: bv8;
  var v9$2: bv8;
  var v19$1: bv32;
  var v19$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bv8;
  var v13$2: bv8;
  var v14$1: bv32;
  var v14$2: bv32;
  var v18: bool;
  var v15: bool;


  __partitioned_block_$entry_0:
    v0$1 := BV32_ADD(group_id_x$1, $OffsetXBlocks);
    v0$2 := BV32_ADD(group_id_x$2, $OffsetXBlocks);
    v1$1 := BV32_ADD(group_id_y$1, $OffsetYBlocks);
    v1$2 := BV32_ADD(group_id_y$2, $OffsetYBlocks);
    havoc v2$1, v2$2;
    $$agg.tmp$0bv32$1 := v2$1;
    $$agg.tmp$0bv32$2 := v2$2;
    havoc v3$1, v3$2;
    $$agg.tmp$1bv32$1 := v3$1;
    $$agg.tmp$1bv32$2 := v3$2;
    havoc v4$1, v4$2;
    $$agg.tmp$2bv32$1 := v4$1;
    $$agg.tmp$2bv32$2 := v4$2;
    havoc v5$1, v5$2;
    $$agg.tmp$3bv32$1 := v5$1;
    $$agg.tmp$3bv32$2 := v5$2;
    havoc v6$1, v6$2;
    $$agg.tmp$4bv32$1 := v6$1;
    $$agg.tmp$4bv32$2 := v6$2;
    havoc v7$1, v7$2;
    $$agg.tmp$5bv32$1 := v7$1;
    $$agg.tmp$5bv32$2 := v7$2;
    havoc v8$1, v8$2;
    $$agg.tmp$6bv32$1 := v8$1;
    $$agg.tmp$6bv32$2 := v8$2;
    havoc v9$1, v9$2;
    $$agg.tmp$7bv32$1 := v9$1;
    $$agg.tmp$7bv32$2 := v9$2;
    havoc v10$1, v10$2;
    $$agg.tmp$8bv32$1 := v10$1;
    $$agg.tmp$8bv32$2 := v10$2;
    havoc v11$1, v11$2;
    $$agg.tmp$9bv32$1 := v11$1;
    $$agg.tmp$9bv32$2 := v11$2;
    havoc v12$1, v12$2;
    $$agg.tmp$10bv32$1 := v12$1;
    $$agg.tmp$10bv32$2 := v12$2;
    havoc v13$1, v13$2;
    $$agg.tmp$11bv32$1 := v13$1;
    $$agg.tmp$11bv32$2 := v13$2;
    call {:sourceloc_num 26} v14$1, v14$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$agg.tmp, 0bv32), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v0$1, 3bv32), local_id_x$1)), 1056964608bv32), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v1$1, 3bv32), local_id_y$1)), 1056964608bv32), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v0$2, 3bv32), local_id_x$2)), 1056964608bv32), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v1$2, 3bv32), local_id_y$2)), 1056964608bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1), v14$1, $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal1"} true;
    $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)] := v14$1;
    $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2)] := v14$2;
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 28} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $curelem.0$1, $DCTv8matrixIndex.0$1, $CurBlockLocal1Index.0$1, $i.0 := 0bv32, BV32_SHL(local_id_y$1, 3bv32), local_id_x$1, 0bv32;
    $curelem.0$2, $DCTv8matrixIndex.0$2, $CurBlockLocal1Index.0$2 := 0bv32, BV32_SHL(local_id_y$2, 3bv32), local_id_x$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "pow2NotZero"} _b14 ==> $DCTv8matrixIndex.0$2 != 0bv32;
    assert {:tag "pow2"} _b13 ==> $DCTv8matrixIndex.0$2 == 0bv32 || BV32_AND($DCTv8matrixIndex.0$2, BV32_SUB($DCTv8matrixIndex.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b12 ==> $DCTv8matrixIndex.0$1 != 0bv32;
    assert {:tag "pow2"} _b11 ==> $DCTv8matrixIndex.0$1 == 0bv32 || BV32_AND($DCTv8matrixIndex.0$1, BV32_SUB($DCTv8matrixIndex.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_UGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_ULE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_SGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SLE($i.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b1 ==> BV32_SLE(0bv32, $i.0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $CurBlockLocal1Index.0$1) == BV32_AND(BV32_SUB(8bv32, 1bv32), local_id_x$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b0 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $CurBlockLocal1Index.0$2) == BV32_AND(BV32_SUB(8bv32, 1bv32), local_id_x$2);
    assert {:block_sourceloc} {:sourceloc_num 29} true;
    v15 := BV32_SLT($i.0, 8bv32);
    goto $truebb, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v15;
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1), $curelem.0$1, $$CurBlockLocal2[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2), $curelem.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal2"} true;
    $$CurBlockLocal2[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)] := $curelem.0$1;
    $$CurBlockLocal2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2)] := $curelem.0$2;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 36} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    $curelem.1$1, $DCTv8matrixIndex.1$1, $CurBlockLocal2Index.0$1, $i26.0 := 0bv32, BV32_SHL(local_id_x$1, 3bv32), BV32_SHL(local_id_y$1, 3bv32), 0bv32;
    $curelem.1$2, $DCTv8matrixIndex.1$2, $CurBlockLocal2Index.0$2 := 0bv32, BV32_SHL(local_id_x$2, 3bv32), BV32_SHL(local_id_y$2, 3bv32);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond.27;

  $for.cond.27:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "pow2NotZero"} _b22 ==> $CurBlockLocal2Index.0$2 != 0bv32;
    assert {:tag "pow2"} _b21 ==> $CurBlockLocal2Index.0$2 == 0bv32 || BV32_AND($CurBlockLocal2Index.0$2, BV32_SUB($CurBlockLocal2Index.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b20 ==> $CurBlockLocal2Index.0$1 != 0bv32;
    assert {:tag "pow2"} _b19 ==> $CurBlockLocal2Index.0$1 == 0bv32 || BV32_AND($CurBlockLocal2Index.0$1, BV32_SUB($CurBlockLocal2Index.0$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b18 ==> $DCTv8matrixIndex.1$2 != 0bv32;
    assert {:tag "pow2"} _b17 ==> $DCTv8matrixIndex.1$2 == 0bv32 || BV32_AND($DCTv8matrixIndex.1$2, BV32_SUB($DCTv8matrixIndex.1$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b16 ==> $DCTv8matrixIndex.1$1 != 0bv32;
    assert {:tag "pow2"} _b15 ==> $DCTv8matrixIndex.1$1 == 0bv32 || BV32_AND($DCTv8matrixIndex.1$1, BV32_SUB($DCTv8matrixIndex.1$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_UGE($i26.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_ULE($i26.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_SGE($i26.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SLE($i26.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b6 ==> BV32_SLE(0bv32, $i26.0);
    assert {:block_sourceloc} {:sourceloc_num 37} true;
    v18 := BV32_SLT($i26.0, 8bv32);
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v18;
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1), $curelem.1$1, $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2), $curelem.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal1"} true;
    $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)] := $curelem.1$1;
    $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2)] := $curelem.1$2;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 44} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 45} true;
    v21$1 := $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3bv32), local_id_x$1)];
    v21$2 := $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3bv32), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3bv32), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3bv32), local_id_x$1)), v21$1, $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3bv32), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3bv32), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3bv32), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3bv32), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3bv32), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3bv32), local_id_x$2)), v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Dst"} true;
    $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3bv32), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3bv32), local_id_x$1))] := v21$1;
    $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3bv32), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3bv32), local_id_x$2))] := v21$2;
    return;

  $truebb0:
    assume {:partition} v18;
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 39} true;
    v19$1 := $$CurBlockLocal2[1bv1][$CurBlockLocal2Index.0$1];
    v19$2 := $$CurBlockLocal2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal2Index.0$2];
    v20$1 := $$DCTv8matrix$1[$DCTv8matrixIndex.1$1];
    v20$2 := $$DCTv8matrix$2[$DCTv8matrixIndex.1$2];
    $curelem.1$1, $DCTv8matrixIndex.1$1, $CurBlockLocal2Index.0$1, $i26.0 := FADD32($curelem.1$1, FMUL32(v19$1, v20$1)), BV32_ADD($DCTv8matrixIndex.1$1, 1bv32), BV32_ADD($CurBlockLocal2Index.0$1, 1bv32), BV32_ADD($i26.0, 1bv32);
    $curelem.1$2, $DCTv8matrixIndex.1$2, $CurBlockLocal2Index.0$2 := FADD32($curelem.1$2, FMUL32(v19$2, v20$2)), BV32_ADD($DCTv8matrixIndex.1$2, 1bv32), BV32_ADD($CurBlockLocal2Index.0$2, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond.27;

  $truebb:
    assume {:partition} v15;
    v16$1 := $$DCTv8matrix$1[$DCTv8matrixIndex.0$1];
    v16$2 := $$DCTv8matrix$2[$DCTv8matrixIndex.0$2];
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 32} true;
    v17$1 := $$CurBlockLocal1[1bv1][$CurBlockLocal1Index.0$1];
    v17$2 := $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal1Index.0$2];
    $curelem.0$1, $DCTv8matrixIndex.0$1, $CurBlockLocal1Index.0$1, $i.0 := FADD32($curelem.0$1, FMUL32(v16$1, v17$1)), BV32_ADD($DCTv8matrixIndex.0$1, 1bv32), BV32_ADD($CurBlockLocal1Index.0$1, 8bv32), BV32_ADD($i.0, 1bv32);
    $curelem.0$2, $DCTv8matrixIndex.0$2, $CurBlockLocal1Index.0$2 := FADD32($curelem.0$2, FMUL32(v16$2, v17$2)), BV32_ADD($DCTv8matrixIndex.0$2, 1bv32), BV32_ADD($CurBlockLocal1Index.0$2, 8bv32);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0: ptr, $1$1: bv32, $2$1: bv32, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



axiom (if group_size_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



var $$agg.tmp$0bv32$1: bv8;

var $$agg.tmp$0bv32$2: bv8;

var $$agg.tmp$1bv32$1: bv8;

var $$agg.tmp$1bv32$2: bv8;

var $$agg.tmp$2bv32$1: bv8;

var $$agg.tmp$2bv32$2: bv8;

var $$agg.tmp$3bv32$1: bv8;

var $$agg.tmp$3bv32$2: bv8;

var $$agg.tmp$4bv32$1: bv8;

var $$agg.tmp$4bv32$2: bv8;

var $$agg.tmp$5bv32$1: bv8;

var $$agg.tmp$5bv32$2: bv8;

var $$agg.tmp$6bv32$1: bv8;

var $$agg.tmp$6bv32$2: bv8;

var $$agg.tmp$7bv32$1: bv8;

var $$agg.tmp$7bv32$2: bv8;

var $$agg.tmp$8bv32$1: bv8;

var $$agg.tmp$8bv32$2: bv8;

var $$agg.tmp$9bv32$1: bv8;

var $$agg.tmp$9bv32$2: bv8;

var $$agg.tmp$10bv32$1: bv8;

var $$agg.tmp$10bv32$2: bv8;

var $$agg.tmp$11bv32$1: bv8;

var $$agg.tmp$11bv32$2: bv8;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const _WATCHED_VALUE_$$Dst: bv32;

procedure {:inline 1} _LOG_READ_$$Dst(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$Dst;



implementation {:inline 1} _LOG_READ_$$Dst(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then true else _READ_HAS_OCCURRED_$$Dst);
    return;
}



procedure _CHECK_READ_$$Dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Dst);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$Dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst;



implementation {:inline 1} _LOG_WRITE_$$Dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then true else _WRITE_HAS_OCCURRED_$$Dst);
    _WRITE_READ_BENIGN_FLAG_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Dst);
    return;
}



procedure _CHECK_WRITE_$$Dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst != _value);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst != _value);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Dst(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$Dst;



implementation {:inline 1} _LOG_ATOMIC_$$Dst(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Dst);
    return;
}



procedure _CHECK_ATOMIC_$$Dst(_P: bool, _offset: bv32);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Dst := (if _P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Dst);
    return;
}



const _WATCHED_VALUE_$$TexSrc: bv8;

procedure {:inline 1} _LOG_READ_$$TexSrc(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$TexSrc;



implementation {:inline 1} _LOG_READ_$$TexSrc(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then true else _READ_HAS_OCCURRED_$$TexSrc);
    return;
}



procedure _CHECK_READ_$$TexSrc(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$TexSrc);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$TexSrc: bool;

procedure {:inline 1} _LOG_WRITE_$$TexSrc(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$TexSrc, _WRITE_READ_BENIGN_FLAG_$$TexSrc;



implementation {:inline 1} _LOG_WRITE_$$TexSrc(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then true else _WRITE_HAS_OCCURRED_$$TexSrc);
    _WRITE_READ_BENIGN_FLAG_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$TexSrc);
    return;
}



procedure _CHECK_WRITE_$$TexSrc(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc != _value);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc != _value);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$TexSrc(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$TexSrc;



implementation {:inline 1} _LOG_ATOMIC_$$TexSrc(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$TexSrc);
    return;
}



procedure _CHECK_ATOMIC_$$TexSrc(_P: bool, _offset: bv32);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$TexSrc(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$TexSrc;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$TexSrc(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$TexSrc := (if _P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$TexSrc);
    return;
}



const _WATCHED_VALUE_$$CurBlockLocal1: bv32;

procedure {:inline 1} _LOG_READ_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$CurBlockLocal1;



implementation {:inline 1} _LOG_READ_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then true else _READ_HAS_OCCURRED_$$CurBlockLocal1);
    return;
}



procedure _CHECK_READ_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1: bool;

procedure {:inline 1} _LOG_WRITE_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1;



implementation {:inline 1} _LOG_WRITE_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then true else _WRITE_HAS_OCCURRED_$$CurBlockLocal1);
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1);
    return;
}



procedure _CHECK_WRITE_$$CurBlockLocal1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;



implementation {:inline 1} _LOG_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1);
    return;
}



procedure _CHECK_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: bv32);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 := (if _P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1);
    return;
}



const _WATCHED_VALUE_$$CurBlockLocal2: bv32;

procedure {:inline 1} _LOG_READ_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:inline 1} _LOG_READ_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then true else _READ_HAS_OCCURRED_$$CurBlockLocal2);
    return;
}



procedure _CHECK_READ_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2: bool;

procedure {:inline 1} _LOG_WRITE_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2;



implementation {:inline 1} _LOG_WRITE_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then true else _WRITE_HAS_OCCURRED_$$CurBlockLocal2);
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2);
    return;
}



procedure _CHECK_WRITE_$$CurBlockLocal2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:inline 1} _LOG_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2);
    return;
}



procedure _CHECK_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: bv32);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 := (if _P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$CurBlockLocal1;
    goto anon4;

  anon4:
    havoc $$CurBlockLocal2;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$CurBlockLocal1;
    goto anon4;

  anon4:
    havoc $$CurBlockLocal2;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$CurBlockLocal1;
    goto anon4;

  anon4:
    havoc $$CurBlockLocal2;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;
