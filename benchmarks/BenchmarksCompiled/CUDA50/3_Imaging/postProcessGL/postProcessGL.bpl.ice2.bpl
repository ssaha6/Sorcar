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
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "g_odata"} {:global} $$g_odata: [bv32]bv32;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

const $arrayId$$g_odata: arrayId;

axiom $arrayId$$g_odata == 1bv6;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$0: arrayId;

axiom $arrayId$$0 == 2bv6;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$1: arrayId;

axiom $arrayId$$1 == 3bv6;

axiom {:array_info "$$res.i9"} {:elem_width 32} {:source_name "res.i9"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i9: arrayId;

axiom $arrayId$$res.i9 == 4bv6;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$2: arrayId;

axiom $arrayId$$2 == 5bv6;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$3: arrayId;

axiom $arrayId$$3 == 6bv6;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$4: arrayId;

axiom $arrayId$$4 == 7bv6;

axiom {:array_info "$$res.i8"} {:elem_width 32} {:source_name "res.i8"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i8: arrayId;

axiom $arrayId$$res.i8 == 8bv6;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$5: arrayId;

axiom $arrayId$$5 == 9bv6;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$6: arrayId;

axiom $arrayId$$6 == 10bv6;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$7: arrayId;

axiom $arrayId$$7 == 11bv6;

axiom {:array_info "$$res.i7"} {:elem_width 32} {:source_name "res.i7"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i7: arrayId;

axiom $arrayId$$res.i7 == 12bv6;

axiom {:array_info "$$8"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$8: arrayId;

axiom $arrayId$$8 == 13bv6;

axiom {:array_info "$$9"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$9: arrayId;

axiom $arrayId$$9 == 14bv6;

axiom {:array_info "$$10"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$10: arrayId;

axiom $arrayId$$10 == 15bv6;

axiom {:array_info "$$res.i6"} {:elem_width 32} {:source_name "res.i6"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i6: arrayId;

axiom $arrayId$$res.i6 == 16bv6;

axiom {:array_info "$$11"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$11: arrayId;

axiom $arrayId$$11 == 17bv6;

axiom {:array_info "$$12"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$12: arrayId;

axiom $arrayId$$12 == 18bv6;

axiom {:array_info "$$13"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$13: arrayId;

axiom $arrayId$$13 == 19bv6;

axiom {:array_info "$$res.i5"} {:elem_width 32} {:source_name "res.i5"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i5: arrayId;

axiom $arrayId$$res.i5 == 20bv6;

axiom {:array_info "$$14"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$14: arrayId;

axiom $arrayId$$14 == 21bv6;

axiom {:array_info "$$15"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$15: arrayId;

axiom $arrayId$$15 == 22bv6;

axiom {:array_info "$$16"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$16: arrayId;

axiom $arrayId$$16 == 23bv6;

axiom {:array_info "$$res.i4"} {:elem_width 32} {:source_name "res.i4"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i4: arrayId;

axiom $arrayId$$res.i4 == 24bv6;

axiom {:array_info "$$17"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$17: arrayId;

axiom $arrayId$$17 == 25bv6;

axiom {:array_info "$$18"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$18: arrayId;

axiom $arrayId$$18 == 26bv6;

axiom {:array_info "$$19"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$19: arrayId;

axiom $arrayId$$19 == 27bv6;

axiom {:array_info "$$res.i3"} {:elem_width 32} {:source_name "res.i3"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i3: arrayId;

axiom $arrayId$$res.i3 == 28bv6;

axiom {:array_info "$$20"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$20: arrayId;

axiom $arrayId$$20 == 29bv6;

axiom {:array_info "$$21"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$21: arrayId;

axiom $arrayId$$21 == 30bv6;

axiom {:array_info "$$22"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$22: arrayId;

axiom $arrayId$$22 == 31bv6;

axiom {:array_info "$$res.i2"} {:elem_width 32} {:source_name "res.i2"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i2: arrayId;

axiom $arrayId$$res.i2 == 32bv6;

axiom {:array_info "$$23"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$23: arrayId;

axiom $arrayId$$23 == 33bv6;

axiom {:array_info "$$24"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$24: arrayId;

axiom $arrayId$$24 == 34bv6;

axiom {:array_info "$$25"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$25: arrayId;

axiom $arrayId$$25 == 35bv6;

axiom {:array_info "$$res.i"} {:elem_width 32} {:source_name "res.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

const $arrayId$$res.i: arrayId;

axiom $arrayId$$res.i == 36bv6;

axiom {:array_info "$$26"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

const $arrayId$$26: arrayId;

axiom $arrayId$$26 == 37bv6;

axiom {:array_info "$$27"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$27: arrayId;

axiom $arrayId$$27 == 38bv6;

axiom {:array_info "$$28"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$28: arrayId;

axiom $arrayId$$28 == 39bv6;

axiom {:array_info "$$29"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$29: arrayId;

axiom $arrayId$$29 == 40bv6;

axiom {:array_info "$$30"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$30: arrayId;

axiom $arrayId$$30 == 41bv6;

axiom {:array_info "$$31"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$31: arrayId;

axiom $arrayId$$31 == 42bv6;

axiom {:array_info "$$32"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$32: arrayId;

axiom $arrayId$$32 == 43bv6;

axiom {:array_info "$$33"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$33: arrayId;

axiom $arrayId$$33 == 44bv6;

axiom {:array_info "$$34"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$34: arrayId;

axiom $arrayId$$34 == 45bv6;

axiom {:array_info "$$35"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$35: arrayId;

axiom $arrayId$$35 == 46bv6;

axiom {:array_info "$$pixel"} {:elem_width 8} {:source_name "pixel"} {:source_elem_width 32} {:source_dimensions "1"} true;

const $arrayId$$pixel: arrayId;

axiom $arrayId$$pixel == 47bv6;

var {:source_name "sdata"} {:group_shared} $$sdata: [bv1][bv32]bv8;

axiom {:array_info "$$sdata"} {:group_shared} {:elem_width 8} {:source_name "sdata"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sdata: bool;

const $arrayId$$sdata: arrayId;

axiom $arrayId$$sdata == 48bv6;

axiom {:array_info "$$inTex"} {:global} {:elem_width 8} {:source_name "inTex"} {:source_elem_width 192} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inTex: bool;

const $arrayId$$inTex: arrayId;

axiom $arrayId$$inTex == 49bv6;

type ptr = bv32;

type arrayId = bv6;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[26:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:26]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv6 ++ p[26:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv6;

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

function FP32_TO_UI8(bv32) : bv8;

function SI32_TO_FP32(bv32) : bv32;

function UI8_TO_FP32(bv8) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "cudaProcess"} {:kernel} $_Z11cudaProcessPjiiiiff($imgw: bv32, $imgh: bv32, $tilew: bv32, $r: bv32, $threshold: bv32, $highlight: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $imgw == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $tilew == 32bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $r == 8bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$inTex && !_WRITE_HAS_OCCURRED_$$inTex && !_ATOMIC_HAS_OCCURRED_$$inTex;
  requires !_READ_HAS_OCCURRED_$$sdata && !_WRITE_HAS_OCCURRED_$$sdata && !_ATOMIC_HAS_OCCURRED_$$sdata;
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
  modifies $$sdata, _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, $$g_odata, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _READ_HAS_OCCURRED_$$sdata;



implementation {:source_name "cudaProcess"} {:kernel} $_Z11cudaProcessPjiiiiff($imgw: bv32, $imgh: bv32, $tilew: bv32, $r: bv32, $threshold: bv32, $highlight: bv32)
{
  var $rsum.0$1: bv32;
  var $rsum.0$2: bv32;
  var $gsum.0$1: bv32;
  var $gsum.0$2: bv32;
  var $bsum.0$1: bv32;
  var $bsum.0$2: bv32;
  var $samples.0: bv32;
  var $dy.0: bv32;
  var $rsum.1$1: bv32;
  var $rsum.1$2: bv32;
  var $gsum.1$1: bv32;
  var $gsum.1$2: bv32;
  var $bsum.1$1: bv32;
  var $bsum.1$2: bv32;
  var $samples.1: bv32;
  var $dx.0: bv32;
  var $rsum.2$1: bv32;
  var $rsum.2$2: bv32;
  var $gsum.2$1: bv32;
  var $gsum.2$2: bv32;
  var $bsum.2$1: bv32;
  var $bsum.2$2: bv32;
  var $samples.2: bv32;
  var $r1.0$1: bv32;
  var $r1.0$2: bv32;
  var $g.0$1: bv32;
  var $g.0$2: bv32;
  var $b.0$1: bv32;
  var $b.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv8;
  var v2$2: bv8;
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
  var v26$1: bv128;
  var v26$2: bv128;
  var v27$1: bv32;
  var v27$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
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
  var v42$1: bv8;
  var v42$2: bv8;
  var v43$1: bool;
  var v43$2: bool;
  var v44$1: bv8;
  var v44$2: bv8;
  var v45$1: bv8;
  var v45$2: bv8;
  var v46$1: bv8;
  var v46$2: bv8;
  var v47$1: bv8;
  var v47$2: bv8;
  var v48$1: bv8;
  var v48$2: bv8;
  var v49$1: bv8;
  var v49$2: bv8;
  var v50$1: bv8;
  var v50$2: bv8;
  var v51$1: bv8;
  var v51$2: bv8;
  var v52$1: bv8;
  var v52$2: bv8;
  var v53$1: bv8;
  var v53$2: bv8;
  var v54$1: bv8;
  var v54$2: bv8;
  var v55$1: bv8;
  var v55$2: bv8;
  var v56$1: bv8;
  var v56$2: bv8;
  var v57$1: bv8;
  var v57$2: bv8;
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
  var v68$1: bv128;
  var v68$2: bv128;
  var v69$1: bv32;
  var v69$2: bv32;
  var v70$1: bv32;
  var v70$2: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v72$1: bv32;
  var v72$2: bv32;
  var v73$1: bv8;
  var v73$2: bv8;
  var v74$1: bv8;
  var v74$2: bv8;
  var v75$1: bv8;
  var v75$2: bv8;
  var v76$1: bv8;
  var v76$2: bv8;
  var v77$1: bv8;
  var v77$2: bv8;
  var v78$1: bv8;
  var v78$2: bv8;
  var v79$1: bv8;
  var v79$2: bv8;
  var v80$1: bv8;
  var v80$2: bv8;
  var v81$1: bv8;
  var v81$2: bv8;
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
  var v94$1: bv8;
  var v94$2: bv8;
  var v95$1: bv8;
  var v95$2: bv8;
  var v96$1: bv8;
  var v96$2: bv8;
  var v97$1: bv8;
  var v97$2: bv8;
  var v98$1: bv8;
  var v98$2: bv8;
  var v99$1: bv8;
  var v99$2: bv8;
  var v100$1: bv8;
  var v100$2: bv8;
  var v101$1: bv8;
  var v101$2: bv8;
  var v102$1: bv8;
  var v102$2: bv8;
  var v103$1: bv8;
  var v103$2: bv8;
  var v104$1: bv8;
  var v104$2: bv8;
  var v105$1: bv8;
  var v105$2: bv8;
  var v106$1: bv8;
  var v106$2: bv8;
  var v107$1: bv8;
  var v107$2: bv8;
  var v108$1: bv8;
  var v108$2: bv8;
  var v109$1: bv128;
  var v109$2: bv128;
  var v110$1: bv32;
  var v110$2: bv32;
  var v111$1: bv32;
  var v111$2: bv32;
  var v112$1: bv32;
  var v112$2: bv32;
  var v113$1: bv32;
  var v113$2: bv32;
  var v114$1: bv8;
  var v114$2: bv8;
  var v115$1: bv8;
  var v115$2: bv8;
  var v116$1: bv8;
  var v116$2: bv8;
  var v117$1: bv8;
  var v117$2: bv8;
  var v118$1: bv8;
  var v118$2: bv8;
  var v119$1: bv8;
  var v119$2: bv8;
  var v120$1: bv8;
  var v120$2: bv8;
  var v121$1: bv8;
  var v121$2: bv8;
  var v122$1: bv8;
  var v122$2: bv8;
  var v123$1: bv8;
  var v123$2: bv8;
  var v124$1: bv8;
  var v124$2: bv8;
  var v125$1: bv8;
  var v125$2: bv8;
  var v126$1: bool;
  var v126$2: bool;
  var v127$1: bv8;
  var v127$2: bv8;
  var v128$1: bv8;
  var v128$2: bv8;
  var v129$1: bv8;
  var v129$2: bv8;
  var v130$1: bv8;
  var v130$2: bv8;
  var v131$1: bv8;
  var v131$2: bv8;
  var v132$1: bv8;
  var v132$2: bv8;
  var v133$1: bv8;
  var v133$2: bv8;
  var v134$1: bv8;
  var v134$2: bv8;
  var v135$1: bv8;
  var v135$2: bv8;
  var v136$1: bv8;
  var v136$2: bv8;
  var v137$1: bv8;
  var v137$2: bv8;
  var v138$1: bv8;
  var v138$2: bv8;
  var v139$1: bv8;
  var v139$2: bv8;
  var v140$1: bv8;
  var v140$2: bv8;
  var v141$1: bv8;
  var v141$2: bv8;
  var v142$1: bv8;
  var v142$2: bv8;
  var v143$1: bv8;
  var v143$2: bv8;
  var v144$1: bv8;
  var v144$2: bv8;
  var v145$1: bv8;
  var v145$2: bv8;
  var v146$1: bv8;
  var v146$2: bv8;
  var v147$1: bv8;
  var v147$2: bv8;
  var v148$1: bv8;
  var v148$2: bv8;
  var v149$1: bv8;
  var v149$2: bv8;
  var v150$1: bv8;
  var v150$2: bv8;
  var v151$1: bv128;
  var v151$2: bv128;
  var v152$1: bv32;
  var v152$2: bv32;
  var v153$1: bv32;
  var v153$2: bv32;
  var v154$1: bv32;
  var v154$2: bv32;
  var v155$1: bv32;
  var v155$2: bv32;
  var v156$1: bv8;
  var v156$2: bv8;
  var v157$1: bv8;
  var v157$2: bv8;
  var v158$1: bv8;
  var v158$2: bv8;
  var v159$1: bv8;
  var v159$2: bv8;
  var v160$1: bv8;
  var v160$2: bv8;
  var v161$1: bv8;
  var v161$2: bv8;
  var v162$1: bv8;
  var v162$2: bv8;
  var v163$1: bv8;
  var v163$2: bv8;
  var v164$1: bv8;
  var v164$2: bv8;
  var v165$1: bv8;
  var v165$2: bv8;
  var v166$1: bv8;
  var v166$2: bv8;
  var v167$1: bv8;
  var v167$2: bv8;
  var v168$1: bv8;
  var v168$2: bv8;
  var v169$1: bv8;
  var v169$2: bv8;
  var v170$1: bv8;
  var v170$2: bv8;
  var v171$1: bv8;
  var v171$2: bv8;
  var v172$1: bv8;
  var v172$2: bv8;
  var v173$1: bv8;
  var v173$2: bv8;
  var v174$1: bv8;
  var v174$2: bv8;
  var v175$1: bv8;
  var v175$2: bv8;
  var v176$1: bv8;
  var v176$2: bv8;
  var v177$1: bv8;
  var v177$2: bv8;
  var v178$1: bv8;
  var v178$2: bv8;
  var v179$1: bv8;
  var v179$2: bv8;
  var v180$1: bv8;
  var v180$2: bv8;
  var v181$1: bv8;
  var v181$2: bv8;
  var v182$1: bv8;
  var v182$2: bv8;
  var v183$1: bv8;
  var v183$2: bv8;
  var v184$1: bv8;
  var v184$2: bv8;
  var v185$1: bv8;
  var v185$2: bv8;
  var v186$1: bv8;
  var v186$2: bv8;
  var v187$1: bv8;
  var v187$2: bv8;
  var v188$1: bv8;
  var v188$2: bv8;
  var v189$1: bv8;
  var v189$2: bv8;
  var v190$1: bv8;
  var v190$2: bv8;
  var v191$1: bv8;
  var v191$2: bv8;
  var v192$1: bv128;
  var v192$2: bv128;
  var v193$1: bv32;
  var v193$2: bv32;
  var v194$1: bv32;
  var v194$2: bv32;
  var v195$1: bv32;
  var v195$2: bv32;
  var v196$1: bv32;
  var v196$2: bv32;
  var v197$1: bv8;
  var v197$2: bv8;
  var v198$1: bv8;
  var v198$2: bv8;
  var v199$1: bv8;
  var v199$2: bv8;
  var v200$1: bv8;
  var v200$2: bv8;
  var v201$1: bv8;
  var v201$2: bv8;
  var v202$1: bv8;
  var v202$2: bv8;
  var v203$1: bv8;
  var v203$2: bv8;
  var v204$1: bv8;
  var v204$2: bv8;
  var v205$1: bv8;
  var v205$2: bv8;
  var v206$1: bv8;
  var v206$2: bv8;
  var v207$1: bv8;
  var v207$2: bv8;
  var v208$1: bv8;
  var v208$2: bv8;
  var v209$1: bool;
  var v209$2: bool;
  var v210$1: bool;
  var v210$2: bool;
  var v211$1: bv8;
  var v211$2: bv8;
  var v212$1: bv8;
  var v212$2: bv8;
  var v213$1: bv8;
  var v213$2: bv8;
  var v214$1: bv8;
  var v214$2: bv8;
  var v215$1: bv8;
  var v215$2: bv8;
  var v216$1: bv8;
  var v216$2: bv8;
  var v217$1: bv8;
  var v217$2: bv8;
  var v218$1: bv8;
  var v218$2: bv8;
  var v219$1: bv8;
  var v219$2: bv8;
  var v220$1: bv8;
  var v220$2: bv8;
  var v221$1: bv8;
  var v221$2: bv8;
  var v222$1: bv8;
  var v222$2: bv8;
  var v223$1: bv8;
  var v223$2: bv8;
  var v224$1: bv8;
  var v224$2: bv8;
  var v225$1: bv8;
  var v225$2: bv8;
  var v226$1: bv8;
  var v226$2: bv8;
  var v227$1: bv8;
  var v227$2: bv8;
  var v228$1: bv8;
  var v228$2: bv8;
  var v229$1: bv8;
  var v229$2: bv8;
  var v230$1: bv8;
  var v230$2: bv8;
  var v231$1: bv8;
  var v231$2: bv8;
  var v232$1: bv8;
  var v232$2: bv8;
  var v233$1: bv8;
  var v233$2: bv8;
  var v234$1: bv8;
  var v234$2: bv8;
  var v235$1: bv128;
  var v235$2: bv128;
  var v236$1: bv32;
  var v236$2: bv32;
  var v237$1: bv32;
  var v237$2: bv32;
  var v238$1: bv32;
  var v238$2: bv32;
  var v239$1: bv32;
  var v239$2: bv32;
  var v240$1: bv8;
  var v240$2: bv8;
  var v241$1: bv8;
  var v241$2: bv8;
  var v242$1: bv8;
  var v242$2: bv8;
  var v243$1: bv8;
  var v243$2: bv8;
  var v244$1: bv8;
  var v244$2: bv8;
  var v245$1: bv8;
  var v245$2: bv8;
  var v246$1: bv8;
  var v246$2: bv8;
  var v247$1: bv8;
  var v247$2: bv8;
  var v248$1: bv8;
  var v248$2: bv8;
  var v249$1: bv8;
  var v249$2: bv8;
  var v250$1: bv8;
  var v250$2: bv8;
  var v251$1: bv8;
  var v251$2: bv8;
  var v252$1: bv8;
  var v252$2: bv8;
  var v253$1: bv8;
  var v253$2: bv8;
  var v254$1: bv8;
  var v254$2: bv8;
  var v255$1: bv8;
  var v255$2: bv8;
  var v256$1: bv8;
  var v256$2: bv8;
  var v257$1: bv8;
  var v257$2: bv8;
  var v258$1: bv8;
  var v258$2: bv8;
  var v259$1: bv8;
  var v259$2: bv8;
  var v260$1: bv8;
  var v260$2: bv8;
  var v261$1: bv8;
  var v261$2: bv8;
  var v262$1: bv8;
  var v262$2: bv8;
  var v263$1: bv8;
  var v263$2: bv8;
  var v264$1: bv8;
  var v264$2: bv8;
  var v265$1: bv8;
  var v265$2: bv8;
  var v266$1: bv8;
  var v266$2: bv8;
  var v267$1: bv8;
  var v267$2: bv8;
  var v268$1: bv8;
  var v268$2: bv8;
  var v269$1: bv8;
  var v269$2: bv8;
  var v270$1: bv8;
  var v270$2: bv8;
  var v271$1: bv8;
  var v271$2: bv8;
  var v272$1: bv8;
  var v272$2: bv8;
  var v273$1: bv8;
  var v273$2: bv8;
  var v274$1: bv8;
  var v274$2: bv8;
  var v275$1: bv8;
  var v275$2: bv8;
  var v276$1: bv128;
  var v276$2: bv128;
  var v277$1: bv32;
  var v277$2: bv32;
  var v278$1: bv32;
  var v278$2: bv32;
  var v279$1: bv32;
  var v279$2: bv32;
  var v280$1: bv32;
  var v280$2: bv32;
  var v281$1: bv8;
  var v281$2: bv8;
  var v282$1: bv8;
  var v282$2: bv8;
  var v283$1: bv8;
  var v283$2: bv8;
  var v284$1: bv8;
  var v284$2: bv8;
  var v285$1: bv8;
  var v285$2: bv8;
  var v286$1: bv8;
  var v286$2: bv8;
  var v287$1: bv8;
  var v287$2: bv8;
  var v288$1: bv8;
  var v288$2: bv8;
  var v289$1: bv8;
  var v289$2: bv8;
  var v290$1: bv8;
  var v290$2: bv8;
  var v291$1: bv8;
  var v291$2: bv8;
  var v292$1: bv8;
  var v292$2: bv8;
  var v375: bool;
  var v293$1: bv8;
  var v293$2: bv8;
  var v294$1: bv8;
  var v294$2: bv8;
  var v295$1: bv8;
  var v295$2: bv8;
  var v296$1: bv8;
  var v296$2: bv8;
  var v297$1: bv8;
  var v297$2: bv8;
  var v298$1: bv8;
  var v298$2: bv8;
  var v299$1: bv8;
  var v299$2: bv8;
  var v300$1: bv8;
  var v300$2: bv8;
  var v301$1: bv8;
  var v301$2: bv8;
  var v302$1: bv8;
  var v302$2: bv8;
  var v303$1: bv8;
  var v303$2: bv8;
  var v304$1: bv8;
  var v304$2: bv8;
  var v305$1: bv8;
  var v305$2: bv8;
  var v306$1: bv8;
  var v306$2: bv8;
  var v307$1: bv8;
  var v307$2: bv8;
  var v308$1: bv8;
  var v308$2: bv8;
  var v309$1: bv8;
  var v309$2: bv8;
  var v310$1: bv8;
  var v310$2: bv8;
  var v311$1: bv8;
  var v311$2: bv8;
  var v312$1: bv8;
  var v312$2: bv8;
  var v313$1: bv8;
  var v313$2: bv8;
  var v314$1: bv8;
  var v314$2: bv8;
  var v315$1: bv8;
  var v315$2: bv8;
  var v316$1: bv8;
  var v316$2: bv8;
  var v317$1: bv128;
  var v317$2: bv128;
  var v318$1: bv32;
  var v318$2: bv32;
  var v319$1: bv32;
  var v319$2: bv32;
  var v320$1: bv32;
  var v320$2: bv32;
  var v321$1: bv32;
  var v321$2: bv32;
  var v322$1: bv8;
  var v322$2: bv8;
  var v323$1: bv8;
  var v323$2: bv8;
  var v324$1: bv8;
  var v324$2: bv8;
  var v325$1: bv8;
  var v325$2: bv8;
  var v326$1: bv8;
  var v326$2: bv8;
  var v327$1: bv8;
  var v327$2: bv8;
  var v328$1: bv8;
  var v328$2: bv8;
  var v329$1: bv8;
  var v329$2: bv8;
  var v330$1: bv8;
  var v330$2: bv8;
  var v331$1: bv8;
  var v331$2: bv8;
  var v332$1: bv8;
  var v332$2: bv8;
  var v333$1: bv8;
  var v333$2: bv8;
  var v334$1: bv8;
  var v334$2: bv8;
  var v335$1: bv8;
  var v335$2: bv8;
  var v336$1: bv8;
  var v336$2: bv8;
  var v337$1: bv8;
  var v337$2: bv8;
  var v338$1: bv8;
  var v338$2: bv8;
  var v339$1: bv8;
  var v339$2: bv8;
  var v340$1: bv8;
  var v340$2: bv8;
  var v341$1: bv8;
  var v341$2: bv8;
  var v342$1: bv8;
  var v342$2: bv8;
  var v343$1: bv8;
  var v343$2: bv8;
  var v344$1: bv8;
  var v344$2: bv8;
  var v345$1: bv8;
  var v345$2: bv8;
  var v346$1: bv8;
  var v346$2: bv8;
  var v347$1: bv8;
  var v347$2: bv8;
  var v348$1: bv8;
  var v348$2: bv8;
  var v349$1: bv8;
  var v349$2: bv8;
  var v350$1: bv8;
  var v350$2: bv8;
  var v351$1: bv8;
  var v351$2: bv8;
  var v352$1: bv8;
  var v352$2: bv8;
  var v353$1: bv8;
  var v353$2: bv8;
  var v354$1: bv8;
  var v354$2: bv8;
  var v355$1: bv8;
  var v355$2: bv8;
  var v356$1: bv8;
  var v356$2: bv8;
  var v357$1: bv8;
  var v357$2: bv8;
  var v358$1: bv128;
  var v358$2: bv128;
  var v359$1: bv32;
  var v359$2: bv32;
  var v360$1: bv32;
  var v360$2: bv32;
  var v361$1: bv32;
  var v361$2: bv32;
  var v362$1: bv32;
  var v362$2: bv32;
  var v363$1: bv8;
  var v363$2: bv8;
  var v364$1: bv8;
  var v364$2: bv8;
  var v365$1: bv8;
  var v365$2: bv8;
  var v366$1: bv8;
  var v366$2: bv8;
  var v367$1: bv8;
  var v367$2: bv8;
  var v368$1: bv8;
  var v368$2: bv8;
  var v369$1: bv8;
  var v369$2: bv8;
  var v370$1: bv8;
  var v370$2: bv8;
  var v371$1: bv8;
  var v371$2: bv8;
  var v372$1: bv8;
  var v372$2: bv8;
  var v373$1: bv8;
  var v373$2: bv8;
  var v374$1: bv8;
  var v374$2: bv8;
  var v376: bool;
  var v377$1: bv8;
  var v377$2: bv8;
  var v378$1: bv8;
  var v378$2: bv8;
  var v379$1: bv8;
  var v379$2: bv8;
  var v380$1: bv8;
  var v380$2: bv8;
  var v381: bv32;
  var v382: bv32;
  var v383: bool;
  var v384$1: bv8;
  var v384$2: bv8;
  var v385$1: bv32;
  var v385$2: bv32;
  var v386$1: bv8;
  var v386$2: bv8;
  var v387$1: bv32;
  var v387$2: bv32;
  var v388$1: bv8;
  var v388$2: bv8;
  var v389$1: bv32;
  var v389$2: bv32;
  var v390$1: bool;
  var v390$2: bool;
  var v391$1: bv32;
  var v391$2: bv32;
  var v392$1: bv32;
  var v392$2: bv32;
  var v393$1: bv32;
  var v393$2: bv32;
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
  var _HAVOC_bv8$1: bv8;
  var _HAVOC_bv8$2: bv8;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    havoc v2$1, v2$2;
    $$26$0bv32$1 := v2$1;
    $$26$0bv32$2 := v2$2;
    havoc v3$1, v3$2;
    $$26$1bv32$1 := v3$1;
    $$26$1bv32$2 := v3$2;
    havoc v4$1, v4$2;
    $$26$2bv32$1 := v4$1;
    $$26$2bv32$2 := v4$2;
    havoc v5$1, v5$2;
    $$26$3bv32$1 := v5$1;
    $$26$3bv32$2 := v5$2;
    havoc v6$1, v6$2;
    $$26$4bv32$1 := v6$1;
    $$26$4bv32$2 := v6$2;
    havoc v7$1, v7$2;
    $$26$5bv32$1 := v7$1;
    $$26$5bv32$2 := v7$2;
    havoc v8$1, v8$2;
    $$26$6bv32$1 := v8$1;
    $$26$6bv32$2 := v8$2;
    havoc v9$1, v9$2;
    $$26$7bv32$1 := v9$1;
    $$26$7bv32$2 := v9$2;
    havoc v10$1, v10$2;
    $$26$8bv32$1 := v10$1;
    $$26$8bv32$2 := v10$2;
    havoc v11$1, v11$2;
    $$26$9bv32$1 := v11$1;
    $$26$9bv32$2 := v11$2;
    havoc v12$1, v12$2;
    $$26$10bv32$1 := v12$1;
    $$26$10bv32$2 := v12$2;
    havoc v13$1, v13$2;
    $$26$11bv32$1 := v13$1;
    $$26$11bv32$2 := v13$2;
    havoc v14$1, v14$2;
    $$26$12bv32$1 := v14$1;
    $$26$12bv32$2 := v14$2;
    havoc v15$1, v15$2;
    $$26$13bv32$1 := v15$1;
    $$26$13bv32$2 := v15$2;
    havoc v16$1, v16$2;
    $$26$14bv32$1 := v16$1;
    $$26$14bv32$2 := v16$2;
    havoc v17$1, v17$2;
    $$26$15bv32$1 := v17$1;
    $$26$15bv32$2 := v17$2;
    havoc v18$1, v18$2;
    $$26$16bv32$1 := v18$1;
    $$26$16bv32$2 := v18$2;
    havoc v19$1, v19$2;
    $$26$17bv32$1 := v19$1;
    $$26$17bv32$2 := v19$2;
    havoc v20$1, v20$2;
    $$26$18bv32$1 := v20$1;
    $$26$18bv32$2 := v20$2;
    havoc v21$1, v21$2;
    $$26$19bv32$1 := v21$1;
    $$26$19bv32$2 := v21$2;
    havoc v22$1, v22$2;
    $$26$20bv32$1 := v22$1;
    $$26$20bv32$2 := v22$2;
    havoc v23$1, v23$2;
    $$26$21bv32$1 := v23$1;
    $$26$21bv32$2 := v23$2;
    havoc v24$1, v24$2;
    $$26$22bv32$1 := v24$1;
    $$26$22bv32$2 := v24$2;
    havoc v25$1, v25$2;
    $$26$23bv32$1 := v25$1;
    $$26$23bv32$2 := v25$2;
    call {:sourceloc_num 52} v26$1, v26$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$26, 0bv32), true, SI32_TO_FP32(v0$1), SI32_TO_FP32(v1$1), true, SI32_TO_FP32(v0$2), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i$0bv32$1 := v26$1[32:0];
    $$res.i$0bv32$2 := v26$2[32:0];
    $$res.i$1bv32$1 := v26$1[64:32];
    $$res.i$1bv32$2 := v26$2[64:32];
    $$res.i$2bv32$1 := v26$1[96:64];
    $$res.i$2bv32$2 := v26$2[96:64];
    $$res.i$3bv32$1 := v26$1[128:96];
    $$res.i$3bv32$2 := v26$2[128:96];
    v27$1 := $$res.i$0bv32$1;
    v27$2 := $$res.i$0bv32$2;
    v28$1 := $$res.i$1bv32$1;
    v28$2 := $$res.i$1bv32$2;
    v29$1 := $$res.i$2bv32$1;
    v29$2 := $$res.i$2bv32$2;
    v30$1 := $$res.i$3bv32$1;
    v30$2 := $$res.i$3bv32$2;
    $$24$0bv32$1 := FP32_TO_UI8(FMUL32(v27$1, 1132396544bv32));
    $$24$0bv32$2 := FP32_TO_UI8(FMUL32(v27$2, 1132396544bv32));
    $$24$1bv32$1 := FP32_TO_UI8(FMUL32(v28$1, 1132396544bv32));
    $$24$1bv32$2 := FP32_TO_UI8(FMUL32(v28$2, 1132396544bv32));
    $$24$2bv32$1 := FP32_TO_UI8(FMUL32(v29$1, 1132396544bv32));
    $$24$2bv32$2 := FP32_TO_UI8(FMUL32(v29$2, 1132396544bv32));
    $$24$3bv32$1 := FP32_TO_UI8(FMUL32(v30$1, 1132396544bv32));
    $$24$3bv32$2 := FP32_TO_UI8(FMUL32(v30$2, 1132396544bv32));
    v31$1 := $$24$0bv32$1;
    v31$2 := $$24$0bv32$2;
    v32$1 := $$24$1bv32$1;
    v32$2 := $$24$1bv32$2;
    v33$1 := $$24$2bv32$1;
    v33$2 := $$24$2bv32$2;
    v34$1 := $$24$3bv32$1;
    v34$2 := $$24$3bv32$2;
    $$25$0bv32$1 := v31$1;
    $$25$0bv32$2 := v31$2;
    $$25$1bv32$1 := v32$1;
    $$25$1bv32$2 := v32$2;
    $$25$2bv32$1 := v33$1;
    $$25$2bv32$2 := v33$2;
    $$25$3bv32$1 := v34$1;
    $$25$3bv32$2 := v34$2;
    v35$1 := $$25$0bv32$1;
    v35$2 := $$25$0bv32$2;
    v36$1 := $$25$1bv32$1;
    v36$2 := $$25$1bv32$2;
    v37$1 := $$25$2bv32$1;
    v37$2 := $$25$2bv32$2;
    v38$1 := $$25$3bv32$1;
    v38$2 := $$25$3bv32$2;
    $$27$0bv32$1 := v35$1;
    $$27$0bv32$2 := v35$2;
    $$27$1bv32$1 := v36$1;
    $$27$1bv32$2 := v36$2;
    $$27$2bv32$1 := v37$1;
    $$27$2bv32$2 := v37$2;
    $$27$3bv32$1 := v38$1;
    $$27$3bv32$2 := v38$2;
    v39$1 := $$27$0bv32$1;
    v39$2 := $$27$0bv32$2;
    call {:sourceloc} {:sourceloc_num 82} _LOG_WRITE_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), v39$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 82} _CHECK_WRITE_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), v39$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)] := v39$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32)] := v39$2;
    v40$1 := $$27$1bv32$1;
    v40$2 := $$27$1bv32$2;
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32), v40$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32), v40$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)] := v40$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32)] := v40$2;
    v41$1 := $$27$2bv32$1;
    v41$2 := $$27$2bv32$2;
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32), v41$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32), v41$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)] := v41$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32)] := v41$2;
    v42$1 := $$27$3bv32$1;
    v42$2 := $$27$3bv32$2;
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32), v42$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32), v42$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)] := v42$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32)] := v42$2;
    v43$1 := BV32_ULT(local_id_x$1, $r);
    v43$2 := BV32_ULT(local_id_x$2, $r);
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
    p0$1 := (if v43$1 then v43$1 else p0$1);
    p0$2 := (if v43$2 then v43$2 else p0$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v44$1 := (if p0$1 then _HAVOC_bv8$1 else v44$1);
    v44$2 := (if p0$2 then _HAVOC_bv8$2 else v44$2);
    $$23$0bv32$1 := (if p0$1 then v44$1 else $$23$0bv32$1);
    $$23$0bv32$2 := (if p0$2 then v44$2 else $$23$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v45$1 := (if p0$1 then _HAVOC_bv8$1 else v45$1);
    v45$2 := (if p0$2 then _HAVOC_bv8$2 else v45$2);
    $$23$1bv32$1 := (if p0$1 then v45$1 else $$23$1bv32$1);
    $$23$1bv32$2 := (if p0$2 then v45$2 else $$23$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v46$1 := (if p0$1 then _HAVOC_bv8$1 else v46$1);
    v46$2 := (if p0$2 then _HAVOC_bv8$2 else v46$2);
    $$23$2bv32$1 := (if p0$1 then v46$1 else $$23$2bv32$1);
    $$23$2bv32$2 := (if p0$2 then v46$2 else $$23$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v47$1 := (if p0$1 then _HAVOC_bv8$1 else v47$1);
    v47$2 := (if p0$2 then _HAVOC_bv8$2 else v47$2);
    $$23$3bv32$1 := (if p0$1 then v47$1 else $$23$3bv32$1);
    $$23$3bv32$2 := (if p0$2 then v47$2 else $$23$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v48$1 := (if p0$1 then _HAVOC_bv8$1 else v48$1);
    v48$2 := (if p0$2 then _HAVOC_bv8$2 else v48$2);
    $$23$4bv32$1 := (if p0$1 then v48$1 else $$23$4bv32$1);
    $$23$4bv32$2 := (if p0$2 then v48$2 else $$23$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v49$1 := (if p0$1 then _HAVOC_bv8$1 else v49$1);
    v49$2 := (if p0$2 then _HAVOC_bv8$2 else v49$2);
    $$23$5bv32$1 := (if p0$1 then v49$1 else $$23$5bv32$1);
    $$23$5bv32$2 := (if p0$2 then v49$2 else $$23$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v50$1 := (if p0$1 then _HAVOC_bv8$1 else v50$1);
    v50$2 := (if p0$2 then _HAVOC_bv8$2 else v50$2);
    $$23$6bv32$1 := (if p0$1 then v50$1 else $$23$6bv32$1);
    $$23$6bv32$2 := (if p0$2 then v50$2 else $$23$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v51$1 := (if p0$1 then _HAVOC_bv8$1 else v51$1);
    v51$2 := (if p0$2 then _HAVOC_bv8$2 else v51$2);
    $$23$7bv32$1 := (if p0$1 then v51$1 else $$23$7bv32$1);
    $$23$7bv32$2 := (if p0$2 then v51$2 else $$23$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v52$1 := (if p0$1 then _HAVOC_bv8$1 else v52$1);
    v52$2 := (if p0$2 then _HAVOC_bv8$2 else v52$2);
    $$23$8bv32$1 := (if p0$1 then v52$1 else $$23$8bv32$1);
    $$23$8bv32$2 := (if p0$2 then v52$2 else $$23$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v53$1 := (if p0$1 then _HAVOC_bv8$1 else v53$1);
    v53$2 := (if p0$2 then _HAVOC_bv8$2 else v53$2);
    $$23$9bv32$1 := (if p0$1 then v53$1 else $$23$9bv32$1);
    $$23$9bv32$2 := (if p0$2 then v53$2 else $$23$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v54$1 := (if p0$1 then _HAVOC_bv8$1 else v54$1);
    v54$2 := (if p0$2 then _HAVOC_bv8$2 else v54$2);
    $$23$10bv32$1 := (if p0$1 then v54$1 else $$23$10bv32$1);
    $$23$10bv32$2 := (if p0$2 then v54$2 else $$23$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v55$1 := (if p0$1 then _HAVOC_bv8$1 else v55$1);
    v55$2 := (if p0$2 then _HAVOC_bv8$2 else v55$2);
    $$23$11bv32$1 := (if p0$1 then v55$1 else $$23$11bv32$1);
    $$23$11bv32$2 := (if p0$2 then v55$2 else $$23$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v56$1 := (if p0$1 then _HAVOC_bv8$1 else v56$1);
    v56$2 := (if p0$2 then _HAVOC_bv8$2 else v56$2);
    $$23$12bv32$1 := (if p0$1 then v56$1 else $$23$12bv32$1);
    $$23$12bv32$2 := (if p0$2 then v56$2 else $$23$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v57$1 := (if p0$1 then _HAVOC_bv8$1 else v57$1);
    v57$2 := (if p0$2 then _HAVOC_bv8$2 else v57$2);
    $$23$13bv32$1 := (if p0$1 then v57$1 else $$23$13bv32$1);
    $$23$13bv32$2 := (if p0$2 then v57$2 else $$23$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v58$1 := (if p0$1 then _HAVOC_bv8$1 else v58$1);
    v58$2 := (if p0$2 then _HAVOC_bv8$2 else v58$2);
    $$23$14bv32$1 := (if p0$1 then v58$1 else $$23$14bv32$1);
    $$23$14bv32$2 := (if p0$2 then v58$2 else $$23$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v59$1 := (if p0$1 then _HAVOC_bv8$1 else v59$1);
    v59$2 := (if p0$2 then _HAVOC_bv8$2 else v59$2);
    $$23$15bv32$1 := (if p0$1 then v59$1 else $$23$15bv32$1);
    $$23$15bv32$2 := (if p0$2 then v59$2 else $$23$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v60$1 := (if p0$1 then _HAVOC_bv8$1 else v60$1);
    v60$2 := (if p0$2 then _HAVOC_bv8$2 else v60$2);
    $$23$16bv32$1 := (if p0$1 then v60$1 else $$23$16bv32$1);
    $$23$16bv32$2 := (if p0$2 then v60$2 else $$23$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v61$1 := (if p0$1 then _HAVOC_bv8$1 else v61$1);
    v61$2 := (if p0$2 then _HAVOC_bv8$2 else v61$2);
    $$23$17bv32$1 := (if p0$1 then v61$1 else $$23$17bv32$1);
    $$23$17bv32$2 := (if p0$2 then v61$2 else $$23$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v62$1 := (if p0$1 then _HAVOC_bv8$1 else v62$1);
    v62$2 := (if p0$2 then _HAVOC_bv8$2 else v62$2);
    $$23$18bv32$1 := (if p0$1 then v62$1 else $$23$18bv32$1);
    $$23$18bv32$2 := (if p0$2 then v62$2 else $$23$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v63$1 := (if p0$1 then _HAVOC_bv8$1 else v63$1);
    v63$2 := (if p0$2 then _HAVOC_bv8$2 else v63$2);
    $$23$19bv32$1 := (if p0$1 then v63$1 else $$23$19bv32$1);
    $$23$19bv32$2 := (if p0$2 then v63$2 else $$23$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v64$1 := (if p0$1 then _HAVOC_bv8$1 else v64$1);
    v64$2 := (if p0$2 then _HAVOC_bv8$2 else v64$2);
    $$23$20bv32$1 := (if p0$1 then v64$1 else $$23$20bv32$1);
    $$23$20bv32$2 := (if p0$2 then v64$2 else $$23$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v65$1 := (if p0$1 then _HAVOC_bv8$1 else v65$1);
    v65$2 := (if p0$2 then _HAVOC_bv8$2 else v65$2);
    $$23$21bv32$1 := (if p0$1 then v65$1 else $$23$21bv32$1);
    $$23$21bv32$2 := (if p0$2 then v65$2 else $$23$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v66$1 := (if p0$1 then _HAVOC_bv8$1 else v66$1);
    v66$2 := (if p0$2 then _HAVOC_bv8$2 else v66$2);
    $$23$22bv32$1 := (if p0$1 then v66$1 else $$23$22bv32$1);
    $$23$22bv32$2 := (if p0$2 then v66$2 else $$23$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v67$1 := (if p0$1 then _HAVOC_bv8$1 else v67$1);
    v67$2 := (if p0$2 then _HAVOC_bv8$2 else v67$2);
    $$23$23bv32$1 := (if p0$1 then v67$1 else $$23$23bv32$1);
    $$23$23bv32$2 := (if p0$2 then v67$2 else $$23$23bv32$2);
    call {:sourceloc_num 138} v68$1, v68$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$23, 0bv32), p0$1, SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(v1$1), p0$2, SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i2$0bv32$1 := (if p0$1 then v68$1[32:0] else $$res.i2$0bv32$1);
    $$res.i2$0bv32$2 := (if p0$2 then v68$2[32:0] else $$res.i2$0bv32$2);
    $$res.i2$1bv32$1 := (if p0$1 then v68$1[64:32] else $$res.i2$1bv32$1);
    $$res.i2$1bv32$2 := (if p0$2 then v68$2[64:32] else $$res.i2$1bv32$2);
    $$res.i2$2bv32$1 := (if p0$1 then v68$1[96:64] else $$res.i2$2bv32$1);
    $$res.i2$2bv32$2 := (if p0$2 then v68$2[96:64] else $$res.i2$2bv32$2);
    $$res.i2$3bv32$1 := (if p0$1 then v68$1[128:96] else $$res.i2$3bv32$1);
    $$res.i2$3bv32$2 := (if p0$2 then v68$2[128:96] else $$res.i2$3bv32$2);
    v69$1 := (if p0$1 then $$res.i2$0bv32$1 else v69$1);
    v69$2 := (if p0$2 then $$res.i2$0bv32$2 else v69$2);
    v70$1 := (if p0$1 then $$res.i2$1bv32$1 else v70$1);
    v70$2 := (if p0$2 then $$res.i2$1bv32$2 else v70$2);
    v71$1 := (if p0$1 then $$res.i2$2bv32$1 else v71$1);
    v71$2 := (if p0$2 then $$res.i2$2bv32$2 else v71$2);
    v72$1 := (if p0$1 then $$res.i2$3bv32$1 else v72$1);
    v72$2 := (if p0$2 then $$res.i2$3bv32$2 else v72$2);
    $$21$0bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v69$1, 1132396544bv32)) else $$21$0bv32$1);
    $$21$0bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v69$2, 1132396544bv32)) else $$21$0bv32$2);
    $$21$1bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v70$1, 1132396544bv32)) else $$21$1bv32$1);
    $$21$1bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v70$2, 1132396544bv32)) else $$21$1bv32$2);
    $$21$2bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v71$1, 1132396544bv32)) else $$21$2bv32$1);
    $$21$2bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v71$2, 1132396544bv32)) else $$21$2bv32$2);
    $$21$3bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v72$1, 1132396544bv32)) else $$21$3bv32$1);
    $$21$3bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v72$2, 1132396544bv32)) else $$21$3bv32$2);
    v73$1 := (if p0$1 then $$21$0bv32$1 else v73$1);
    v73$2 := (if p0$2 then $$21$0bv32$2 else v73$2);
    v74$1 := (if p0$1 then $$21$1bv32$1 else v74$1);
    v74$2 := (if p0$2 then $$21$1bv32$2 else v74$2);
    v75$1 := (if p0$1 then $$21$2bv32$1 else v75$1);
    v75$2 := (if p0$2 then $$21$2bv32$2 else v75$2);
    v76$1 := (if p0$1 then $$21$3bv32$1 else v76$1);
    v76$2 := (if p0$2 then $$21$3bv32$2 else v76$2);
    $$22$0bv32$1 := (if p0$1 then v73$1 else $$22$0bv32$1);
    $$22$0bv32$2 := (if p0$2 then v73$2 else $$22$0bv32$2);
    $$22$1bv32$1 := (if p0$1 then v74$1 else $$22$1bv32$1);
    $$22$1bv32$2 := (if p0$2 then v74$2 else $$22$1bv32$2);
    $$22$2bv32$1 := (if p0$1 then v75$1 else $$22$2bv32$1);
    $$22$2bv32$2 := (if p0$2 then v75$2 else $$22$2bv32$2);
    $$22$3bv32$1 := (if p0$1 then v76$1 else $$22$3bv32$1);
    $$22$3bv32$2 := (if p0$2 then v76$2 else $$22$3bv32$2);
    v77$1 := (if p0$1 then $$22$0bv32$1 else v77$1);
    v77$2 := (if p0$2 then $$22$0bv32$2 else v77$2);
    v78$1 := (if p0$1 then $$22$1bv32$1 else v78$1);
    v78$2 := (if p0$2 then $$22$1bv32$2 else v78$2);
    v79$1 := (if p0$1 then $$22$2bv32$1 else v79$1);
    v79$2 := (if p0$2 then $$22$2bv32$2 else v79$2);
    v80$1 := (if p0$1 then $$22$3bv32$1 else v80$1);
    v80$2 := (if p0$2 then $$22$3bv32$2 else v80$2);
    $$28$0bv32$1 := (if p0$1 then v77$1 else $$28$0bv32$1);
    $$28$0bv32$2 := (if p0$2 then v77$2 else $$28$0bv32$2);
    $$28$1bv32$1 := (if p0$1 then v78$1 else $$28$1bv32$1);
    $$28$1bv32$2 := (if p0$2 then v78$2 else $$28$1bv32$2);
    $$28$2bv32$1 := (if p0$1 then v79$1 else $$28$2bv32$1);
    $$28$2bv32$2 := (if p0$2 then v79$2 else $$28$2bv32$2);
    $$28$3bv32$1 := (if p0$1 then v80$1 else $$28$3bv32$1);
    $$28$3bv32$2 := (if p0$2 then v80$2 else $$28$3bv32$2);
    v81$1 := (if p0$1 then $$28$0bv32$1 else v81$1);
    v81$2 := (if p0$2 then $$28$0bv32$2 else v81$2);
    call {:sourceloc} {:sourceloc_num 168} _LOG_WRITE_$$sdata(p0$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), v81$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 168} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 168} _CHECK_WRITE_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), v81$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32)] := (if p0$1 then v81$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32)] := (if p0$2 then v81$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32)]);
    v82$1 := (if p0$1 then $$28$1bv32$1 else v82$1);
    v82$2 := (if p0$2 then $$28$1bv32$2 else v82$2);
    call {:sourceloc} {:sourceloc_num 170} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32), v82$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 170} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 170} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32), v82$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)] := (if p0$1 then v82$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32)] := (if p0$2 then v82$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32)]);
    v83$1 := (if p0$1 then $$28$2bv32$1 else v83$1);
    v83$2 := (if p0$2 then $$28$2bv32$2 else v83$2);
    call {:sourceloc} {:sourceloc_num 172} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32), v83$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 172} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 172} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32), v83$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)] := (if p0$1 then v83$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32)] := (if p0$2 then v83$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32)]);
    v84$1 := (if p0$1 then $$28$3bv32$1 else v84$1);
    v84$2 := (if p0$2 then $$28$3bv32$2 else v84$2);
    call {:sourceloc} {:sourceloc_num 174} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32), v84$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 174} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32), v84$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)] := (if p0$1 then v84$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32)] := (if p0$2 then v84$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32)]);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v85$1 := (if p0$1 then _HAVOC_bv8$1 else v85$1);
    v85$2 := (if p0$2 then _HAVOC_bv8$2 else v85$2);
    $$20$0bv32$1 := (if p0$1 then v85$1 else $$20$0bv32$1);
    $$20$0bv32$2 := (if p0$2 then v85$2 else $$20$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v86$1 := (if p0$1 then _HAVOC_bv8$1 else v86$1);
    v86$2 := (if p0$2 then _HAVOC_bv8$2 else v86$2);
    $$20$1bv32$1 := (if p0$1 then v86$1 else $$20$1bv32$1);
    $$20$1bv32$2 := (if p0$2 then v86$2 else $$20$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v87$1 := (if p0$1 then _HAVOC_bv8$1 else v87$1);
    v87$2 := (if p0$2 then _HAVOC_bv8$2 else v87$2);
    $$20$2bv32$1 := (if p0$1 then v87$1 else $$20$2bv32$1);
    $$20$2bv32$2 := (if p0$2 then v87$2 else $$20$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v88$1 := (if p0$1 then _HAVOC_bv8$1 else v88$1);
    v88$2 := (if p0$2 then _HAVOC_bv8$2 else v88$2);
    $$20$3bv32$1 := (if p0$1 then v88$1 else $$20$3bv32$1);
    $$20$3bv32$2 := (if p0$2 then v88$2 else $$20$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v89$1 := (if p0$1 then _HAVOC_bv8$1 else v89$1);
    v89$2 := (if p0$2 then _HAVOC_bv8$2 else v89$2);
    $$20$4bv32$1 := (if p0$1 then v89$1 else $$20$4bv32$1);
    $$20$4bv32$2 := (if p0$2 then v89$2 else $$20$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v90$1 := (if p0$1 then _HAVOC_bv8$1 else v90$1);
    v90$2 := (if p0$2 then _HAVOC_bv8$2 else v90$2);
    $$20$5bv32$1 := (if p0$1 then v90$1 else $$20$5bv32$1);
    $$20$5bv32$2 := (if p0$2 then v90$2 else $$20$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v91$1 := (if p0$1 then _HAVOC_bv8$1 else v91$1);
    v91$2 := (if p0$2 then _HAVOC_bv8$2 else v91$2);
    $$20$6bv32$1 := (if p0$1 then v91$1 else $$20$6bv32$1);
    $$20$6bv32$2 := (if p0$2 then v91$2 else $$20$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v92$1 := (if p0$1 then _HAVOC_bv8$1 else v92$1);
    v92$2 := (if p0$2 then _HAVOC_bv8$2 else v92$2);
    $$20$7bv32$1 := (if p0$1 then v92$1 else $$20$7bv32$1);
    $$20$7bv32$2 := (if p0$2 then v92$2 else $$20$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v93$1 := (if p0$1 then _HAVOC_bv8$1 else v93$1);
    v93$2 := (if p0$2 then _HAVOC_bv8$2 else v93$2);
    $$20$8bv32$1 := (if p0$1 then v93$1 else $$20$8bv32$1);
    $$20$8bv32$2 := (if p0$2 then v93$2 else $$20$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v94$1 := (if p0$1 then _HAVOC_bv8$1 else v94$1);
    v94$2 := (if p0$2 then _HAVOC_bv8$2 else v94$2);
    $$20$9bv32$1 := (if p0$1 then v94$1 else $$20$9bv32$1);
    $$20$9bv32$2 := (if p0$2 then v94$2 else $$20$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v95$1 := (if p0$1 then _HAVOC_bv8$1 else v95$1);
    v95$2 := (if p0$2 then _HAVOC_bv8$2 else v95$2);
    $$20$10bv32$1 := (if p0$1 then v95$1 else $$20$10bv32$1);
    $$20$10bv32$2 := (if p0$2 then v95$2 else $$20$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v96$1 := (if p0$1 then _HAVOC_bv8$1 else v96$1);
    v96$2 := (if p0$2 then _HAVOC_bv8$2 else v96$2);
    $$20$11bv32$1 := (if p0$1 then v96$1 else $$20$11bv32$1);
    $$20$11bv32$2 := (if p0$2 then v96$2 else $$20$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v97$1 := (if p0$1 then _HAVOC_bv8$1 else v97$1);
    v97$2 := (if p0$2 then _HAVOC_bv8$2 else v97$2);
    $$20$12bv32$1 := (if p0$1 then v97$1 else $$20$12bv32$1);
    $$20$12bv32$2 := (if p0$2 then v97$2 else $$20$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v98$1 := (if p0$1 then _HAVOC_bv8$1 else v98$1);
    v98$2 := (if p0$2 then _HAVOC_bv8$2 else v98$2);
    $$20$13bv32$1 := (if p0$1 then v98$1 else $$20$13bv32$1);
    $$20$13bv32$2 := (if p0$2 then v98$2 else $$20$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v99$1 := (if p0$1 then _HAVOC_bv8$1 else v99$1);
    v99$2 := (if p0$2 then _HAVOC_bv8$2 else v99$2);
    $$20$14bv32$1 := (if p0$1 then v99$1 else $$20$14bv32$1);
    $$20$14bv32$2 := (if p0$2 then v99$2 else $$20$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v100$1 := (if p0$1 then _HAVOC_bv8$1 else v100$1);
    v100$2 := (if p0$2 then _HAVOC_bv8$2 else v100$2);
    $$20$15bv32$1 := (if p0$1 then v100$1 else $$20$15bv32$1);
    $$20$15bv32$2 := (if p0$2 then v100$2 else $$20$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v101$1 := (if p0$1 then _HAVOC_bv8$1 else v101$1);
    v101$2 := (if p0$2 then _HAVOC_bv8$2 else v101$2);
    $$20$16bv32$1 := (if p0$1 then v101$1 else $$20$16bv32$1);
    $$20$16bv32$2 := (if p0$2 then v101$2 else $$20$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v102$1 := (if p0$1 then _HAVOC_bv8$1 else v102$1);
    v102$2 := (if p0$2 then _HAVOC_bv8$2 else v102$2);
    $$20$17bv32$1 := (if p0$1 then v102$1 else $$20$17bv32$1);
    $$20$17bv32$2 := (if p0$2 then v102$2 else $$20$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v103$1 := (if p0$1 then _HAVOC_bv8$1 else v103$1);
    v103$2 := (if p0$2 then _HAVOC_bv8$2 else v103$2);
    $$20$18bv32$1 := (if p0$1 then v103$1 else $$20$18bv32$1);
    $$20$18bv32$2 := (if p0$2 then v103$2 else $$20$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v104$1 := (if p0$1 then _HAVOC_bv8$1 else v104$1);
    v104$2 := (if p0$2 then _HAVOC_bv8$2 else v104$2);
    $$20$19bv32$1 := (if p0$1 then v104$1 else $$20$19bv32$1);
    $$20$19bv32$2 := (if p0$2 then v104$2 else $$20$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v105$1 := (if p0$1 then _HAVOC_bv8$1 else v105$1);
    v105$2 := (if p0$2 then _HAVOC_bv8$2 else v105$2);
    $$20$20bv32$1 := (if p0$1 then v105$1 else $$20$20bv32$1);
    $$20$20bv32$2 := (if p0$2 then v105$2 else $$20$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v106$1 := (if p0$1 then _HAVOC_bv8$1 else v106$1);
    v106$2 := (if p0$2 then _HAVOC_bv8$2 else v106$2);
    $$20$21bv32$1 := (if p0$1 then v106$1 else $$20$21bv32$1);
    $$20$21bv32$2 := (if p0$2 then v106$2 else $$20$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v107$1 := (if p0$1 then _HAVOC_bv8$1 else v107$1);
    v107$2 := (if p0$2 then _HAVOC_bv8$2 else v107$2);
    $$20$22bv32$1 := (if p0$1 then v107$1 else $$20$22bv32$1);
    $$20$22bv32$2 := (if p0$2 then v107$2 else $$20$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v108$1 := (if p0$1 then _HAVOC_bv8$1 else v108$1);
    v108$2 := (if p0$2 then _HAVOC_bv8$2 else v108$2);
    $$20$23bv32$1 := (if p0$1 then v108$1 else $$20$23bv32$1);
    $$20$23bv32$2 := (if p0$2 then v108$2 else $$20$23bv32$2);
    call {:sourceloc_num 223} v109$1, v109$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$20, 0bv32), p0$1, SI32_TO_FP32(BV32_ADD(v0$1, group_size_x)), SI32_TO_FP32(v1$1), p0$2, SI32_TO_FP32(BV32_ADD(v0$2, group_size_x)), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i3$0bv32$1 := (if p0$1 then v109$1[32:0] else $$res.i3$0bv32$1);
    $$res.i3$0bv32$2 := (if p0$2 then v109$2[32:0] else $$res.i3$0bv32$2);
    $$res.i3$1bv32$1 := (if p0$1 then v109$1[64:32] else $$res.i3$1bv32$1);
    $$res.i3$1bv32$2 := (if p0$2 then v109$2[64:32] else $$res.i3$1bv32$2);
    $$res.i3$2bv32$1 := (if p0$1 then v109$1[96:64] else $$res.i3$2bv32$1);
    $$res.i3$2bv32$2 := (if p0$2 then v109$2[96:64] else $$res.i3$2bv32$2);
    $$res.i3$3bv32$1 := (if p0$1 then v109$1[128:96] else $$res.i3$3bv32$1);
    $$res.i3$3bv32$2 := (if p0$2 then v109$2[128:96] else $$res.i3$3bv32$2);
    v110$1 := (if p0$1 then $$res.i3$0bv32$1 else v110$1);
    v110$2 := (if p0$2 then $$res.i3$0bv32$2 else v110$2);
    v111$1 := (if p0$1 then $$res.i3$1bv32$1 else v111$1);
    v111$2 := (if p0$2 then $$res.i3$1bv32$2 else v111$2);
    v112$1 := (if p0$1 then $$res.i3$2bv32$1 else v112$1);
    v112$2 := (if p0$2 then $$res.i3$2bv32$2 else v112$2);
    v113$1 := (if p0$1 then $$res.i3$3bv32$1 else v113$1);
    v113$2 := (if p0$2 then $$res.i3$3bv32$2 else v113$2);
    $$18$0bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v110$1, 1132396544bv32)) else $$18$0bv32$1);
    $$18$0bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v110$2, 1132396544bv32)) else $$18$0bv32$2);
    $$18$1bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v111$1, 1132396544bv32)) else $$18$1bv32$1);
    $$18$1bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v111$2, 1132396544bv32)) else $$18$1bv32$2);
    $$18$2bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v112$1, 1132396544bv32)) else $$18$2bv32$1);
    $$18$2bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v112$2, 1132396544bv32)) else $$18$2bv32$2);
    $$18$3bv32$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v113$1, 1132396544bv32)) else $$18$3bv32$1);
    $$18$3bv32$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v113$2, 1132396544bv32)) else $$18$3bv32$2);
    v114$1 := (if p0$1 then $$18$0bv32$1 else v114$1);
    v114$2 := (if p0$2 then $$18$0bv32$2 else v114$2);
    v115$1 := (if p0$1 then $$18$1bv32$1 else v115$1);
    v115$2 := (if p0$2 then $$18$1bv32$2 else v115$2);
    v116$1 := (if p0$1 then $$18$2bv32$1 else v116$1);
    v116$2 := (if p0$2 then $$18$2bv32$2 else v116$2);
    v117$1 := (if p0$1 then $$18$3bv32$1 else v117$1);
    v117$2 := (if p0$2 then $$18$3bv32$2 else v117$2);
    $$19$0bv32$1 := (if p0$1 then v114$1 else $$19$0bv32$1);
    $$19$0bv32$2 := (if p0$2 then v114$2 else $$19$0bv32$2);
    $$19$1bv32$1 := (if p0$1 then v115$1 else $$19$1bv32$1);
    $$19$1bv32$2 := (if p0$2 then v115$2 else $$19$1bv32$2);
    $$19$2bv32$1 := (if p0$1 then v116$1 else $$19$2bv32$1);
    $$19$2bv32$2 := (if p0$2 then v116$2 else $$19$2bv32$2);
    $$19$3bv32$1 := (if p0$1 then v117$1 else $$19$3bv32$1);
    $$19$3bv32$2 := (if p0$2 then v117$2 else $$19$3bv32$2);
    v118$1 := (if p0$1 then $$19$0bv32$1 else v118$1);
    v118$2 := (if p0$2 then $$19$0bv32$2 else v118$2);
    v119$1 := (if p0$1 then $$19$1bv32$1 else v119$1);
    v119$2 := (if p0$2 then $$19$1bv32$2 else v119$2);
    v120$1 := (if p0$1 then $$19$2bv32$1 else v120$1);
    v120$2 := (if p0$2 then $$19$2bv32$2 else v120$2);
    v121$1 := (if p0$1 then $$19$3bv32$1 else v121$1);
    v121$2 := (if p0$2 then $$19$3bv32$2 else v121$2);
    $$29$0bv32$1 := (if p0$1 then v118$1 else $$29$0bv32$1);
    $$29$0bv32$2 := (if p0$2 then v118$2 else $$29$0bv32$2);
    $$29$1bv32$1 := (if p0$1 then v119$1 else $$29$1bv32$1);
    $$29$1bv32$2 := (if p0$2 then v119$2 else $$29$1bv32$2);
    $$29$2bv32$1 := (if p0$1 then v120$1 else $$29$2bv32$1);
    $$29$2bv32$2 := (if p0$2 then v120$2 else $$29$2bv32$2);
    $$29$3bv32$1 := (if p0$1 then v121$1 else $$29$3bv32$1);
    $$29$3bv32$2 := (if p0$2 then v121$2 else $$29$3bv32$2);
    v122$1 := (if p0$1 then $$29$0bv32$1 else v122$1);
    v122$2 := (if p0$2 then $$29$0bv32$2 else v122$2);
    call {:sourceloc} {:sourceloc_num 253} _LOG_WRITE_$$sdata(p0$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), v122$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 253} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 253} _CHECK_WRITE_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), v122$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)] := (if p0$1 then v122$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)] := (if p0$2 then v122$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)]);
    v123$1 := (if p0$1 then $$29$1bv32$1 else v123$1);
    v123$2 := (if p0$2 then $$29$1bv32$2 else v123$2);
    call {:sourceloc} {:sourceloc_num 255} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32), v123$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 255} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 255} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32), v123$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)] := (if p0$1 then v123$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)] := (if p0$2 then v123$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)]);
    v124$1 := (if p0$1 then $$29$2bv32$1 else v124$1);
    v124$2 := (if p0$2 then $$29$2bv32$2 else v124$2);
    call {:sourceloc} {:sourceloc_num 257} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32), v124$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 257} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 257} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32), v124$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)] := (if p0$1 then v124$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)] := (if p0$2 then v124$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)]);
    v125$1 := (if p0$1 then $$29$3bv32$1 else v125$1);
    v125$2 := (if p0$2 then $$29$3bv32$2 else v125$2);
    call {:sourceloc} {:sourceloc_num 259} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32), v125$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 259} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 259} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32), v125$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)] := (if p0$1 then v125$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)] := (if p0$2 then v125$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)]);
    v126$1 := BV32_ULT(local_id_y$1, $r);
    v126$2 := BV32_ULT(local_id_y$2, $r);
    p2$1 := (if v126$1 then v126$1 else p2$1);
    p2$2 := (if v126$2 then v126$2 else p2$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v127$1 := (if p2$1 then _HAVOC_bv8$1 else v127$1);
    v127$2 := (if p2$2 then _HAVOC_bv8$2 else v127$2);
    $$17$0bv32$1 := (if p2$1 then v127$1 else $$17$0bv32$1);
    $$17$0bv32$2 := (if p2$2 then v127$2 else $$17$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v128$1 := (if p2$1 then _HAVOC_bv8$1 else v128$1);
    v128$2 := (if p2$2 then _HAVOC_bv8$2 else v128$2);
    $$17$1bv32$1 := (if p2$1 then v128$1 else $$17$1bv32$1);
    $$17$1bv32$2 := (if p2$2 then v128$2 else $$17$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v129$1 := (if p2$1 then _HAVOC_bv8$1 else v129$1);
    v129$2 := (if p2$2 then _HAVOC_bv8$2 else v129$2);
    $$17$2bv32$1 := (if p2$1 then v129$1 else $$17$2bv32$1);
    $$17$2bv32$2 := (if p2$2 then v129$2 else $$17$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v130$1 := (if p2$1 then _HAVOC_bv8$1 else v130$1);
    v130$2 := (if p2$2 then _HAVOC_bv8$2 else v130$2);
    $$17$3bv32$1 := (if p2$1 then v130$1 else $$17$3bv32$1);
    $$17$3bv32$2 := (if p2$2 then v130$2 else $$17$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v131$1 := (if p2$1 then _HAVOC_bv8$1 else v131$1);
    v131$2 := (if p2$2 then _HAVOC_bv8$2 else v131$2);
    $$17$4bv32$1 := (if p2$1 then v131$1 else $$17$4bv32$1);
    $$17$4bv32$2 := (if p2$2 then v131$2 else $$17$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v132$1 := (if p2$1 then _HAVOC_bv8$1 else v132$1);
    v132$2 := (if p2$2 then _HAVOC_bv8$2 else v132$2);
    $$17$5bv32$1 := (if p2$1 then v132$1 else $$17$5bv32$1);
    $$17$5bv32$2 := (if p2$2 then v132$2 else $$17$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v133$1 := (if p2$1 then _HAVOC_bv8$1 else v133$1);
    v133$2 := (if p2$2 then _HAVOC_bv8$2 else v133$2);
    $$17$6bv32$1 := (if p2$1 then v133$1 else $$17$6bv32$1);
    $$17$6bv32$2 := (if p2$2 then v133$2 else $$17$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v134$1 := (if p2$1 then _HAVOC_bv8$1 else v134$1);
    v134$2 := (if p2$2 then _HAVOC_bv8$2 else v134$2);
    $$17$7bv32$1 := (if p2$1 then v134$1 else $$17$7bv32$1);
    $$17$7bv32$2 := (if p2$2 then v134$2 else $$17$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v135$1 := (if p2$1 then _HAVOC_bv8$1 else v135$1);
    v135$2 := (if p2$2 then _HAVOC_bv8$2 else v135$2);
    $$17$8bv32$1 := (if p2$1 then v135$1 else $$17$8bv32$1);
    $$17$8bv32$2 := (if p2$2 then v135$2 else $$17$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v136$1 := (if p2$1 then _HAVOC_bv8$1 else v136$1);
    v136$2 := (if p2$2 then _HAVOC_bv8$2 else v136$2);
    $$17$9bv32$1 := (if p2$1 then v136$1 else $$17$9bv32$1);
    $$17$9bv32$2 := (if p2$2 then v136$2 else $$17$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v137$1 := (if p2$1 then _HAVOC_bv8$1 else v137$1);
    v137$2 := (if p2$2 then _HAVOC_bv8$2 else v137$2);
    $$17$10bv32$1 := (if p2$1 then v137$1 else $$17$10bv32$1);
    $$17$10bv32$2 := (if p2$2 then v137$2 else $$17$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v138$1 := (if p2$1 then _HAVOC_bv8$1 else v138$1);
    v138$2 := (if p2$2 then _HAVOC_bv8$2 else v138$2);
    $$17$11bv32$1 := (if p2$1 then v138$1 else $$17$11bv32$1);
    $$17$11bv32$2 := (if p2$2 then v138$2 else $$17$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v139$1 := (if p2$1 then _HAVOC_bv8$1 else v139$1);
    v139$2 := (if p2$2 then _HAVOC_bv8$2 else v139$2);
    $$17$12bv32$1 := (if p2$1 then v139$1 else $$17$12bv32$1);
    $$17$12bv32$2 := (if p2$2 then v139$2 else $$17$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v140$1 := (if p2$1 then _HAVOC_bv8$1 else v140$1);
    v140$2 := (if p2$2 then _HAVOC_bv8$2 else v140$2);
    $$17$13bv32$1 := (if p2$1 then v140$1 else $$17$13bv32$1);
    $$17$13bv32$2 := (if p2$2 then v140$2 else $$17$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v141$1 := (if p2$1 then _HAVOC_bv8$1 else v141$1);
    v141$2 := (if p2$2 then _HAVOC_bv8$2 else v141$2);
    $$17$14bv32$1 := (if p2$1 then v141$1 else $$17$14bv32$1);
    $$17$14bv32$2 := (if p2$2 then v141$2 else $$17$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v142$1 := (if p2$1 then _HAVOC_bv8$1 else v142$1);
    v142$2 := (if p2$2 then _HAVOC_bv8$2 else v142$2);
    $$17$15bv32$1 := (if p2$1 then v142$1 else $$17$15bv32$1);
    $$17$15bv32$2 := (if p2$2 then v142$2 else $$17$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v143$1 := (if p2$1 then _HAVOC_bv8$1 else v143$1);
    v143$2 := (if p2$2 then _HAVOC_bv8$2 else v143$2);
    $$17$16bv32$1 := (if p2$1 then v143$1 else $$17$16bv32$1);
    $$17$16bv32$2 := (if p2$2 then v143$2 else $$17$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v144$1 := (if p2$1 then _HAVOC_bv8$1 else v144$1);
    v144$2 := (if p2$2 then _HAVOC_bv8$2 else v144$2);
    $$17$17bv32$1 := (if p2$1 then v144$1 else $$17$17bv32$1);
    $$17$17bv32$2 := (if p2$2 then v144$2 else $$17$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v145$1 := (if p2$1 then _HAVOC_bv8$1 else v145$1);
    v145$2 := (if p2$2 then _HAVOC_bv8$2 else v145$2);
    $$17$18bv32$1 := (if p2$1 then v145$1 else $$17$18bv32$1);
    $$17$18bv32$2 := (if p2$2 then v145$2 else $$17$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v146$1 := (if p2$1 then _HAVOC_bv8$1 else v146$1);
    v146$2 := (if p2$2 then _HAVOC_bv8$2 else v146$2);
    $$17$19bv32$1 := (if p2$1 then v146$1 else $$17$19bv32$1);
    $$17$19bv32$2 := (if p2$2 then v146$2 else $$17$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v147$1 := (if p2$1 then _HAVOC_bv8$1 else v147$1);
    v147$2 := (if p2$2 then _HAVOC_bv8$2 else v147$2);
    $$17$20bv32$1 := (if p2$1 then v147$1 else $$17$20bv32$1);
    $$17$20bv32$2 := (if p2$2 then v147$2 else $$17$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v148$1 := (if p2$1 then _HAVOC_bv8$1 else v148$1);
    v148$2 := (if p2$2 then _HAVOC_bv8$2 else v148$2);
    $$17$21bv32$1 := (if p2$1 then v148$1 else $$17$21bv32$1);
    $$17$21bv32$2 := (if p2$2 then v148$2 else $$17$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v149$1 := (if p2$1 then _HAVOC_bv8$1 else v149$1);
    v149$2 := (if p2$2 then _HAVOC_bv8$2 else v149$2);
    $$17$22bv32$1 := (if p2$1 then v149$1 else $$17$22bv32$1);
    $$17$22bv32$2 := (if p2$2 then v149$2 else $$17$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v150$1 := (if p2$1 then _HAVOC_bv8$1 else v150$1);
    v150$2 := (if p2$2 then _HAVOC_bv8$2 else v150$2);
    $$17$23bv32$1 := (if p2$1 then v150$1 else $$17$23bv32$1);
    $$17$23bv32$2 := (if p2$2 then v150$2 else $$17$23bv32$2);
    call {:sourceloc_num 310} v151$1, v151$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$17, 0bv32), p2$1, SI32_TO_FP32(v0$1), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p2$2, SI32_TO_FP32(v0$2), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i4$0bv32$1 := (if p2$1 then v151$1[32:0] else $$res.i4$0bv32$1);
    $$res.i4$0bv32$2 := (if p2$2 then v151$2[32:0] else $$res.i4$0bv32$2);
    $$res.i4$1bv32$1 := (if p2$1 then v151$1[64:32] else $$res.i4$1bv32$1);
    $$res.i4$1bv32$2 := (if p2$2 then v151$2[64:32] else $$res.i4$1bv32$2);
    $$res.i4$2bv32$1 := (if p2$1 then v151$1[96:64] else $$res.i4$2bv32$1);
    $$res.i4$2bv32$2 := (if p2$2 then v151$2[96:64] else $$res.i4$2bv32$2);
    $$res.i4$3bv32$1 := (if p2$1 then v151$1[128:96] else $$res.i4$3bv32$1);
    $$res.i4$3bv32$2 := (if p2$2 then v151$2[128:96] else $$res.i4$3bv32$2);
    v152$1 := (if p2$1 then $$res.i4$0bv32$1 else v152$1);
    v152$2 := (if p2$2 then $$res.i4$0bv32$2 else v152$2);
    v153$1 := (if p2$1 then $$res.i4$1bv32$1 else v153$1);
    v153$2 := (if p2$2 then $$res.i4$1bv32$2 else v153$2);
    v154$1 := (if p2$1 then $$res.i4$2bv32$1 else v154$1);
    v154$2 := (if p2$2 then $$res.i4$2bv32$2 else v154$2);
    v155$1 := (if p2$1 then $$res.i4$3bv32$1 else v155$1);
    v155$2 := (if p2$2 then $$res.i4$3bv32$2 else v155$2);
    $$15$0bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v152$1, 1132396544bv32)) else $$15$0bv32$1);
    $$15$0bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v152$2, 1132396544bv32)) else $$15$0bv32$2);
    $$15$1bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v153$1, 1132396544bv32)) else $$15$1bv32$1);
    $$15$1bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v153$2, 1132396544bv32)) else $$15$1bv32$2);
    $$15$2bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v154$1, 1132396544bv32)) else $$15$2bv32$1);
    $$15$2bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v154$2, 1132396544bv32)) else $$15$2bv32$2);
    $$15$3bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v155$1, 1132396544bv32)) else $$15$3bv32$1);
    $$15$3bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v155$2, 1132396544bv32)) else $$15$3bv32$2);
    v156$1 := (if p2$1 then $$15$0bv32$1 else v156$1);
    v156$2 := (if p2$2 then $$15$0bv32$2 else v156$2);
    v157$1 := (if p2$1 then $$15$1bv32$1 else v157$1);
    v157$2 := (if p2$2 then $$15$1bv32$2 else v157$2);
    v158$1 := (if p2$1 then $$15$2bv32$1 else v158$1);
    v158$2 := (if p2$2 then $$15$2bv32$2 else v158$2);
    v159$1 := (if p2$1 then $$15$3bv32$1 else v159$1);
    v159$2 := (if p2$2 then $$15$3bv32$2 else v159$2);
    $$16$0bv32$1 := (if p2$1 then v156$1 else $$16$0bv32$1);
    $$16$0bv32$2 := (if p2$2 then v156$2 else $$16$0bv32$2);
    $$16$1bv32$1 := (if p2$1 then v157$1 else $$16$1bv32$1);
    $$16$1bv32$2 := (if p2$2 then v157$2 else $$16$1bv32$2);
    $$16$2bv32$1 := (if p2$1 then v158$1 else $$16$2bv32$1);
    $$16$2bv32$2 := (if p2$2 then v158$2 else $$16$2bv32$2);
    $$16$3bv32$1 := (if p2$1 then v159$1 else $$16$3bv32$1);
    $$16$3bv32$2 := (if p2$2 then v159$2 else $$16$3bv32$2);
    v160$1 := (if p2$1 then $$16$0bv32$1 else v160$1);
    v160$2 := (if p2$2 then $$16$0bv32$2 else v160$2);
    v161$1 := (if p2$1 then $$16$1bv32$1 else v161$1);
    v161$2 := (if p2$2 then $$16$1bv32$2 else v161$2);
    v162$1 := (if p2$1 then $$16$2bv32$1 else v162$1);
    v162$2 := (if p2$2 then $$16$2bv32$2 else v162$2);
    v163$1 := (if p2$1 then $$16$3bv32$1 else v163$1);
    v163$2 := (if p2$2 then $$16$3bv32$2 else v163$2);
    $$30$0bv32$1 := (if p2$1 then v160$1 else $$30$0bv32$1);
    $$30$0bv32$2 := (if p2$2 then v160$2 else $$30$0bv32$2);
    $$30$1bv32$1 := (if p2$1 then v161$1 else $$30$1bv32$1);
    $$30$1bv32$2 := (if p2$2 then v161$2 else $$30$1bv32$2);
    $$30$2bv32$1 := (if p2$1 then v162$1 else $$30$2bv32$1);
    $$30$2bv32$2 := (if p2$2 then v162$2 else $$30$2bv32$2);
    $$30$3bv32$1 := (if p2$1 then v163$1 else $$30$3bv32$1);
    $$30$3bv32$2 := (if p2$2 then v163$2 else $$30$3bv32$2);
    v164$1 := (if p2$1 then $$30$0bv32$1 else v164$1);
    v164$2 := (if p2$2 then $$30$0bv32$2 else v164$2);
    call {:sourceloc} {:sourceloc_num 340} _LOG_WRITE_$$sdata(p2$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), v164$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 340} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 340} _CHECK_WRITE_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), v164$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)] := (if p2$1 then v164$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32)] := (if p2$2 then v164$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32)]);
    v165$1 := (if p2$1 then $$30$1bv32$1 else v165$1);
    v165$2 := (if p2$2 then $$30$1bv32$2 else v165$2);
    call {:sourceloc} {:sourceloc_num 342} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32), v165$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 342} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 342} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32), v165$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)] := (if p2$1 then v165$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32)] := (if p2$2 then v165$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32)]);
    v166$1 := (if p2$1 then $$30$2bv32$1 else v166$1);
    v166$2 := (if p2$2 then $$30$2bv32$2 else v166$2);
    call {:sourceloc} {:sourceloc_num 344} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32), v166$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 344} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 344} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32), v166$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)] := (if p2$1 then v166$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32)] := (if p2$2 then v166$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32)]);
    v167$1 := (if p2$1 then $$30$3bv32$1 else v167$1);
    v167$2 := (if p2$2 then $$30$3bv32$2 else v167$2);
    call {:sourceloc} {:sourceloc_num 346} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32), v167$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 346} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 346} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32), v167$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)] := (if p2$1 then v167$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32)] := (if p2$2 then v167$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32)]);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v168$1 := (if p2$1 then _HAVOC_bv8$1 else v168$1);
    v168$2 := (if p2$2 then _HAVOC_bv8$2 else v168$2);
    $$14$0bv32$1 := (if p2$1 then v168$1 else $$14$0bv32$1);
    $$14$0bv32$2 := (if p2$2 then v168$2 else $$14$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v169$1 := (if p2$1 then _HAVOC_bv8$1 else v169$1);
    v169$2 := (if p2$2 then _HAVOC_bv8$2 else v169$2);
    $$14$1bv32$1 := (if p2$1 then v169$1 else $$14$1bv32$1);
    $$14$1bv32$2 := (if p2$2 then v169$2 else $$14$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v170$1 := (if p2$1 then _HAVOC_bv8$1 else v170$1);
    v170$2 := (if p2$2 then _HAVOC_bv8$2 else v170$2);
    $$14$2bv32$1 := (if p2$1 then v170$1 else $$14$2bv32$1);
    $$14$2bv32$2 := (if p2$2 then v170$2 else $$14$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v171$1 := (if p2$1 then _HAVOC_bv8$1 else v171$1);
    v171$2 := (if p2$2 then _HAVOC_bv8$2 else v171$2);
    $$14$3bv32$1 := (if p2$1 then v171$1 else $$14$3bv32$1);
    $$14$3bv32$2 := (if p2$2 then v171$2 else $$14$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v172$1 := (if p2$1 then _HAVOC_bv8$1 else v172$1);
    v172$2 := (if p2$2 then _HAVOC_bv8$2 else v172$2);
    $$14$4bv32$1 := (if p2$1 then v172$1 else $$14$4bv32$1);
    $$14$4bv32$2 := (if p2$2 then v172$2 else $$14$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v173$1 := (if p2$1 then _HAVOC_bv8$1 else v173$1);
    v173$2 := (if p2$2 then _HAVOC_bv8$2 else v173$2);
    $$14$5bv32$1 := (if p2$1 then v173$1 else $$14$5bv32$1);
    $$14$5bv32$2 := (if p2$2 then v173$2 else $$14$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v174$1 := (if p2$1 then _HAVOC_bv8$1 else v174$1);
    v174$2 := (if p2$2 then _HAVOC_bv8$2 else v174$2);
    $$14$6bv32$1 := (if p2$1 then v174$1 else $$14$6bv32$1);
    $$14$6bv32$2 := (if p2$2 then v174$2 else $$14$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v175$1 := (if p2$1 then _HAVOC_bv8$1 else v175$1);
    v175$2 := (if p2$2 then _HAVOC_bv8$2 else v175$2);
    $$14$7bv32$1 := (if p2$1 then v175$1 else $$14$7bv32$1);
    $$14$7bv32$2 := (if p2$2 then v175$2 else $$14$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v176$1 := (if p2$1 then _HAVOC_bv8$1 else v176$1);
    v176$2 := (if p2$2 then _HAVOC_bv8$2 else v176$2);
    $$14$8bv32$1 := (if p2$1 then v176$1 else $$14$8bv32$1);
    $$14$8bv32$2 := (if p2$2 then v176$2 else $$14$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v177$1 := (if p2$1 then _HAVOC_bv8$1 else v177$1);
    v177$2 := (if p2$2 then _HAVOC_bv8$2 else v177$2);
    $$14$9bv32$1 := (if p2$1 then v177$1 else $$14$9bv32$1);
    $$14$9bv32$2 := (if p2$2 then v177$2 else $$14$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v178$1 := (if p2$1 then _HAVOC_bv8$1 else v178$1);
    v178$2 := (if p2$2 then _HAVOC_bv8$2 else v178$2);
    $$14$10bv32$1 := (if p2$1 then v178$1 else $$14$10bv32$1);
    $$14$10bv32$2 := (if p2$2 then v178$2 else $$14$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v179$1 := (if p2$1 then _HAVOC_bv8$1 else v179$1);
    v179$2 := (if p2$2 then _HAVOC_bv8$2 else v179$2);
    $$14$11bv32$1 := (if p2$1 then v179$1 else $$14$11bv32$1);
    $$14$11bv32$2 := (if p2$2 then v179$2 else $$14$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v180$1 := (if p2$1 then _HAVOC_bv8$1 else v180$1);
    v180$2 := (if p2$2 then _HAVOC_bv8$2 else v180$2);
    $$14$12bv32$1 := (if p2$1 then v180$1 else $$14$12bv32$1);
    $$14$12bv32$2 := (if p2$2 then v180$2 else $$14$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v181$1 := (if p2$1 then _HAVOC_bv8$1 else v181$1);
    v181$2 := (if p2$2 then _HAVOC_bv8$2 else v181$2);
    $$14$13bv32$1 := (if p2$1 then v181$1 else $$14$13bv32$1);
    $$14$13bv32$2 := (if p2$2 then v181$2 else $$14$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v182$1 := (if p2$1 then _HAVOC_bv8$1 else v182$1);
    v182$2 := (if p2$2 then _HAVOC_bv8$2 else v182$2);
    $$14$14bv32$1 := (if p2$1 then v182$1 else $$14$14bv32$1);
    $$14$14bv32$2 := (if p2$2 then v182$2 else $$14$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v183$1 := (if p2$1 then _HAVOC_bv8$1 else v183$1);
    v183$2 := (if p2$2 then _HAVOC_bv8$2 else v183$2);
    $$14$15bv32$1 := (if p2$1 then v183$1 else $$14$15bv32$1);
    $$14$15bv32$2 := (if p2$2 then v183$2 else $$14$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v184$1 := (if p2$1 then _HAVOC_bv8$1 else v184$1);
    v184$2 := (if p2$2 then _HAVOC_bv8$2 else v184$2);
    $$14$16bv32$1 := (if p2$1 then v184$1 else $$14$16bv32$1);
    $$14$16bv32$2 := (if p2$2 then v184$2 else $$14$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v185$1 := (if p2$1 then _HAVOC_bv8$1 else v185$1);
    v185$2 := (if p2$2 then _HAVOC_bv8$2 else v185$2);
    $$14$17bv32$1 := (if p2$1 then v185$1 else $$14$17bv32$1);
    $$14$17bv32$2 := (if p2$2 then v185$2 else $$14$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v186$1 := (if p2$1 then _HAVOC_bv8$1 else v186$1);
    v186$2 := (if p2$2 then _HAVOC_bv8$2 else v186$2);
    $$14$18bv32$1 := (if p2$1 then v186$1 else $$14$18bv32$1);
    $$14$18bv32$2 := (if p2$2 then v186$2 else $$14$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v187$1 := (if p2$1 then _HAVOC_bv8$1 else v187$1);
    v187$2 := (if p2$2 then _HAVOC_bv8$2 else v187$2);
    $$14$19bv32$1 := (if p2$1 then v187$1 else $$14$19bv32$1);
    $$14$19bv32$2 := (if p2$2 then v187$2 else $$14$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v188$1 := (if p2$1 then _HAVOC_bv8$1 else v188$1);
    v188$2 := (if p2$2 then _HAVOC_bv8$2 else v188$2);
    $$14$20bv32$1 := (if p2$1 then v188$1 else $$14$20bv32$1);
    $$14$20bv32$2 := (if p2$2 then v188$2 else $$14$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v189$1 := (if p2$1 then _HAVOC_bv8$1 else v189$1);
    v189$2 := (if p2$2 then _HAVOC_bv8$2 else v189$2);
    $$14$21bv32$1 := (if p2$1 then v189$1 else $$14$21bv32$1);
    $$14$21bv32$2 := (if p2$2 then v189$2 else $$14$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v190$1 := (if p2$1 then _HAVOC_bv8$1 else v190$1);
    v190$2 := (if p2$2 then _HAVOC_bv8$2 else v190$2);
    $$14$22bv32$1 := (if p2$1 then v190$1 else $$14$22bv32$1);
    $$14$22bv32$2 := (if p2$2 then v190$2 else $$14$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v191$1 := (if p2$1 then _HAVOC_bv8$1 else v191$1);
    v191$2 := (if p2$2 then _HAVOC_bv8$2 else v191$2);
    $$14$23bv32$1 := (if p2$1 then v191$1 else $$14$23bv32$1);
    $$14$23bv32$2 := (if p2$2 then v191$2 else $$14$23bv32$2);
    call {:sourceloc_num 395} v192$1, v192$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$14, 0bv32), p2$1, SI32_TO_FP32(v0$1), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p2$2, SI32_TO_FP32(v0$2), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i5$0bv32$1 := (if p2$1 then v192$1[32:0] else $$res.i5$0bv32$1);
    $$res.i5$0bv32$2 := (if p2$2 then v192$2[32:0] else $$res.i5$0bv32$2);
    $$res.i5$1bv32$1 := (if p2$1 then v192$1[64:32] else $$res.i5$1bv32$1);
    $$res.i5$1bv32$2 := (if p2$2 then v192$2[64:32] else $$res.i5$1bv32$2);
    $$res.i5$2bv32$1 := (if p2$1 then v192$1[96:64] else $$res.i5$2bv32$1);
    $$res.i5$2bv32$2 := (if p2$2 then v192$2[96:64] else $$res.i5$2bv32$2);
    $$res.i5$3bv32$1 := (if p2$1 then v192$1[128:96] else $$res.i5$3bv32$1);
    $$res.i5$3bv32$2 := (if p2$2 then v192$2[128:96] else $$res.i5$3bv32$2);
    v193$1 := (if p2$1 then $$res.i5$0bv32$1 else v193$1);
    v193$2 := (if p2$2 then $$res.i5$0bv32$2 else v193$2);
    v194$1 := (if p2$1 then $$res.i5$1bv32$1 else v194$1);
    v194$2 := (if p2$2 then $$res.i5$1bv32$2 else v194$2);
    v195$1 := (if p2$1 then $$res.i5$2bv32$1 else v195$1);
    v195$2 := (if p2$2 then $$res.i5$2bv32$2 else v195$2);
    v196$1 := (if p2$1 then $$res.i5$3bv32$1 else v196$1);
    v196$2 := (if p2$2 then $$res.i5$3bv32$2 else v196$2);
    $$12$0bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v193$1, 1132396544bv32)) else $$12$0bv32$1);
    $$12$0bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v193$2, 1132396544bv32)) else $$12$0bv32$2);
    $$12$1bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v194$1, 1132396544bv32)) else $$12$1bv32$1);
    $$12$1bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v194$2, 1132396544bv32)) else $$12$1bv32$2);
    $$12$2bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v195$1, 1132396544bv32)) else $$12$2bv32$1);
    $$12$2bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v195$2, 1132396544bv32)) else $$12$2bv32$2);
    $$12$3bv32$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v196$1, 1132396544bv32)) else $$12$3bv32$1);
    $$12$3bv32$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v196$2, 1132396544bv32)) else $$12$3bv32$2);
    v197$1 := (if p2$1 then $$12$0bv32$1 else v197$1);
    v197$2 := (if p2$2 then $$12$0bv32$2 else v197$2);
    v198$1 := (if p2$1 then $$12$1bv32$1 else v198$1);
    v198$2 := (if p2$2 then $$12$1bv32$2 else v198$2);
    v199$1 := (if p2$1 then $$12$2bv32$1 else v199$1);
    v199$2 := (if p2$2 then $$12$2bv32$2 else v199$2);
    v200$1 := (if p2$1 then $$12$3bv32$1 else v200$1);
    v200$2 := (if p2$2 then $$12$3bv32$2 else v200$2);
    $$13$0bv32$1 := (if p2$1 then v197$1 else $$13$0bv32$1);
    $$13$0bv32$2 := (if p2$2 then v197$2 else $$13$0bv32$2);
    $$13$1bv32$1 := (if p2$1 then v198$1 else $$13$1bv32$1);
    $$13$1bv32$2 := (if p2$2 then v198$2 else $$13$1bv32$2);
    $$13$2bv32$1 := (if p2$1 then v199$1 else $$13$2bv32$1);
    $$13$2bv32$2 := (if p2$2 then v199$2 else $$13$2bv32$2);
    $$13$3bv32$1 := (if p2$1 then v200$1 else $$13$3bv32$1);
    $$13$3bv32$2 := (if p2$2 then v200$2 else $$13$3bv32$2);
    v201$1 := (if p2$1 then $$13$0bv32$1 else v201$1);
    v201$2 := (if p2$2 then $$13$0bv32$2 else v201$2);
    v202$1 := (if p2$1 then $$13$1bv32$1 else v202$1);
    v202$2 := (if p2$2 then $$13$1bv32$2 else v202$2);
    v203$1 := (if p2$1 then $$13$2bv32$1 else v203$1);
    v203$2 := (if p2$2 then $$13$2bv32$2 else v203$2);
    v204$1 := (if p2$1 then $$13$3bv32$1 else v204$1);
    v204$2 := (if p2$2 then $$13$3bv32$2 else v204$2);
    $$31$0bv32$1 := (if p2$1 then v201$1 else $$31$0bv32$1);
    $$31$0bv32$2 := (if p2$2 then v201$2 else $$31$0bv32$2);
    $$31$1bv32$1 := (if p2$1 then v202$1 else $$31$1bv32$1);
    $$31$1bv32$2 := (if p2$2 then v202$2 else $$31$1bv32$2);
    $$31$2bv32$1 := (if p2$1 then v203$1 else $$31$2bv32$1);
    $$31$2bv32$2 := (if p2$2 then v203$2 else $$31$2bv32$2);
    $$31$3bv32$1 := (if p2$1 then v204$1 else $$31$3bv32$1);
    $$31$3bv32$2 := (if p2$2 then v204$2 else $$31$3bv32$2);
    v205$1 := (if p2$1 then $$31$0bv32$1 else v205$1);
    v205$2 := (if p2$2 then $$31$0bv32$2 else v205$2);
    call {:sourceloc} {:sourceloc_num 425} _LOG_WRITE_$$sdata(p2$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), v205$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 425} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 425} _CHECK_WRITE_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), v205$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)] := (if p2$1 then v205$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32)] := (if p2$2 then v205$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32)]);
    v206$1 := (if p2$1 then $$31$1bv32$1 else v206$1);
    v206$2 := (if p2$2 then $$31$1bv32$2 else v206$2);
    call {:sourceloc} {:sourceloc_num 427} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32), v206$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 427} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 427} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32), v206$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)] := (if p2$1 then v206$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32)] := (if p2$2 then v206$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 1bv32)]);
    v207$1 := (if p2$1 then $$31$2bv32$1 else v207$1);
    v207$2 := (if p2$2 then $$31$2bv32$2 else v207$2);
    call {:sourceloc} {:sourceloc_num 429} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32), v207$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 429} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 429} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32), v207$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)] := (if p2$1 then v207$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32)] := (if p2$2 then v207$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 2bv32)]);
    v208$1 := (if p2$1 then $$31$3bv32$1 else v208$1);
    v208$2 := (if p2$2 then $$31$3bv32$2 else v208$2);
    call {:sourceloc} {:sourceloc_num 431} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32), v208$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 431} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 431} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32), v208$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)] := (if p2$1 then v208$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32)] := (if p2$2 then v208$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4bv32), 3bv32)]);
    v209$1 := BV32_ULT(local_id_x$1, $r);
    v209$2 := BV32_ULT(local_id_x$2, $r);
    p4$1 := (if v209$1 then v209$1 else p4$1);
    p4$2 := (if v209$2 then v209$2 else p4$2);
    v210$1 := (if p4$1 then BV32_ULT(local_id_y$1, $r) else v210$1);
    v210$2 := (if p4$2 then BV32_ULT(local_id_y$2, $r) else v210$2);
    p5$1 := (if p4$1 && v210$1 then v210$1 else p5$1);
    p5$2 := (if p4$2 && v210$2 then v210$2 else p5$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v211$1 := (if p5$1 then _HAVOC_bv8$1 else v211$1);
    v211$2 := (if p5$2 then _HAVOC_bv8$2 else v211$2);
    $$11$0bv32$1 := (if p5$1 then v211$1 else $$11$0bv32$1);
    $$11$0bv32$2 := (if p5$2 then v211$2 else $$11$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v212$1 := (if p5$1 then _HAVOC_bv8$1 else v212$1);
    v212$2 := (if p5$2 then _HAVOC_bv8$2 else v212$2);
    $$11$1bv32$1 := (if p5$1 then v212$1 else $$11$1bv32$1);
    $$11$1bv32$2 := (if p5$2 then v212$2 else $$11$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v213$1 := (if p5$1 then _HAVOC_bv8$1 else v213$1);
    v213$2 := (if p5$2 then _HAVOC_bv8$2 else v213$2);
    $$11$2bv32$1 := (if p5$1 then v213$1 else $$11$2bv32$1);
    $$11$2bv32$2 := (if p5$2 then v213$2 else $$11$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v214$1 := (if p5$1 then _HAVOC_bv8$1 else v214$1);
    v214$2 := (if p5$2 then _HAVOC_bv8$2 else v214$2);
    $$11$3bv32$1 := (if p5$1 then v214$1 else $$11$3bv32$1);
    $$11$3bv32$2 := (if p5$2 then v214$2 else $$11$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v215$1 := (if p5$1 then _HAVOC_bv8$1 else v215$1);
    v215$2 := (if p5$2 then _HAVOC_bv8$2 else v215$2);
    $$11$4bv32$1 := (if p5$1 then v215$1 else $$11$4bv32$1);
    $$11$4bv32$2 := (if p5$2 then v215$2 else $$11$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v216$1 := (if p5$1 then _HAVOC_bv8$1 else v216$1);
    v216$2 := (if p5$2 then _HAVOC_bv8$2 else v216$2);
    $$11$5bv32$1 := (if p5$1 then v216$1 else $$11$5bv32$1);
    $$11$5bv32$2 := (if p5$2 then v216$2 else $$11$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v217$1 := (if p5$1 then _HAVOC_bv8$1 else v217$1);
    v217$2 := (if p5$2 then _HAVOC_bv8$2 else v217$2);
    $$11$6bv32$1 := (if p5$1 then v217$1 else $$11$6bv32$1);
    $$11$6bv32$2 := (if p5$2 then v217$2 else $$11$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v218$1 := (if p5$1 then _HAVOC_bv8$1 else v218$1);
    v218$2 := (if p5$2 then _HAVOC_bv8$2 else v218$2);
    $$11$7bv32$1 := (if p5$1 then v218$1 else $$11$7bv32$1);
    $$11$7bv32$2 := (if p5$2 then v218$2 else $$11$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v219$1 := (if p5$1 then _HAVOC_bv8$1 else v219$1);
    v219$2 := (if p5$2 then _HAVOC_bv8$2 else v219$2);
    $$11$8bv32$1 := (if p5$1 then v219$1 else $$11$8bv32$1);
    $$11$8bv32$2 := (if p5$2 then v219$2 else $$11$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v220$1 := (if p5$1 then _HAVOC_bv8$1 else v220$1);
    v220$2 := (if p5$2 then _HAVOC_bv8$2 else v220$2);
    $$11$9bv32$1 := (if p5$1 then v220$1 else $$11$9bv32$1);
    $$11$9bv32$2 := (if p5$2 then v220$2 else $$11$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v221$1 := (if p5$1 then _HAVOC_bv8$1 else v221$1);
    v221$2 := (if p5$2 then _HAVOC_bv8$2 else v221$2);
    $$11$10bv32$1 := (if p5$1 then v221$1 else $$11$10bv32$1);
    $$11$10bv32$2 := (if p5$2 then v221$2 else $$11$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v222$1 := (if p5$1 then _HAVOC_bv8$1 else v222$1);
    v222$2 := (if p5$2 then _HAVOC_bv8$2 else v222$2);
    $$11$11bv32$1 := (if p5$1 then v222$1 else $$11$11bv32$1);
    $$11$11bv32$2 := (if p5$2 then v222$2 else $$11$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v223$1 := (if p5$1 then _HAVOC_bv8$1 else v223$1);
    v223$2 := (if p5$2 then _HAVOC_bv8$2 else v223$2);
    $$11$12bv32$1 := (if p5$1 then v223$1 else $$11$12bv32$1);
    $$11$12bv32$2 := (if p5$2 then v223$2 else $$11$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v224$1 := (if p5$1 then _HAVOC_bv8$1 else v224$1);
    v224$2 := (if p5$2 then _HAVOC_bv8$2 else v224$2);
    $$11$13bv32$1 := (if p5$1 then v224$1 else $$11$13bv32$1);
    $$11$13bv32$2 := (if p5$2 then v224$2 else $$11$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v225$1 := (if p5$1 then _HAVOC_bv8$1 else v225$1);
    v225$2 := (if p5$2 then _HAVOC_bv8$2 else v225$2);
    $$11$14bv32$1 := (if p5$1 then v225$1 else $$11$14bv32$1);
    $$11$14bv32$2 := (if p5$2 then v225$2 else $$11$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v226$1 := (if p5$1 then _HAVOC_bv8$1 else v226$1);
    v226$2 := (if p5$2 then _HAVOC_bv8$2 else v226$2);
    $$11$15bv32$1 := (if p5$1 then v226$1 else $$11$15bv32$1);
    $$11$15bv32$2 := (if p5$2 then v226$2 else $$11$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v227$1 := (if p5$1 then _HAVOC_bv8$1 else v227$1);
    v227$2 := (if p5$2 then _HAVOC_bv8$2 else v227$2);
    $$11$16bv32$1 := (if p5$1 then v227$1 else $$11$16bv32$1);
    $$11$16bv32$2 := (if p5$2 then v227$2 else $$11$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v228$1 := (if p5$1 then _HAVOC_bv8$1 else v228$1);
    v228$2 := (if p5$2 then _HAVOC_bv8$2 else v228$2);
    $$11$17bv32$1 := (if p5$1 then v228$1 else $$11$17bv32$1);
    $$11$17bv32$2 := (if p5$2 then v228$2 else $$11$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v229$1 := (if p5$1 then _HAVOC_bv8$1 else v229$1);
    v229$2 := (if p5$2 then _HAVOC_bv8$2 else v229$2);
    $$11$18bv32$1 := (if p5$1 then v229$1 else $$11$18bv32$1);
    $$11$18bv32$2 := (if p5$2 then v229$2 else $$11$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v230$1 := (if p5$1 then _HAVOC_bv8$1 else v230$1);
    v230$2 := (if p5$2 then _HAVOC_bv8$2 else v230$2);
    $$11$19bv32$1 := (if p5$1 then v230$1 else $$11$19bv32$1);
    $$11$19bv32$2 := (if p5$2 then v230$2 else $$11$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v231$1 := (if p5$1 then _HAVOC_bv8$1 else v231$1);
    v231$2 := (if p5$2 then _HAVOC_bv8$2 else v231$2);
    $$11$20bv32$1 := (if p5$1 then v231$1 else $$11$20bv32$1);
    $$11$20bv32$2 := (if p5$2 then v231$2 else $$11$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v232$1 := (if p5$1 then _HAVOC_bv8$1 else v232$1);
    v232$2 := (if p5$2 then _HAVOC_bv8$2 else v232$2);
    $$11$21bv32$1 := (if p5$1 then v232$1 else $$11$21bv32$1);
    $$11$21bv32$2 := (if p5$2 then v232$2 else $$11$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v233$1 := (if p5$1 then _HAVOC_bv8$1 else v233$1);
    v233$2 := (if p5$2 then _HAVOC_bv8$2 else v233$2);
    $$11$22bv32$1 := (if p5$1 then v233$1 else $$11$22bv32$1);
    $$11$22bv32$2 := (if p5$2 then v233$2 else $$11$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v234$1 := (if p5$1 then _HAVOC_bv8$1 else v234$1);
    v234$2 := (if p5$2 then _HAVOC_bv8$2 else v234$2);
    $$11$23bv32$1 := (if p5$1 then v234$1 else $$11$23bv32$1);
    $$11$23bv32$2 := (if p5$2 then v234$2 else $$11$23bv32$2);
    call {:sourceloc_num 483} v235$1, v235$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$11, 0bv32), p5$1, SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p5$2, SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i6$0bv32$1 := (if p5$1 then v235$1[32:0] else $$res.i6$0bv32$1);
    $$res.i6$0bv32$2 := (if p5$2 then v235$2[32:0] else $$res.i6$0bv32$2);
    $$res.i6$1bv32$1 := (if p5$1 then v235$1[64:32] else $$res.i6$1bv32$1);
    $$res.i6$1bv32$2 := (if p5$2 then v235$2[64:32] else $$res.i6$1bv32$2);
    $$res.i6$2bv32$1 := (if p5$1 then v235$1[96:64] else $$res.i6$2bv32$1);
    $$res.i6$2bv32$2 := (if p5$2 then v235$2[96:64] else $$res.i6$2bv32$2);
    $$res.i6$3bv32$1 := (if p5$1 then v235$1[128:96] else $$res.i6$3bv32$1);
    $$res.i6$3bv32$2 := (if p5$2 then v235$2[128:96] else $$res.i6$3bv32$2);
    v236$1 := (if p5$1 then $$res.i6$0bv32$1 else v236$1);
    v236$2 := (if p5$2 then $$res.i6$0bv32$2 else v236$2);
    v237$1 := (if p5$1 then $$res.i6$1bv32$1 else v237$1);
    v237$2 := (if p5$2 then $$res.i6$1bv32$2 else v237$2);
    v238$1 := (if p5$1 then $$res.i6$2bv32$1 else v238$1);
    v238$2 := (if p5$2 then $$res.i6$2bv32$2 else v238$2);
    v239$1 := (if p5$1 then $$res.i6$3bv32$1 else v239$1);
    v239$2 := (if p5$2 then $$res.i6$3bv32$2 else v239$2);
    $$9$0bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v236$1, 1132396544bv32)) else $$9$0bv32$1);
    $$9$0bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v236$2, 1132396544bv32)) else $$9$0bv32$2);
    $$9$1bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v237$1, 1132396544bv32)) else $$9$1bv32$1);
    $$9$1bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v237$2, 1132396544bv32)) else $$9$1bv32$2);
    $$9$2bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v238$1, 1132396544bv32)) else $$9$2bv32$1);
    $$9$2bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v238$2, 1132396544bv32)) else $$9$2bv32$2);
    $$9$3bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v239$1, 1132396544bv32)) else $$9$3bv32$1);
    $$9$3bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v239$2, 1132396544bv32)) else $$9$3bv32$2);
    v240$1 := (if p5$1 then $$9$0bv32$1 else v240$1);
    v240$2 := (if p5$2 then $$9$0bv32$2 else v240$2);
    v241$1 := (if p5$1 then $$9$1bv32$1 else v241$1);
    v241$2 := (if p5$2 then $$9$1bv32$2 else v241$2);
    v242$1 := (if p5$1 then $$9$2bv32$1 else v242$1);
    v242$2 := (if p5$2 then $$9$2bv32$2 else v242$2);
    v243$1 := (if p5$1 then $$9$3bv32$1 else v243$1);
    v243$2 := (if p5$2 then $$9$3bv32$2 else v243$2);
    $$10$0bv32$1 := (if p5$1 then v240$1 else $$10$0bv32$1);
    $$10$0bv32$2 := (if p5$2 then v240$2 else $$10$0bv32$2);
    $$10$1bv32$1 := (if p5$1 then v241$1 else $$10$1bv32$1);
    $$10$1bv32$2 := (if p5$2 then v241$2 else $$10$1bv32$2);
    $$10$2bv32$1 := (if p5$1 then v242$1 else $$10$2bv32$1);
    $$10$2bv32$2 := (if p5$2 then v242$2 else $$10$2bv32$2);
    $$10$3bv32$1 := (if p5$1 then v243$1 else $$10$3bv32$1);
    $$10$3bv32$2 := (if p5$2 then v243$2 else $$10$3bv32$2);
    v244$1 := (if p5$1 then $$10$0bv32$1 else v244$1);
    v244$2 := (if p5$2 then $$10$0bv32$2 else v244$2);
    v245$1 := (if p5$1 then $$10$1bv32$1 else v245$1);
    v245$2 := (if p5$2 then $$10$1bv32$2 else v245$2);
    v246$1 := (if p5$1 then $$10$2bv32$1 else v246$1);
    v246$2 := (if p5$2 then $$10$2bv32$2 else v246$2);
    v247$1 := (if p5$1 then $$10$3bv32$1 else v247$1);
    v247$2 := (if p5$2 then $$10$3bv32$2 else v247$2);
    $$32$0bv32$1 := (if p5$1 then v244$1 else $$32$0bv32$1);
    $$32$0bv32$2 := (if p5$2 then v244$2 else $$32$0bv32$2);
    $$32$1bv32$1 := (if p5$1 then v245$1 else $$32$1bv32$1);
    $$32$1bv32$2 := (if p5$2 then v245$2 else $$32$1bv32$2);
    $$32$2bv32$1 := (if p5$1 then v246$1 else $$32$2bv32$1);
    $$32$2bv32$2 := (if p5$2 then v246$2 else $$32$2bv32$2);
    $$32$3bv32$1 := (if p5$1 then v247$1 else $$32$3bv32$1);
    $$32$3bv32$2 := (if p5$2 then v247$2 else $$32$3bv32$2);
    v248$1 := (if p5$1 then $$32$0bv32$1 else v248$1);
    v248$2 := (if p5$2 then $$32$0bv32$2 else v248$2);
    call {:sourceloc} {:sourceloc_num 513} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), v248$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 513} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 513} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), v248$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32)] := (if p5$1 then v248$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32)] := (if p5$2 then v248$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32)]);
    v249$1 := (if p5$1 then $$32$1bv32$1 else v249$1);
    v249$2 := (if p5$2 then $$32$1bv32$2 else v249$2);
    call {:sourceloc} {:sourceloc_num 515} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 1bv32), v249$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 515} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 515} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 1bv32), v249$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 1bv32)] := (if p5$1 then v249$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 1bv32)] := (if p5$2 then v249$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 1bv32)]);
    v250$1 := (if p5$1 then $$32$2bv32$1 else v250$1);
    v250$2 := (if p5$2 then $$32$2bv32$2 else v250$2);
    call {:sourceloc} {:sourceloc_num 517} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 2bv32), v250$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 517} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 517} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 2bv32), v250$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 2bv32)] := (if p5$1 then v250$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 2bv32)] := (if p5$2 then v250$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 2bv32)]);
    v251$1 := (if p5$1 then $$32$3bv32$1 else v251$1);
    v251$2 := (if p5$2 then $$32$3bv32$2 else v251$2);
    call {:sourceloc} {:sourceloc_num 519} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 3bv32), v251$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 519} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 519} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 3bv32), v251$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 3bv32)] := (if p5$1 then v251$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 3bv32)] := (if p5$2 then v251$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4bv32), 3bv32)]);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v252$1 := (if p5$1 then _HAVOC_bv8$1 else v252$1);
    v252$2 := (if p5$2 then _HAVOC_bv8$2 else v252$2);
    $$8$0bv32$1 := (if p5$1 then v252$1 else $$8$0bv32$1);
    $$8$0bv32$2 := (if p5$2 then v252$2 else $$8$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v253$1 := (if p5$1 then _HAVOC_bv8$1 else v253$1);
    v253$2 := (if p5$2 then _HAVOC_bv8$2 else v253$2);
    $$8$1bv32$1 := (if p5$1 then v253$1 else $$8$1bv32$1);
    $$8$1bv32$2 := (if p5$2 then v253$2 else $$8$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v254$1 := (if p5$1 then _HAVOC_bv8$1 else v254$1);
    v254$2 := (if p5$2 then _HAVOC_bv8$2 else v254$2);
    $$8$2bv32$1 := (if p5$1 then v254$1 else $$8$2bv32$1);
    $$8$2bv32$2 := (if p5$2 then v254$2 else $$8$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v255$1 := (if p5$1 then _HAVOC_bv8$1 else v255$1);
    v255$2 := (if p5$2 then _HAVOC_bv8$2 else v255$2);
    $$8$3bv32$1 := (if p5$1 then v255$1 else $$8$3bv32$1);
    $$8$3bv32$2 := (if p5$2 then v255$2 else $$8$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v256$1 := (if p5$1 then _HAVOC_bv8$1 else v256$1);
    v256$2 := (if p5$2 then _HAVOC_bv8$2 else v256$2);
    $$8$4bv32$1 := (if p5$1 then v256$1 else $$8$4bv32$1);
    $$8$4bv32$2 := (if p5$2 then v256$2 else $$8$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v257$1 := (if p5$1 then _HAVOC_bv8$1 else v257$1);
    v257$2 := (if p5$2 then _HAVOC_bv8$2 else v257$2);
    $$8$5bv32$1 := (if p5$1 then v257$1 else $$8$5bv32$1);
    $$8$5bv32$2 := (if p5$2 then v257$2 else $$8$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v258$1 := (if p5$1 then _HAVOC_bv8$1 else v258$1);
    v258$2 := (if p5$2 then _HAVOC_bv8$2 else v258$2);
    $$8$6bv32$1 := (if p5$1 then v258$1 else $$8$6bv32$1);
    $$8$6bv32$2 := (if p5$2 then v258$2 else $$8$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v259$1 := (if p5$1 then _HAVOC_bv8$1 else v259$1);
    v259$2 := (if p5$2 then _HAVOC_bv8$2 else v259$2);
    $$8$7bv32$1 := (if p5$1 then v259$1 else $$8$7bv32$1);
    $$8$7bv32$2 := (if p5$2 then v259$2 else $$8$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v260$1 := (if p5$1 then _HAVOC_bv8$1 else v260$1);
    v260$2 := (if p5$2 then _HAVOC_bv8$2 else v260$2);
    $$8$8bv32$1 := (if p5$1 then v260$1 else $$8$8bv32$1);
    $$8$8bv32$2 := (if p5$2 then v260$2 else $$8$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v261$1 := (if p5$1 then _HAVOC_bv8$1 else v261$1);
    v261$2 := (if p5$2 then _HAVOC_bv8$2 else v261$2);
    $$8$9bv32$1 := (if p5$1 then v261$1 else $$8$9bv32$1);
    $$8$9bv32$2 := (if p5$2 then v261$2 else $$8$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v262$1 := (if p5$1 then _HAVOC_bv8$1 else v262$1);
    v262$2 := (if p5$2 then _HAVOC_bv8$2 else v262$2);
    $$8$10bv32$1 := (if p5$1 then v262$1 else $$8$10bv32$1);
    $$8$10bv32$2 := (if p5$2 then v262$2 else $$8$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v263$1 := (if p5$1 then _HAVOC_bv8$1 else v263$1);
    v263$2 := (if p5$2 then _HAVOC_bv8$2 else v263$2);
    $$8$11bv32$1 := (if p5$1 then v263$1 else $$8$11bv32$1);
    $$8$11bv32$2 := (if p5$2 then v263$2 else $$8$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v264$1 := (if p5$1 then _HAVOC_bv8$1 else v264$1);
    v264$2 := (if p5$2 then _HAVOC_bv8$2 else v264$2);
    $$8$12bv32$1 := (if p5$1 then v264$1 else $$8$12bv32$1);
    $$8$12bv32$2 := (if p5$2 then v264$2 else $$8$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v265$1 := (if p5$1 then _HAVOC_bv8$1 else v265$1);
    v265$2 := (if p5$2 then _HAVOC_bv8$2 else v265$2);
    $$8$13bv32$1 := (if p5$1 then v265$1 else $$8$13bv32$1);
    $$8$13bv32$2 := (if p5$2 then v265$2 else $$8$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v266$1 := (if p5$1 then _HAVOC_bv8$1 else v266$1);
    v266$2 := (if p5$2 then _HAVOC_bv8$2 else v266$2);
    $$8$14bv32$1 := (if p5$1 then v266$1 else $$8$14bv32$1);
    $$8$14bv32$2 := (if p5$2 then v266$2 else $$8$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v267$1 := (if p5$1 then _HAVOC_bv8$1 else v267$1);
    v267$2 := (if p5$2 then _HAVOC_bv8$2 else v267$2);
    $$8$15bv32$1 := (if p5$1 then v267$1 else $$8$15bv32$1);
    $$8$15bv32$2 := (if p5$2 then v267$2 else $$8$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v268$1 := (if p5$1 then _HAVOC_bv8$1 else v268$1);
    v268$2 := (if p5$2 then _HAVOC_bv8$2 else v268$2);
    $$8$16bv32$1 := (if p5$1 then v268$1 else $$8$16bv32$1);
    $$8$16bv32$2 := (if p5$2 then v268$2 else $$8$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v269$1 := (if p5$1 then _HAVOC_bv8$1 else v269$1);
    v269$2 := (if p5$2 then _HAVOC_bv8$2 else v269$2);
    $$8$17bv32$1 := (if p5$1 then v269$1 else $$8$17bv32$1);
    $$8$17bv32$2 := (if p5$2 then v269$2 else $$8$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v270$1 := (if p5$1 then _HAVOC_bv8$1 else v270$1);
    v270$2 := (if p5$2 then _HAVOC_bv8$2 else v270$2);
    $$8$18bv32$1 := (if p5$1 then v270$1 else $$8$18bv32$1);
    $$8$18bv32$2 := (if p5$2 then v270$2 else $$8$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v271$1 := (if p5$1 then _HAVOC_bv8$1 else v271$1);
    v271$2 := (if p5$2 then _HAVOC_bv8$2 else v271$2);
    $$8$19bv32$1 := (if p5$1 then v271$1 else $$8$19bv32$1);
    $$8$19bv32$2 := (if p5$2 then v271$2 else $$8$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v272$1 := (if p5$1 then _HAVOC_bv8$1 else v272$1);
    v272$2 := (if p5$2 then _HAVOC_bv8$2 else v272$2);
    $$8$20bv32$1 := (if p5$1 then v272$1 else $$8$20bv32$1);
    $$8$20bv32$2 := (if p5$2 then v272$2 else $$8$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v273$1 := (if p5$1 then _HAVOC_bv8$1 else v273$1);
    v273$2 := (if p5$2 then _HAVOC_bv8$2 else v273$2);
    $$8$21bv32$1 := (if p5$1 then v273$1 else $$8$21bv32$1);
    $$8$21bv32$2 := (if p5$2 then v273$2 else $$8$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v274$1 := (if p5$1 then _HAVOC_bv8$1 else v274$1);
    v274$2 := (if p5$2 then _HAVOC_bv8$2 else v274$2);
    $$8$22bv32$1 := (if p5$1 then v274$1 else $$8$22bv32$1);
    $$8$22bv32$2 := (if p5$2 then v274$2 else $$8$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v275$1 := (if p5$1 then _HAVOC_bv8$1 else v275$1);
    v275$2 := (if p5$2 then _HAVOC_bv8$2 else v275$2);
    $$8$23bv32$1 := (if p5$1 then v275$1 else $$8$23bv32$1);
    $$8$23bv32$2 := (if p5$2 then v275$2 else $$8$23bv32$2);
    call {:sourceloc_num 568} v276$1, v276$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$8, 0bv32), p5$1, SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p5$2, SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i7$0bv32$1 := (if p5$1 then v276$1[32:0] else $$res.i7$0bv32$1);
    $$res.i7$0bv32$2 := (if p5$2 then v276$2[32:0] else $$res.i7$0bv32$2);
    $$res.i7$1bv32$1 := (if p5$1 then v276$1[64:32] else $$res.i7$1bv32$1);
    $$res.i7$1bv32$2 := (if p5$2 then v276$2[64:32] else $$res.i7$1bv32$2);
    $$res.i7$2bv32$1 := (if p5$1 then v276$1[96:64] else $$res.i7$2bv32$1);
    $$res.i7$2bv32$2 := (if p5$2 then v276$2[96:64] else $$res.i7$2bv32$2);
    $$res.i7$3bv32$1 := (if p5$1 then v276$1[128:96] else $$res.i7$3bv32$1);
    $$res.i7$3bv32$2 := (if p5$2 then v276$2[128:96] else $$res.i7$3bv32$2);
    v277$1 := (if p5$1 then $$res.i7$0bv32$1 else v277$1);
    v277$2 := (if p5$2 then $$res.i7$0bv32$2 else v277$2);
    v278$1 := (if p5$1 then $$res.i7$1bv32$1 else v278$1);
    v278$2 := (if p5$2 then $$res.i7$1bv32$2 else v278$2);
    v279$1 := (if p5$1 then $$res.i7$2bv32$1 else v279$1);
    v279$2 := (if p5$2 then $$res.i7$2bv32$2 else v279$2);
    v280$1 := (if p5$1 then $$res.i7$3bv32$1 else v280$1);
    v280$2 := (if p5$2 then $$res.i7$3bv32$2 else v280$2);
    $$6$0bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v277$1, 1132396544bv32)) else $$6$0bv32$1);
    $$6$0bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v277$2, 1132396544bv32)) else $$6$0bv32$2);
    $$6$1bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v278$1, 1132396544bv32)) else $$6$1bv32$1);
    $$6$1bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v278$2, 1132396544bv32)) else $$6$1bv32$2);
    $$6$2bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v279$1, 1132396544bv32)) else $$6$2bv32$1);
    $$6$2bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v279$2, 1132396544bv32)) else $$6$2bv32$2);
    $$6$3bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v280$1, 1132396544bv32)) else $$6$3bv32$1);
    $$6$3bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v280$2, 1132396544bv32)) else $$6$3bv32$2);
    v281$1 := (if p5$1 then $$6$0bv32$1 else v281$1);
    v281$2 := (if p5$2 then $$6$0bv32$2 else v281$2);
    v282$1 := (if p5$1 then $$6$1bv32$1 else v282$1);
    v282$2 := (if p5$2 then $$6$1bv32$2 else v282$2);
    v283$1 := (if p5$1 then $$6$2bv32$1 else v283$1);
    v283$2 := (if p5$2 then $$6$2bv32$2 else v283$2);
    v284$1 := (if p5$1 then $$6$3bv32$1 else v284$1);
    v284$2 := (if p5$2 then $$6$3bv32$2 else v284$2);
    $$7$0bv32$1 := (if p5$1 then v281$1 else $$7$0bv32$1);
    $$7$0bv32$2 := (if p5$2 then v281$2 else $$7$0bv32$2);
    $$7$1bv32$1 := (if p5$1 then v282$1 else $$7$1bv32$1);
    $$7$1bv32$2 := (if p5$2 then v282$2 else $$7$1bv32$2);
    $$7$2bv32$1 := (if p5$1 then v283$1 else $$7$2bv32$1);
    $$7$2bv32$2 := (if p5$2 then v283$2 else $$7$2bv32$2);
    $$7$3bv32$1 := (if p5$1 then v284$1 else $$7$3bv32$1);
    $$7$3bv32$2 := (if p5$2 then v284$2 else $$7$3bv32$2);
    v285$1 := (if p5$1 then $$7$0bv32$1 else v285$1);
    v285$2 := (if p5$2 then $$7$0bv32$2 else v285$2);
    v286$1 := (if p5$1 then $$7$1bv32$1 else v286$1);
    v286$2 := (if p5$2 then $$7$1bv32$2 else v286$2);
    v287$1 := (if p5$1 then $$7$2bv32$1 else v287$1);
    v287$2 := (if p5$2 then $$7$2bv32$2 else v287$2);
    v288$1 := (if p5$1 then $$7$3bv32$1 else v288$1);
    v288$2 := (if p5$2 then $$7$3bv32$2 else v288$2);
    $$33$0bv32$1 := (if p5$1 then v285$1 else $$33$0bv32$1);
    $$33$0bv32$2 := (if p5$2 then v285$2 else $$33$0bv32$2);
    $$33$1bv32$1 := (if p5$1 then v286$1 else $$33$1bv32$1);
    $$33$1bv32$2 := (if p5$2 then v286$2 else $$33$1bv32$2);
    $$33$2bv32$1 := (if p5$1 then v287$1 else $$33$2bv32$1);
    $$33$2bv32$2 := (if p5$2 then v287$2 else $$33$2bv32$2);
    $$33$3bv32$1 := (if p5$1 then v288$1 else $$33$3bv32$1);
    $$33$3bv32$2 := (if p5$2 then v288$2 else $$33$3bv32$2);
    v289$1 := (if p5$1 then $$33$0bv32$1 else v289$1);
    v289$2 := (if p5$2 then $$33$0bv32$2 else v289$2);
    call {:sourceloc} {:sourceloc_num 598} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), v289$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 598} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 598} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), v289$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32)] := (if p5$1 then v289$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32)] := (if p5$2 then v289$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32)]);
    v290$1 := (if p5$1 then $$33$1bv32$1 else v290$1);
    v290$2 := (if p5$2 then $$33$1bv32$2 else v290$2);
    call {:sourceloc} {:sourceloc_num 600} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32), v290$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 600} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 600} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32), v290$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)] := (if p5$1 then v290$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32)] := (if p5$2 then v290$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 1bv32)]);
    v291$1 := (if p5$1 then $$33$2bv32$1 else v291$1);
    v291$2 := (if p5$2 then $$33$2bv32$2 else v291$2);
    call {:sourceloc} {:sourceloc_num 602} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32), v291$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 602} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 602} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32), v291$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)] := (if p5$1 then v291$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32)] := (if p5$2 then v291$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 2bv32)]);
    v292$1 := (if p5$1 then $$33$3bv32$1 else v292$1);
    v292$2 := (if p5$2 then $$33$3bv32$2 else v292$2);
    call {:sourceloc} {:sourceloc_num 604} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32), v292$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 604} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 604} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32), v292$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)] := (if p5$1 then v292$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32)] := (if p5$2 then v292$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4bv32), 3bv32)]);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v293$1 := (if p5$1 then _HAVOC_bv8$1 else v293$1);
    v293$2 := (if p5$2 then _HAVOC_bv8$2 else v293$2);
    $$5$0bv32$1 := (if p5$1 then v293$1 else $$5$0bv32$1);
    $$5$0bv32$2 := (if p5$2 then v293$2 else $$5$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v294$1 := (if p5$1 then _HAVOC_bv8$1 else v294$1);
    v294$2 := (if p5$2 then _HAVOC_bv8$2 else v294$2);
    $$5$1bv32$1 := (if p5$1 then v294$1 else $$5$1bv32$1);
    $$5$1bv32$2 := (if p5$2 then v294$2 else $$5$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v295$1 := (if p5$1 then _HAVOC_bv8$1 else v295$1);
    v295$2 := (if p5$2 then _HAVOC_bv8$2 else v295$2);
    $$5$2bv32$1 := (if p5$1 then v295$1 else $$5$2bv32$1);
    $$5$2bv32$2 := (if p5$2 then v295$2 else $$5$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v296$1 := (if p5$1 then _HAVOC_bv8$1 else v296$1);
    v296$2 := (if p5$2 then _HAVOC_bv8$2 else v296$2);
    $$5$3bv32$1 := (if p5$1 then v296$1 else $$5$3bv32$1);
    $$5$3bv32$2 := (if p5$2 then v296$2 else $$5$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v297$1 := (if p5$1 then _HAVOC_bv8$1 else v297$1);
    v297$2 := (if p5$2 then _HAVOC_bv8$2 else v297$2);
    $$5$4bv32$1 := (if p5$1 then v297$1 else $$5$4bv32$1);
    $$5$4bv32$2 := (if p5$2 then v297$2 else $$5$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v298$1 := (if p5$1 then _HAVOC_bv8$1 else v298$1);
    v298$2 := (if p5$2 then _HAVOC_bv8$2 else v298$2);
    $$5$5bv32$1 := (if p5$1 then v298$1 else $$5$5bv32$1);
    $$5$5bv32$2 := (if p5$2 then v298$2 else $$5$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v299$1 := (if p5$1 then _HAVOC_bv8$1 else v299$1);
    v299$2 := (if p5$2 then _HAVOC_bv8$2 else v299$2);
    $$5$6bv32$1 := (if p5$1 then v299$1 else $$5$6bv32$1);
    $$5$6bv32$2 := (if p5$2 then v299$2 else $$5$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v300$1 := (if p5$1 then _HAVOC_bv8$1 else v300$1);
    v300$2 := (if p5$2 then _HAVOC_bv8$2 else v300$2);
    $$5$7bv32$1 := (if p5$1 then v300$1 else $$5$7bv32$1);
    $$5$7bv32$2 := (if p5$2 then v300$2 else $$5$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v301$1 := (if p5$1 then _HAVOC_bv8$1 else v301$1);
    v301$2 := (if p5$2 then _HAVOC_bv8$2 else v301$2);
    $$5$8bv32$1 := (if p5$1 then v301$1 else $$5$8bv32$1);
    $$5$8bv32$2 := (if p5$2 then v301$2 else $$5$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v302$1 := (if p5$1 then _HAVOC_bv8$1 else v302$1);
    v302$2 := (if p5$2 then _HAVOC_bv8$2 else v302$2);
    $$5$9bv32$1 := (if p5$1 then v302$1 else $$5$9bv32$1);
    $$5$9bv32$2 := (if p5$2 then v302$2 else $$5$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v303$1 := (if p5$1 then _HAVOC_bv8$1 else v303$1);
    v303$2 := (if p5$2 then _HAVOC_bv8$2 else v303$2);
    $$5$10bv32$1 := (if p5$1 then v303$1 else $$5$10bv32$1);
    $$5$10bv32$2 := (if p5$2 then v303$2 else $$5$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v304$1 := (if p5$1 then _HAVOC_bv8$1 else v304$1);
    v304$2 := (if p5$2 then _HAVOC_bv8$2 else v304$2);
    $$5$11bv32$1 := (if p5$1 then v304$1 else $$5$11bv32$1);
    $$5$11bv32$2 := (if p5$2 then v304$2 else $$5$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v305$1 := (if p5$1 then _HAVOC_bv8$1 else v305$1);
    v305$2 := (if p5$2 then _HAVOC_bv8$2 else v305$2);
    $$5$12bv32$1 := (if p5$1 then v305$1 else $$5$12bv32$1);
    $$5$12bv32$2 := (if p5$2 then v305$2 else $$5$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v306$1 := (if p5$1 then _HAVOC_bv8$1 else v306$1);
    v306$2 := (if p5$2 then _HAVOC_bv8$2 else v306$2);
    $$5$13bv32$1 := (if p5$1 then v306$1 else $$5$13bv32$1);
    $$5$13bv32$2 := (if p5$2 then v306$2 else $$5$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v307$1 := (if p5$1 then _HAVOC_bv8$1 else v307$1);
    v307$2 := (if p5$2 then _HAVOC_bv8$2 else v307$2);
    $$5$14bv32$1 := (if p5$1 then v307$1 else $$5$14bv32$1);
    $$5$14bv32$2 := (if p5$2 then v307$2 else $$5$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v308$1 := (if p5$1 then _HAVOC_bv8$1 else v308$1);
    v308$2 := (if p5$2 then _HAVOC_bv8$2 else v308$2);
    $$5$15bv32$1 := (if p5$1 then v308$1 else $$5$15bv32$1);
    $$5$15bv32$2 := (if p5$2 then v308$2 else $$5$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v309$1 := (if p5$1 then _HAVOC_bv8$1 else v309$1);
    v309$2 := (if p5$2 then _HAVOC_bv8$2 else v309$2);
    $$5$16bv32$1 := (if p5$1 then v309$1 else $$5$16bv32$1);
    $$5$16bv32$2 := (if p5$2 then v309$2 else $$5$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v310$1 := (if p5$1 then _HAVOC_bv8$1 else v310$1);
    v310$2 := (if p5$2 then _HAVOC_bv8$2 else v310$2);
    $$5$17bv32$1 := (if p5$1 then v310$1 else $$5$17bv32$1);
    $$5$17bv32$2 := (if p5$2 then v310$2 else $$5$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v311$1 := (if p5$1 then _HAVOC_bv8$1 else v311$1);
    v311$2 := (if p5$2 then _HAVOC_bv8$2 else v311$2);
    $$5$18bv32$1 := (if p5$1 then v311$1 else $$5$18bv32$1);
    $$5$18bv32$2 := (if p5$2 then v311$2 else $$5$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v312$1 := (if p5$1 then _HAVOC_bv8$1 else v312$1);
    v312$2 := (if p5$2 then _HAVOC_bv8$2 else v312$2);
    $$5$19bv32$1 := (if p5$1 then v312$1 else $$5$19bv32$1);
    $$5$19bv32$2 := (if p5$2 then v312$2 else $$5$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v313$1 := (if p5$1 then _HAVOC_bv8$1 else v313$1);
    v313$2 := (if p5$2 then _HAVOC_bv8$2 else v313$2);
    $$5$20bv32$1 := (if p5$1 then v313$1 else $$5$20bv32$1);
    $$5$20bv32$2 := (if p5$2 then v313$2 else $$5$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v314$1 := (if p5$1 then _HAVOC_bv8$1 else v314$1);
    v314$2 := (if p5$2 then _HAVOC_bv8$2 else v314$2);
    $$5$21bv32$1 := (if p5$1 then v314$1 else $$5$21bv32$1);
    $$5$21bv32$2 := (if p5$2 then v314$2 else $$5$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v315$1 := (if p5$1 then _HAVOC_bv8$1 else v315$1);
    v315$2 := (if p5$2 then _HAVOC_bv8$2 else v315$2);
    $$5$22bv32$1 := (if p5$1 then v315$1 else $$5$22bv32$1);
    $$5$22bv32$2 := (if p5$2 then v315$2 else $$5$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v316$1 := (if p5$1 then _HAVOC_bv8$1 else v316$1);
    v316$2 := (if p5$2 then _HAVOC_bv8$2 else v316$2);
    $$5$23bv32$1 := (if p5$1 then v316$1 else $$5$23bv32$1);
    $$5$23bv32$2 := (if p5$2 then v316$2 else $$5$23bv32$2);
    call {:sourceloc_num 653} v317$1, v317$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$5, 0bv32), p5$1, SI32_TO_FP32(BV32_ADD(v0$1, group_size_y)), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p5$2, SI32_TO_FP32(BV32_ADD(v0$2, group_size_y)), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i8$0bv32$1 := (if p5$1 then v317$1[32:0] else $$res.i8$0bv32$1);
    $$res.i8$0bv32$2 := (if p5$2 then v317$2[32:0] else $$res.i8$0bv32$2);
    $$res.i8$1bv32$1 := (if p5$1 then v317$1[64:32] else $$res.i8$1bv32$1);
    $$res.i8$1bv32$2 := (if p5$2 then v317$2[64:32] else $$res.i8$1bv32$2);
    $$res.i8$2bv32$1 := (if p5$1 then v317$1[96:64] else $$res.i8$2bv32$1);
    $$res.i8$2bv32$2 := (if p5$2 then v317$2[96:64] else $$res.i8$2bv32$2);
    $$res.i8$3bv32$1 := (if p5$1 then v317$1[128:96] else $$res.i8$3bv32$1);
    $$res.i8$3bv32$2 := (if p5$2 then v317$2[128:96] else $$res.i8$3bv32$2);
    v318$1 := (if p5$1 then $$res.i8$0bv32$1 else v318$1);
    v318$2 := (if p5$2 then $$res.i8$0bv32$2 else v318$2);
    v319$1 := (if p5$1 then $$res.i8$1bv32$1 else v319$1);
    v319$2 := (if p5$2 then $$res.i8$1bv32$2 else v319$2);
    v320$1 := (if p5$1 then $$res.i8$2bv32$1 else v320$1);
    v320$2 := (if p5$2 then $$res.i8$2bv32$2 else v320$2);
    v321$1 := (if p5$1 then $$res.i8$3bv32$1 else v321$1);
    v321$2 := (if p5$2 then $$res.i8$3bv32$2 else v321$2);
    $$3$0bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v318$1, 1132396544bv32)) else $$3$0bv32$1);
    $$3$0bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v318$2, 1132396544bv32)) else $$3$0bv32$2);
    $$3$1bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v319$1, 1132396544bv32)) else $$3$1bv32$1);
    $$3$1bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v319$2, 1132396544bv32)) else $$3$1bv32$2);
    $$3$2bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v320$1, 1132396544bv32)) else $$3$2bv32$1);
    $$3$2bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v320$2, 1132396544bv32)) else $$3$2bv32$2);
    $$3$3bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v321$1, 1132396544bv32)) else $$3$3bv32$1);
    $$3$3bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v321$2, 1132396544bv32)) else $$3$3bv32$2);
    v322$1 := (if p5$1 then $$3$0bv32$1 else v322$1);
    v322$2 := (if p5$2 then $$3$0bv32$2 else v322$2);
    v323$1 := (if p5$1 then $$3$1bv32$1 else v323$1);
    v323$2 := (if p5$2 then $$3$1bv32$2 else v323$2);
    v324$1 := (if p5$1 then $$3$2bv32$1 else v324$1);
    v324$2 := (if p5$2 then $$3$2bv32$2 else v324$2);
    v325$1 := (if p5$1 then $$3$3bv32$1 else v325$1);
    v325$2 := (if p5$2 then $$3$3bv32$2 else v325$2);
    $$4$0bv32$1 := (if p5$1 then v322$1 else $$4$0bv32$1);
    $$4$0bv32$2 := (if p5$2 then v322$2 else $$4$0bv32$2);
    $$4$1bv32$1 := (if p5$1 then v323$1 else $$4$1bv32$1);
    $$4$1bv32$2 := (if p5$2 then v323$2 else $$4$1bv32$2);
    $$4$2bv32$1 := (if p5$1 then v324$1 else $$4$2bv32$1);
    $$4$2bv32$2 := (if p5$2 then v324$2 else $$4$2bv32$2);
    $$4$3bv32$1 := (if p5$1 then v325$1 else $$4$3bv32$1);
    $$4$3bv32$2 := (if p5$2 then v325$2 else $$4$3bv32$2);
    v326$1 := (if p5$1 then $$4$0bv32$1 else v326$1);
    v326$2 := (if p5$2 then $$4$0bv32$2 else v326$2);
    v327$1 := (if p5$1 then $$4$1bv32$1 else v327$1);
    v327$2 := (if p5$2 then $$4$1bv32$2 else v327$2);
    v328$1 := (if p5$1 then $$4$2bv32$1 else v328$1);
    v328$2 := (if p5$2 then $$4$2bv32$2 else v328$2);
    v329$1 := (if p5$1 then $$4$3bv32$1 else v329$1);
    v329$2 := (if p5$2 then $$4$3bv32$2 else v329$2);
    $$34$0bv32$1 := (if p5$1 then v326$1 else $$34$0bv32$1);
    $$34$0bv32$2 := (if p5$2 then v326$2 else $$34$0bv32$2);
    $$34$1bv32$1 := (if p5$1 then v327$1 else $$34$1bv32$1);
    $$34$1bv32$2 := (if p5$2 then v327$2 else $$34$1bv32$2);
    $$34$2bv32$1 := (if p5$1 then v328$1 else $$34$2bv32$1);
    $$34$2bv32$2 := (if p5$2 then v328$2 else $$34$2bv32$2);
    $$34$3bv32$1 := (if p5$1 then v329$1 else $$34$3bv32$1);
    $$34$3bv32$2 := (if p5$2 then v329$2 else $$34$3bv32$2);
    v330$1 := (if p5$1 then $$34$0bv32$1 else v330$1);
    v330$2 := (if p5$2 then $$34$0bv32$2 else v330$2);
    call {:sourceloc} {:sourceloc_num 683} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), v330$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 683} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 683} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), v330$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)] := (if p5$1 then v330$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)] := (if p5$2 then v330$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)]);
    v331$1 := (if p5$1 then $$34$1bv32$1 else v331$1);
    v331$2 := (if p5$2 then $$34$1bv32$2 else v331$2);
    call {:sourceloc} {:sourceloc_num 685} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32), v331$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 685} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 685} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32), v331$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)] := (if p5$1 then v331$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)] := (if p5$2 then v331$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)]);
    v332$1 := (if p5$1 then $$34$2bv32$1 else v332$1);
    v332$2 := (if p5$2 then $$34$2bv32$2 else v332$2);
    call {:sourceloc} {:sourceloc_num 687} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32), v332$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 687} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 687} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32), v332$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)] := (if p5$1 then v332$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)] := (if p5$2 then v332$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)]);
    v333$1 := (if p5$1 then $$34$3bv32$1 else v333$1);
    v333$2 := (if p5$2 then $$34$3bv32$2 else v333$2);
    call {:sourceloc} {:sourceloc_num 689} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32), v333$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 689} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 689} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32), v333$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)] := (if p5$1 then v333$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)] := (if p5$2 then v333$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)]);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v334$1 := (if p5$1 then _HAVOC_bv8$1 else v334$1);
    v334$2 := (if p5$2 then _HAVOC_bv8$2 else v334$2);
    $$2$0bv32$1 := (if p5$1 then v334$1 else $$2$0bv32$1);
    $$2$0bv32$2 := (if p5$2 then v334$2 else $$2$0bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v335$1 := (if p5$1 then _HAVOC_bv8$1 else v335$1);
    v335$2 := (if p5$2 then _HAVOC_bv8$2 else v335$2);
    $$2$1bv32$1 := (if p5$1 then v335$1 else $$2$1bv32$1);
    $$2$1bv32$2 := (if p5$2 then v335$2 else $$2$1bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v336$1 := (if p5$1 then _HAVOC_bv8$1 else v336$1);
    v336$2 := (if p5$2 then _HAVOC_bv8$2 else v336$2);
    $$2$2bv32$1 := (if p5$1 then v336$1 else $$2$2bv32$1);
    $$2$2bv32$2 := (if p5$2 then v336$2 else $$2$2bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v337$1 := (if p5$1 then _HAVOC_bv8$1 else v337$1);
    v337$2 := (if p5$2 then _HAVOC_bv8$2 else v337$2);
    $$2$3bv32$1 := (if p5$1 then v337$1 else $$2$3bv32$1);
    $$2$3bv32$2 := (if p5$2 then v337$2 else $$2$3bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v338$1 := (if p5$1 then _HAVOC_bv8$1 else v338$1);
    v338$2 := (if p5$2 then _HAVOC_bv8$2 else v338$2);
    $$2$4bv32$1 := (if p5$1 then v338$1 else $$2$4bv32$1);
    $$2$4bv32$2 := (if p5$2 then v338$2 else $$2$4bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v339$1 := (if p5$1 then _HAVOC_bv8$1 else v339$1);
    v339$2 := (if p5$2 then _HAVOC_bv8$2 else v339$2);
    $$2$5bv32$1 := (if p5$1 then v339$1 else $$2$5bv32$1);
    $$2$5bv32$2 := (if p5$2 then v339$2 else $$2$5bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v340$1 := (if p5$1 then _HAVOC_bv8$1 else v340$1);
    v340$2 := (if p5$2 then _HAVOC_bv8$2 else v340$2);
    $$2$6bv32$1 := (if p5$1 then v340$1 else $$2$6bv32$1);
    $$2$6bv32$2 := (if p5$2 then v340$2 else $$2$6bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v341$1 := (if p5$1 then _HAVOC_bv8$1 else v341$1);
    v341$2 := (if p5$2 then _HAVOC_bv8$2 else v341$2);
    $$2$7bv32$1 := (if p5$1 then v341$1 else $$2$7bv32$1);
    $$2$7bv32$2 := (if p5$2 then v341$2 else $$2$7bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v342$1 := (if p5$1 then _HAVOC_bv8$1 else v342$1);
    v342$2 := (if p5$2 then _HAVOC_bv8$2 else v342$2);
    $$2$8bv32$1 := (if p5$1 then v342$1 else $$2$8bv32$1);
    $$2$8bv32$2 := (if p5$2 then v342$2 else $$2$8bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v343$1 := (if p5$1 then _HAVOC_bv8$1 else v343$1);
    v343$2 := (if p5$2 then _HAVOC_bv8$2 else v343$2);
    $$2$9bv32$1 := (if p5$1 then v343$1 else $$2$9bv32$1);
    $$2$9bv32$2 := (if p5$2 then v343$2 else $$2$9bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v344$1 := (if p5$1 then _HAVOC_bv8$1 else v344$1);
    v344$2 := (if p5$2 then _HAVOC_bv8$2 else v344$2);
    $$2$10bv32$1 := (if p5$1 then v344$1 else $$2$10bv32$1);
    $$2$10bv32$2 := (if p5$2 then v344$2 else $$2$10bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v345$1 := (if p5$1 then _HAVOC_bv8$1 else v345$1);
    v345$2 := (if p5$2 then _HAVOC_bv8$2 else v345$2);
    $$2$11bv32$1 := (if p5$1 then v345$1 else $$2$11bv32$1);
    $$2$11bv32$2 := (if p5$2 then v345$2 else $$2$11bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v346$1 := (if p5$1 then _HAVOC_bv8$1 else v346$1);
    v346$2 := (if p5$2 then _HAVOC_bv8$2 else v346$2);
    $$2$12bv32$1 := (if p5$1 then v346$1 else $$2$12bv32$1);
    $$2$12bv32$2 := (if p5$2 then v346$2 else $$2$12bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v347$1 := (if p5$1 then _HAVOC_bv8$1 else v347$1);
    v347$2 := (if p5$2 then _HAVOC_bv8$2 else v347$2);
    $$2$13bv32$1 := (if p5$1 then v347$1 else $$2$13bv32$1);
    $$2$13bv32$2 := (if p5$2 then v347$2 else $$2$13bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v348$1 := (if p5$1 then _HAVOC_bv8$1 else v348$1);
    v348$2 := (if p5$2 then _HAVOC_bv8$2 else v348$2);
    $$2$14bv32$1 := (if p5$1 then v348$1 else $$2$14bv32$1);
    $$2$14bv32$2 := (if p5$2 then v348$2 else $$2$14bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v349$1 := (if p5$1 then _HAVOC_bv8$1 else v349$1);
    v349$2 := (if p5$2 then _HAVOC_bv8$2 else v349$2);
    $$2$15bv32$1 := (if p5$1 then v349$1 else $$2$15bv32$1);
    $$2$15bv32$2 := (if p5$2 then v349$2 else $$2$15bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v350$1 := (if p5$1 then _HAVOC_bv8$1 else v350$1);
    v350$2 := (if p5$2 then _HAVOC_bv8$2 else v350$2);
    $$2$16bv32$1 := (if p5$1 then v350$1 else $$2$16bv32$1);
    $$2$16bv32$2 := (if p5$2 then v350$2 else $$2$16bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v351$1 := (if p5$1 then _HAVOC_bv8$1 else v351$1);
    v351$2 := (if p5$2 then _HAVOC_bv8$2 else v351$2);
    $$2$17bv32$1 := (if p5$1 then v351$1 else $$2$17bv32$1);
    $$2$17bv32$2 := (if p5$2 then v351$2 else $$2$17bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v352$1 := (if p5$1 then _HAVOC_bv8$1 else v352$1);
    v352$2 := (if p5$2 then _HAVOC_bv8$2 else v352$2);
    $$2$18bv32$1 := (if p5$1 then v352$1 else $$2$18bv32$1);
    $$2$18bv32$2 := (if p5$2 then v352$2 else $$2$18bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v353$1 := (if p5$1 then _HAVOC_bv8$1 else v353$1);
    v353$2 := (if p5$2 then _HAVOC_bv8$2 else v353$2);
    $$2$19bv32$1 := (if p5$1 then v353$1 else $$2$19bv32$1);
    $$2$19bv32$2 := (if p5$2 then v353$2 else $$2$19bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v354$1 := (if p5$1 then _HAVOC_bv8$1 else v354$1);
    v354$2 := (if p5$2 then _HAVOC_bv8$2 else v354$2);
    $$2$20bv32$1 := (if p5$1 then v354$1 else $$2$20bv32$1);
    $$2$20bv32$2 := (if p5$2 then v354$2 else $$2$20bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v355$1 := (if p5$1 then _HAVOC_bv8$1 else v355$1);
    v355$2 := (if p5$2 then _HAVOC_bv8$2 else v355$2);
    $$2$21bv32$1 := (if p5$1 then v355$1 else $$2$21bv32$1);
    $$2$21bv32$2 := (if p5$2 then v355$2 else $$2$21bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v356$1 := (if p5$1 then _HAVOC_bv8$1 else v356$1);
    v356$2 := (if p5$2 then _HAVOC_bv8$2 else v356$2);
    $$2$22bv32$1 := (if p5$1 then v356$1 else $$2$22bv32$1);
    $$2$22bv32$2 := (if p5$2 then v356$2 else $$2$22bv32$2);
    havoc _HAVOC_bv8$1, _HAVOC_bv8$2;
    v357$1 := (if p5$1 then _HAVOC_bv8$1 else v357$1);
    v357$2 := (if p5$2 then _HAVOC_bv8$2 else v357$2);
    $$2$23bv32$1 := (if p5$1 then v357$1 else $$2$23bv32$1);
    $$2$23bv32$2 := (if p5$2 then v357$2 else $$2$23bv32$2);
    call {:sourceloc_num 738} v358$1, v358$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$2, 0bv32), p5$1, SI32_TO_FP32(BV32_ADD(v0$1, group_size_x)), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p5$2, SI32_TO_FP32(BV32_ADD(v0$2, group_size_x)), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i9$0bv32$1 := (if p5$1 then v358$1[32:0] else $$res.i9$0bv32$1);
    $$res.i9$0bv32$2 := (if p5$2 then v358$2[32:0] else $$res.i9$0bv32$2);
    $$res.i9$1bv32$1 := (if p5$1 then v358$1[64:32] else $$res.i9$1bv32$1);
    $$res.i9$1bv32$2 := (if p5$2 then v358$2[64:32] else $$res.i9$1bv32$2);
    $$res.i9$2bv32$1 := (if p5$1 then v358$1[96:64] else $$res.i9$2bv32$1);
    $$res.i9$2bv32$2 := (if p5$2 then v358$2[96:64] else $$res.i9$2bv32$2);
    $$res.i9$3bv32$1 := (if p5$1 then v358$1[128:96] else $$res.i9$3bv32$1);
    $$res.i9$3bv32$2 := (if p5$2 then v358$2[128:96] else $$res.i9$3bv32$2);
    v359$1 := (if p5$1 then $$res.i9$0bv32$1 else v359$1);
    v359$2 := (if p5$2 then $$res.i9$0bv32$2 else v359$2);
    v360$1 := (if p5$1 then $$res.i9$1bv32$1 else v360$1);
    v360$2 := (if p5$2 then $$res.i9$1bv32$2 else v360$2);
    v361$1 := (if p5$1 then $$res.i9$2bv32$1 else v361$1);
    v361$2 := (if p5$2 then $$res.i9$2bv32$2 else v361$2);
    v362$1 := (if p5$1 then $$res.i9$3bv32$1 else v362$1);
    v362$2 := (if p5$2 then $$res.i9$3bv32$2 else v362$2);
    $$0$0bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v359$1, 1132396544bv32)) else $$0$0bv32$1);
    $$0$0bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v359$2, 1132396544bv32)) else $$0$0bv32$2);
    $$0$1bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v360$1, 1132396544bv32)) else $$0$1bv32$1);
    $$0$1bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v360$2, 1132396544bv32)) else $$0$1bv32$2);
    $$0$2bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v361$1, 1132396544bv32)) else $$0$2bv32$1);
    $$0$2bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v361$2, 1132396544bv32)) else $$0$2bv32$2);
    $$0$3bv32$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v362$1, 1132396544bv32)) else $$0$3bv32$1);
    $$0$3bv32$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v362$2, 1132396544bv32)) else $$0$3bv32$2);
    v363$1 := (if p5$1 then $$0$0bv32$1 else v363$1);
    v363$2 := (if p5$2 then $$0$0bv32$2 else v363$2);
    v364$1 := (if p5$1 then $$0$1bv32$1 else v364$1);
    v364$2 := (if p5$2 then $$0$1bv32$2 else v364$2);
    v365$1 := (if p5$1 then $$0$2bv32$1 else v365$1);
    v365$2 := (if p5$2 then $$0$2bv32$2 else v365$2);
    v366$1 := (if p5$1 then $$0$3bv32$1 else v366$1);
    v366$2 := (if p5$2 then $$0$3bv32$2 else v366$2);
    $$1$0bv32$1 := (if p5$1 then v363$1 else $$1$0bv32$1);
    $$1$0bv32$2 := (if p5$2 then v363$2 else $$1$0bv32$2);
    $$1$1bv32$1 := (if p5$1 then v364$1 else $$1$1bv32$1);
    $$1$1bv32$2 := (if p5$2 then v364$2 else $$1$1bv32$2);
    $$1$2bv32$1 := (if p5$1 then v365$1 else $$1$2bv32$1);
    $$1$2bv32$2 := (if p5$2 then v365$2 else $$1$2bv32$2);
    $$1$3bv32$1 := (if p5$1 then v366$1 else $$1$3bv32$1);
    $$1$3bv32$2 := (if p5$2 then v366$2 else $$1$3bv32$2);
    v367$1 := (if p5$1 then $$1$0bv32$1 else v367$1);
    v367$2 := (if p5$2 then $$1$0bv32$2 else v367$2);
    v368$1 := (if p5$1 then $$1$1bv32$1 else v368$1);
    v368$2 := (if p5$2 then $$1$1bv32$2 else v368$2);
    v369$1 := (if p5$1 then $$1$2bv32$1 else v369$1);
    v369$2 := (if p5$2 then $$1$2bv32$2 else v369$2);
    v370$1 := (if p5$1 then $$1$3bv32$1 else v370$1);
    v370$2 := (if p5$2 then $$1$3bv32$2 else v370$2);
    $$35$0bv32$1 := (if p5$1 then v367$1 else $$35$0bv32$1);
    $$35$0bv32$2 := (if p5$2 then v367$2 else $$35$0bv32$2);
    $$35$1bv32$1 := (if p5$1 then v368$1 else $$35$1bv32$1);
    $$35$1bv32$2 := (if p5$2 then v368$2 else $$35$1bv32$2);
    $$35$2bv32$1 := (if p5$1 then v369$1 else $$35$2bv32$1);
    $$35$2bv32$2 := (if p5$2 then v369$2 else $$35$2bv32$2);
    $$35$3bv32$1 := (if p5$1 then v370$1 else $$35$3bv32$1);
    $$35$3bv32$2 := (if p5$2 then v370$2 else $$35$3bv32$2);
    v371$1 := (if p5$1 then $$35$0bv32$1 else v371$1);
    v371$2 := (if p5$2 then $$35$0bv32$2 else v371$2);
    call {:sourceloc} {:sourceloc_num 768} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), v371$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 768} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 768} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), v371$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)] := (if p5$1 then v371$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)] := (if p5$2 then v371$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32)]);
    v372$1 := (if p5$1 then $$35$1bv32$1 else v372$1);
    v372$2 := (if p5$2 then $$35$1bv32$2 else v372$2);
    call {:sourceloc} {:sourceloc_num 770} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32), v372$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 770} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 770} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32), v372$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)] := (if p5$1 then v372$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 1bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)] := (if p5$2 then v372$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 1bv32)]);
    v373$1 := (if p5$1 then $$35$2bv32$1 else v373$1);
    v373$2 := (if p5$2 then $$35$2bv32$2 else v373$2);
    call {:sourceloc} {:sourceloc_num 772} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32), v373$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 772} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 772} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32), v373$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)] := (if p5$1 then v373$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 2bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)] := (if p5$2 then v373$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 2bv32)]);
    v374$1 := (if p5$1 then $$35$3bv32$1 else v374$1);
    v374$2 := (if p5$2 then $$35$3bv32$2 else v374$2);
    call {:sourceloc} {:sourceloc_num 774} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32), v374$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 774} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 774} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32), v374$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)] := (if p5$1 then v374$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4bv32), 3bv32)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)] := (if p5$2 then v374$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4bv32), 3bv32)]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 776} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, $dy.0 := 0bv32, 0bv32, 0bv32, 0bv32, BV32_SUB(0bv32, $r);
    $rsum.0$2, $gsum.0$2, $bsum.0$2 := 0bv32, 0bv32, 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  BV32_SLE(0bv32, $dy.0) ) ,  (  BV32_SLE($dy.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_SGE($dy.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_ULE($dy.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_UGE($dy.0, BV32_SUB(0bv32, $r)) ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 777} true;
    v375 := BV32_SLE($dy.0, $r);
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} !v375;
    call {:sourceloc_num 800} v391$1, v391$2 := $_Z5clampfff(0bv32, 1132396544bv32, FDIV32($rsum.0$1, $samples.0), FDIV32($rsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc_num 801} v392$1, v392$2 := $_Z5clampfff(0bv32, 1132396544bv32, FDIV32($gsum.0$1, $samples.0), FDIV32($gsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc_num 802} v393$1, v393$2 := $_Z5clampfff(0bv32, 1132396544bv32, FDIV32($bsum.0$1, $samples.0), FDIV32($bsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc} {:sourceloc_num 803} _LOG_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1), BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v393$1), 16bv32), BV32_SHL(FP32_TO_SI32(v392$1), 8bv32)), FP32_TO_SI32(v391$1)), $$g_odata[BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(true, BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 803} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 803} _CHECK_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2), BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v393$2), 16bv32), BV32_SHL(FP32_TO_SI32(v392$2), 8bv32)), FP32_TO_SI32(v391$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1)] := BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v393$1), 16bv32), BV32_SHL(FP32_TO_SI32(v392$1), 8bv32)), FP32_TO_SI32(v391$1));
    $$g_odata[BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2)] := BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v393$2), 16bv32), BV32_SHL(FP32_TO_SI32(v392$2), 8bv32)), FP32_TO_SI32(v391$2));
    return;

  $truebb3:
    assume {:partition} v375;
    $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, $dx.0 := $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, BV32_SUB(0bv32, $r);
    $rsum.1$2, $gsum.1$2, $bsum.1$2 := $rsum.0$2, $gsum.0$2, $bsum.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  (  BV32_SLE(0bv32, $dx.0) ) ,  (  BV32_SLE($dx.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_SGE($dx.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_ULE($dx.0, BV32_SUB(0bv32, $r)) ) ,  (  BV32_UGE($dx.0, BV32_SUB(0bv32, $r)) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 779} true;
    v376 := BV32_SLE($dx.0, $r);
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v376;
    $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, $dy.0 := $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, BV32_ADD($dy.0, 1bv32);
    $rsum.0$2, $gsum.0$2, $bsum.0$2 := $rsum.1$2, $gsum.1$2, $bsum.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $8;

  $truebb4:
    assume {:partition} v376;
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 781} true;
    v377$1 := $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4bv32)];
    v377$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4bv32)];
    $$pixel$0bv32$1 := v377$1;
    $$pixel$0bv32$2 := v377$2;
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 783} true;
    v378$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4bv32), 1bv32)];
    v378$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4bv32), 1bv32)];
    $$pixel$1bv32$1 := v378$1;
    $$pixel$1bv32$2 := v378$2;
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 785} true;
    v379$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4bv32), 2bv32)];
    v379$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4bv32), 2bv32)];
    $$pixel$2bv32$1 := v379$1;
    $$pixel$2bv32$2 := v379$2;
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 787} true;
    v380$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4bv32), 3bv32)];
    v380$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4bv32), 3bv32)];
    $$pixel$3bv32$1 := v380$1;
    $$pixel$3bv32$2 := v380$2;
    v381 := SI32_TO_FP32(BV32_ADD(BV32_MUL($dx.0, $dx.0), BV32_MUL($dy.0, $dy.0)));
    v382 := SI32_TO_FP32(BV32_MUL($r, $r));
    v383 := FEQ32(v381, v382) || FLT32(v381, v382);
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v383;
    $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2 := $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1;
    $rsum.2$2, $gsum.2$2, $bsum.2$2 := $rsum.1$2, $gsum.1$2, $bsum.1$2;
    goto $15;

  $15:
    $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, $dx.0 := $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2, BV32_ADD($dx.0, 1bv32);
    $rsum.1$2, $gsum.1$2, $bsum.1$2 := $rsum.2$2, $gsum.2$2, $bsum.2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $10;

  $truebb5:
    assume {:partition} v383;
    v384$1 := $$pixel$0bv32$1;
    v384$2 := $$pixel$0bv32$2;
    v385$1 := UI8_TO_FP32(v384$1);
    v385$2 := UI8_TO_FP32(v384$2);
    v386$1 := $$pixel$1bv32$1;
    v386$2 := $$pixel$1bv32$2;
    v387$1 := UI8_TO_FP32(v386$1);
    v387$2 := UI8_TO_FP32(v386$2);
    v388$1 := $$pixel$2bv32$1;
    v388$2 := $$pixel$2bv32$2;
    v389$1 := UI8_TO_FP32(v388$1);
    v389$2 := UI8_TO_FP32(v388$2);
    v390$1 := FLT32($threshold, FDIV32(FADD32(FADD32(v385$1, v387$1), v389$1), 1144995840bv32));
    v390$2 := FLT32($threshold, FDIV32(FADD32(FADD32(v385$2, v387$2), v389$2), 1144995840bv32));
    p9$1 := (if v390$1 then v390$1 else p9$1);
    p9$2 := (if v390$2 then v390$2 else p9$2);
    p8$1 := (if !v390$1 then !v390$1 else p8$1);
    p8$2 := (if !v390$2 then !v390$2 else p8$2);
    $r1.0$1, $g.0$1, $b.0$1 := (if p8$1 then v385$1 else $r1.0$1), (if p8$1 then v387$1 else $g.0$1), (if p8$1 then v389$1 else $b.0$1);
    $r1.0$2, $g.0$2, $b.0$2 := (if p8$2 then v385$2 else $r1.0$2), (if p8$2 then v387$2 else $g.0$2), (if p8$2 then v389$2 else $b.0$2);
    $r1.0$1, $g.0$1, $b.0$1 := (if p9$1 then FMUL32(v385$1, $highlight) else $r1.0$1), (if p9$1 then FMUL32(v387$1, $highlight) else $g.0$1), (if p9$1 then FMUL32(v389$1, $highlight) else $b.0$1);
    $r1.0$2, $g.0$2, $b.0$2 := (if p9$2 then FMUL32(v385$2, $highlight) else $r1.0$2), (if p9$2 then FMUL32(v387$2, $highlight) else $g.0$2), (if p9$2 then FMUL32(v389$2, $highlight) else $b.0$2);
    $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2 := FADD32($rsum.1$1, $r1.0$1), FADD32($gsum.1$1, $g.0$1), FADD32($bsum.1$1, $b.0$1), FADD32($samples.1, 1065353216bv32);
    $rsum.2$2, $gsum.2$2, $bsum.2$2 := FADD32($rsum.1$2, $r1.0$2), FADD32($gsum.1$2, $g.0$2), FADD32($bsum.1$2, $b.0$2);
    goto $15;
}



