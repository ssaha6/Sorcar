type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "gridParticleHash"} {:global} $$gridParticleHash: [int]int;

axiom {:array_info "$$gridParticleHash"} {:global} {:elem_width 32} {:source_name "gridParticleHash"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridParticleHash: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridParticleHash: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridParticleHash: bool;

var {:source_name "gridParticleIndex"} {:global} $$gridParticleIndex: [int]int;

axiom {:array_info "$$gridParticleIndex"} {:global} {:elem_width 32} {:source_name "gridParticleIndex"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridParticleIndex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridParticleIndex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridParticleIndex: bool;

axiom {:array_info "$$pos"} {:global} {:elem_width 32} {:source_name "pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pos: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p.i"} {:elem_width 32} {:source_name "p.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$gridPos.i"} {:elem_width 32} {:source_name "gridPos.i"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$p"} {:elem_width 32} {:source_name "p"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$gridPos"} {:elem_width 32} {:source_name "gridPos"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:source_name "params"} {:constant} $$params$1: [int]int;

var {:source_name "params"} {:constant} $$params$2: [int]int;

axiom {:array_info "$$params"} {:constant} {:elem_width 8} {:source_name "params"} {:source_elem_width 832} {:source_dimensions "1"} true;

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

function FDIV32(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_TO_SI32(int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "calcHashD"} {:kernel} $_Z9calcHashDPjS_P6float4j($numParticles: int);
  requires !_READ_HAS_OCCURRED_$$gridParticleHash && !_WRITE_HAS_OCCURRED_$$gridParticleHash && !_ATOMIC_HAS_OCCURRED_$$gridParticleHash;
  requires !_READ_HAS_OCCURRED_$$gridParticleIndex && !_WRITE_HAS_OCCURRED_$$gridParticleIndex && !_ATOMIC_HAS_OCCURRED_$$gridParticleIndex;
  requires !_READ_HAS_OCCURRED_$$pos && !_WRITE_HAS_OCCURRED_$$pos && !_ATOMIC_HAS_OCCURRED_$$pos;
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
  modifies _WRITE_HAS_OCCURRED_$$gridParticleHash, _WRITE_READ_BENIGN_FLAG_$$gridParticleHash, _WRITE_READ_BENIGN_FLAG_$$gridParticleHash, _WRITE_HAS_OCCURRED_$$gridParticleIndex, _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex, _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex;



implementation {:source_name "calcHashD"} {:kernel} $_Z9calcHashDPjS_P6float4j($numParticles: int)
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
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
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
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: int;
  var v81$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_UGE(v0$1, $numParticles);
    v1$2 := BV32_UGE(v0$2, $numParticles);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    $$p$0$1 := (if p1$1 then v2$1 else $$p$0$1);
    $$p$0$2 := (if p1$2 then v2$2 else $$p$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p1$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_int$2 else v3$2);
    $$p$1$1 := (if p1$1 then v3$1 else $$p$1$1);
    $$p$1$2 := (if p1$2 then v3$2 else $$p$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    $$p$2$1 := (if p1$1 then v4$1 else $$p$2$1);
    $$p$2$2 := (if p1$2 then v4$2 else $$p$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p1$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p1$2 then _HAVOC_int$2 else v5$2);
    $$p$3$1 := (if p1$1 then v5$1 else $$p$3$1);
    $$p$3$2 := (if p1$2 then v5$2 else $$p$3$2);
    v6$1 := (if p1$1 then $$p$0$1 else v6$1);
    v6$2 := (if p1$2 then $$p$0$2 else v6$2);
    v7$1 := (if p1$1 then $$p$1$1 else v7$1);
    v7$2 := (if p1$2 then $$p$1$2 else v7$2);
    v8$1 := (if p1$1 then $$p$2$1 else v8$1);
    v8$2 := (if p1$2 then $$p$2$2 else v8$2);
    $$0$0$1 := (if p1$1 then v6$1 else $$0$0$1);
    $$0$0$2 := (if p1$2 then v6$2 else $$0$0$2);
    $$0$1$1 := (if p1$1 then v7$1 else $$0$1$1);
    $$0$1$2 := (if p1$2 then v7$2 else $$0$1$2);
    $$0$2$1 := (if p1$1 then v8$1 else $$0$2$1);
    $$0$2$2 := (if p1$2 then v8$2 else $$0$2$2);
    v9$1 := (if p1$1 then $$0$0$1 else v9$1);
    v9$2 := (if p1$2 then $$0$0$2 else v9$2);
    v10$1 := (if p1$1 then $$0$1$1 else v10$1);
    v10$2 := (if p1$2 then $$0$1$2 else v10$2);
    v11$1 := (if p1$1 then $$0$2$1 else v11$1);
    v11$2 := (if p1$2 then $$0$2$2 else v11$2);
    $$2$0$1 := (if p1$1 then v9$1 else $$2$0$1);
    $$2$0$2 := (if p1$2 then v9$2 else $$2$0$2);
    $$2$1$1 := (if p1$1 then v10$1 else $$2$1$1);
    $$2$1$2 := (if p1$2 then v10$2 else $$2$1$2);
    $$2$2$1 := (if p1$1 then v11$1 else $$2$2$1);
    $$2$2$2 := (if p1$2 then v11$2 else $$2$2$2);
    v12$1 := (if p1$1 then $$2$0$1 else v12$1);
    v12$2 := (if p1$2 then $$2$0$2 else v12$2);
    v13$1 := (if p1$1 then $$2$1$1 else v13$1);
    v13$2 := (if p1$2 then $$2$1$2 else v13$2);
    v14$1 := (if p1$1 then $$2$2$1 else v14$1);
    v14$2 := (if p1$2 then $$2$2$2 else v14$2);
    $$p.i$0$1 := (if p1$1 then v12$1 else $$p.i$0$1);
    $$p.i$0$2 := (if p1$2 then v12$2 else $$p.i$0$2);
    $$p.i$1$1 := (if p1$1 then v13$1 else $$p.i$1$1);
    $$p.i$1$2 := (if p1$2 then v13$2 else $$p.i$1$2);
    $$p.i$2$1 := (if p1$1 then v14$1 else $$p.i$2$1);
    $$p.i$2$2 := (if p1$2 then v14$2 else $$p.i$2$2);
    v15$1 := (if p1$1 then $$p.i$0$1 else v15$1);
    v15$2 := (if p1$2 then $$p.i$0$2 else v15$2);
    v16$1 := (if p1$1 then $$params$1[52] else v16$1);
    v16$2 := (if p1$2 then $$params$2[52] else v16$2);
    v17$1 := (if p1$1 then $$params$1[53] else v17$1);
    v17$2 := (if p1$2 then $$params$2[53] else v17$2);
    v18$1 := (if p1$1 then $$params$1[54] else v18$1);
    v18$2 := (if p1$2 then $$params$2[54] else v18$2);
    v19$1 := (if p1$1 then $$params$1[55] else v19$1);
    v19$2 := (if p1$2 then $$params$2[55] else v19$2);
    v20$1 := (if p1$1 then $$params$1[64] else v20$1);
    v20$2 := (if p1$2 then $$params$2[64] else v20$2);
    v21$1 := (if p1$1 then $$params$1[65] else v21$1);
    v21$2 := (if p1$2 then $$params$2[65] else v21$2);
    v22$1 := (if p1$1 then $$params$1[66] else v22$1);
    v22$2 := (if p1$2 then $$params$2[66] else v22$2);
    v23$1 := (if p1$1 then $$params$1[67] else v23$1);
    v23$2 := (if p1$2 then $$params$2[67] else v23$2);
    call {:sourceloc_num 38} v24$1, v24$2 := $floor(p1$1, FP32_CONV64(FDIV32(FSUB32(v15$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$1, v18$1), v17$1), v16$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$1, v22$1), v21$1), v20$1))), p1$2, FP32_CONV64(FDIV32(FSUB32(v15$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$2, v18$2), v17$2), v16$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$2, v22$2), v21$2), v20$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "$floor"} true;
    $$1$0$1 := (if p1$1 then FP64_TO_SI32(v24$1) else $$1$0$1);
    $$1$0$2 := (if p1$2 then FP64_TO_SI32(v24$2) else $$1$0$2);
    v25$1 := (if p1$1 then $$p.i$1$1 else v25$1);
    v25$2 := (if p1$2 then $$p.i$1$2 else v25$2);
    v26$1 := (if p1$1 then $$params$1[56] else v26$1);
    v26$2 := (if p1$2 then $$params$2[56] else v26$2);
    v27$1 := (if p1$1 then $$params$1[57] else v27$1);
    v27$2 := (if p1$2 then $$params$2[57] else v27$2);
    v28$1 := (if p1$1 then $$params$1[58] else v28$1);
    v28$2 := (if p1$2 then $$params$2[58] else v28$2);
    v29$1 := (if p1$1 then $$params$1[59] else v29$1);
    v29$2 := (if p1$2 then $$params$2[59] else v29$2);
    v30$1 := (if p1$1 then $$params$1[68] else v30$1);
    v30$2 := (if p1$2 then $$params$2[68] else v30$2);
    v31$1 := (if p1$1 then $$params$1[69] else v31$1);
    v31$2 := (if p1$2 then $$params$2[69] else v31$2);
    v32$1 := (if p1$1 then $$params$1[70] else v32$1);
    v32$2 := (if p1$2 then $$params$2[70] else v32$2);
    v33$1 := (if p1$1 then $$params$1[71] else v33$1);
    v33$2 := (if p1$2 then $$params$2[71] else v33$2);
    call {:sourceloc_num 49} v34$1, v34$2 := $floor(p1$1, FP32_CONV64(FDIV32(FSUB32(v25$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$1, v28$1), v27$1), v26$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$1, v32$1), v31$1), v30$1))), p1$2, FP32_CONV64(FDIV32(FSUB32(v25$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$2, v28$2), v27$2), v26$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$2, v32$2), v31$2), v30$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "$floor"} true;
    $$1$1$1 := (if p1$1 then FP64_TO_SI32(v34$1) else $$1$1$1);
    $$1$1$2 := (if p1$2 then FP64_TO_SI32(v34$2) else $$1$1$2);
    v35$1 := (if p1$1 then $$p.i$2$1 else v35$1);
    v35$2 := (if p1$2 then $$p.i$2$2 else v35$2);
    v36$1 := (if p1$1 then $$params$1[60] else v36$1);
    v36$2 := (if p1$2 then $$params$2[60] else v36$2);
    v37$1 := (if p1$1 then $$params$1[61] else v37$1);
    v37$2 := (if p1$2 then $$params$2[61] else v37$2);
    v38$1 := (if p1$1 then $$params$1[62] else v38$1);
    v38$2 := (if p1$2 then $$params$2[62] else v38$2);
    v39$1 := (if p1$1 then $$params$1[63] else v39$1);
    v39$2 := (if p1$2 then $$params$2[63] else v39$2);
    v40$1 := (if p1$1 then $$params$1[72] else v40$1);
    v40$2 := (if p1$2 then $$params$2[72] else v40$2);
    v41$1 := (if p1$1 then $$params$1[73] else v41$1);
    v41$2 := (if p1$2 then $$params$2[73] else v41$2);
    v42$1 := (if p1$1 then $$params$1[74] else v42$1);
    v42$2 := (if p1$2 then $$params$2[74] else v42$2);
    v43$1 := (if p1$1 then $$params$1[75] else v43$1);
    v43$2 := (if p1$2 then $$params$2[75] else v43$2);
    call {:sourceloc_num 60} v44$1, v44$2 := $floor(p1$1, FP32_CONV64(FDIV32(FSUB32(v35$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$1, v38$1), v37$1), v36$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$1, v42$1), v41$1), v40$1))), p1$2, FP32_CONV64(FDIV32(FSUB32(v35$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$2, v38$2), v37$2), v36$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$2, v42$2), v41$2), v40$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "$floor"} true;
    $$1$2$1 := (if p1$1 then FP64_TO_SI32(v44$1) else $$1$2$1);
    $$1$2$2 := (if p1$2 then FP64_TO_SI32(v44$2) else $$1$2$2);
    v45$1 := (if p1$1 then $$1$0$1 else v45$1);
    v45$2 := (if p1$2 then $$1$0$2 else v45$2);
    v46$1 := (if p1$1 then $$1$1$1 else v46$1);
    v46$2 := (if p1$2 then $$1$1$2 else v46$2);
    v47$1 := (if p1$1 then $$1$2$1 else v47$1);
    v47$2 := (if p1$2 then $$1$2$2 else v47$2);
    $$gridPos$0$1 := (if p1$1 then v45$1 else $$gridPos$0$1);
    $$gridPos$0$2 := (if p1$2 then v45$2 else $$gridPos$0$2);
    $$gridPos$1$1 := (if p1$1 then v46$1 else $$gridPos$1$1);
    $$gridPos$1$2 := (if p1$2 then v46$2 else $$gridPos$1$2);
    $$gridPos$2$1 := (if p1$1 then v47$1 else $$gridPos$2$1);
    $$gridPos$2$2 := (if p1$2 then v47$2 else $$gridPos$2$2);
    v48$1 := (if p1$1 then $$gridPos$0$1 else v48$1);
    v48$2 := (if p1$2 then $$gridPos$0$2 else v48$2);
    $$3$0$1 := (if p1$1 then v48$1 else $$3$0$1);
    $$3$0$2 := (if p1$2 then v48$2 else $$3$0$2);
    v49$1 := (if p1$1 then $$gridPos$1$1 else v49$1);
    v49$2 := (if p1$2 then $$gridPos$1$2 else v49$2);
    $$3$1$1 := (if p1$1 then v49$1 else $$3$1$1);
    $$3$1$2 := (if p1$2 then v49$2 else $$3$1$2);
    v50$1 := (if p1$1 then $$gridPos$2$1 else v50$1);
    v50$2 := (if p1$2 then $$gridPos$2$2 else v50$2);
    $$3$2$1 := (if p1$1 then v50$1 else $$3$2$1);
    $$3$2$2 := (if p1$2 then v50$2 else $$3$2$2);
    v51$1 := (if p1$1 then $$3$0$1 else v51$1);
    v51$2 := (if p1$2 then $$3$0$2 else v51$2);
    v52$1 := (if p1$1 then $$3$1$1 else v52$1);
    v52$2 := (if p1$2 then $$3$1$2 else v52$2);
    v53$1 := (if p1$1 then $$3$2$1 else v53$1);
    v53$2 := (if p1$2 then $$3$2$2 else v53$2);
    $$gridPos.i$0$1 := (if p1$1 then v51$1 else $$gridPos.i$0$1);
    $$gridPos.i$0$2 := (if p1$2 then v51$2 else $$gridPos.i$0$2);
    $$gridPos.i$1$1 := (if p1$1 then v52$1 else $$gridPos.i$1$1);
    $$gridPos.i$1$2 := (if p1$2 then v52$2 else $$gridPos.i$1$2);
    $$gridPos.i$2$1 := (if p1$1 then v53$1 else $$gridPos.i$2$1);
    $$gridPos.i$2$2 := (if p1$2 then v53$2 else $$gridPos.i$2$2);
    v54$1 := (if p1$1 then $$gridPos.i$0$1 else v54$1);
    v54$2 := (if p1$2 then $$gridPos.i$0$2 else v54$2);
    v55$1 := (if p1$1 then $$params$1[36] else v55$1);
    v55$2 := (if p1$2 then $$params$2[36] else v55$2);
    v56$1 := (if p1$1 then $$params$1[37] else v56$1);
    v56$2 := (if p1$2 then $$params$2[37] else v56$2);
    v57$1 := (if p1$1 then $$params$1[38] else v57$1);
    v57$2 := (if p1$2 then $$params$2[38] else v57$2);
    v58$1 := (if p1$1 then $$params$1[39] else v58$1);
    v58$2 := (if p1$2 then $$params$2[39] else v58$2);
    $$gridPos.i$0$1 := (if p1$1 then BV32_AND(v54$1, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v58$1, v57$1), v56$1), v55$1), 1)) else $$gridPos.i$0$1);
    $$gridPos.i$0$2 := (if p1$2 then BV32_AND(v54$2, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v58$2, v57$2), v56$2), v55$2), 1)) else $$gridPos.i$0$2);
    v59$1 := (if p1$1 then $$gridPos.i$1$1 else v59$1);
    v59$2 := (if p1$2 then $$gridPos.i$1$2 else v59$2);
    v60$1 := (if p1$1 then $$params$1[40] else v60$1);
    v60$2 := (if p1$2 then $$params$2[40] else v60$2);
    v61$1 := (if p1$1 then $$params$1[41] else v61$1);
    v61$2 := (if p1$2 then $$params$2[41] else v61$2);
    v62$1 := (if p1$1 then $$params$1[42] else v62$1);
    v62$2 := (if p1$2 then $$params$2[42] else v62$2);
    v63$1 := (if p1$1 then $$params$1[43] else v63$1);
    v63$2 := (if p1$2 then $$params$2[43] else v63$2);
    $$gridPos.i$1$1 := (if p1$1 then BV32_AND(v59$1, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$1, v62$1), v61$1), v60$1), 1)) else $$gridPos.i$1$1);
    $$gridPos.i$1$2 := (if p1$2 then BV32_AND(v59$2, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$2, v62$2), v61$2), v60$2), 1)) else $$gridPos.i$1$2);
    v64$1 := (if p1$1 then $$gridPos.i$2$1 else v64$1);
    v64$2 := (if p1$2 then $$gridPos.i$2$2 else v64$2);
    v65$1 := (if p1$1 then $$params$1[44] else v65$1);
    v65$2 := (if p1$2 then $$params$2[44] else v65$2);
    v66$1 := (if p1$1 then $$params$1[45] else v66$1);
    v66$2 := (if p1$2 then $$params$2[45] else v66$2);
    v67$1 := (if p1$1 then $$params$1[46] else v67$1);
    v67$2 := (if p1$2 then $$params$2[46] else v67$2);
    v68$1 := (if p1$1 then $$params$1[47] else v68$1);
    v68$2 := (if p1$2 then $$params$2[47] else v68$2);
    $$gridPos.i$2$1 := (if p1$1 then BV32_AND(v64$1, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$1, v67$1), v66$1), v65$1), 1)) else $$gridPos.i$2$1);
    $$gridPos.i$2$2 := (if p1$2 then BV32_AND(v64$2, BV32_SUB(BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$2, v67$2), v66$2), v65$2), 1)) else $$gridPos.i$2$2);
    v69$1 := (if p1$1 then $$gridPos.i$2$1 else v69$1);
    v69$2 := (if p1$2 then $$gridPos.i$2$2 else v69$2);
    v70$1 := (if p1$1 then $$params$1[40] else v70$1);
    v70$2 := (if p1$2 then $$params$2[40] else v70$2);
    v71$1 := (if p1$1 then $$params$1[41] else v71$1);
    v71$2 := (if p1$2 then $$params$2[41] else v71$2);
    v72$1 := (if p1$1 then $$params$1[42] else v72$1);
    v72$2 := (if p1$2 then $$params$2[42] else v72$2);
    v73$1 := (if p1$1 then $$params$1[43] else v73$1);
    v73$2 := (if p1$2 then $$params$2[43] else v73$2);
    v74$1 := (if p1$1 then $$params$1[36] else v74$1);
    v74$2 := (if p1$2 then $$params$2[36] else v74$2);
    v75$1 := (if p1$1 then $$params$1[37] else v75$1);
    v75$2 := (if p1$2 then $$params$2[37] else v75$2);
    v76$1 := (if p1$1 then $$params$1[38] else v76$1);
    v76$2 := (if p1$2 then $$params$2[38] else v76$2);
    v77$1 := (if p1$1 then $$params$1[39] else v77$1);
    v77$2 := (if p1$2 then $$params$2[39] else v77$2);
    v78$1 := (if p1$1 then $$gridPos.i$1$1 else v78$1);
    v78$2 := (if p1$2 then $$gridPos.i$1$2 else v78$2);
    v79$1 := (if p1$1 then $$params$1[36] else v79$1);
    v79$2 := (if p1$2 then $$params$2[36] else v79$2);
    v80$1 := (if p1$1 then $$params$1[37] else v80$1);
    v80$2 := (if p1$2 then $$params$2[37] else v80$2);
    v81$1 := (if p1$1 then $$params$1[38] else v81$1);
    v81$2 := (if p1$2 then $$params$2[38] else v81$2);
    v82$1 := (if p1$1 then $$params$1[39] else v82$1);
    v82$2 := (if p1$2 then $$params$2[39] else v82$2);
    v83$1 := (if p1$1 then $$gridPos.i$0$1 else v83$1);
    v83$2 := (if p1$2 then $$gridPos.i$0$2 else v83$2);
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$gridParticleHash(p1$1, v0$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v69$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$1, v72$1), v71$1), v70$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$1, v76$1), v75$1), v74$1)), BV32_MUL(v78$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$1, v81$1), v80$1), v79$1))), v83$1), $$gridParticleHash[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleHash(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$gridParticleHash(p1$2, v0$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v69$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$2, v72$2), v71$2), v70$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$2, v76$2), v75$2), v74$2)), BV32_MUL(v78$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$2, v81$2), v80$2), v79$2))), v83$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridParticleHash"} true;
    $$gridParticleHash[v0$1] := (if p1$1 then BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v69$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$1, v72$1), v71$1), v70$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$1, v76$1), v75$1), v74$1)), BV32_MUL(v78$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$1, v81$1), v80$1), v79$1))), v83$1) else $$gridParticleHash[v0$1]);
    $$gridParticleHash[v0$2] := (if p1$2 then BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v69$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$2, v72$2), v71$2), v70$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$2, v76$2), v75$2), v74$2)), BV32_MUL(v78$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$2, v81$2), v80$2), v79$2))), v83$2) else $$gridParticleHash[v0$2]);
    call {:sourceloc} {:sourceloc_num 114} _LOG_WRITE_$$gridParticleIndex(p1$1, v0$1, v0$1, $$gridParticleIndex[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleIndex(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 114} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 114} _CHECK_WRITE_$$gridParticleIndex(p1$2, v0$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridParticleIndex"} true;
    $$gridParticleIndex[v0$1] := (if p1$1 then v0$1 else $$gridParticleIndex[v0$1]);
    $$gridParticleIndex[v0$2] := (if p1$2 then v0$2 else $$gridParticleIndex[v0$2]);
    return;
}



procedure {:source_name "floor"} $floor(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

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

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$p.i$0$1: int;

var $$p.i$0$2: int;

var $$p.i$1$1: int;

var $$p.i$1$2: int;

var $$p.i$2$1: int;

var $$p.i$2$2: int;

var $$gridPos.i$0$1: int;

var $$gridPos.i$0$2: int;

var $$gridPos.i$1$1: int;

var $$gridPos.i$1$2: int;

var $$gridPos.i$2$1: int;

var $$gridPos.i$2$2: int;

var $$p$0$1: int;

var $$p$0$2: int;

var $$p$1$1: int;

var $$p$1$2: int;

var $$p$2$1: int;

var $$p$2$2: int;

var $$p$3$1: int;

var $$p$3$2: int;

var $$gridPos$0$1: int;

var $$gridPos$0$2: int;

var $$gridPos$1$1: int;

var $$gridPos$1$2: int;

var $$gridPos$2$1: int;

var $$gridPos$2$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

const _WATCHED_VALUE_$$gridParticleHash: int;

procedure {:inline 1} _LOG_READ_$$gridParticleHash(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$gridParticleHash;



implementation {:inline 1} _LOG_READ_$$gridParticleHash(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then true else _READ_HAS_OCCURRED_$$gridParticleHash);
    return;
}



procedure _CHECK_READ_$$gridParticleHash(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gridParticleHash: bool;

procedure {:inline 1} _LOG_WRITE_$$gridParticleHash(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$gridParticleHash, _WRITE_READ_BENIGN_FLAG_$$gridParticleHash;



implementation {:inline 1} _LOG_WRITE_$$gridParticleHash(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then true else _WRITE_HAS_OCCURRED_$$gridParticleHash);
    _WRITE_READ_BENIGN_FLAG_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
    return;
}



procedure _CHECK_WRITE_$$gridParticleHash(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash != _value);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleHash != _value);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gridParticleHash(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$gridParticleHash;



implementation {:inline 1} _LOG_ATOMIC_$$gridParticleHash(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridParticleHash := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridParticleHash);
    return;
}



procedure _CHECK_ATOMIC_$$gridParticleHash(_P: bool, _offset: int);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);
  requires {:source_name "gridParticleHash"} {:array "$$gridParticleHash"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleHash(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridParticleHash;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleHash(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridParticleHash := (if _P && _WRITE_HAS_OCCURRED_$$gridParticleHash && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridParticleHash);
    return;
}



const _WATCHED_VALUE_$$gridParticleIndex: int;

procedure {:inline 1} _LOG_READ_$$gridParticleIndex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$gridParticleIndex;



implementation {:inline 1} _LOG_READ_$$gridParticleIndex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then true else _READ_HAS_OCCURRED_$$gridParticleIndex);
    return;
}



procedure _CHECK_READ_$$gridParticleIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$gridParticleIndex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$gridParticleIndex, _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex;



implementation {:inline 1} _LOG_WRITE_$$gridParticleIndex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then true else _WRITE_HAS_OCCURRED_$$gridParticleIndex);
    _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
    return;
}



procedure _CHECK_WRITE_$$gridParticleIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex != _value);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridParticleIndex != _value);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gridParticleIndex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$gridParticleIndex;



implementation {:inline 1} _LOG_ATOMIC_$$gridParticleIndex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridParticleIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridParticleIndex);
    return;
}



procedure _CHECK_ATOMIC_$$gridParticleIndex(_P: bool, _offset: int);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);
  requires {:source_name "gridParticleIndex"} {:array "$$gridParticleIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleIndex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridParticleIndex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex := (if _P && _WRITE_HAS_OCCURRED_$$gridParticleIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridParticleIndex);
    return;
}



const _WATCHED_VALUE_$$pos: int;

procedure {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _READ_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_READ_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pos);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pos: bool;

procedure {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _WRITE_HAS_OCCURRED_$$pos);
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pos);
    return;
}



procedure _CHECK_WRITE_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_ATOMIC_$$pos(_P: bool, _offset: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pos);
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
