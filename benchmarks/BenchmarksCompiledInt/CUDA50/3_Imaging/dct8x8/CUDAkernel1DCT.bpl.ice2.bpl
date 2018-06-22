function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool,
 b0016: bool,
 b0017: bool,
 b0018: bool,
 b0019: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "Dst"} {:global} $$Dst: [int]int;

axiom {:array_info "$$Dst"} {:global} {:elem_width 32} {:source_name "Dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Dst: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$TexSrc"} {:global} {:elem_width 8} {:source_name "TexSrc"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$TexSrc: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$TexSrc: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$TexSrc: bool;

var {:source_name "CurBlockLocal1"} {:group_shared} $$CurBlockLocal1: [bv1][int]int;

axiom {:array_info "$$CurBlockLocal1"} {:group_shared} {:elem_width 32} {:source_name "CurBlockLocal1"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$CurBlockLocal1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1: bool;

var {:source_name "DCTv8matrix"} {:constant} $$DCTv8matrix$1: [int]int;

var {:source_name "DCTv8matrix"} {:constant} $$DCTv8matrix$2: [int]int;

axiom {:array_info "$$DCTv8matrix"} {:constant} {:elem_width 32} {:source_name "DCTv8matrix"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:source_name "CurBlockLocal2"} {:group_shared} $$CurBlockLocal2: [bv1][int]int;

axiom {:array_info "$$CurBlockLocal2"} {:group_shared} {:elem_width 32} {:source_name "CurBlockLocal2"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$CurBlockLocal2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2: bool;

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

function BV_CONCAT(int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function SI32_TO_FP32(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "CUDAkernel1DCT"} {:kernel} $_Z14CUDAkernel1DCTPfiii($ImgWidth: int, $OffsetXBlocks: int, $OffsetYBlocks: int);
  requires {:sourceloc_num 0} {:thread 1} (if $ImgWidth == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$Dst && !_WRITE_HAS_OCCURRED_$$Dst && !_ATOMIC_HAS_OCCURRED_$$Dst;
  requires !_READ_HAS_OCCURRED_$$TexSrc && !_WRITE_HAS_OCCURRED_$$TexSrc && !_ATOMIC_HAS_OCCURRED_$$TexSrc;
  requires !_READ_HAS_OCCURRED_$$CurBlockLocal1 && !_WRITE_HAS_OCCURRED_$$CurBlockLocal1 && !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
  requires !_READ_HAS_OCCURRED_$$CurBlockLocal2 && !_WRITE_HAS_OCCURRED_$$CurBlockLocal2 && !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
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
  modifies $$CurBlockLocal1, $$CurBlockLocal2, _WRITE_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1, $$Dst, _TRACKING, _WRITE_HAS_OCCURRED_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_HAS_OCCURRED_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst, _READ_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:source_name "CUDAkernel1DCT"} {:kernel} $_Z14CUDAkernel1DCTPfiii($ImgWidth: int, $OffsetXBlocks: int, $OffsetYBlocks: int)
{
  var $curelem.0$1: int;
  var $curelem.0$2: int;
  var $DCTv8matrixIndex.0$1: int;
  var $DCTv8matrixIndex.0$2: int;
  var $CurBlockLocal1Index.0$1: int;
  var $CurBlockLocal1Index.0$2: int;
  var $i.0: int;
  var $curelem.1$1: int;
  var $curelem.1$2: int;
  var $DCTv8matrixIndex.1$1: int;
  var $DCTv8matrixIndex.1$2: int;
  var $CurBlockLocal2Index.0$1: int;
  var $CurBlockLocal2Index.0$2: int;
  var $i1.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v4$1: int;
  var v4$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var v27: bool;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30: bool;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(group_id_x$1, $OffsetXBlocks);
    v0$2 := BV32_ADD(group_id_x$2, $OffsetXBlocks);
    v1$1 := BV32_ADD(group_id_y$1, $OffsetYBlocks);
    v1$2 := BV32_ADD(group_id_y$2, $OffsetYBlocks);
    havoc v2$1, v2$2;
    $$0$0$1 := v2$1;
    $$0$0$2 := v2$2;
    havoc v3$1, v3$2;
    $$0$1$1 := v3$1;
    $$0$1$2 := v3$2;
    havoc v4$1, v4$2;
    $$0$2$1 := v4$1;
    $$0$2$2 := v4$2;
    havoc v5$1, v5$2;
    $$0$3$1 := v5$1;
    $$0$3$2 := v5$2;
    havoc v6$1, v6$2;
    $$0$4$1 := v6$1;
    $$0$4$2 := v6$2;
    havoc v7$1, v7$2;
    $$0$5$1 := v7$1;
    $$0$5$2 := v7$2;
    havoc v8$1, v8$2;
    $$0$6$1 := v8$1;
    $$0$6$2 := v8$2;
    havoc v9$1, v9$2;
    $$0$7$1 := v9$1;
    $$0$7$2 := v9$2;
    havoc v10$1, v10$2;
    $$0$8$1 := v10$1;
    $$0$8$2 := v10$2;
    havoc v11$1, v11$2;
    $$0$9$1 := v11$1;
    $$0$9$2 := v11$2;
    havoc v12$1, v12$2;
    $$0$10$1 := v12$1;
    $$0$10$2 := v12$2;
    havoc v13$1, v13$2;
    $$0$11$1 := v13$1;
    $$0$11$2 := v13$2;
    v14$1 := $$0$0$1;
    v14$2 := $$0$0$2;
    v15$1 := $$0$1$1;
    v15$2 := $$0$1$2;
    v16$1 := $$0$2$1;
    v16$2 := $$0$2$2;
    v17$1 := $$0$3$1;
    v17$2 := $$0$3$2;
    v18$1 := $$0$4$1;
    v18$2 := $$0$4$2;
    v19$1 := $$0$5$1;
    v19$2 := $$0$5$2;
    v20$1 := $$0$6$1;
    v20$2 := $$0$6$2;
    v21$1 := $$0$7$1;
    v21$2 := $$0$7$2;
    v22$1 := $$0$8$1;
    v22$2 := $$0$8$2;
    v23$1 := $$0$9$1;
    v23$2 := $$0$9$2;
    v24$1 := $$0$10$1;
    v24$2 := $$0$10$2;
    v25$1 := $$0$11$1;
    v25$2 := $$0$11$2;
    call {:sourceloc_num 38} v26$1, v26$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(BV_CONCAT(BV_CONCAT(BV_CONCAT(v17$1, v16$1), v15$1), v14$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$1, v20$1), v19$1), v18$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$1, v24$1), v23$1), v22$1), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v0$1, 3), local_id_x$1)), 1056964608), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v1$1, 3), local_id_y$1)), 1056964608), BV_CONCAT(BV_CONCAT(BV_CONCAT(v17$2, v16$2), v15$2), v14$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$2, v20$2), v19$2), v18$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$2, v24$2), v23$2), v22$2), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v0$2, 3), local_id_x$2)), 1056964608), FADD32(SI32_TO_FP32(BV32_ADD(BV32_SHL(v1$2, 3), local_id_y$2)), 1056964608));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1), v26$1, $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal1"} true;
    $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)] := v26$1;
    $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2)] := v26$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 40} $bugle_barrier_duplicated_0(-1, -1);
    $curelem.0$1, $DCTv8matrixIndex.0$1, $CurBlockLocal1Index.0$1, $i.0 := 0, local_id_y$1, local_id_x$1, 0;
    $curelem.0$2, $DCTv8matrixIndex.0$2, $CurBlockLocal1Index.0$2 := 0, local_id_y$2, local_id_x$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