procedure {:source_name "_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff($0: ptr, _P$1: bool, $1$1: bv32, $2$1: bv32, _P$2: bool, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv128, $ret$2: bv128);



procedure {:source_name "_Z5clampfff"} $_Z5clampfff($1: bv32, $2: bv32, $0$1: bv32, $0$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);
  requires $1 == 0bv32;
  requires $2 == 1132396544bv32;



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 32bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$sdata, $$g_odata, _TRACKING;



var $$0$0bv32$1: bv8;

var $$0$0bv32$2: bv8;

var $$0$1bv32$1: bv8;

var $$0$1bv32$2: bv8;

var $$0$2bv32$1: bv8;

var $$0$2bv32$2: bv8;

var $$0$3bv32$1: bv8;

var $$0$3bv32$2: bv8;

var $$1$0bv32$1: bv8;

var $$1$0bv32$2: bv8;

var $$1$1bv32$1: bv8;

var $$1$1bv32$2: bv8;

var $$1$2bv32$1: bv8;

var $$1$2bv32$2: bv8;

var $$1$3bv32$1: bv8;

var $$1$3bv32$2: bv8;

var $$res.i9$0bv32$1: bv32;

var $$res.i9$0bv32$2: bv32;

var $$res.i9$1bv32$1: bv32;

var $$res.i9$1bv32$2: bv32;

var $$res.i9$2bv32$1: bv32;

var $$res.i9$2bv32$2: bv32;

var $$res.i9$3bv32$1: bv32;

var $$res.i9$3bv32$2: bv32;

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

var $$2$12bv32$1: bv8;

var $$2$12bv32$2: bv8;

var $$2$13bv32$1: bv8;

var $$2$13bv32$2: bv8;

var $$2$14bv32$1: bv8;

var $$2$14bv32$2: bv8;

var $$2$15bv32$1: bv8;

var $$2$15bv32$2: bv8;

var $$2$16bv32$1: bv8;

var $$2$16bv32$2: bv8;

var $$2$17bv32$1: bv8;

var $$2$17bv32$2: bv8;

var $$2$18bv32$1: bv8;

var $$2$18bv32$2: bv8;

var $$2$19bv32$1: bv8;

var $$2$19bv32$2: bv8;

var $$2$20bv32$1: bv8;

var $$2$20bv32$2: bv8;

var $$2$21bv32$1: bv8;

var $$2$21bv32$2: bv8;

var $$2$22bv32$1: bv8;

var $$2$22bv32$2: bv8;

var $$2$23bv32$1: bv8;

var $$2$23bv32$2: bv8;

var $$3$0bv32$1: bv8;

var $$3$0bv32$2: bv8;

var $$3$1bv32$1: bv8;

var $$3$1bv32$2: bv8;

var $$3$2bv32$1: bv8;

var $$3$2bv32$2: bv8;

var $$3$3bv32$1: bv8;

var $$3$3bv32$2: bv8;

var $$4$0bv32$1: bv8;

var $$4$0bv32$2: bv8;

var $$4$1bv32$1: bv8;

var $$4$1bv32$2: bv8;

var $$4$2bv32$1: bv8;

var $$4$2bv32$2: bv8;

var $$4$3bv32$1: bv8;

var $$4$3bv32$2: bv8;

var $$res.i8$0bv32$1: bv32;

var $$res.i8$0bv32$2: bv32;

var $$res.i8$1bv32$1: bv32;

var $$res.i8$1bv32$2: bv32;

var $$res.i8$2bv32$1: bv32;

var $$res.i8$2bv32$2: bv32;

var $$res.i8$3bv32$1: bv32;

var $$res.i8$3bv32$2: bv32;

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

var $$5$12bv32$1: bv8;

var $$5$12bv32$2: bv8;

var $$5$13bv32$1: bv8;

var $$5$13bv32$2: bv8;

var $$5$14bv32$1: bv8;

var $$5$14bv32$2: bv8;

var $$5$15bv32$1: bv8;

var $$5$15bv32$2: bv8;

var $$5$16bv32$1: bv8;

var $$5$16bv32$2: bv8;

var $$5$17bv32$1: bv8;

var $$5$17bv32$2: bv8;

var $$5$18bv32$1: bv8;

var $$5$18bv32$2: bv8;

var $$5$19bv32$1: bv8;

var $$5$19bv32$2: bv8;

var $$5$20bv32$1: bv8;

var $$5$20bv32$2: bv8;

var $$5$21bv32$1: bv8;

var $$5$21bv32$2: bv8;

var $$5$22bv32$1: bv8;

var $$5$22bv32$2: bv8;

var $$5$23bv32$1: bv8;

var $$5$23bv32$2: bv8;

var $$6$0bv32$1: bv8;

var $$6$0bv32$2: bv8;

var $$6$1bv32$1: bv8;

var $$6$1bv32$2: bv8;

var $$6$2bv32$1: bv8;

var $$6$2bv32$2: bv8;

var $$6$3bv32$1: bv8;

var $$6$3bv32$2: bv8;

var $$7$0bv32$1: bv8;

var $$7$0bv32$2: bv8;

var $$7$1bv32$1: bv8;

var $$7$1bv32$2: bv8;

var $$7$2bv32$1: bv8;

var $$7$2bv32$2: bv8;

var $$7$3bv32$1: bv8;

var $$7$3bv32$2: bv8;

var $$res.i7$0bv32$1: bv32;

var $$res.i7$0bv32$2: bv32;

var $$res.i7$1bv32$1: bv32;

var $$res.i7$1bv32$2: bv32;

var $$res.i7$2bv32$1: bv32;

var $$res.i7$2bv32$2: bv32;

var $$res.i7$3bv32$1: bv32;

var $$res.i7$3bv32$2: bv32;

var $$8$0bv32$1: bv8;

var $$8$0bv32$2: bv8;

var $$8$1bv32$1: bv8;

var $$8$1bv32$2: bv8;

var $$8$2bv32$1: bv8;

var $$8$2bv32$2: bv8;

var $$8$3bv32$1: bv8;

var $$8$3bv32$2: bv8;

var $$8$4bv32$1: bv8;

var $$8$4bv32$2: bv8;

var $$8$5bv32$1: bv8;

var $$8$5bv32$2: bv8;

var $$8$6bv32$1: bv8;

var $$8$6bv32$2: bv8;

var $$8$7bv32$1: bv8;

var $$8$7bv32$2: bv8;

var $$8$8bv32$1: bv8;

var $$8$8bv32$2: bv8;

var $$8$9bv32$1: bv8;

var $$8$9bv32$2: bv8;

var $$8$10bv32$1: bv8;

var $$8$10bv32$2: bv8;

var $$8$11bv32$1: bv8;

var $$8$11bv32$2: bv8;

var $$8$12bv32$1: bv8;

var $$8$12bv32$2: bv8;

var $$8$13bv32$1: bv8;

var $$8$13bv32$2: bv8;

var $$8$14bv32$1: bv8;

var $$8$14bv32$2: bv8;

var $$8$15bv32$1: bv8;

var $$8$15bv32$2: bv8;

var $$8$16bv32$1: bv8;

var $$8$16bv32$2: bv8;

var $$8$17bv32$1: bv8;

var $$8$17bv32$2: bv8;

var $$8$18bv32$1: bv8;

var $$8$18bv32$2: bv8;

var $$8$19bv32$1: bv8;

var $$8$19bv32$2: bv8;

var $$8$20bv32$1: bv8;

var $$8$20bv32$2: bv8;

var $$8$21bv32$1: bv8;

var $$8$21bv32$2: bv8;

var $$8$22bv32$1: bv8;

var $$8$22bv32$2: bv8;

var $$8$23bv32$1: bv8;

var $$8$23bv32$2: bv8;

var $$9$0bv32$1: bv8;

var $$9$0bv32$2: bv8;

var $$9$1bv32$1: bv8;

var $$9$1bv32$2: bv8;

var $$9$2bv32$1: bv8;

var $$9$2bv32$2: bv8;

var $$9$3bv32$1: bv8;

var $$9$3bv32$2: bv8;

var $$10$0bv32$1: bv8;

var $$10$0bv32$2: bv8;

var $$10$1bv32$1: bv8;

var $$10$1bv32$2: bv8;

var $$10$2bv32$1: bv8;

var $$10$2bv32$2: bv8;

var $$10$3bv32$1: bv8;

var $$10$3bv32$2: bv8;

var $$res.i6$0bv32$1: bv32;

var $$res.i6$0bv32$2: bv32;

var $$res.i6$1bv32$1: bv32;

var $$res.i6$1bv32$2: bv32;

var $$res.i6$2bv32$1: bv32;

var $$res.i6$2bv32$2: bv32;

var $$res.i6$3bv32$1: bv32;

var $$res.i6$3bv32$2: bv32;

var $$11$0bv32$1: bv8;

var $$11$0bv32$2: bv8;

var $$11$1bv32$1: bv8;

var $$11$1bv32$2: bv8;

var $$11$2bv32$1: bv8;

var $$11$2bv32$2: bv8;

var $$11$3bv32$1: bv8;

var $$11$3bv32$2: bv8;

var $$11$4bv32$1: bv8;

var $$11$4bv32$2: bv8;

var $$11$5bv32$1: bv8;

var $$11$5bv32$2: bv8;

var $$11$6bv32$1: bv8;

var $$11$6bv32$2: bv8;

var $$11$7bv32$1: bv8;

var $$11$7bv32$2: bv8;

var $$11$8bv32$1: bv8;

var $$11$8bv32$2: bv8;

var $$11$9bv32$1: bv8;

var $$11$9bv32$2: bv8;

var $$11$10bv32$1: bv8;

var $$11$10bv32$2: bv8;

var $$11$11bv32$1: bv8;

var $$11$11bv32$2: bv8;

var $$11$12bv32$1: bv8;

var $$11$12bv32$2: bv8;

var $$11$13bv32$1: bv8;

var $$11$13bv32$2: bv8;

var $$11$14bv32$1: bv8;

var $$11$14bv32$2: bv8;

var $$11$15bv32$1: bv8;

var $$11$15bv32$2: bv8;

var $$11$16bv32$1: bv8;

var $$11$16bv32$2: bv8;

var $$11$17bv32$1: bv8;

var $$11$17bv32$2: bv8;

var $$11$18bv32$1: bv8;

var $$11$18bv32$2: bv8;

var $$11$19bv32$1: bv8;

var $$11$19bv32$2: bv8;

var $$11$20bv32$1: bv8;

var $$11$20bv32$2: bv8;

var $$11$21bv32$1: bv8;

var $$11$21bv32$2: bv8;

var $$11$22bv32$1: bv8;

var $$11$22bv32$2: bv8;

var $$11$23bv32$1: bv8;

var $$11$23bv32$2: bv8;

var $$12$0bv32$1: bv8;

var $$12$0bv32$2: bv8;

var $$12$1bv32$1: bv8;

var $$12$1bv32$2: bv8;

var $$12$2bv32$1: bv8;

var $$12$2bv32$2: bv8;

var $$12$3bv32$1: bv8;

var $$12$3bv32$2: bv8;

var $$13$0bv32$1: bv8;

var $$13$0bv32$2: bv8;

var $$13$1bv32$1: bv8;

var $$13$1bv32$2: bv8;

var $$13$2bv32$1: bv8;

var $$13$2bv32$2: bv8;

var $$13$3bv32$1: bv8;

var $$13$3bv32$2: bv8;

var $$res.i5$0bv32$1: bv32;

var $$res.i5$0bv32$2: bv32;

var $$res.i5$1bv32$1: bv32;

var $$res.i5$1bv32$2: bv32;

var $$res.i5$2bv32$1: bv32;

var $$res.i5$2bv32$2: bv32;

var $$res.i5$3bv32$1: bv32;

var $$res.i5$3bv32$2: bv32;

var $$14$0bv32$1: bv8;

var $$14$0bv32$2: bv8;

var $$14$1bv32$1: bv8;

var $$14$1bv32$2: bv8;

var $$14$2bv32$1: bv8;

var $$14$2bv32$2: bv8;

var $$14$3bv32$1: bv8;

var $$14$3bv32$2: bv8;

var $$14$4bv32$1: bv8;

var $$14$4bv32$2: bv8;

var $$14$5bv32$1: bv8;

var $$14$5bv32$2: bv8;

var $$14$6bv32$1: bv8;

var $$14$6bv32$2: bv8;

var $$14$7bv32$1: bv8;

var $$14$7bv32$2: bv8;

var $$14$8bv32$1: bv8;

var $$14$8bv32$2: bv8;

var $$14$9bv32$1: bv8;

var $$14$9bv32$2: bv8;

var $$14$10bv32$1: bv8;

var $$14$10bv32$2: bv8;

var $$14$11bv32$1: bv8;

var $$14$11bv32$2: bv8;

var $$14$12bv32$1: bv8;

var $$14$12bv32$2: bv8;

var $$14$13bv32$1: bv8;

var $$14$13bv32$2: bv8;

var $$14$14bv32$1: bv8;

var $$14$14bv32$2: bv8;

var $$14$15bv32$1: bv8;

var $$14$15bv32$2: bv8;

var $$14$16bv32$1: bv8;

var $$14$16bv32$2: bv8;

var $$14$17bv32$1: bv8;

var $$14$17bv32$2: bv8;

var $$14$18bv32$1: bv8;

var $$14$18bv32$2: bv8;

var $$14$19bv32$1: bv8;

var $$14$19bv32$2: bv8;

var $$14$20bv32$1: bv8;

var $$14$20bv32$2: bv8;

var $$14$21bv32$1: bv8;

var $$14$21bv32$2: bv8;

var $$14$22bv32$1: bv8;

var $$14$22bv32$2: bv8;

var $$14$23bv32$1: bv8;

var $$14$23bv32$2: bv8;

var $$15$0bv32$1: bv8;

var $$15$0bv32$2: bv8;

var $$15$1bv32$1: bv8;

var $$15$1bv32$2: bv8;

var $$15$2bv32$1: bv8;

var $$15$2bv32$2: bv8;

var $$15$3bv32$1: bv8;

var $$15$3bv32$2: bv8;

var $$16$0bv32$1: bv8;

var $$16$0bv32$2: bv8;

var $$16$1bv32$1: bv8;

var $$16$1bv32$2: bv8;

var $$16$2bv32$1: bv8;

var $$16$2bv32$2: bv8;

var $$16$3bv32$1: bv8;

var $$16$3bv32$2: bv8;

var $$res.i4$0bv32$1: bv32;

var $$res.i4$0bv32$2: bv32;

var $$res.i4$1bv32$1: bv32;

var $$res.i4$1bv32$2: bv32;

var $$res.i4$2bv32$1: bv32;

var $$res.i4$2bv32$2: bv32;

var $$res.i4$3bv32$1: bv32;

var $$res.i4$3bv32$2: bv32;

var $$17$0bv32$1: bv8;

var $$17$0bv32$2: bv8;

var $$17$1bv32$1: bv8;

var $$17$1bv32$2: bv8;

var $$17$2bv32$1: bv8;

var $$17$2bv32$2: bv8;

var $$17$3bv32$1: bv8;

var $$17$3bv32$2: bv8;

var $$17$4bv32$1: bv8;

var $$17$4bv32$2: bv8;

var $$17$5bv32$1: bv8;

var $$17$5bv32$2: bv8;

var $$17$6bv32$1: bv8;

var $$17$6bv32$2: bv8;

var $$17$7bv32$1: bv8;

var $$17$7bv32$2: bv8;

var $$17$8bv32$1: bv8;

var $$17$8bv32$2: bv8;

var $$17$9bv32$1: bv8;

var $$17$9bv32$2: bv8;

var $$17$10bv32$1: bv8;

var $$17$10bv32$2: bv8;

var $$17$11bv32$1: bv8;

var $$17$11bv32$2: bv8;

var $$17$12bv32$1: bv8;

var $$17$12bv32$2: bv8;

var $$17$13bv32$1: bv8;

var $$17$13bv32$2: bv8;

var $$17$14bv32$1: bv8;

var $$17$14bv32$2: bv8;

var $$17$15bv32$1: bv8;

var $$17$15bv32$2: bv8;

var $$17$16bv32$1: bv8;

var $$17$16bv32$2: bv8;

var $$17$17bv32$1: bv8;

var $$17$17bv32$2: bv8;

var $$17$18bv32$1: bv8;

var $$17$18bv32$2: bv8;

var $$17$19bv32$1: bv8;

var $$17$19bv32$2: bv8;

var $$17$20bv32$1: bv8;

var $$17$20bv32$2: bv8;

var $$17$21bv32$1: bv8;

var $$17$21bv32$2: bv8;

var $$17$22bv32$1: bv8;

var $$17$22bv32$2: bv8;

var $$17$23bv32$1: bv8;

var $$17$23bv32$2: bv8;

var $$18$0bv32$1: bv8;

var $$18$0bv32$2: bv8;

var $$18$1bv32$1: bv8;

var $$18$1bv32$2: bv8;

var $$18$2bv32$1: bv8;

var $$18$2bv32$2: bv8;

var $$18$3bv32$1: bv8;

var $$18$3bv32$2: bv8;

var $$19$0bv32$1: bv8;

var $$19$0bv32$2: bv8;

var $$19$1bv32$1: bv8;

var $$19$1bv32$2: bv8;

var $$19$2bv32$1: bv8;

var $$19$2bv32$2: bv8;

var $$19$3bv32$1: bv8;

var $$19$3bv32$2: bv8;

var $$res.i3$0bv32$1: bv32;

var $$res.i3$0bv32$2: bv32;

var $$res.i3$1bv32$1: bv32;

var $$res.i3$1bv32$2: bv32;

var $$res.i3$2bv32$1: bv32;

var $$res.i3$2bv32$2: bv32;

var $$res.i3$3bv32$1: bv32;

var $$res.i3$3bv32$2: bv32;

var $$20$0bv32$1: bv8;

var $$20$0bv32$2: bv8;

var $$20$1bv32$1: bv8;

var $$20$1bv32$2: bv8;

var $$20$2bv32$1: bv8;

var $$20$2bv32$2: bv8;

var $$20$3bv32$1: bv8;

var $$20$3bv32$2: bv8;

var $$20$4bv32$1: bv8;

var $$20$4bv32$2: bv8;

var $$20$5bv32$1: bv8;

var $$20$5bv32$2: bv8;

var $$20$6bv32$1: bv8;

var $$20$6bv32$2: bv8;

var $$20$7bv32$1: bv8;

var $$20$7bv32$2: bv8;

var $$20$8bv32$1: bv8;

var $$20$8bv32$2: bv8;

var $$20$9bv32$1: bv8;

var $$20$9bv32$2: bv8;

var $$20$10bv32$1: bv8;

var $$20$10bv32$2: bv8;

var $$20$11bv32$1: bv8;

var $$20$11bv32$2: bv8;

var $$20$12bv32$1: bv8;

var $$20$12bv32$2: bv8;

var $$20$13bv32$1: bv8;

var $$20$13bv32$2: bv8;

var $$20$14bv32$1: bv8;

var $$20$14bv32$2: bv8;

var $$20$15bv32$1: bv8;

var $$20$15bv32$2: bv8;

var $$20$16bv32$1: bv8;

var $$20$16bv32$2: bv8;

var $$20$17bv32$1: bv8;

var $$20$17bv32$2: bv8;

var $$20$18bv32$1: bv8;

var $$20$18bv32$2: bv8;

var $$20$19bv32$1: bv8;

var $$20$19bv32$2: bv8;

var $$20$20bv32$1: bv8;

var $$20$20bv32$2: bv8;

var $$20$21bv32$1: bv8;

var $$20$21bv32$2: bv8;

var $$20$22bv32$1: bv8;

var $$20$22bv32$2: bv8;

var $$20$23bv32$1: bv8;

var $$20$23bv32$2: bv8;

var $$21$0bv32$1: bv8;

var $$21$0bv32$2: bv8;

var $$21$1bv32$1: bv8;

var $$21$1bv32$2: bv8;

var $$21$2bv32$1: bv8;

var $$21$2bv32$2: bv8;

var $$21$3bv32$1: bv8;

var $$21$3bv32$2: bv8;

var $$22$0bv32$1: bv8;

var $$22$0bv32$2: bv8;

var $$22$1bv32$1: bv8;

var $$22$1bv32$2: bv8;

var $$22$2bv32$1: bv8;

var $$22$2bv32$2: bv8;

var $$22$3bv32$1: bv8;

var $$22$3bv32$2: bv8;

var $$res.i2$0bv32$1: bv32;

var $$res.i2$0bv32$2: bv32;

var $$res.i2$1bv32$1: bv32;

var $$res.i2$1bv32$2: bv32;

var $$res.i2$2bv32$1: bv32;

var $$res.i2$2bv32$2: bv32;

var $$res.i2$3bv32$1: bv32;

var $$res.i2$3bv32$2: bv32;

var $$23$0bv32$1: bv8;

var $$23$0bv32$2: bv8;

var $$23$1bv32$1: bv8;

var $$23$1bv32$2: bv8;

var $$23$2bv32$1: bv8;

var $$23$2bv32$2: bv8;

var $$23$3bv32$1: bv8;

var $$23$3bv32$2: bv8;

var $$23$4bv32$1: bv8;

var $$23$4bv32$2: bv8;

var $$23$5bv32$1: bv8;

var $$23$5bv32$2: bv8;

var $$23$6bv32$1: bv8;

var $$23$6bv32$2: bv8;

var $$23$7bv32$1: bv8;

var $$23$7bv32$2: bv8;

var $$23$8bv32$1: bv8;

var $$23$8bv32$2: bv8;

var $$23$9bv32$1: bv8;

var $$23$9bv32$2: bv8;

var $$23$10bv32$1: bv8;

var $$23$10bv32$2: bv8;

var $$23$11bv32$1: bv8;

var $$23$11bv32$2: bv8;

var $$23$12bv32$1: bv8;

var $$23$12bv32$2: bv8;

var $$23$13bv32$1: bv8;

var $$23$13bv32$2: bv8;

var $$23$14bv32$1: bv8;

var $$23$14bv32$2: bv8;

var $$23$15bv32$1: bv8;

var $$23$15bv32$2: bv8;

var $$23$16bv32$1: bv8;

var $$23$16bv32$2: bv8;

var $$23$17bv32$1: bv8;

var $$23$17bv32$2: bv8;

var $$23$18bv32$1: bv8;

var $$23$18bv32$2: bv8;

var $$23$19bv32$1: bv8;

var $$23$19bv32$2: bv8;

var $$23$20bv32$1: bv8;

var $$23$20bv32$2: bv8;

var $$23$21bv32$1: bv8;

var $$23$21bv32$2: bv8;

var $$23$22bv32$1: bv8;

var $$23$22bv32$2: bv8;

var $$23$23bv32$1: bv8;

var $$23$23bv32$2: bv8;

var $$24$0bv32$1: bv8;

var $$24$0bv32$2: bv8;

var $$24$1bv32$1: bv8;

var $$24$1bv32$2: bv8;

var $$24$2bv32$1: bv8;

var $$24$2bv32$2: bv8;

var $$24$3bv32$1: bv8;

var $$24$3bv32$2: bv8;

var $$25$0bv32$1: bv8;

var $$25$0bv32$2: bv8;

var $$25$1bv32$1: bv8;

var $$25$1bv32$2: bv8;

var $$25$2bv32$1: bv8;

var $$25$2bv32$2: bv8;

var $$25$3bv32$1: bv8;

var $$25$3bv32$2: bv8;

var $$res.i$0bv32$1: bv32;

var $$res.i$0bv32$2: bv32;

var $$res.i$1bv32$1: bv32;

var $$res.i$1bv32$2: bv32;

var $$res.i$2bv32$1: bv32;

var $$res.i$2bv32$2: bv32;

var $$res.i$3bv32$1: bv32;

var $$res.i$3bv32$2: bv32;

var $$26$0bv32$1: bv8;

var $$26$0bv32$2: bv8;

var $$26$1bv32$1: bv8;

var $$26$1bv32$2: bv8;

var $$26$2bv32$1: bv8;

var $$26$2bv32$2: bv8;

var $$26$3bv32$1: bv8;

var $$26$3bv32$2: bv8;

var $$26$4bv32$1: bv8;

var $$26$4bv32$2: bv8;

var $$26$5bv32$1: bv8;

var $$26$5bv32$2: bv8;

var $$26$6bv32$1: bv8;

var $$26$6bv32$2: bv8;

var $$26$7bv32$1: bv8;

var $$26$7bv32$2: bv8;

var $$26$8bv32$1: bv8;

var $$26$8bv32$2: bv8;

var $$26$9bv32$1: bv8;

var $$26$9bv32$2: bv8;

var $$26$10bv32$1: bv8;

var $$26$10bv32$2: bv8;

var $$26$11bv32$1: bv8;

var $$26$11bv32$2: bv8;

var $$26$12bv32$1: bv8;

var $$26$12bv32$2: bv8;

var $$26$13bv32$1: bv8;

var $$26$13bv32$2: bv8;

var $$26$14bv32$1: bv8;

var $$26$14bv32$2: bv8;

var $$26$15bv32$1: bv8;

var $$26$15bv32$2: bv8;

var $$26$16bv32$1: bv8;

var $$26$16bv32$2: bv8;

var $$26$17bv32$1: bv8;

var $$26$17bv32$2: bv8;

var $$26$18bv32$1: bv8;

var $$26$18bv32$2: bv8;

var $$26$19bv32$1: bv8;

var $$26$19bv32$2: bv8;

var $$26$20bv32$1: bv8;

var $$26$20bv32$2: bv8;

var $$26$21bv32$1: bv8;

var $$26$21bv32$2: bv8;

var $$26$22bv32$1: bv8;

var $$26$22bv32$2: bv8;

var $$26$23bv32$1: bv8;

var $$26$23bv32$2: bv8;

var $$27$0bv32$1: bv8;

var $$27$0bv32$2: bv8;

var $$27$1bv32$1: bv8;

var $$27$1bv32$2: bv8;

var $$27$2bv32$1: bv8;

var $$27$2bv32$2: bv8;

var $$27$3bv32$1: bv8;

var $$27$3bv32$2: bv8;

var $$28$0bv32$1: bv8;

var $$28$0bv32$2: bv8;

var $$28$1bv32$1: bv8;

var $$28$1bv32$2: bv8;

var $$28$2bv32$1: bv8;

var $$28$2bv32$2: bv8;

var $$28$3bv32$1: bv8;

var $$28$3bv32$2: bv8;

var $$29$0bv32$1: bv8;

var $$29$0bv32$2: bv8;

var $$29$1bv32$1: bv8;

var $$29$1bv32$2: bv8;

var $$29$2bv32$1: bv8;

var $$29$2bv32$2: bv8;

var $$29$3bv32$1: bv8;

var $$29$3bv32$2: bv8;

var $$30$0bv32$1: bv8;

var $$30$0bv32$2: bv8;

var $$30$1bv32$1: bv8;

var $$30$1bv32$2: bv8;

var $$30$2bv32$1: bv8;

var $$30$2bv32$2: bv8;

var $$30$3bv32$1: bv8;

var $$30$3bv32$2: bv8;

var $$31$0bv32$1: bv8;

var $$31$0bv32$2: bv8;

var $$31$1bv32$1: bv8;

var $$31$1bv32$2: bv8;

var $$31$2bv32$1: bv8;

var $$31$2bv32$2: bv8;

var $$31$3bv32$1: bv8;

var $$31$3bv32$2: bv8;

var $$32$0bv32$1: bv8;

var $$32$0bv32$2: bv8;

var $$32$1bv32$1: bv8;

var $$32$1bv32$2: bv8;

var $$32$2bv32$1: bv8;

var $$32$2bv32$2: bv8;

var $$32$3bv32$1: bv8;

var $$32$3bv32$2: bv8;

var $$33$0bv32$1: bv8;

var $$33$0bv32$2: bv8;

var $$33$1bv32$1: bv8;

var $$33$1bv32$2: bv8;

var $$33$2bv32$1: bv8;

var $$33$2bv32$2: bv8;

var $$33$3bv32$1: bv8;

var $$33$3bv32$2: bv8;

var $$34$0bv32$1: bv8;

var $$34$0bv32$2: bv8;

var $$34$1bv32$1: bv8;

var $$34$1bv32$2: bv8;

var $$34$2bv32$1: bv8;

var $$34$2bv32$2: bv8;

var $$34$3bv32$1: bv8;

var $$34$3bv32$2: bv8;

var $$35$0bv32$1: bv8;

var $$35$0bv32$2: bv8;

var $$35$1bv32$1: bv8;

var $$35$1bv32$2: bv8;

var $$35$2bv32$1: bv8;

var $$35$2bv32$2: bv8;

var $$35$3bv32$1: bv8;

var $$35$3bv32$2: bv8;

var $$pixel$0bv32$1: bv8;

var $$pixel$0bv32$2: bv8;

var $$pixel$1bv32$1: bv8;

var $$pixel$1bv32$2: bv8;

var $$pixel$2bv32$1: bv8;

var $$pixel$2bv32$2: bv8;

var $$pixel$3bv32$1: bv8;

var $$pixel$3bv32$2: bv8;





function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;













const _WATCHED_VALUE_$$g_odata: bv32;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$inTex: bv8;

procedure {:inline 1} _LOG_READ_$$inTex(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$inTex;



implementation {:inline 1} _LOG_READ_$$inTex(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then true else _READ_HAS_OCCURRED_$$inTex);
    return;
}



procedure _CHECK_READ_$$inTex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inTex);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inTex: bool;

procedure {:inline 1} _LOG_WRITE_$$inTex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$inTex, _WRITE_READ_BENIGN_FLAG_$$inTex;



implementation {:inline 1} _LOG_WRITE_$$inTex(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then true else _WRITE_HAS_OCCURRED_$$inTex);
    _WRITE_READ_BENIGN_FLAG_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inTex);
    return;
}



procedure _CHECK_WRITE_$$inTex(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex != _value);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex != _value);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inTex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$inTex;



implementation {:inline 1} _LOG_ATOMIC_$$inTex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inTex);
    return;
}



procedure _CHECK_ATOMIC_$$inTex(_P: bool, _offset: bv32);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inTex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$inTex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inTex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inTex := (if _P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inTex);
    return;
}



const _WATCHED_VALUE_$$sdata: bv8;

procedure {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _READ_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_READ_$$sdata(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sdata && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sdata: bool;

procedure {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _WRITE_HAS_OCCURRED_$$sdata);
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



procedure _CHECK_WRITE_$$sdata(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_ATOMIC_$$sdata(_P: bool, _offset: bv32);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$sdata;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
