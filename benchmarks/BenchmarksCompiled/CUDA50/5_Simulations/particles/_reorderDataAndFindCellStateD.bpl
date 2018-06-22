type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "cellStart"} {:global} $$cellStart: [bv32]bv32;

axiom {:array_info "$$cellStart"} {:global} {:elem_width 32} {:source_name "cellStart"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cellStart: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cellStart: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cellStart: bool;

var {:source_name "cellEnd"} {:global} $$cellEnd: [bv32]bv32;

axiom {:array_info "$$cellEnd"} {:global} {:elem_width 32} {:source_name "cellEnd"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cellEnd: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cellEnd: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cellEnd: bool;

var {:source_name "sortedPos"} {:global} $$sortedPos: [bv32]bv32;

axiom {:array_info "$$sortedPos"} {:global} {:elem_width 32} {:source_name "sortedPos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sortedPos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sortedPos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sortedPos: bool;

var {:source_name "sortedVel"} {:global} $$sortedVel: [bv32]bv32;

axiom {:array_info "$$sortedVel"} {:global} {:elem_width 32} {:source_name "sortedVel"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sortedVel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sortedVel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sortedVel: bool;

var {:source_name "gridParticleHash"} {:global} $$gridParticleHash: [bv32]bv32;

axiom {:array_info "$$gridParticleHash"} {:global} {:elem_width 32} {:source_name "gridParticleHash"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridParticleHash: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridParticleHash: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridParticleHash: bool;

var {:source_name "gridParticleIndex"} {:global} $$gridParticleIndex: [bv32]bv32;

axiom {:array_info "$$gridParticleIndex"} {:global} {:elem_width 32} {:source_name "gridParticleIndex"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridParticleIndex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridParticleIndex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridParticleIndex: bool;

axiom {:array_info "$$oldPos"} {:global} {:elem_width 32} {:source_name "oldPos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$oldPos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$oldPos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$oldPos: bool;

axiom {:array_info "$$oldVel"} {:global} {:elem_width 32} {:source_name "oldVel"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$oldVel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$oldVel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$oldVel: bool;

axiom {:array_info "$$pos"} {:elem_width 32} {:source_name "pos"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$vel"} {:elem_width 32} {:source_name "vel"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:source_name "sharedHash"} {:group_shared} $$sharedHash: [bv1][bv32]bv32;

axiom {:array_info "$$sharedHash"} {:group_shared} {:elem_width 32} {:source_name "sharedHash"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sharedHash: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sharedHash: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sharedHash: bool;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "reorderDataAndFindCellStartD"} {:kernel} $_Z28reorderDataAndFindCellStartDPjS_P6float4S1_S_S_S1_S1_j($numParticles: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $numParticles) ==> $$gridParticleIndex[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 0} {:thread 2} (if BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $numParticles) ==> $$gridParticleIndex[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] == BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$cellStart && !_WRITE_HAS_OCCURRED_$$cellStart && !_ATOMIC_HAS_OCCURRED_$$cellStart;
  requires !_READ_HAS_OCCURRED_$$cellEnd && !_WRITE_HAS_OCCURRED_$$cellEnd && !_ATOMIC_HAS_OCCURRED_$$cellEnd;
  requires !_READ_HAS_OCCURRED_$$sortedPos && !_WRITE_HAS_OCCURRED_$$sortedPos && !_ATOMIC_HAS_OCCURRED_$$sortedPos;
  requires !_READ_HAS_OCCURRED_$$sortedVel && !_WRITE_HAS_OCCURRED_$$sortedVel && !_ATOMIC_HAS_OCCURRED_$$sortedVel;
  requires !_READ_HAS_OCCURRED_$$gridParticleHash && !_WRITE_HAS_OCCURRED_$$gridParticleHash && !_ATOMIC_HAS_OCCURRED_$$gridParticleHash;
  requires !_READ_HAS_OCCURRED_$$gridParticleIndex && !_WRITE_HAS_OCCURRED_$$gridParticleIndex && !_ATOMIC_HAS_OCCURRED_$$gridParticleIndex;
  requires !_READ_HAS_OCCURRED_$$oldPos && !_WRITE_HAS_OCCURRED_$$oldPos && !_ATOMIC_HAS_OCCURRED_$$oldPos;
  requires !_READ_HAS_OCCURRED_$$oldVel && !_WRITE_HAS_OCCURRED_$$oldVel && !_ATOMIC_HAS_OCCURRED_$$oldVel;
  requires !_READ_HAS_OCCURRED_$$sharedHash && !_WRITE_HAS_OCCURRED_$$sharedHash && !_ATOMIC_HAS_OCCURRED_$$sharedHash;
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
  modifies $$sharedHash, _WRITE_HAS_OCCURRED_$$sharedHash, _WRITE_READ_BENIGN_FLAG_$$sharedHash, _WRITE_READ_BENIGN_FLAG_$$sharedHash, $$cellStart, $$cellEnd, $$sortedPos, $$sortedVel, _TRACKING, _READ_HAS_OCCURRED_$$sharedHash, _WRITE_HAS_OCCURRED_$$cellStart, _WRITE_READ_BENIGN_FLAG_$$cellStart, _WRITE_READ_BENIGN_FLAG_$$cellStart, _WRITE_HAS_OCCURRED_$$cellEnd, _WRITE_READ_BENIGN_FLAG_$$cellEnd, _WRITE_READ_BENIGN_FLAG_$$cellEnd, _WRITE_HAS_OCCURRED_$$sortedPos, _WRITE_READ_BENIGN_FLAG_$$sortedPos, _WRITE_READ_BENIGN_FLAG_$$sortedPos, _WRITE_HAS_OCCURRED_$$sortedVel, _WRITE_READ_BENIGN_FLAG_$$sortedVel, _WRITE_READ_BENIGN_FLAG_$$sortedVel;



implementation {:source_name "reorderDataAndFindCellStartD"} {:kernel} $_Z28reorderDataAndFindCellStartDPjS_P6float4S1_S_S_S1_S1_j($numParticles: bv32)
{
  var $hash.0$1: bv32;
  var $hash.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v30$1: bv32;
  var v30$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $numParticles);
    v1$2 := BV32_ULT(v0$2, $numParticles);
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
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    p5$1 := (if !v1$1 then !v1$1 else p5$1);
    p5$2 := (if !v1$2 then !v1$2 else p5$2);
    v2$1 := (if p0$1 then $$gridParticleHash[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$gridParticleHash[v0$2] else v2$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$sharedHash(p0$1, BV32_ADD(local_id_x$1, 1bv32), v2$1, $$sharedHash[1bv1][BV32_ADD(local_id_x$1, 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sharedHash(p0$2, BV32_ADD(local_id_x$2, 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$sharedHash(p0$2, BV32_ADD(local_id_x$2, 1bv32), v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sharedHash"} true;
    $$sharedHash[1bv1][BV32_ADD(local_id_x$1, 1bv32)] := (if p0$1 then v2$1 else $$sharedHash[1bv1][BV32_ADD(local_id_x$1, 1bv32)]);
    $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1bv32)] := (if p0$2 then v2$2 else $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1bv32)]);
    v3$1 := (if p0$1 then BV32_UGT(v0$1, 0bv32) else v3$1);
    v3$2 := (if p0$2 then BV32_UGT(v0$2, 0bv32) else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    v4$1 := (if p1$1 then local_id_x$1 == 0bv32 else v4$1);
    v4$2 := (if p1$2 then local_id_x$2 == 0bv32 else v4$2);
    p2$1 := (if p1$1 && v4$1 then v4$1 else p2$1);
    p2$2 := (if p1$2 && v4$2 then v4$2 else p2$2);
    v5$1 := (if p2$1 then $$gridParticleHash[BV32_SUB(v0$1, 1bv32)] else v5$1);
    v5$2 := (if p2$2 then $$gridParticleHash[BV32_SUB(v0$2, 1bv32)] else v5$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$sharedHash(p2$1, 0bv32, v5$1, $$sharedHash[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sharedHash(p2$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$sharedHash(p2$2, 0bv32, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sharedHash"} true;
    $$sharedHash[1bv1][0bv32] := (if p2$1 then v5$1 else $$sharedHash[1bv1][0bv32]);
    $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p2$2 then v5$2 else $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    $hash.0$1 := (if p0$1 then v2$1 else $hash.0$1);
    $hash.0$2 := (if p0$2 then v2$2 else $hash.0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v30$1 := (if p5$1 then _HAVOC_bv32$1 else v30$1);
    v30$2 := (if p5$2 then _HAVOC_bv32$2 else v30$2);
    $hash.0$1 := (if p5$1 then v30$1 else $hash.0$1);
    $hash.0$2 := (if p5$2 then v30$2 else $hash.0$2);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    v6$1 := BV32_ULT(v0$1, $numParticles);
    v6$2 := BV32_ULT(v0$2, $numParticles);
    p6$1 := (if v6$1 then v6$1 else p6$1);
    p6$2 := (if v6$2 then v6$2 else p6$2);
    v7$1 := (if p6$1 then v0$1 == 0bv32 else v7$1);
    v7$2 := (if p6$2 then v0$2 == 0bv32 else v7$2);
    p10$1 := (if p6$1 && v7$1 then v7$1 else p10$1);
    p10$2 := (if p6$2 && v7$2 then v7$2 else p10$2);
    p8$1 := (if p6$1 && !v7$1 then !v7$1 else p8$1);
    p8$2 := (if p6$2 && !v7$2 then !v7$2 else p8$2);
    p10$1 := (if p7$1 then true else p10$1);
    p10$2 := (if p7$2 then true else p10$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$sharedHash(p8$1, local_id_x$1, $$sharedHash[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$sharedHash(p8$2, local_id_x$2, $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sharedHash"} true;
    v8$1 := (if p8$1 then $$sharedHash[1bv1][local_id_x$1] else v8$1);
    v8$2 := (if p8$2 then $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v8$2);
    v9$1 := (if p8$1 then $hash.0$1 != v8$1 else v9$1);
    v9$2 := (if p8$2 then $hash.0$2 != v8$2 else v9$2);
    p10$1 := (if p8$1 && v9$1 then v9$1 else p10$1);
    p10$2 := (if p8$2 && v9$2 then v9$2 else p10$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$cellStart(p10$1, $hash.0$1, v0$1, $$cellStart[$hash.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellStart(p10$2, $hash.0$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$cellStart(p10$2, $hash.0$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$cellStart"} true;
    $$cellStart[$hash.0$1] := (if p10$1 then v0$1 else $$cellStart[$hash.0$1]);
    $$cellStart[$hash.0$2] := (if p10$2 then v0$2 else $$cellStart[$hash.0$2]);
    v10$1 := (if p10$1 then BV32_UGT(v0$1, 0bv32) else v10$1);
    v10$2 := (if p10$2 then BV32_UGT(v0$2, 0bv32) else v10$2);
    p11$1 := (if p10$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p10$2 && v10$2 then v10$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$sharedHash(p11$1, local_id_x$1, $$sharedHash[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$sharedHash(p11$2, local_id_x$2, $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sharedHash"} true;
    v11$1 := (if p11$1 then $$sharedHash[1bv1][local_id_x$1] else v11$1);
    v11$2 := (if p11$2 then $$sharedHash[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v11$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$cellEnd(p11$1, v11$1, v0$1, $$cellEnd[v11$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellEnd(p11$2, v11$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$cellEnd(p11$2, v11$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$cellEnd"} true;
    $$cellEnd[v11$1] := (if p11$1 then v0$1 else $$cellEnd[v11$1]);
    $$cellEnd[v11$2] := (if p11$2 then v0$2 else $$cellEnd[v11$2]);
    v12$1 := (if p6$1 then v0$1 == BV32_SUB($numParticles, 1bv32) else v12$1);
    v12$2 := (if p6$2 then v0$2 == BV32_SUB($numParticles, 1bv32) else v12$2);
    p14$1 := (if p6$1 && v12$1 then v12$1 else p14$1);
    p14$2 := (if p6$2 && v12$2 then v12$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$cellEnd(p14$1, $hash.0$1, BV32_ADD(v0$1, 1bv32), $$cellEnd[$hash.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellEnd(p14$2, $hash.0$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$cellEnd(p14$2, $hash.0$2, BV32_ADD(v0$2, 1bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$cellEnd"} true;
    $$cellEnd[$hash.0$1] := (if p14$1 then BV32_ADD(v0$1, 1bv32) else $$cellEnd[$hash.0$1]);
    $$cellEnd[$hash.0$2] := (if p14$2 then BV32_ADD(v0$2, 1bv32) else $$cellEnd[$hash.0$2]);
    v13$1 := (if p6$1 then $$gridParticleIndex[v0$1] else v13$1);
    v13$2 := (if p6$2 then $$gridParticleIndex[v0$2] else v13$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p6$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p6$2 then _HAVOC_bv32$2 else v14$2);
    $$pos$0bv32$1 := (if p6$1 then v14$1 else $$pos$0bv32$1);
    $$pos$0bv32$2 := (if p6$2 then v14$2 else $$pos$0bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v15$1 := (if p6$1 then _HAVOC_bv32$1 else v15$1);
    v15$2 := (if p6$2 then _HAVOC_bv32$2 else v15$2);
    $$pos$1bv32$1 := (if p6$1 then v15$1 else $$pos$1bv32$1);
    $$pos$1bv32$2 := (if p6$2 then v15$2 else $$pos$1bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v16$1 := (if p6$1 then _HAVOC_bv32$1 else v16$1);
    v16$2 := (if p6$2 then _HAVOC_bv32$2 else v16$2);
    $$pos$2bv32$1 := (if p6$1 then v16$1 else $$pos$2bv32$1);
    $$pos$2bv32$2 := (if p6$2 then v16$2 else $$pos$2bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v17$1 := (if p6$1 then _HAVOC_bv32$1 else v17$1);
    v17$2 := (if p6$2 then _HAVOC_bv32$2 else v17$2);
    $$pos$3bv32$1 := (if p6$1 then v17$1 else $$pos$3bv32$1);
    $$pos$3bv32$2 := (if p6$2 then v17$2 else $$pos$3bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v18$1 := (if p6$1 then _HAVOC_bv32$1 else v18$1);
    v18$2 := (if p6$2 then _HAVOC_bv32$2 else v18$2);
    $$vel$0bv32$1 := (if p6$1 then v18$1 else $$vel$0bv32$1);
    $$vel$0bv32$2 := (if p6$2 then v18$2 else $$vel$0bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v19$1 := (if p6$1 then _HAVOC_bv32$1 else v19$1);
    v19$2 := (if p6$2 then _HAVOC_bv32$2 else v19$2);
    $$vel$1bv32$1 := (if p6$1 then v19$1 else $$vel$1bv32$1);
    $$vel$1bv32$2 := (if p6$2 then v19$2 else $$vel$1bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v20$1 := (if p6$1 then _HAVOC_bv32$1 else v20$1);
    v20$2 := (if p6$2 then _HAVOC_bv32$2 else v20$2);
    $$vel$2bv32$1 := (if p6$1 then v20$1 else $$vel$2bv32$1);
    $$vel$2bv32$2 := (if p6$2 then v20$2 else $$vel$2bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v21$1 := (if p6$1 then _HAVOC_bv32$1 else v21$1);
    v21$2 := (if p6$2 then _HAVOC_bv32$2 else v21$2);
    $$vel$3bv32$1 := (if p6$1 then v21$1 else $$vel$3bv32$1);
    $$vel$3bv32$2 := (if p6$2 then v21$2 else $$vel$3bv32$2);
    v22$1 := (if p6$1 then $$pos$0bv32$1 else v22$1);
    v22$2 := (if p6$2 then $$pos$0bv32$2 else v22$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$sortedPos(p6$1, BV32_MUL(v0$1, 4bv32), v22$1, $$sortedPos[BV32_MUL(v0$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(p6$2, BV32_MUL(v0$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$sortedPos(p6$2, BV32_MUL(v0$2, 4bv32), v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedPos"} true;
    $$sortedPos[BV32_MUL(v0$1, 4bv32)] := (if p6$1 then v22$1 else $$sortedPos[BV32_MUL(v0$1, 4bv32)]);
    $$sortedPos[BV32_MUL(v0$2, 4bv32)] := (if p6$2 then v22$2 else $$sortedPos[BV32_MUL(v0$2, 4bv32)]);
    v23$1 := (if p6$1 then $$pos$1bv32$1 else v23$1);
    v23$2 := (if p6$2 then $$pos$1bv32$2 else v23$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$sortedPos(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32), v23$1, $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32), v23$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedPos"} true;
    $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)] := (if p6$1 then v23$1 else $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)]);
    $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)] := (if p6$2 then v23$2 else $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)]);
    v24$1 := (if p6$1 then $$pos$2bv32$1 else v24$1);
    v24$2 := (if p6$2 then $$pos$2bv32$2 else v24$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$sortedPos(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32), v24$1, $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32), v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedPos"} true;
    $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)] := (if p6$1 then v24$1 else $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)]);
    $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)] := (if p6$2 then v24$2 else $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)]);
    v25$1 := (if p6$1 then $$pos$3bv32$1 else v25$1);
    v25$2 := (if p6$2 then $$pos$3bv32$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$sortedPos(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32), v25$1, $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$sortedPos(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedPos"} true;
    $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)] := (if p6$1 then v25$1 else $$sortedPos[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)]);
    $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)] := (if p6$2 then v25$2 else $$sortedPos[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)]);
    v26$1 := (if p6$1 then $$vel$0bv32$1 else v26$1);
    v26$2 := (if p6$2 then $$vel$0bv32$2 else v26$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$sortedVel(p6$1, BV32_MUL(v0$1, 4bv32), v26$1, $$sortedVel[BV32_MUL(v0$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(p6$2, BV32_MUL(v0$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$sortedVel(p6$2, BV32_MUL(v0$2, 4bv32), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedVel"} true;
    $$sortedVel[BV32_MUL(v0$1, 4bv32)] := (if p6$1 then v26$1 else $$sortedVel[BV32_MUL(v0$1, 4bv32)]);
    $$sortedVel[BV32_MUL(v0$2, 4bv32)] := (if p6$2 then v26$2 else $$sortedVel[BV32_MUL(v0$2, 4bv32)]);
    v27$1 := (if p6$1 then $$vel$1bv32$1 else v27$1);
    v27$2 := (if p6$2 then $$vel$1bv32$2 else v27$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$sortedVel(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32), v27$1, $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32), v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedVel"} true;
    $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)] := (if p6$1 then v27$1 else $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)]);
    $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)] := (if p6$2 then v27$2 else $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)]);
    v28$1 := (if p6$1 then $$vel$2bv32$1 else v28$1);
    v28$2 := (if p6$2 then $$vel$2bv32$2 else v28$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$sortedVel(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32), v28$1, $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32), v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedVel"} true;
    $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)] := (if p6$1 then v28$1 else $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)]);
    $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)] := (if p6$2 then v28$2 else $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)]);
    v29$1 := (if p6$1 then $$vel$3bv32$1 else v29$1);
    v29$2 := (if p6$2 then $$vel$3bv32$2 else v29$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$sortedVel(p6$1, BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32), v29$1, $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$sortedVel(p6$2, BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32), v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sortedVel"} true;
    $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)] := (if p6$1 then v29$1 else $$sortedVel[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)]);
    $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)] := (if p6$2 then v29$2 else $$sortedVel[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)]);
    return;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$sharedHash, $$cellStart, $$cellEnd, $$sortedPos, $$sortedVel, _TRACKING;



var $$pos$0bv32$1: bv32;

var $$pos$0bv32$2: bv32;

var $$pos$1bv32$1: bv32;

var $$pos$1bv32$2: bv32;

var $$pos$2bv32$1: bv32;

var $$pos$2bv32$2: bv32;

var $$pos$3bv32$1: bv32;

var $$pos$3bv32$2: bv32;

var $$vel$0bv32$1: bv32;

var $$vel$0bv32$2: bv32;

var $$vel$1bv32$1: bv32;

var $$vel$1bv32$2: bv32;

var $$vel$2bv32$1: bv32;

var $$vel$2bv32$2: bv32;

var $$vel$3bv32$1: bv32;

var $$vel$3bv32$2: bv32;

const _WATCHED_VALUE_$$cellStart: bv32;

procedure {:inline 1} _LOG_READ_$$cellStart(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$cellStart;



implementation {:inline 1} _LOG_READ_$$cellStart(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cellStart := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellStart == _value then true else _READ_HAS_OCCURRED_$$cellStart);
    return;
}



procedure _CHECK_READ_$$cellStart(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cellStart);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cellStart: bool;

procedure {:inline 1} _LOG_WRITE_$$cellStart(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$cellStart, _WRITE_READ_BENIGN_FLAG_$$cellStart;



implementation {:inline 1} _LOG_WRITE_$$cellStart(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cellStart := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellStart == _value then true else _WRITE_HAS_OCCURRED_$$cellStart);
    _WRITE_READ_BENIGN_FLAG_$$cellStart := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellStart == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cellStart);
    return;
}



procedure _CHECK_WRITE_$$cellStart(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellStart != _value);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellStart != _value);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cellStart(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$cellStart;



implementation {:inline 1} _LOG_ATOMIC_$$cellStart(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cellStart := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cellStart);
    return;
}



procedure _CHECK_ATOMIC_$$cellStart(_P: bool, _offset: bv32);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset);
  requires {:source_name "cellStart"} {:array "$$cellStart"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellStart(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$cellStart;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellStart(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cellStart := (if _P && _WRITE_HAS_OCCURRED_$$cellStart && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cellStart);
    return;
}



const _WATCHED_VALUE_$$cellEnd: bv32;

procedure {:inline 1} _LOG_READ_$$cellEnd(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$cellEnd;



implementation {:inline 1} _LOG_READ_$$cellEnd(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cellEnd := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellEnd == _value then true else _READ_HAS_OCCURRED_$$cellEnd);
    return;
}



procedure _CHECK_READ_$$cellEnd(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cellEnd);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cellEnd: bool;

procedure {:inline 1} _LOG_WRITE_$$cellEnd(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$cellEnd, _WRITE_READ_BENIGN_FLAG_$$cellEnd;



implementation {:inline 1} _LOG_WRITE_$$cellEnd(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cellEnd := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellEnd == _value then true else _WRITE_HAS_OCCURRED_$$cellEnd);
    _WRITE_READ_BENIGN_FLAG_$$cellEnd := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellEnd == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cellEnd);
    return;
}



procedure _CHECK_WRITE_$$cellEnd(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellEnd != _value);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cellEnd != _value);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cellEnd(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$cellEnd;



implementation {:inline 1} _LOG_ATOMIC_$$cellEnd(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cellEnd := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cellEnd);
    return;
}



procedure _CHECK_ATOMIC_$$cellEnd(_P: bool, _offset: bv32);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset);
  requires {:source_name "cellEnd"} {:array "$$cellEnd"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellEnd(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$cellEnd;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cellEnd(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cellEnd := (if _P && _WRITE_HAS_OCCURRED_$$cellEnd && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cellEnd);
    return;
}



const _WATCHED_VALUE_$$sortedPos: bv32;

procedure {:inline 1} _LOG_READ_$$sortedPos(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$sortedPos;



implementation {:inline 1} _LOG_READ_$$sortedPos(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sortedPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedPos == _value then true else _READ_HAS_OCCURRED_$$sortedPos);
    return;
}



procedure _CHECK_READ_$$sortedPos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sortedPos);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sortedPos: bool;

procedure {:inline 1} _LOG_WRITE_$$sortedPos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$sortedPos, _WRITE_READ_BENIGN_FLAG_$$sortedPos;



implementation {:inline 1} _LOG_WRITE_$$sortedPos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sortedPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedPos == _value then true else _WRITE_HAS_OCCURRED_$$sortedPos);
    _WRITE_READ_BENIGN_FLAG_$$sortedPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedPos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sortedPos);
    return;
}



procedure _CHECK_WRITE_$$sortedPos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedPos != _value);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedPos != _value);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sortedPos(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$sortedPos;



implementation {:inline 1} _LOG_ATOMIC_$$sortedPos(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sortedPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sortedPos);
    return;
}



procedure _CHECK_ATOMIC_$$sortedPos(_P: bool, _offset: bv32);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset);
  requires {:source_name "sortedPos"} {:array "$$sortedPos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$sortedPos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedPos(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sortedPos := (if _P && _WRITE_HAS_OCCURRED_$$sortedPos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sortedPos);
    return;
}



const _WATCHED_VALUE_$$sortedVel: bv32;

procedure {:inline 1} _LOG_READ_$$sortedVel(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$sortedVel;



implementation {:inline 1} _LOG_READ_$$sortedVel(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sortedVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedVel == _value then true else _READ_HAS_OCCURRED_$$sortedVel);
    return;
}



procedure _CHECK_READ_$$sortedVel(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sortedVel);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sortedVel: bool;

procedure {:inline 1} _LOG_WRITE_$$sortedVel(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$sortedVel, _WRITE_READ_BENIGN_FLAG_$$sortedVel;



implementation {:inline 1} _LOG_WRITE_$$sortedVel(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sortedVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedVel == _value then true else _WRITE_HAS_OCCURRED_$$sortedVel);
    _WRITE_READ_BENIGN_FLAG_$$sortedVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedVel == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sortedVel);
    return;
}



procedure _CHECK_WRITE_$$sortedVel(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedVel != _value);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedVel != _value);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sortedVel(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$sortedVel;



implementation {:inline 1} _LOG_ATOMIC_$$sortedVel(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sortedVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sortedVel);
    return;
}



procedure _CHECK_ATOMIC_$$sortedVel(_P: bool, _offset: bv32);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset);
  requires {:source_name "sortedVel"} {:array "$$sortedVel"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$sortedVel;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedVel(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sortedVel := (if _P && _WRITE_HAS_OCCURRED_$$sortedVel && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sortedVel);
    return;
}



const _WATCHED_VALUE_$$gridParticleHash: bv32;

procedure {:inline 1} _LOG_READ_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$gridParticleHash;



implementation {:inline 1} _LOG_READ_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then true else _READ_HAS_OCCURRED_$$gridParticleHash);
    return;
}



procedure _CHECK_READ_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gridParticleHash: bool;

procedure {:inline 1} _LOG_WRITE_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$gridParticleHash, _WRITE_READ_BENIGN_FLAG_$$gridParticleHash;



implementation {:inline 1} _LOG_WRITE_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then true else _WRITE_HAS_OCCURRED_$$gridParticleHash);
    _WRITE_READ_BENIGN_FLAG_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
    return;
}



procedure _CHECK_WRITE_$$gridParticleHash(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash != _value);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash != _value);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gridParticleHash(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$gridParticleHash;



implementation {:inline 1} _LOG_ATOMIC_$$gridParticleHash(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridParticleHash);
    return;
}



procedure _CHECK_ATOMIC_$$gridParticleHash(_P: bool, _offset: bv32);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleHash(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridParticleHash;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleHash(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridParticleHash := (if _P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
    return;
}



const _WATCHED_VALUE_$$gridParticleIndex: bv32;

procedure {:inline 1} _LOG_READ_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$gridParticleIndex;



implementation {:inline 1} _LOG_READ_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then true else _READ_HAS_OCCURRED_$$gridParticleIndex);
    return;
}



procedure _CHECK_READ_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$gridParticleIndex, _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex;



implementation {:inline 1} _LOG_WRITE_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then true else _WRITE_HAS_OCCURRED_$$gridParticleIndex);
    _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
    return;
}



procedure _CHECK_WRITE_$$gridParticleIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex != _value);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex != _value);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gridParticleIndex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$gridParticleIndex;



implementation {:inline 1} _LOG_ATOMIC_$$gridParticleIndex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridParticleIndex);
    return;
}



procedure _CHECK_ATOMIC_$$gridParticleIndex(_P: bool, _offset: bv32);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleIndex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleIndex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex := (if _P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
    return;
}



const _WATCHED_VALUE_$$oldPos: bv32;

procedure {:inline 1} _LOG_READ_$$oldPos(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$oldPos;



implementation {:inline 1} _LOG_READ_$$oldPos(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$oldPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldPos == _value then true else _READ_HAS_OCCURRED_$$oldPos);
    return;
}



procedure _CHECK_READ_$$oldPos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$oldPos);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$oldPos: bool;

procedure {:inline 1} _LOG_WRITE_$$oldPos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$oldPos, _WRITE_READ_BENIGN_FLAG_$$oldPos;



implementation {:inline 1} _LOG_WRITE_$$oldPos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$oldPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldPos == _value then true else _WRITE_HAS_OCCURRED_$$oldPos);
    _WRITE_READ_BENIGN_FLAG_$$oldPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldPos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$oldPos);
    return;
}