assert  my_inv (  (  $DCTv8matrixIndex.0$1 mod 8 == local_id_y$1 mod 8 )  && (  $DCTv8matrixIndex.0$2 mod 8 == local_id_y$2 mod 8 ) ,  (  $CurBlockLocal1Index.0$1 mod 8 == local_id_x$1 mod 8 )  && (  $CurBlockLocal1Index.0$2 mod 8 == local_id_x$2 mod 8 ) ,  (  $i.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i.0, 0) ) ,  (  BV32_SGE($i.0, 0) ) ,  (  BV32_ULE($i.0, 0) ) ,  (  BV32_UGE($i.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$CurBlockLocal1 ==> _WATCHED_OFFSET mod 8 == local_id_x$1 mod 8 ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 41} true;
    v27 := BV32_SLT($i.0, 8);
    goto $truebb, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v27;
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1), $curelem.0$1, $$CurBlockLocal2[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$CurBlockLocal2(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2), $curelem.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal2"} true;
    $$CurBlockLocal2[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)] := $curelem.0$1;
    $$CurBlockLocal2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2)] := $curelem.0$2;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 48} $bugle_barrier_duplicated_1(-1, -1);
    $curelem.1$1, $DCTv8matrixIndex.1$1, $CurBlockLocal2Index.0$1, $i1.0 := 0, local_id_x$1, BV32_SHL(local_id_y$1, 3), 0;
    $curelem.1$2, $DCTv8matrixIndex.1$2, $CurBlockLocal2Index.0$2 := 0, local_id_x$2, BV32_SHL(local_id_y$2, 3);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$CurBlockLocal1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $DCTv8matrixIndex.1$1 mod 8 == local_id_x$1 mod 8 )  && (  $DCTv8matrixIndex.1$2 mod 8 == local_id_x$2 mod 8 ) ,  (  $CurBlockLocal2Index.0$1 mod 1 == BV32_SHL(local_id_y$1, 3) mod 1 )  && (  $CurBlockLocal2Index.0$2 mod 1 == BV32_SHL(local_id_y$2, 3) mod 1 ) ,  (  $i1.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i1.0, 0) ) ,  (  BV32_SGE($i1.0, 0) ) ,  (  BV32_ULE($i1.0, 0) ) ,  (  BV32_UGE($i1.0, 0) ) ,  true ,  (  $CurBlockLocal2Index.0$1 == 0 || BV32_AND($CurBlockLocal2Index.0$1, BV32_SUB($CurBlockLocal2Index.0$1, 1)) == 0 ) ,  (  $CurBlockLocal2Index.0$1 != 0 ) ,  (  $CurBlockLocal2Index.0$2 == 0 || BV32_AND($CurBlockLocal2Index.0$2, BV32_SUB($CurBlockLocal2Index.0$2, 1)) == 0 ) ,  (  $CurBlockLocal2Index.0$2 != 0 ) ,  (  _READ_HAS_OCCURRED_$$CurBlockLocal2 ==> _WATCHED_OFFSET mod 1 == BV32_SHL(local_id_y$1, 3) mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 49} true;
    v30 := BV32_SLT($i1.0, 8);
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v30;
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1), $curelem.1$1, $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2), $curelem.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$CurBlockLocal1"} true;
    $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)] := $curelem.1$1;
    $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2)] := $curelem.1$2;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 56} $bugle_barrier_duplicated_2(-1, -1);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1), $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$CurBlockLocal1(true, BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2), $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$CurBlockLocal1"} true;
    v33$1 := $$CurBlockLocal1[1bv1][BV32_ADD(BV32_SHL(local_id_y$1, 3), local_id_x$1)];
    v33$2 := $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_SHL(local_id_y$2, 3), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3), local_id_x$1)), v33$1, $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$Dst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3), local_id_x$2)), v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Dst"} true;
    $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 3), local_id_y$1), $ImgWidth), BV32_ADD(BV32_SHL(v0$1, 3), local_id_x$1))] := v33$1;
    $$Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 3), local_id_y$2), $ImgWidth), BV32_ADD(BV32_SHL(v0$2, 3), local_id_x$2))] := v33$2;
    return;

  $truebb0:
    assume {:partition} v30;
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$CurBlockLocal2(true, $CurBlockLocal2Index.0$1, $$CurBlockLocal2[1bv1][$CurBlockLocal2Index.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$CurBlockLocal2(true, $CurBlockLocal2Index.0$2, $$CurBlockLocal2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal2Index.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$CurBlockLocal2"} true;
    v31$1 := $$CurBlockLocal2[1bv1][$CurBlockLocal2Index.0$1];
    v31$2 := $$CurBlockLocal2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal2Index.0$2];
    v32$1 := $$DCTv8matrix$1[$DCTv8matrixIndex.1$1];
    v32$2 := $$DCTv8matrix$2[$DCTv8matrixIndex.1$2];
    $curelem.1$1, $DCTv8matrixIndex.1$1, $CurBlockLocal2Index.0$1, $i1.0 := FADD32($curelem.1$1, FMUL32(v31$1, v32$1)), BV32_ADD($DCTv8matrixIndex.1$1, 8), BV32_ADD($CurBlockLocal2Index.0$1, 1), BV32_ADD($i1.0, 1);
    $curelem.1$2, $DCTv8matrixIndex.1$2, $CurBlockLocal2Index.0$2 := FADD32($curelem.1$2, FMUL32(v31$2, v32$2)), BV32_ADD($DCTv8matrixIndex.1$2, 8), BV32_ADD($CurBlockLocal2Index.0$2, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v27;
    v28$1 := $$DCTv8matrix$1[$DCTv8matrixIndex.0$1];
    v28$2 := $$DCTv8matrix$2[$DCTv8matrixIndex.0$2];
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$CurBlockLocal1(true, $CurBlockLocal1Index.0$1, $$CurBlockLocal1[1bv1][$CurBlockLocal1Index.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$CurBlockLocal1(true, $CurBlockLocal1Index.0$2, $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal1Index.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$CurBlockLocal1"} true;
    v29$1 := $$CurBlockLocal1[1bv1][$CurBlockLocal1Index.0$1];
    v29$2 := $$CurBlockLocal1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$CurBlockLocal1Index.0$2];
    $curelem.0$1, $DCTv8matrixIndex.0$1, $CurBlockLocal1Index.0$1, $i.0 := FADD32($curelem.0$1, FMUL32(v28$1, v29$1)), BV32_ADD($DCTv8matrixIndex.0$1, 8), BV32_ADD($CurBlockLocal1Index.0$1, 8), BV32_ADD($i.0, 1);
    $curelem.0$2, $DCTv8matrixIndex.0$2, $CurBlockLocal1Index.0$2 := FADD32($curelem.0$2, FMUL32(v28$2, v29$2)), BV32_ADD($DCTv8matrixIndex.0$2, 8), BV32_ADD($CurBlockLocal1Index.0$2, 8);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 64 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$CurBlockLocal1, $$CurBlockLocal2, $$Dst, _TRACKING;



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







function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

















const _WATCHED_VALUE_$$Dst: int;

procedure {:inline 1} _LOG_READ_$$Dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Dst;



implementation {:inline 1} _LOG_READ_$$Dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then true else _READ_HAS_OCCURRED_$$Dst);
    return;
}



procedure _CHECK_READ_$$Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Dst);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$Dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Dst, _WRITE_READ_BENIGN_FLAG_$$Dst;



implementation {:inline 1} _LOG_WRITE_$$Dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then true else _WRITE_HAS_OCCURRED_$$Dst);
    _WRITE_READ_BENIGN_FLAG_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Dst);
    return;
}



