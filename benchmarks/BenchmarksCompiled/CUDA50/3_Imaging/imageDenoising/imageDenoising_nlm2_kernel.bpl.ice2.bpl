function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "dst"} {:global} $$dst: [bv32]bv32;

axiom {:array_info "$$dst"} {:global} {:elem_width 32} {:source_name "dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst: bool;

const $arrayId$$dst: arrayId;

axiom $arrayId$$dst == 1bv4;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$0: arrayId;

axiom $arrayId$$0 == 2bv4;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$1: arrayId;

axiom $arrayId$$1 == 3bv4;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$2: arrayId;

axiom $arrayId$$2 == 4bv4;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$3: arrayId;

axiom $arrayId$$3 == 5bv4;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$4: arrayId;

axiom $arrayId$$4 == 6bv4;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$5: arrayId;

axiom $arrayId$$5 == 7bv4;

axiom {:array_info "$$clr"} {:elem_width 32} {:source_name "clr"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$clr: arrayId;

axiom $arrayId$$clr == 8bv4;

axiom {:array_info "$$clrIJ"} {:elem_width 32} {:source_name "clrIJ"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$clrIJ: arrayId;

axiom $arrayId$$clrIJ == 9bv4;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$6: arrayId;

axiom $arrayId$$6 == 10bv4;

axiom {:array_info "$$clr00"} {:elem_width 32} {:source_name "clr00"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$clr00: arrayId;

axiom $arrayId$$clr00 == 11bv4;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$7: arrayId;

axiom $arrayId$$7 == 12bv4;

axiom {:array_info "$$texImage"} {:global} {:elem_width 8} {:source_name "texImage"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texImage: bool;

const $arrayId$$texImage: arrayId;

axiom $arrayId$$texImage == 13bv4;

var {:source_name "fWeights"} {:group_shared} $$_ZZ4NLM2PjiiffE8fWeights: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ4NLM2PjiiffE8fWeights"} {:group_shared} {:elem_width 32} {:source_name "fWeights"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights: bool;

const $arrayId$$_ZZ4NLM2PjiiffE8fWeights: arrayId;

axiom $arrayId$$_ZZ4NLM2PjiiffE8fWeights == 14bv4;

type ptr = bv32;

type arrayId = bv4;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base[4:0] ++ offset[28:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:28]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv4 ++ p[28:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv4;

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

function FDIV32(bv32, bv32) : bv32;

function FEQ32(bv32, bv32) : bool;

function FLT32(bv32, bv32) : bool;

function FMUL32(bv32, bv32) : bv32;

function FP32_TO_SI32(bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function UI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "NLM2"} {:kernel} $_Z4NLM2Pjiiff($imageW: bv32, $imageH: bv32, $Noise: bv32, $lerpC: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 320bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $imageH == 408bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
  requires !_READ_HAS_OCCURRED_$$texImage && !_WRITE_HAS_OCCURRED_$$texImage && !_ATOMIC_HAS_OCCURRED_$$texImage;
  requires !_READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && !_WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && !_ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
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
  modifies $$_ZZ4NLM2PjiiffE8fWeights, _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights, _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights, _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights, $$dst, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights, _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "NLM2"} {:kernel} $_Z4NLM2Pjiiff($imageW: bv32, $imageH: bv32, $Noise: bv32, $lerpC: bv32)
{
  var $weight.0$1: bv32;
  var $weight.0$2: bv32;
  var $n.0$1: bv32;
  var $n.0$2: bv32;
  var $weight.1$1: bv32;
  var $weight.1$2: bv32;
  var $m.0$1: bv32;
  var $m.0$2: bv32;
  var $fCount.0$1: bv32;
  var $fCount.0$2: bv32;
  var $sumWeights.0$1: bv32;
  var $sumWeights.0$2: bv32;
  var $idx.0$1: bv32;
  var $idx.0$2: bv32;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $fCount.1$1: bv32;
  var $fCount.1$2: bv32;
  var $sumWeights.1$1: bv32;
  var $sumWeights.1$2: bv32;
  var $idx.1$1: bv32;
  var $idx.1$2: bv32;
  var $j.0$1: bv32;
  var $j.0$2: bv32;
  var $0$1: bv32;
  var $0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
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
  var v15$1: bv8;
  var v15$2: bv8;
  var v16$1: bv8;
  var v16$2: bv8;
  var v17$1: bv8;
  var v17$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v20$1: bv128;
  var v20$2: bv128;
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
  var v29$1: bv8;
  var v29$2: bv8;
  var v30$1: bv8;
  var v30$2: bv8;
  var v31$1: bv8;
  var v31$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v33$1: bv128;
  var v33$2: bv128;
  var v34$1: bv32;
  var v34$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v51$1: bv32;
  var v51$2: bv32;
  var v52$1: bv32;
  var v52$2: bv32;
  var v53$1: bv32;
  var v53$2: bv32;
  var v54$1: bv32;
  var v54$2: bv32;
  var v55$1: bool;
  var v55$2: bool;
  var v56$1: bool;
  var v56$2: bool;
  var v57$1: bv32;
  var v57$2: bv32;
  var v58$1: bv8;
  var v58$2: bv8;
  var v59$1: bv8;
  var v59$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v61$1: bv8;
  var v61$2: bv8;
  var v62$1: bv8;
  var v62$2: bv8;
  var v63$1: bv8;
  var v63$2: bv8;
  var v64$1: bv8;
  var v64$2: bv8;
  var v65$1: bv8;
  var v65$2: bv8;
  var v66$1: bv8;
  var v66$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v68$1: bv8;
  var v68$2: bv8;
  var v69$1: bv8;
  var v69$2: bv8;
  var v70$1: bv128;
  var v70$2: bv128;
  var v71$1: bv32;
  var v71$2: bv32;
  var v72$1: bv32;
  var v72$2: bv32;
  var v73$1: bv32;
  var v73$2: bv32;
  var v74$1: bv32;
  var v74$2: bv32;
  var v75$1: bv32;
  var v75$2: bv32;
  var v76$1: bv32;
  var v76$2: bv32;
  var v77$1: bv32;
  var v77$2: bv32;
  var v78$1: bv32;
  var v78$2: bv32;
  var v79$1: bv32;
  var v79$2: bv32;
  var v80$1: bv32;
  var v80$2: bv32;
  var v81$1: bool;
  var v81$2: bool;
  var v82$1: bv8;
  var v82$2: bv8;
  var v83$1: bv8;
  var v83$2: bv8;
  var v84$1: bv8;
  var v84$2: bv8;
  var v85$1: bv8;
  var v85$2: bv8;
  var v86$1: bv8;
  var v86$2: bv8;
  var v87$1: bv8;
  var v87$2: bv8;
  var v88$1: bv8;
  var v88$2: bv8;
  var v89$1: bv8;
  var v89$2: bv8;
  var v90$1: bv8;
  var v90$2: bv8;
  var v91$1: bv8;
  var v91$2: bv8;
  var v92$1: bv8;
  var v92$2: bv8;
  var v93$1: bv8;
  var v93$2: bv8;
  var v94$1: bv128;
  var v94$2: bv128;
  var v95$1: bv32;
  var v95$2: bv32;
  var v96$1: bv32;
  var v96$2: bv32;
  var v97$1: bv32;
  var v97$2: bv32;
  var v98$1: bv32;
  var v98$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v101$1: bv32;
  var v101$2: bv32;
  var v102$1: bv32;
  var v102$2: bv32;
  var v103$1: bv32;
  var v103$2: bv32;
  var v104$1: bv32;
  var v104$2: bv32;
  var v105$1: bv32;
  var v105$2: bv32;
  var v106$1: bv32;
  var v106$2: bv32;
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
  var _HAVOC_bv8$1: bv8;
  var _HAVOC_bv8$2: bv8;
  var _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$11: bool;
  var _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$13: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2);
    v2$1 := FADD32(SI32_TO_FP32(v0$1), 1056964608bv32);
    v2$2 := FADD32(SI32_TO_FP32(v0$2), 1056964608bv32);
    v3$1 := FADD32(SI32_TO_FP32(v1$1), 1056964608bv32);
    v3$2 := FADD32(SI32_TO_FP32(v1$2), 1056964608bv32);
    v4$1 := BV32_SLT(v0$1, $imageW);
    v4$2 := BV32_SLT(v0$2, $imageW);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p6$1 := false;
    p6$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    v5$1 := (if p0$1 then BV32_SLT(v1$1, $imageH) else v5$1);
    v5$2 := (if p0$2 then BV32_SLT(v1$2, $imageH) else v5$2);
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    $weight.0$1, $n.0$1 := (if p1$1 then 0bv32 else $weight.0$1), (if p1$1 then 3225419776bv32 else $n.0$1);
    $weight.0$2, $n.0$2 := (if p1$2 then 0bv32 else $weight.0$2), (if p1$2 then 3225419776bv32 else $n.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert {:block_sourceloc} {:sourceloc_num 5} p2$1 ==> true;
    v6$1 := (if p2$1 then FEQ32($n.0$1, 1077936128bv32) || FLT32($n.0$1, 1077936128bv32) else v6$1);
    v6$2 := (if p2$2 then FEQ32($n.0$2, 1077936128bv32) || FLT32($n.0$2, 1077936128bv32) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    $weight.1$1, $m.0$1 := (if p3$1 then $weight.0$1 else $weight.1$1), (if p3$1 then 3225419776bv32 else $m.0$1);
    $weight.1$2, $m.0$2 := (if p3$2 then $weight.0$2 else $weight.1$2), (if p3$2 then 3225419776bv32 else $m.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 7} p4$1 ==> true;
    v7$1 := (if p4$1 then FEQ32($m.0$1, 1077936128bv32) || FLT32($m.0$1, 1077936128bv32) else v7$1);
    v7$2 := (if p4$2 then FEQ32($m.0$2, 1077936128bv32) || FLT32($m.0$2, 1077936128bv32) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v8$1 := (if p5$1 then _HAVOC_bv8$1 else v8$1);
    v8$2 := (if p5$2 then _HAVOC_bv8$2 else v8$2);
    $$3$0bv32$1 := (if p5$1 then v8$1 else $$3$0bv32$1);
    $$3$0bv32$2 := (if p5$2 then v8$2 else $$3$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v9$1 := (if p5$1 then _HAVOC_bv8$1 else v9$1);
    v9$2 := (if p5$2 then _HAVOC_bv8$2 else v9$2);
    $$3$1bv32$1 := (if p5$1 then v9$1 else $$3$1bv32$1);
    $$3$1bv32$2 := (if p5$2 then v9$2 else $$3$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v10$1 := (if p5$1 then _HAVOC_bv8$1 else v10$1);
    v10$2 := (if p5$2 then _HAVOC_bv8$2 else v10$2);
    $$3$2bv32$1 := (if p5$1 then v10$1 else $$3$2bv32$1);
    $$3$2bv32$2 := (if p5$2 then v10$2 else $$3$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v11$1 := (if p5$1 then _HAVOC_bv8$1 else v11$1);
    v11$2 := (if p5$2 then _HAVOC_bv8$2 else v11$2);
    $$3$3bv32$1 := (if p5$1 then v11$1 else $$3$3bv32$1);
    $$3$3bv32$2 := (if p5$2 then v11$2 else $$3$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v12$1 := (if p5$1 then _HAVOC_bv8$1 else v12$1);
    v12$2 := (if p5$2 then _HAVOC_bv8$2 else v12$2);
    $$3$4bv32$1 := (if p5$1 then v12$1 else $$3$4bv32$1);
    $$3$4bv32$2 := (if p5$2 then v12$2 else $$3$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v13$1 := (if p5$1 then _HAVOC_bv8$1 else v13$1);
    v13$2 := (if p5$2 then _HAVOC_bv8$2 else v13$2);
    $$3$5bv32$1 := (if p5$1 then v13$1 else $$3$5bv32$1);
    $$3$5bv32$2 := (if p5$2 then v13$2 else $$3$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v14$1 := (if p5$1 then _HAVOC_bv8$1 else v14$1);
    v14$2 := (if p5$2 then _HAVOC_bv8$2 else v14$2);
    $$3$6bv32$1 := (if p5$1 then v14$1 else $$3$6bv32$1);
    $$3$6bv32$2 := (if p5$2 then v14$2 else $$3$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v15$1 := (if p5$1 then _HAVOC_bv8$1 else v15$1);
    v15$2 := (if p5$2 then _HAVOC_bv8$2 else v15$2);
    $$3$7bv32$1 := (if p5$1 then v15$1 else $$3$7bv32$1);
    $$3$7bv32$2 := (if p5$2 then v15$2 else $$3$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v16$1 := (if p5$1 then _HAVOC_bv8$1 else v16$1);
    v16$2 := (if p5$2 then _HAVOC_bv8$2 else v16$2);
    $$3$8bv32$1 := (if p5$1 then v16$1 else $$3$8bv32$1);
    $$3$8bv32$2 := (if p5$2 then v16$2 else $$3$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v17$1 := (if p5$1 then _HAVOC_bv8$1 else v17$1);
    v17$2 := (if p5$2 then _HAVOC_bv8$2 else v17$2);
    $$3$9bv32$1 := (if p5$1 then v17$1 else $$3$9bv32$1);
    $$3$9bv32$2 := (if p5$2 then v17$2 else $$3$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v18$1 := (if p5$1 then _HAVOC_bv8$1 else v18$1);
    v18$2 := (if p5$2 then _HAVOC_bv8$2 else v18$2);
    $$3$10bv32$1 := (if p5$1 then v18$1 else $$3$10bv32$1);
    $$3$10bv32$2 := (if p5$2 then v18$2 else $$3$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v19$1 := (if p5$1 then _HAVOC_bv8$1 else v19$1);
    v19$2 := (if p5$2 then _HAVOC_bv8$2 else v19$2);
    $$3$11bv32$1 := (if p5$1 then v19$1 else $$3$11bv32$1);
    $$3$11bv32$2 := (if p5$2 then v19$2 else $$3$11bv32$2);
    call {:sourceloc_num 33} v20$1, v20$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(MKPTR($arrayId$$3, 0bv32), p5$1, FADD32(FADD32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), 3bv32)), 1056964608bv32), $m.0$1), FADD32(FADD32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_size_x, group_id_y$1), 3bv32)), 1056964608bv32), $n.0$1), p5$2, FADD32(FADD32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), 3bv32)), 1056964608bv32), $m.0$2), FADD32(FADD32(UI32_TO_FP32(BV32_ADD(BV32_MUL(group_size_x, group_id_y$2), 3bv32)), 1056964608bv32), $n.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$2$0bv32$1 := (if p5$1 then v20$1[32:0] else $$2$0bv32$1);
    $$2$0bv32$2 := (if p5$2 then v20$2[32:0] else $$2$0bv32$2);
    $$2$1bv32$1 := (if p5$1 then v20$1[64:32] else $$2$1bv32$1);
    $$2$1bv32$2 := (if p5$2 then v20$2[64:32] else $$2$1bv32$2);
    $$2$2bv32$1 := (if p5$1 then v20$1[96:64] else $$2$2bv32$1);
    $$2$2bv32$2 := (if p5$2 then v20$2[96:64] else $$2$2bv32$2);
    $$2$3bv32$1 := (if p5$1 then v20$1[128:96] else $$2$3bv32$1);
    $$2$3bv32$2 := (if p5$2 then v20$2[128:96] else $$2$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v21$1 := (if p5$1 then _HAVOC_bv8$1 else v21$1);
    v21$2 := (if p5$2 then _HAVOC_bv8$2 else v21$2);
    $$5$0bv32$1 := (if p5$1 then v21$1 else $$5$0bv32$1);
    $$5$0bv32$2 := (if p5$2 then v21$2 else $$5$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v22$1 := (if p5$1 then _HAVOC_bv8$1 else v22$1);
    v22$2 := (if p5$2 then _HAVOC_bv8$2 else v22$2);
    $$5$1bv32$1 := (if p5$1 then v22$1 else $$5$1bv32$1);
    $$5$1bv32$2 := (if p5$2 then v22$2 else $$5$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v23$1 := (if p5$1 then _HAVOC_bv8$1 else v23$1);
    v23$2 := (if p5$2 then _HAVOC_bv8$2 else v23$2);
    $$5$2bv32$1 := (if p5$1 then v23$1 else $$5$2bv32$1);
    $$5$2bv32$2 := (if p5$2 then v23$2 else $$5$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v24$1 := (if p5$1 then _HAVOC_bv8$1 else v24$1);
    v24$2 := (if p5$2 then _HAVOC_bv8$2 else v24$2);
    $$5$3bv32$1 := (if p5$1 then v24$1 else $$5$3bv32$1);
    $$5$3bv32$2 := (if p5$2 then v24$2 else $$5$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v25$1 := (if p5$1 then _HAVOC_bv8$1 else v25$1);
    v25$2 := (if p5$2 then _HAVOC_bv8$2 else v25$2);
    $$5$4bv32$1 := (if p5$1 then v25$1 else $$5$4bv32$1);
    $$5$4bv32$2 := (if p5$2 then v25$2 else $$5$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v26$1 := (if p5$1 then _HAVOC_bv8$1 else v26$1);
    v26$2 := (if p5$2 then _HAVOC_bv8$2 else v26$2);
    $$5$5bv32$1 := (if p5$1 then v26$1 else $$5$5bv32$1);
    $$5$5bv32$2 := (if p5$2 then v26$2 else $$5$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v27$1 := (if p5$1 then _HAVOC_bv8$1 else v27$1);
    v27$2 := (if p5$2 then _HAVOC_bv8$2 else v27$2);
    $$5$6bv32$1 := (if p5$1 then v27$1 else $$5$6bv32$1);
    $$5$6bv32$2 := (if p5$2 then v27$2 else $$5$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v28$1 := (if p5$1 then _HAVOC_bv8$1 else v28$1);
    v28$2 := (if p5$2 then _HAVOC_bv8$2 else v28$2);
    $$5$7bv32$1 := (if p5$1 then v28$1 else $$5$7bv32$1);
    $$5$7bv32$2 := (if p5$2 then v28$2 else $$5$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v29$1 := (if p5$1 then _HAVOC_bv8$1 else v29$1);
    v29$2 := (if p5$2 then _HAVOC_bv8$2 else v29$2);
    $$5$8bv32$1 := (if p5$1 then v29$1 else $$5$8bv32$1);
    $$5$8bv32$2 := (if p5$2 then v29$2 else $$5$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v30$1 := (if p5$1 then _HAVOC_bv8$1 else v30$1);
    v30$2 := (if p5$2 then _HAVOC_bv8$2 else v30$2);
    $$5$9bv32$1 := (if p5$1 then v30$1 else $$5$9bv32$1);
    $$5$9bv32$2 := (if p5$2 then v30$2 else $$5$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v31$1 := (if p5$1 then _HAVOC_bv8$1 else v31$1);
    v31$2 := (if p5$2 then _HAVOC_bv8$2 else v31$2);
    $$5$10bv32$1 := (if p5$1 then v31$1 else $$5$10bv32$1);
    $$5$10bv32$2 := (if p5$2 then v31$2 else $$5$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v32$1 := (if p5$1 then _HAVOC_bv8$1 else v32$1);
    v32$2 := (if p5$2 then _HAVOC_bv8$2 else v32$2);
    $$5$11bv32$1 := (if p5$1 then v32$1 else $$5$11bv32$1);
    $$5$11bv32$2 := (if p5$2 then v32$2 else $$5$11bv32$2);
    call {:sourceloc_num 62} v33$1, v33$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(MKPTR($arrayId$$5, 0bv32), p5$1, FADD32(v2$1, $m.0$1), FADD32(v3$1, $n.0$1), p5$2, FADD32(v2$2, $m.0$2), FADD32(v3$2, $n.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$4$0bv32$1 := (if p5$1 then v33$1[32:0] else $$4$0bv32$1);
    $$4$0bv32$2 := (if p5$2 then v33$2[32:0] else $$4$0bv32$2);
    $$4$1bv32$1 := (if p5$1 then v33$1[64:32] else $$4$1bv32$1);
    $$4$1bv32$2 := (if p5$2 then v33$2[64:32] else $$4$1bv32$2);
    $$4$2bv32$1 := (if p5$1 then v33$1[96:64] else $$4$2bv32$1);
    $$4$2bv32$2 := (if p5$2 then v33$2[96:64] else $$4$2bv32$2);
    $$4$3bv32$1 := (if p5$1 then v33$1[128:96] else $$4$3bv32$1);
    $$4$3bv32$2 := (if p5$2 then v33$2[128:96] else $$4$3bv32$2);
    v34$1 := (if p5$1 then $$4$0bv32$1 else v34$1);
    v34$2 := (if p5$2 then $$4$0bv32$2 else v34$2);
    $$0$0bv32$1 := (if p5$1 then v34$1 else $$0$0bv32$1);
    $$0$0bv32$2 := (if p5$2 then v34$2 else $$0$0bv32$2);
    v35$1 := (if p5$1 then $$4$1bv32$1 else v35$1);
    v35$2 := (if p5$2 then $$4$1bv32$2 else v35$2);
    $$0$1bv32$1 := (if p5$1 then v35$1 else $$0$1bv32$1);
    $$0$1bv32$2 := (if p5$2 then v35$2 else $$0$1bv32$2);
    v36$1 := (if p5$1 then $$4$2bv32$1 else v36$1);
    v36$2 := (if p5$2 then $$4$2bv32$2 else v36$2);
    $$0$2bv32$1 := (if p5$1 then v36$1 else $$0$2bv32$1);
    $$0$2bv32$2 := (if p5$2 then v36$2 else $$0$2bv32$2);
    v37$1 := (if p5$1 then $$4$3bv32$1 else v37$1);
    v37$2 := (if p5$2 then $$4$3bv32$2 else v37$2);
    $$0$3bv32$1 := (if p5$1 then v37$1 else $$0$3bv32$1);
    $$0$3bv32$2 := (if p5$2 then v37$2 else $$0$3bv32$2);
    v38$1 := (if p5$1 then $$2$0bv32$1 else v38$1);
    v38$2 := (if p5$2 then $$2$0bv32$2 else v38$2);
    $$1$0bv32$1 := (if p5$1 then v38$1 else $$1$0bv32$1);
    $$1$0bv32$2 := (if p5$2 then v38$2 else $$1$0bv32$2);
    v39$1 := (if p5$1 then $$2$1bv32$1 else v39$1);
    v39$2 := (if p5$2 then $$2$1bv32$2 else v39$2);
    $$1$1bv32$1 := (if p5$1 then v39$1 else $$1$1bv32$1);
    $$1$1bv32$2 := (if p5$2 then v39$2 else $$1$1bv32$2);
    v40$1 := (if p5$1 then $$2$2bv32$1 else v40$1);
    v40$2 := (if p5$2 then $$2$2bv32$2 else v40$2);
    $$1$2bv32$1 := (if p5$1 then v40$1 else $$1$2bv32$1);
    $$1$2bv32$2 := (if p5$2 then v40$2 else $$1$2bv32$2);
    v41$1 := (if p5$1 then $$2$3bv32$1 else v41$1);
    v41$2 := (if p5$2 then $$2$3bv32$2 else v41$2);
    $$1$3bv32$1 := (if p5$1 then v41$1 else $$1$3bv32$1);
    $$1$3bv32$2 := (if p5$2 then v41$2 else $$1$3bv32$2);
    v42$1 := (if p5$1 then $$0$0bv32$1 else v42$1);
    v42$2 := (if p5$2 then $$0$0bv32$2 else v42$2);
    v43$1 := (if p5$1 then $$1$0bv32$1 else v43$1);
    v43$2 := (if p5$2 then $$1$0bv32$2 else v43$2);
    v44$1 := (if p5$1 then $$0$0bv32$1 else v44$1);
    v44$2 := (if p5$2 then $$0$0bv32$2 else v44$2);
    v45$1 := (if p5$1 then $$1$0bv32$1 else v45$1);
    v45$2 := (if p5$2 then $$1$0bv32$2 else v45$2);
    v46$1 := (if p5$1 then $$0$1bv32$1 else v46$1);
    v46$2 := (if p5$2 then $$0$1bv32$2 else v46$2);
    v47$1 := (if p5$1 then $$1$1bv32$1 else v47$1);
    v47$2 := (if p5$2 then $$1$1bv32$2 else v47$2);
    v48$1 := (if p5$1 then $$0$1bv32$1 else v48$1);
    v48$2 := (if p5$2 then $$0$1bv32$2 else v48$2);
    v49$1 := (if p5$1 then $$1$1bv32$1 else v49$1);
    v49$2 := (if p5$2 then $$1$1bv32$2 else v49$2);
    v50$1 := (if p5$1 then $$0$2bv32$1 else v50$1);
    v50$2 := (if p5$2 then $$0$2bv32$2 else v50$2);
    v51$1 := (if p5$1 then $$1$2bv32$1 else v51$1);
    v51$2 := (if p5$2 then $$1$2bv32$2 else v51$2);
    v52$1 := (if p5$1 then $$0$2bv32$1 else v52$1);
    v52$2 := (if p5$2 then $$0$2bv32$2 else v52$2);
    v53$1 := (if p5$1 then $$1$2bv32$1 else v53$1);
    v53$2 := (if p5$2 then $$1$2bv32$2 else v53$2);
    $weight.1$1, $m.0$1 := (if p5$1 then FADD32($weight.1$1, FADD32(FADD32(FMUL32(FSUB32(v42$1, v43$1), FSUB32(v44$1, v45$1)), FMUL32(FSUB32(v46$1, v47$1), FSUB32(v48$1, v49$1))), FMUL32(FSUB32(v50$1, v51$1), FSUB32(v52$1, v53$1)))) else $weight.1$1), (if p5$1 then FADD32($m.0$1, 1065353216bv32) else $m.0$1);
    $weight.1$2, $m.0$2 := (if p5$2 then FADD32($weight.1$2, FADD32(FADD32(FMUL32(FSUB32(v42$2, v43$2), FSUB32(v44$2, v45$2)), FMUL32(FSUB32(v46$2, v47$2), FSUB32(v48$2, v49$2))), FMUL32(FSUB32(v50$2, v51$2), FSUB32(v52$2, v53$2)))) else $weight.1$2), (if p5$2 then FADD32($m.0$2, 1065353216bv32) else $m.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $weight.0$1, $n.0$1 := (if p3$1 then $weight.1$1 else $weight.0$1), (if p3$1 then FADD32($n.0$1, 1065353216bv32) else $n.0$1);
    $weight.0$2, $n.0$2 := (if p3$2 then $weight.1$2 else $weight.0$2), (if p3$2 then FADD32($n.0$2, 1065353216bv32) else $n.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, __partitioned_block_$3.tail_0;

  __partitioned_block_$3.tail_0:
    assume !p2$1 && !p2$2;
    call {:sourceloc_num 99} v54$1, v54$2 := $__expf(p1$1, FSUB32(2147483648bv32, FADD32(FMUL32($weight.0$1, $Noise), FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(BV32_SUB(local_id_x$1, 3bv32), BV32_SUB(local_id_x$1, 3bv32)), BV32_MUL(BV32_SUB(local_id_y$1, 3bv32), BV32_SUB(local_id_y$1, 3bv32)))), 1017589509bv32))), p1$2, FSUB32(2147483648bv32, FADD32(FMUL32($weight.0$2, $Noise), FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(BV32_SUB(local_id_x$2, 3bv32), BV32_SUB(local_id_x$2, 3bv32)), BV32_MUL(BV32_SUB(local_id_y$2, 3bv32), BV32_SUB(local_id_y$2, 3bv32)))), 1017589509bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    call {:sourceloc} {:sourceloc_num 100} _LOG_WRITE_$$_ZZ4NLM2PjiiffE8fWeights(p1$1, BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), v54$1, $$_ZZ4NLM2PjiiffE8fWeights[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights(p1$2, BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 100} _CHECK_WRITE_$$_ZZ4NLM2PjiiffE8fWeights(p1$2, BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2), v54$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ4NLM2PjiiffE8fWeights"} true;
    $$_ZZ4NLM2PjiiffE8fWeights[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1)] := (if p1$1 then v54$1 else $$_ZZ4NLM2PjiiffE8fWeights[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1)]);
    $$_ZZ4NLM2PjiiffE8fWeights[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2)] := (if p1$2 then v54$2 else $$_ZZ4NLM2PjiiffE8fWeights[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2)]);
    goto __partitioned_block_$3.tail_1;

  __partitioned_block_$3.tail_1:
    call {:sourceloc_num 101} $bugle_barrier_duplicated_0(1bv1, 1bv1, p1$1, p1$2);
    $$clr$0bv32$1 := (if p1$1 then 0bv32 else $$clr$0bv32$1);
    $$clr$0bv32$2 := (if p1$2 then 0bv32 else $$clr$0bv32$2);
    $$clr$1bv32$1 := (if p1$1 then 0bv32 else $$clr$1bv32$1);
    $$clr$1bv32$2 := (if p1$2 then 0bv32 else $$clr$1bv32$2);
    $$clr$2bv32$1 := (if p1$1 then 0bv32 else $$clr$2bv32$1);
    $$clr$2bv32$2 := (if p1$2 then 0bv32 else $$clr$2bv32$2);
    $fCount.0$1, $sumWeights.0$1, $idx.0$1, $i.0$1 := (if p1$1 then 0bv32 else $fCount.0$1), (if p1$1 then 0bv32 else $sumWeights.0$1), (if p1$1 then 0bv32 else $idx.0$1), (if p1$1 then 3225419776bv32 else $i.0$1);
    $fCount.0$2, $sumWeights.0$2, $idx.0$2, $i.0$2 := (if p1$2 then 0bv32 else $fCount.0$2), (if p1$2 then 0bv32 else $sumWeights.0$2), (if p1$2 then 0bv32 else $idx.0$2), (if p1$2 then 3225419776bv32 else $i.0$2);
    p6$1 := (if p1$1 then true else p6$1);
    p6$2 := (if p1$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$11 := _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_0"} true;
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$11 == _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ) ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p1"} true;
    
    
    
    
assert  my_inv (  ( p6$1 ==> p6$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $imageW) && BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $imageH) )  && ( p6$2 ==> p6$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $imageW) && BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), $imageH) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $imageW) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $imageH) ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 105} p6$1 ==> true;
    v55$1 := (if p6$1 then FEQ32($i.0$1, 1082130432bv32) || FLT32($i.0$1, 1082130432bv32) else v55$1);
    v55$2 := (if p6$2 then FEQ32($i.0$2, 1082130432bv32) || FLT32($i.0$2, 1082130432bv32) else v55$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p7$1 := (if p6$1 && v55$1 then v55$1 else p7$1);
    p7$2 := (if p6$2 && v55$2 then v55$2 else p7$2);
    p6$1 := (if p6$1 && !v55$1 then v55$1 else p6$1);
    p6$2 := (if p6$2 && !v55$2 then v55$2 else p6$2);
    $fCount.1$1, $sumWeights.1$1, $idx.1$1, $j.0$1 := (if p7$1 then $fCount.0$1 else $fCount.1$1), (if p7$1 then $sumWeights.0$1 else $sumWeights.1$1), (if p7$1 then $idx.0$1 else $idx.1$1), (if p7$1 then 3225419776bv32 else $j.0$1);
    $fCount.1$2, $sumWeights.1$2, $idx.1$2, $j.0$2 := (if p7$2 then $fCount.0$2 else $fCount.1$2), (if p7$2 then $sumWeights.0$2 else $sumWeights.1$2), (if p7$2 then $idx.0$2 else $idx.1$2), (if p7$2 then 3225419776bv32 else $j.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$13 := _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_1"} true;
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p7$1 ==> _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights$ghost$$13 == _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  ( p8$1 ==> p8$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $imageW) && BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $imageH) )  && ( p8$2 ==> p8$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $imageW) && BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), $imageH) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $imageW) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights ==> BV32_SLT(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $imageH) ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 107} p8$1 ==> true;
    v56$1 := (if p8$1 then FEQ32($j.0$1, 1082130432bv32) || FLT32($j.0$1, 1082130432bv32) else v56$1);
    v56$2 := (if p8$2 then FEQ32($j.0$2, 1082130432bv32) || FLT32($j.0$2, 1082130432bv32) else v56$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v56$1 then v56$1 else p9$1);
    p9$2 := (if p8$2 && v56$2 then v56$2 else p9$2);
    p8$1 := (if p8$1 && !v56$1 then v56$1 else p8$1);
    p8$2 := (if p8$2 && !v56$2 then v56$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 109} _LOG_READ_$$_ZZ4NLM2PjiiffE8fWeights(p9$1, $idx.1$1, $$_ZZ4NLM2PjiiffE8fWeights[1bv1][$idx.1$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 109} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 109} _CHECK_READ_$$_ZZ4NLM2PjiiffE8fWeights(p9$2, $idx.1$2, $$_ZZ4NLM2PjiiffE8fWeights[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$idx.1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ4NLM2PjiiffE8fWeights"} true;
    v57$1 := (if p9$1 then $$_ZZ4NLM2PjiiffE8fWeights[1bv1][$idx.1$1] else v57$1);
    v57$2 := (if p9$2 then $$_ZZ4NLM2PjiiffE8fWeights[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$idx.1$2] else v57$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v58$1 := (if p9$1 then _HAVOC_bv8$1 else v58$1);
    v58$2 := (if p9$2 then _HAVOC_bv8$2 else v58$2);
    $$6$0bv32$1 := (if p9$1 then v58$1 else $$6$0bv32$1);
    $$6$0bv32$2 := (if p9$2 then v58$2 else $$6$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v59$1 := (if p9$1 then _HAVOC_bv8$1 else v59$1);
    v59$2 := (if p9$2 then _HAVOC_bv8$2 else v59$2);
    $$6$1bv32$1 := (if p9$1 then v59$1 else $$6$1bv32$1);
    $$6$1bv32$2 := (if p9$2 then v59$2 else $$6$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v60$1 := (if p9$1 then _HAVOC_bv8$1 else v60$1);
    v60$2 := (if p9$2 then _HAVOC_bv8$2 else v60$2);
    $$6$2bv32$1 := (if p9$1 then v60$1 else $$6$2bv32$1);
    $$6$2bv32$2 := (if p9$2 then v60$2 else $$6$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v61$1 := (if p9$1 then _HAVOC_bv8$1 else v61$1);
    v61$2 := (if p9$2 then _HAVOC_bv8$2 else v61$2);
    $$6$3bv32$1 := (if p9$1 then v61$1 else $$6$3bv32$1);
    $$6$3bv32$2 := (if p9$2 then v61$2 else $$6$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v62$1 := (if p9$1 then _HAVOC_bv8$1 else v62$1);
    v62$2 := (if p9$2 then _HAVOC_bv8$2 else v62$2);
    $$6$4bv32$1 := (if p9$1 then v62$1 else $$6$4bv32$1);
    $$6$4bv32$2 := (if p9$2 then v62$2 else $$6$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v63$1 := (if p9$1 then _HAVOC_bv8$1 else v63$1);
    v63$2 := (if p9$2 then _HAVOC_bv8$2 else v63$2);
    $$6$5bv32$1 := (if p9$1 then v63$1 else $$6$5bv32$1);
    $$6$5bv32$2 := (if p9$2 then v63$2 else $$6$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v64$1 := (if p9$1 then _HAVOC_bv8$1 else v64$1);
    v64$2 := (if p9$2 then _HAVOC_bv8$2 else v64$2);
    $$6$6bv32$1 := (if p9$1 then v64$1 else $$6$6bv32$1);
    $$6$6bv32$2 := (if p9$2 then v64$2 else $$6$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v65$1 := (if p9$1 then _HAVOC_bv8$1 else v65$1);
    v65$2 := (if p9$2 then _HAVOC_bv8$2 else v65$2);
    $$6$7bv32$1 := (if p9$1 then v65$1 else $$6$7bv32$1);
    $$6$7bv32$2 := (if p9$2 then v65$2 else $$6$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v66$1 := (if p9$1 then _HAVOC_bv8$1 else v66$1);
    v66$2 := (if p9$2 then _HAVOC_bv8$2 else v66$2);
    $$6$8bv32$1 := (if p9$1 then v66$1 else $$6$8bv32$1);
    $$6$8bv32$2 := (if p9$2 then v66$2 else $$6$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v67$1 := (if p9$1 then _HAVOC_bv8$1 else v67$1);
    v67$2 := (if p9$2 then _HAVOC_bv8$2 else v67$2);
    $$6$9bv32$1 := (if p9$1 then v67$1 else $$6$9bv32$1);
    $$6$9bv32$2 := (if p9$2 then v67$2 else $$6$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v68$1 := (if p9$1 then _HAVOC_bv8$1 else v68$1);
    v68$2 := (if p9$2 then _HAVOC_bv8$2 else v68$2);
    $$6$10bv32$1 := (if p9$1 then v68$1 else $$6$10bv32$1);
    $$6$10bv32$2 := (if p9$2 then v68$2 else $$6$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v69$1 := (if p9$1 then _HAVOC_bv8$1 else v69$1);
    v69$2 := (if p9$2 then _HAVOC_bv8$2 else v69$2);
    $$6$11bv32$1 := (if p9$1 then v69$1 else $$6$11bv32$1);
    $$6$11bv32$2 := (if p9$2 then v69$2 else $$6$11bv32$2);
    call {:sourceloc_num 134} v70$1, v70$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(MKPTR($arrayId$$6, 0bv32), p9$1, FADD32(v2$1, $j.0$1), FADD32(v3$1, $i.0$1), p9$2, FADD32(v2$2, $j.0$2), FADD32(v3$2, $i.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$clrIJ$0bv32$1 := (if p9$1 then v70$1[32:0] else $$clrIJ$0bv32$1);
    $$clrIJ$0bv32$2 := (if p9$2 then v70$2[32:0] else $$clrIJ$0bv32$2);
    $$clrIJ$1bv32$1 := (if p9$1 then v70$1[64:32] else $$clrIJ$1bv32$1);
    $$clrIJ$1bv32$2 := (if p9$2 then v70$2[64:32] else $$clrIJ$1bv32$2);
    $$clrIJ$2bv32$1 := (if p9$1 then v70$1[96:64] else $$clrIJ$2bv32$1);
    $$clrIJ$2bv32$2 := (if p9$2 then v70$2[96:64] else $$clrIJ$2bv32$2);
    $$clrIJ$3bv32$1 := (if p9$1 then v70$1[128:96] else $$clrIJ$3bv32$1);
    $$clrIJ$3bv32$2 := (if p9$2 then v70$2[128:96] else $$clrIJ$3bv32$2);
    v71$1 := (if p9$1 then $$clrIJ$0bv32$1 else v71$1);
    v71$2 := (if p9$2 then $$clrIJ$0bv32$2 else v71$2);
    v72$1 := (if p9$1 then $$clr$0bv32$1 else v72$1);
    v72$2 := (if p9$2 then $$clr$0bv32$2 else v72$2);
    $$clr$0bv32$1 := (if p9$1 then FADD32(v72$1, FMUL32(v71$1, v57$1)) else $$clr$0bv32$1);
    $$clr$0bv32$2 := (if p9$2 then FADD32(v72$2, FMUL32(v71$2, v57$2)) else $$clr$0bv32$2);
    v73$1 := (if p9$1 then $$clrIJ$1bv32$1 else v73$1);
    v73$2 := (if p9$2 then $$clrIJ$1bv32$2 else v73$2);
    v74$1 := (if p9$1 then $$clr$1bv32$1 else v74$1);
    v74$2 := (if p9$2 then $$clr$1bv32$2 else v74$2);
    $$clr$1bv32$1 := (if p9$1 then FADD32(v74$1, FMUL32(v73$1, v57$1)) else $$clr$1bv32$1);
    $$clr$1bv32$2 := (if p9$2 then FADD32(v74$2, FMUL32(v73$2, v57$2)) else $$clr$1bv32$2);
    v75$1 := (if p9$1 then $$clrIJ$2bv32$1 else v75$1);
    v75$2 := (if p9$2 then $$clrIJ$2bv32$2 else v75$2);
    v76$1 := (if p9$1 then $$clr$2bv32$1 else v76$1);
    v76$2 := (if p9$2 then $$clr$2bv32$2 else v76$2);
    $$clr$2bv32$1 := (if p9$1 then FADD32(v76$1, FMUL32(v75$1, v57$1)) else $$clr$2bv32$1);
    $$clr$2bv32$2 := (if p9$2 then FADD32(v76$2, FMUL32(v75$2, v57$2)) else $$clr$2bv32$2);
    $fCount.1$1, $sumWeights.1$1, $idx.1$1, $j.0$1 := (if p9$1 then FADD32($fCount.1$1, (if FLT32(1036831949bv32, v57$1) then 1017589509bv32 else 0bv32)) else $fCount.1$1), (if p9$1 then FADD32($sumWeights.1$1, v57$1) else $sumWeights.1$1), (if p9$1 then BV32_ADD($idx.1$1, 1bv32) else $idx.1$1), (if p9$1 then FADD32($j.0$1, 1065353216bv32) else $j.0$1);
    $fCount.1$2, $sumWeights.1$2, $idx.1$2, $j.0$2 := (if p9$2 then FADD32($fCount.1$2, (if FLT32(1036831949bv32, v57$2) then 1017589509bv32 else 0bv32)) else $fCount.1$2), (if p9$2 then FADD32($sumWeights.1$2, v57$2) else $sumWeights.1$2), (if p9$2 then BV32_ADD($idx.1$2, 1bv32) else $idx.1$2), (if p9$2 then FADD32($j.0$2, 1065353216bv32) else $j.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p8$1 && !p8$2;
    $fCount.0$1, $sumWeights.0$1, $idx.0$1, $i.0$1 := (if p7$1 then $fCount.1$1 else $fCount.0$1), (if p7$1 then $sumWeights.1$1 else $sumWeights.0$1), (if p7$1 then $idx.1$1 else $idx.0$1), (if p7$1 then FADD32($i.0$1, 1065353216bv32) else $i.0$1);
    $fCount.0$2, $sumWeights.0$2, $idx.0$2, $i.0$2 := (if p7$2 then $fCount.1$2 else $fCount.0$2), (if p7$2 then $sumWeights.1$2 else $sumWeights.0$2), (if p7$2 then $idx.1$2 else $idx.0$2), (if p7$2 then FADD32($i.0$2, 1065353216bv32) else $i.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $11.backedge, $11.tail;

  $11.tail:
    assume !p6$1 && !p6$2;
    v77$1 := (if p1$1 then FDIV32(1065353216bv32, $sumWeights.0$1) else v77$1);
    v77$2 := (if p1$2 then FDIV32(1065353216bv32, $sumWeights.0$2) else v77$2);
    v78$1 := (if p1$1 then $$clr$0bv32$1 else v78$1);
    v78$2 := (if p1$2 then $$clr$0bv32$2 else v78$2);
    $$clr$0bv32$1 := (if p1$1 then FMUL32(v78$1, v77$1) else $$clr$0bv32$1);
    $$clr$0bv32$2 := (if p1$2 then FMUL32(v78$2, v77$2) else $$clr$0bv32$2);
    v79$1 := (if p1$1 then $$clr$1bv32$1 else v79$1);
    v79$2 := (if p1$2 then $$clr$1bv32$2 else v79$2);
    $$clr$1bv32$1 := (if p1$1 then FMUL32(v79$1, v77$1) else $$clr$1bv32$1);
    $$clr$1bv32$2 := (if p1$2 then FMUL32(v79$2, v77$2) else $$clr$1bv32$2);
    v80$1 := (if p1$1 then $$clr$2bv32$1 else v80$1);
    v80$2 := (if p1$2 then $$clr$2bv32$2 else v80$2);
    $$clr$2bv32$1 := (if p1$1 then FMUL32(v80$1, v77$1) else $$clr$2bv32$1);
    $$clr$2bv32$2 := (if p1$2 then FMUL32(v80$2, v77$2) else $$clr$2bv32$2);
    v81$1 := (if p1$1 then FLT32(1036831949bv32, $fCount.0$1) else v81$1);
    v81$2 := (if p1$2 then FLT32(1036831949bv32, $fCount.0$2) else v81$2);
    p10$1 := (if p1$1 && v81$1 then v81$1 else p10$1);
    p10$2 := (if p1$2 && v81$2 then v81$2 else p10$2);
    p11$1 := (if p1$1 && !v81$1 then !v81$1 else p11$1);
    p11$2 := (if p1$2 && !v81$2 then !v81$2 else p11$2);
    $0$1 := (if p10$1 then $lerpC else $0$1);
    $0$2 := (if p10$2 then $lerpC else $0$2);
    $0$1 := (if p11$1 then FSUB32(1065353216bv32, $lerpC) else $0$1);
    $0$2 := (if p11$2 then FSUB32(1065353216bv32, $lerpC) else $0$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v82$1 := (if p1$1 then _HAVOC_bv8$1 else v82$1);
    v82$2 := (if p1$2 then _HAVOC_bv8$2 else v82$2);
    $$7$0bv32$1 := (if p1$1 then v82$1 else $$7$0bv32$1);
    $$7$0bv32$2 := (if p1$2 then v82$2 else $$7$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v83$1 := (if p1$1 then _HAVOC_bv8$1 else v83$1);
    v83$2 := (if p1$2 then _HAVOC_bv8$2 else v83$2);
    $$7$1bv32$1 := (if p1$1 then v83$1 else $$7$1bv32$1);
    $$7$1bv32$2 := (if p1$2 then v83$2 else $$7$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v84$1 := (if p1$1 then _HAVOC_bv8$1 else v84$1);
    v84$2 := (if p1$2 then _HAVOC_bv8$2 else v84$2);
    $$7$2bv32$1 := (if p1$1 then v84$1 else $$7$2bv32$1);
    $$7$2bv32$2 := (if p1$2 then v84$2 else $$7$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v85$1 := (if p1$1 then _HAVOC_bv8$1 else v85$1);
    v85$2 := (if p1$2 then _HAVOC_bv8$2 else v85$2);
    $$7$3bv32$1 := (if p1$1 then v85$1 else $$7$3bv32$1);
    $$7$3bv32$2 := (if p1$2 then v85$2 else $$7$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v86$1 := (if p1$1 then _HAVOC_bv8$1 else v86$1);
    v86$2 := (if p1$2 then _HAVOC_bv8$2 else v86$2);
    $$7$4bv32$1 := (if p1$1 then v86$1 else $$7$4bv32$1);
    $$7$4bv32$2 := (if p1$2 then v86$2 else $$7$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v87$1 := (if p1$1 then _HAVOC_bv8$1 else v87$1);
    v87$2 := (if p1$2 then _HAVOC_bv8$2 else v87$2);
    $$7$5bv32$1 := (if p1$1 then v87$1 else $$7$5bv32$1);
    $$7$5bv32$2 := (if p1$2 then v87$2 else $$7$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v88$1 := (if p1$1 then _HAVOC_bv8$1 else v88$1);
    v88$2 := (if p1$2 then _HAVOC_bv8$2 else v88$2);
    $$7$6bv32$1 := (if p1$1 then v88$1 else $$7$6bv32$1);
    $$7$6bv32$2 := (if p1$2 then v88$2 else $$7$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v89$1 := (if p1$1 then _HAVOC_bv8$1 else v89$1);
    v89$2 := (if p1$2 then _HAVOC_bv8$2 else v89$2);
    $$7$7bv32$1 := (if p1$1 then v89$1 else $$7$7bv32$1);
    $$7$7bv32$2 := (if p1$2 then v89$2 else $$7$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v90$1 := (if p1$1 then _HAVOC_bv8$1 else v90$1);
    v90$2 := (if p1$2 then _HAVOC_bv8$2 else v90$2);
    $$7$8bv32$1 := (if p1$1 then v90$1 else $$7$8bv32$1);
    $$7$8bv32$2 := (if p1$2 then v90$2 else $$7$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v91$1 := (if p1$1 then _HAVOC_bv8$1 else v91$1);
    v91$2 := (if p1$2 then _HAVOC_bv8$2 else v91$2);
    $$7$9bv32$1 := (if p1$1 then v91$1 else $$7$9bv32$1);
    $$7$9bv32$2 := (if p1$2 then v91$2 else $$7$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v92$1 := (if p1$1 then _HAVOC_bv8$1 else v92$1);
    v92$2 := (if p1$2 then _HAVOC_bv8$2 else v92$2);
    $$7$10bv32$1 := (if p1$1 then v92$1 else $$7$10bv32$1);
    $$7$10bv32$2 := (if p1$2 then v92$2 else $$7$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v93$1 := (if p1$1 then _HAVOC_bv8$1 else v93$1);
    v93$2 := (if p1$2 then _HAVOC_bv8$2 else v93$2);
    $$7$11bv32$1 := (if p1$1 then v93$1 else $$7$11bv32$1);
    $$7$11bv32$2 := (if p1$2 then v93$2 else $$7$11bv32$2);
    call {:sourceloc_num 185} v94$1, v94$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(MKPTR($arrayId$$7, 0bv32), p1$1, v2$1, v3$1, p1$2, v2$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$clr00$0bv32$1 := (if p1$1 then v94$1[32:0] else $$clr00$0bv32$1);
    $$clr00$0bv32$2 := (if p1$2 then v94$2[32:0] else $$clr00$0bv32$2);
    $$clr00$1bv32$1 := (if p1$1 then v94$1[64:32] else $$clr00$1bv32$1);
    $$clr00$1bv32$2 := (if p1$2 then v94$2[64:32] else $$clr00$1bv32$2);
    $$clr00$2bv32$1 := (if p1$1 then v94$1[96:64] else $$clr00$2bv32$1);
    $$clr00$2bv32$2 := (if p1$2 then v94$2[96:64] else $$clr00$2bv32$2);
    $$clr00$3bv32$1 := (if p1$1 then v94$1[128:96] else $$clr00$3bv32$1);
    $$clr00$3bv32$2 := (if p1$2 then v94$2[128:96] else $$clr00$3bv32$2);
    v95$1 := (if p1$1 then $$clr$0bv32$1 else v95$1);
    v95$2 := (if p1$2 then $$clr$0bv32$2 else v95$2);
    v96$1 := (if p1$1 then $$clr00$0bv32$1 else v96$1);
    v96$2 := (if p1$2 then $$clr00$0bv32$2 else v96$2);
    call {:sourceloc_num 192} v97$1, v97$2 := $_Z5lerpffff(p1$1, v95$1, v96$1, $0$1, p1$2, v95$2, v96$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$0bv32$1 := (if p1$1 then v97$1 else $$clr$0bv32$1);
    $$clr$0bv32$2 := (if p1$2 then v97$2 else $$clr$0bv32$2);
    v98$1 := (if p1$1 then $$clr$1bv32$1 else v98$1);
    v98$2 := (if p1$2 then $$clr$1bv32$2 else v98$2);
    v99$1 := (if p1$1 then $$clr00$1bv32$1 else v99$1);
    v99$2 := (if p1$2 then $$clr00$1bv32$2 else v99$2);
    call {:sourceloc_num 196} v100$1, v100$2 := $_Z5lerpffff(p1$1, v98$1, v99$1, $0$1, p1$2, v98$2, v99$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$1bv32$1 := (if p1$1 then v100$1 else $$clr$1bv32$1);
    $$clr$1bv32$2 := (if p1$2 then v100$2 else $$clr$1bv32$2);
    v101$1 := (if p1$1 then $$clr$2bv32$1 else v101$1);
    v101$2 := (if p1$2 then $$clr$2bv32$2 else v101$2);
    v102$1 := (if p1$1 then $$clr00$2bv32$1 else v102$1);
    v102$2 := (if p1$2 then $$clr00$2bv32$2 else v102$2);
    call {:sourceloc_num 200} v103$1, v103$2 := $_Z5lerpffff(p1$1, v101$1, v102$1, $0$1, p1$2, v101$2, v102$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$2bv32$1 := (if p1$1 then v103$1 else $$clr$2bv32$1);
    $$clr$2bv32$2 := (if p1$2 then v103$2 else $$clr$2bv32$2);
    v104$1 := (if p1$1 then $$clr$0bv32$1 else v104$1);
    v104$2 := (if p1$2 then $$clr$0bv32$2 else v104$2);
    v105$1 := (if p1$1 then $$clr$1bv32$1 else v105$1);
    v105$2 := (if p1$2 then $$clr$1bv32$2 else v105$2);
    v106$1 := (if p1$1 then $$clr$2bv32$1 else v106$1);
    v106$2 := (if p1$2 then $$clr$2bv32$2 else v106$2);
    call {:sourceloc} {:sourceloc_num 205} _LOG_WRITE_$$dst(p1$1, BV32_ADD(BV32_MUL($imageW, v1$1), v0$1), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0bv32, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_SI32(FMUL32(v106$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_SI32(FMUL32(v105$1, 1132396544bv32)), 8bv32)), FP32_TO_SI32(FMUL32(v104$1, 1132396544bv32))), $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p1$2, BV32_ADD(BV32_MUL($imageW, v1$2), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 205} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 205} _CHECK_WRITE_$$dst(p1$2, BV32_ADD(BV32_MUL($imageW, v1$2), v0$2), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0bv32, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_SI32(FMUL32(v106$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_SI32(FMUL32(v105$2, 1132396544bv32)), 8bv32)), FP32_TO_SI32(FMUL32(v104$2, 1132396544bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)] := (if p1$1 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0bv32, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_SI32(FMUL32(v106$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_SI32(FMUL32(v105$1, 1132396544bv32)), 8bv32)), FP32_TO_SI32(FMUL32(v104$1, 1132396544bv32))) else $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)]);
    $$dst[BV32_ADD(BV32_MUL($imageW, v1$2), v0$2)] := (if p1$2 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0bv32, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_SI32(FMUL32(v106$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_SI32(FMUL32(v105$2, 1132396544bv32)), 8bv32)), FP32_TO_SI32(FMUL32(v104$2, 1132396544bv32))) else $$dst[BV32_ADD(BV32_MUL($imageW, v1$2), v0$2)]);
    return;

  $11.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $11;

  $13.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $13;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $5;
}



procedure {:source_name "_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff($0: ptr, _P$1: bool, $1$1: bv32, $2$1: bv32, _P$2: bool, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv128, $ret$2: bv128);



procedure {:source_name "__expf"} $__expf(_P$1: bool, $0$1: bv32, _P$2: bool, $0$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "_Z5lerpffff"} $_Z5lerpffff(_P$1: bool, $0$1: bv32, $1$1: bv32, $2$1: bv32, _P$2: bool, $0$2: bv32, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 40bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 51bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ4NLM2PjiiffE8fWeights, $$dst, _TRACKING;



var $$0$0bv32$1: bv32;

var $$0$0bv32$2: bv32;

var $$0$1bv32$1: bv32;

var $$0$1bv32$2: bv32;

var $$0$2bv32$1: bv32;

var $$0$2bv32$2: bv32;

var $$0$3bv32$1: bv32;

var $$0$3bv32$2: bv32;

var $$1$0bv32$1: bv32;

var $$1$0bv32$2: bv32;

var $$1$1bv32$1: bv32;

var $$1$1bv32$2: bv32;

var $$1$2bv32$1: bv32;

var $$1$2bv32$2: bv32;

var $$1$3bv32$1: bv32;

var $$1$3bv32$2: bv32;

var $$2$0bv32$1: bv32;

var $$2$0bv32$2: bv32;

var $$2$1bv32$1: bv32;

var $$2$1bv32$2: bv32;

var $$2$2bv32$1: bv32;

var $$2$2bv32$2: bv32;

var $$2$3bv32$1: bv32;

var $$2$3bv32$2: bv32;

var $$3$0bv32$1: bv8;

var $$3$0bv32$2: bv8;

var $$3$1bv32$1: bv8;

var $$3$1bv32$2: bv8;

var $$3$2bv32$1: bv8;

var $$3$2bv32$2: bv8;

var $$3$3bv32$1: bv8;

var $$3$3bv32$2: bv8;

var $$3$4bv32$1: bv8;

var $$3$4bv32$2: bv8;

var $$3$5bv32$1: bv8;

var $$3$5bv32$2: bv8;

var $$3$6bv32$1: bv8;

var $$3$6bv32$2: bv8;

var $$3$7bv32$1: bv8;

var $$3$7bv32$2: bv8;

var $$3$8bv32$1: bv8;

var $$3$8bv32$2: bv8;

var $$3$9bv32$1: bv8;

var $$3$9bv32$2: bv8;

var $$3$10bv32$1: bv8;

var $$3$10bv32$2: bv8;

var $$3$11bv32$1: bv8;

var $$3$11bv32$2: bv8;

var $$4$0bv32$1: bv32;

var $$4$0bv32$2: bv32;

var $$4$1bv32$1: bv32;

var $$4$1bv32$2: bv32;

var $$4$2bv32$1: bv32;

var $$4$2bv32$2: bv32;

var $$4$3bv32$1: bv32;

var $$4$3bv32$2: bv32;

var $$5$0bv32$1: bv8;

var $$5$0bv32$2: bv8;

var $$5$1bv32$1: bv8;

var $$5$1bv32$2: bv8;

var $$5$2bv32$1: bv8;

var $$5$2bv32$2: bv8;

var $$5$3bv32$1: bv8;

var $$5$3bv32$2: bv8;

var $$5$4bv32$1: bv8;

var $$5$4bv32$2: bv8;

var $$5$5bv32$1: bv8;

var $$5$5bv32$2: bv8;

var $$5$6bv32$1: bv8;

var $$5$6bv32$2: bv8;

var $$5$7bv32$1: bv8;

var $$5$7bv32$2: bv8;

var $$5$8bv32$1: bv8;

var $$5$8bv32$2: bv8;

var $$5$9bv32$1: bv8;

var $$5$9bv32$2: bv8;

var $$5$10bv32$1: bv8;

var $$5$10bv32$2: bv8;

var $$5$11bv32$1: bv8;

var $$5$11bv32$2: bv8;

var $$clr$0bv32$1: bv32;

var $$clr$0bv32$2: bv32;

var $$clr$1bv32$1: bv32;

var $$clr$1bv32$2: bv32;

var $$clr$2bv32$1: bv32;

var $$clr$2bv32$2: bv32;

var $$clrIJ$0bv32$1: bv32;

var $$clrIJ$0bv32$2: bv32;

var $$clrIJ$1bv32$1: bv32;

var $$clrIJ$1bv32$2: bv32;

var $$clrIJ$2bv32$1: bv32;

var $$clrIJ$2bv32$2: bv32;

var $$clrIJ$3bv32$1: bv32;

var $$clrIJ$3bv32$2: bv32;

var $$6$0bv32$1: bv8;

var $$6$0bv32$2: bv8;

var $$6$1bv32$1: bv8;

var $$6$1bv32$2: bv8;

var $$6$2bv32$1: bv8;

var $$6$2bv32$2: bv8;

var $$6$3bv32$1: bv8;

var $$6$3bv32$2: bv8;

var $$6$4bv32$1: bv8;

var $$6$4bv32$2: bv8;

var $$6$5bv32$1: bv8;

var $$6$5bv32$2: bv8;

var $$6$6bv32$1: bv8;

var $$6$6bv32$2: bv8;

var $$6$7bv32$1: bv8;

var $$6$7bv32$2: bv8;

var $$6$8bv32$1: bv8;

var $$6$8bv32$2: bv8;

var $$6$9bv32$1: bv8;

var $$6$9bv32$2: bv8;

var $$6$10bv32$1: bv8;

var $$6$10bv32$2: bv8;

var $$6$11bv32$1: bv8;

var $$6$11bv32$2: bv8;

var $$clr00$0bv32$1: bv32;

var $$clr00$0bv32$2: bv32;

var $$clr00$1bv32$1: bv32;

var $$clr00$1bv32$2: bv32;

var $$clr00$2bv32$1: bv32;

var $$clr00$2bv32$2: bv32;

var $$clr00$3bv32$1: bv32;

var $$clr00$3bv32$2: bv32;

var $$7$0bv32$1: bv8;

var $$7$0bv32$2: bv8;

var $$7$1bv32$1: bv8;

var $$7$1bv32$2: bv8;

var $$7$2bv32$1: bv8;

var $$7$2bv32$2: bv8;

var $$7$3bv32$1: bv8;

var $$7$3bv32$2: bv8;

var $$7$4bv32$1: bv8;

var $$7$4bv32$2: bv8;

var $$7$5bv32$1: bv8;

var $$7$5bv32$2: bv8;

var $$7$6bv32$1: bv8;

var $$7$6bv32$2: bv8;

var $$7$7bv32$1: bv8;

var $$7$7bv32$2: bv8;

var $$7$8bv32$1: bv8;

var $$7$8bv32$2: bv8;

var $$7$9bv32$1: bv8;

var $$7$9bv32$2: bv8;

var $$7$10bv32$1: bv8;

var $$7$10bv32$2: bv8;

var $$7$11bv32$1: bv8;

var $$7$11bv32$2: bv8;













const _WATCHED_VALUE_$$dst: bv32;

procedure {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _READ_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_READ_$$dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst: bool;

procedure {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _WRITE_HAS_OCCURRED_$$dst);
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



procedure _CHECK_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_ATOMIC_$$dst(_P: bool, _offset: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



const _WATCHED_VALUE_$$texImage: bv8;

procedure {:inline 1} _LOG_READ_$$texImage(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$texImage;



implementation {:inline 1} _LOG_READ_$$texImage(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then true else _READ_HAS_OCCURRED_$$texImage);
    return;
}



procedure _CHECK_READ_$$texImage(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texImage);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texImage: bool;

procedure {:inline 1} _LOG_WRITE_$$texImage(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$texImage, _WRITE_READ_BENIGN_FLAG_$$texImage;



implementation {:inline 1} _LOG_WRITE_$$texImage(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then true else _WRITE_HAS_OCCURRED_$$texImage);
    _WRITE_READ_BENIGN_FLAG_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texImage);
    return;
}



procedure _CHECK_WRITE_$$texImage(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage != _value);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage != _value);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texImage(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$texImage;



implementation {:inline 1} _LOG_ATOMIC_$$texImage(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texImage);
    return;
}



procedure _CHECK_ATOMIC_$$texImage(_P: bool, _offset: bv32);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texImage(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$texImage;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texImage(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texImage := (if _P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texImage);
    return;
}



const _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;



implementation {:inline 1} _LOG_READ_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights == _value then true else _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights);
    return;
}



procedure _CHECK_READ_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights, _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights;



implementation {:inline 1} _LOG_WRITE_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights);
    return;
}



procedure _CHECK_WRITE_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ4NLM2PjiiffE8fWeights != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "fWeights"} {:array "$$_ZZ4NLM2PjiiffE8fWeights"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ4NLM2PjiiffE8fWeights);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ4NLM2PjiiffE8fWeights;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$dst;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$dst;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ4NLM2PjiiffE8fWeights;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;