procedure _CHECK_WRITE_$$oldPos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldPos != _value);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldPos != _value);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$oldPos(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$oldPos;



implementation {:inline 1} _LOG_ATOMIC_$$oldPos(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$oldPos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$oldPos);
    return;
}



procedure _CHECK_ATOMIC_$$oldPos(_P: bool, _offset: bv32);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset);
  requires {:source_name "oldPos"} {:array "$$oldPos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldPos(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$oldPos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldPos(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$oldPos := (if _P && _WRITE_HAS_OCCURRED_$$oldPos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$oldPos);
    return;
}



const _WATCHED_VALUE_$$oldVel: bv32;

procedure {:inline 1} _LOG_READ_$$oldVel(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$oldVel;



implementation {:inline 1} _LOG_READ_$$oldVel(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$oldVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldVel == _value then true else _READ_HAS_OCCURRED_$$oldVel);
    return;
}



procedure _CHECK_READ_$$oldVel(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$oldVel);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$oldVel: bool;

procedure {:inline 1} _LOG_WRITE_$$oldVel(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$oldVel, _WRITE_READ_BENIGN_FLAG_$$oldVel;



implementation {:inline 1} _LOG_WRITE_$$oldVel(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$oldVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldVel == _value then true else _WRITE_HAS_OCCURRED_$$oldVel);
    _WRITE_READ_BENIGN_FLAG_$$oldVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldVel == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$oldVel);
    return;
}