procedure _CHECK_WRITE_$$Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst != _value);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Dst != _value);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Dst;



implementation {:inline 1} _LOG_ATOMIC_$$Dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Dst);
    return;
}



procedure _CHECK_ATOMIC_$$Dst(_P: bool, _offset: int);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "Dst"} {:array "$$Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Dst := (if _P && _WRITE_HAS_OCCURRED_$$Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Dst);
    return;
}



const _WATCHED_VALUE_$$TexSrc: int;

procedure {:inline 1} _LOG_READ_$$TexSrc(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$TexSrc;



implementation {:inline 1} _LOG_READ_$$TexSrc(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then true else _READ_HAS_OCCURRED_$$TexSrc);
    return;
}



procedure _CHECK_READ_$$TexSrc(_P: bool, _offset: int, _value: int);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$TexSrc);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$TexSrc: bool;

procedure {:inline 1} _LOG_WRITE_$$TexSrc(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$TexSrc, _WRITE_READ_BENIGN_FLAG_$$TexSrc;



implementation {:inline 1} _LOG_WRITE_$$TexSrc(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then true else _WRITE_HAS_OCCURRED_$$TexSrc);
    _WRITE_READ_BENIGN_FLAG_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$TexSrc);
    return;
}



procedure _CHECK_WRITE_$$TexSrc(_P: bool, _offset: int, _value: int);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc != _value);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$TexSrc != _value);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$TexSrc(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$TexSrc;



implementation {:inline 1} _LOG_ATOMIC_$$TexSrc(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$TexSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$TexSrc);
    return;
}