procedure _CHECK_WRITE_$$oldVel(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldVel != _value);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$oldVel != _value);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$oldVel(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$oldVel;



implementation {:inline 1} _LOG_ATOMIC_$$oldVel(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$oldVel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$oldVel);
    return;
}



procedure _CHECK_ATOMIC_$$oldVel(_P: bool, _offset: bv32);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset);
  requires {:source_name "oldVel"} {:array "$$oldVel"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldVel(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$oldVel;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$oldVel(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$oldVel := (if _P && _WRITE_HAS_OCCURRED_$$oldVel && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$oldVel);
    return;
}



const _WATCHED_VALUE_$$sharedHash: bv32;

procedure {:inline 1} _LOG_READ_$$sharedHash(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$sharedHash;



implementation {:inline 1} _LOG_READ_$$sharedHash(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sharedHash := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sharedHash == _value then true else _READ_HAS_OCCURRED_$$sharedHash);
    return;
}



procedure _CHECK_READ_$$sharedHash(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sharedHash && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sharedHash: bool;

procedure {:inline 1} _LOG_WRITE_$$sharedHash(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$sharedHash, _WRITE_READ_BENIGN_FLAG_$$sharedHash;



implementation {:inline 1} _LOG_WRITE_$$sharedHash(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sharedHash := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sharedHash == _value then true else _WRITE_HAS_OCCURRED_$$sharedHash);
    _WRITE_READ_BENIGN_FLAG_$$sharedHash := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sharedHash == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sharedHash);
    return;
}



procedure _CHECK_WRITE_$$sharedHash(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sharedHash != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sharedHash != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sharedHash(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$sharedHash;



implementation {:inline 1} _LOG_ATOMIC_$$sharedHash(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sharedHash := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sharedHash);
    return;
}



procedure _CHECK_ATOMIC_$$sharedHash(_P: bool, _offset: bv32);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedHash"} {:array "$$sharedHash"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sharedHash(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$sharedHash;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sharedHash(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sharedHash := (if _P && _WRITE_HAS_OCCURRED_$$sharedHash && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sharedHash);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$sharedHash;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$sharedHash;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$sharedHash;
    goto anon1;

  anon1:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cellStart;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cellStart;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cellStart;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cellEnd;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cellEnd;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cellEnd;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$sortedPos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$sortedPos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$sortedPos;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$sortedVel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$sortedVel;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$sortedVel;
    goto anon7;

  anon7:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$cellStart;
    goto anon9;

  anon9:
    havoc $$cellEnd;
    goto anon10;

  anon10:
    havoc $$sortedPos;
    goto anon11;

  anon11:
    havoc $$sortedVel;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$sharedHash;
    goto anon3;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