procedure _CHECK_ATOMIC_$$TexSrc(_P: bool, _offset: int);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);
  requires {:source_name "TexSrc"} {:array "$$TexSrc"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$TexSrc(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$TexSrc;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$TexSrc(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$TexSrc := (if _P && _WRITE_HAS_OCCURRED_$$TexSrc && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$TexSrc);
    return;
}



const _WATCHED_VALUE_$$CurBlockLocal1: int;

procedure {:inline 1} _LOG_READ_$$CurBlockLocal1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$CurBlockLocal1;



implementation {:inline 1} _LOG_READ_$$CurBlockLocal1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then true else _READ_HAS_OCCURRED_$$CurBlockLocal1);
    return;
}



procedure _CHECK_READ_$$CurBlockLocal1(_P: bool, _offset: int, _value: int);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1: bool;

procedure {:inline 1} _LOG_WRITE_$$CurBlockLocal1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$CurBlockLocal1, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1;



implementation {:inline 1} _LOG_WRITE_$$CurBlockLocal1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then true else _WRITE_HAS_OCCURRED_$$CurBlockLocal1);
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1);
    return;
}



procedure _CHECK_WRITE_$$CurBlockLocal1(_P: bool, _offset: int, _value: int);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;



implementation {:inline 1} _LOG_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$CurBlockLocal1);
    return;
}



procedure _CHECK_ATOMIC_$$CurBlockLocal1(_P: bool, _offset: int);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal1"} {:array "$$CurBlockLocal1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1 := (if _P && _WRITE_HAS_OCCURRED_$$CurBlockLocal1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal1);
    return;
}



const _WATCHED_VALUE_$$CurBlockLocal2: int;

procedure {:inline 1} _LOG_READ_$$CurBlockLocal2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:inline 1} _LOG_READ_$$CurBlockLocal2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then true else _READ_HAS_OCCURRED_$$CurBlockLocal2);
    return;
}



procedure _CHECK_READ_$$CurBlockLocal2(_P: bool, _offset: int, _value: int);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2: bool;

procedure {:inline 1} _LOG_WRITE_$$CurBlockLocal2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$CurBlockLocal2, _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2;



implementation {:inline 1} _LOG_WRITE_$$CurBlockLocal2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then true else _WRITE_HAS_OCCURRED_$$CurBlockLocal2);
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2);
    return;
}



procedure _CHECK_WRITE_$$CurBlockLocal2(_P: bool, _offset: int, _value: int);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CurBlockLocal2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;



implementation {:inline 1} _LOG_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$CurBlockLocal2);
    return;
}



procedure _CHECK_ATOMIC_$$CurBlockLocal2(_P: bool, _offset: int);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "CurBlockLocal2"} {:array "$$CurBlockLocal2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2 := (if _P && _WRITE_HAS_OCCURRED_$$CurBlockLocal2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$CurBlockLocal2);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
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



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
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



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$CurBlockLocal2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$CurBlockLocal2;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$Dst;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$Dst;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
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



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}



function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function BV32_AND(int, int) : int;










