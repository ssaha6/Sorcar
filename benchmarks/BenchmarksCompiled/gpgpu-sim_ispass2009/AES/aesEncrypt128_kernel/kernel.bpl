type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "result"} {:global} $$result: [bv32]bv32;

axiom {:array_info "$$result"} {:global} {:elem_width 32} {:source_name "result"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$result: bool;

const $arrayId$$result: arrayId;

axiom $arrayId$$result == 1bv5;

axiom {:array_info "$$inData"} {:global} {:elem_width 32} {:source_name "inData"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inData: bool;

const $arrayId$$inData: arrayId;

axiom $arrayId$$inData == 2bv5;

axiom {:array_info "$$agg.tmp"} {:elem_width 32} {:source_name "agg.tmp"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp: arrayId;

axiom $arrayId$$agg.tmp == 3bv5;

axiom {:array_info "$$agg.tmp97"} {:elem_width 32} {:source_name "agg.tmp97"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp97: arrayId;

axiom $arrayId$$agg.tmp97 == 4bv5;

axiom {:array_info "$$agg.tmp149"} {:elem_width 32} {:source_name "agg.tmp149"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp149: arrayId;

axiom $arrayId$$agg.tmp149 == 5bv5;

axiom {:array_info "$$agg.tmp201"} {:elem_width 32} {:source_name "agg.tmp201"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp201: arrayId;

axiom $arrayId$$agg.tmp201 == 6bv5;

axiom {:array_info "$$agg.tmp253"} {:elem_width 32} {:source_name "agg.tmp253"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp253: arrayId;

axiom $arrayId$$agg.tmp253 == 7bv5;

axiom {:array_info "$$agg.tmp305"} {:elem_width 32} {:source_name "agg.tmp305"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp305: arrayId;

axiom $arrayId$$agg.tmp305 == 8bv5;

axiom {:array_info "$$agg.tmp357"} {:elem_width 32} {:source_name "agg.tmp357"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp357: arrayId;

axiom $arrayId$$agg.tmp357 == 9bv5;

axiom {:array_info "$$agg.tmp409"} {:elem_width 32} {:source_name "agg.tmp409"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp409: arrayId;

axiom $arrayId$$agg.tmp409 == 10bv5;

axiom {:array_info "$$agg.tmp461"} {:elem_width 32} {:source_name "agg.tmp461"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp461: arrayId;

axiom $arrayId$$agg.tmp461 == 11bv5;

axiom {:array_info "$$agg.tmp513"} {:elem_width 32} {:source_name "agg.tmp513"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp513: arrayId;

axiom $arrayId$$agg.tmp513 == 12bv5;

axiom {:array_info "$$agg.tmp557"} {:elem_width 32} {:source_name "agg.tmp557"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp557: arrayId;

axiom $arrayId$$agg.tmp557 == 13bv5;

var {:source_name "stageBlock1"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE11stageBlock1: [bv1][bv32]bv8;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:group_shared} {:elem_width 8} {:source_name "stageBlock1"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 == 14bv5;

var {:source_name "tBox0Block"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE10tBox0Block: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:group_shared} {:elem_width 32} {:source_name "tBox0Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox0Block == 15bv5;

var {:source_name "tBox1Block"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE10tBox1Block: [bv1][bv32]bv8;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:group_shared} {:elem_width 8} {:source_name "tBox1Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox1Block == 16bv5;

var {:source_name "tBox2Block"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE10tBox2Block: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:group_shared} {:elem_width 32} {:source_name "tBox2Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox2Block == 17bv5;

var {:source_name "tBox3Block"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE10tBox3Block: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:group_shared} {:elem_width 32} {:source_name "tBox3Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE10tBox3Block == 18bv5;

var {:source_name "TBox0"} {:constant} $$TBox0$1: [bv32]bv32;

var {:source_name "TBox0"} {:constant} $$TBox0$2: [bv32]bv32;

axiom {:array_info "$$TBox0"} {:constant} {:elem_width 32} {:source_name "TBox0"} {:source_elem_width 32} {:source_dimensions "256"} true;

const $arrayId$$TBox0: arrayId;

axiom $arrayId$$TBox0 == 19bv5;

var {:source_name "TBox1"} {:constant} $$TBox1$1: [bv32]bv32;

var {:source_name "TBox1"} {:constant} $$TBox1$2: [bv32]bv32;

axiom {:array_info "$$TBox1"} {:constant} {:elem_width 32} {:source_name "TBox1"} {:source_elem_width 32} {:source_dimensions "256"} true;

const $arrayId$$TBox1: arrayId;

axiom $arrayId$$TBox1 == 20bv5;

var {:source_name "TBox2"} {:constant} $$TBox2$1: [bv32]bv32;

var {:source_name "TBox2"} {:constant} $$TBox2$2: [bv32]bv32;

axiom {:array_info "$$TBox2"} {:constant} {:elem_width 32} {:source_name "TBox2"} {:source_elem_width 32} {:source_dimensions "256"} true;

const $arrayId$$TBox2: arrayId;

axiom $arrayId$$TBox2 == 21bv5;

var {:source_name "TBox3"} {:constant} $$TBox3$1: [bv32]bv32;

var {:source_name "TBox3"} {:constant} $$TBox3$2: [bv32]bv32;

axiom {:array_info "$$TBox3"} {:constant} {:elem_width 32} {:source_name "TBox3"} {:source_elem_width 32} {:source_dimensions "256"} true;

const $arrayId$$TBox3: arrayId;

axiom $arrayId$$TBox3 == 22bv5;

axiom {:array_info "$$texEKey128"} {:global} {:elem_width 32} {:source_name "texEKey128"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texEKey128: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texEKey128: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texEKey128: bool;

const $arrayId$$texEKey128: arrayId;

axiom $arrayId$$texEKey128 == 23bv5;

var {:source_name "stageBlock2"} {:group_shared} $$_ZZ13aesEncrypt128PjS_iE11stageBlock2: [bv1][bv32]bv8;

axiom {:array_info "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:group_shared} {:elem_width 8} {:source_name "stageBlock2"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: bool;

const $arrayId$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: arrayId;

axiom $arrayId$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 == 24bv5;

var {:source_name "posIdx_E"} {:constant} $$posIdx_E$1: [bv32]bv8;

var {:source_name "posIdx_E"} {:constant} $$posIdx_E$2: [bv32]bv8;

axiom {:array_info "$$posIdx_E"} {:constant} {:elem_width 8} {:source_name "posIdx_E"} {:source_elem_width 8} {:source_dimensions "32"} true;

const $arrayId$$posIdx_E: arrayId;

axiom $arrayId$$posIdx_E == 25bv5;

type ptr = bv32;

type arrayId = bv5;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[27:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:27]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv5 ++ p[27:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv5;

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

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvxor"} BV32_XOR(bv32, bv32) : bv32;

function {:bvbuiltin "zero_extend 24"} BV8_ZEXT32(bv8) : bv32;

procedure {:source_name "aesEncrypt128"} {:kernel} $_Z13aesEncrypt128PjS_i($inputSize: bv32);
  requires !_READ_HAS_OCCURRED_$$result && !_WRITE_HAS_OCCURRED_$$result && !_ATOMIC_HAS_OCCURRED_$$result;
  requires !_READ_HAS_OCCURRED_$$inData && !_WRITE_HAS_OCCURRED_$$inData && !_ATOMIC_HAS_OCCURRED_$$inData;
  requires !_READ_HAS_OCCURRED_$$texEKey128 && !_WRITE_HAS_OCCURRED_$$texEKey128 && !_ATOMIC_HAS_OCCURRED_$$texEKey128;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
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
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$result, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block, _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;



implementation {:source_name "aesEncrypt128"} {:kernel} $_Z13aesEncrypt128PjS_i($inputSize: bv32)
{
  var $cnt.0: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v17$1: bv8;
  var v17$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v9$1: bv32;
  var v9$2: bv32;
  var v19$1: bv8;
  var v19$2: bv8;
  var v13$1: bv8;
  var v13$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v8$1: bv32;
  var v8$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v15$1: bv8;
  var v15$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v2$1: bv32;
  var v2$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v29$1: bv8;
  var v29$2: bv8;
  var v23$1: bv8;
  var v23$2: bv8;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv8;
  var v26$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v22$1: bv8;
  var v22$2: bv8;
  var v28$1: bv8;
  var v28$2: bv8;
  var v35$1: bv32;
  var v35$2: bv32;
  var v37$1: bv8;
  var v37$2: bv8;
  var v38$1: bv8;
  var v38$2: bv8;
  var v32$1: bv32;
  var v32$2: bv32;
  var v39$1: bv8;
  var v39$2: bv8;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v76$1: bv32;
  var v76$2: bv32;
  var v56$1: bv32;
  var v56$2: bv32;
  var v96$1: bv32;
  var v96$2: bv32;
  var v196$1: bv32;
  var v196$2: bv32;
  var v176$1: bv32;
  var v176$2: bv32;
  var v200$1: bv8;
  var v200$2: bv8;
  var v202$1: bv8;
  var v202$2: bv8;
  var v205$1: bv32;
  var v205$2: bv32;
  var v197$1: bv8;
  var v197$2: bv8;
  var v194$1: bv32;
  var v194$2: bv32;
  var v204$1: bv8;
  var v204$2: bv8;
  var v201$1: bv8;
  var v201$2: bv8;
  var v198$1: bv8;
  var v198$2: bv8;
  var v195$1: bv32;
  var v195$2: bv32;
  var v199$1: bv8;
  var v199$2: bv8;
  var v193$1: bv32;
  var v193$2: bv32;
  var v203$1: bv8;
  var v203$2: bv8;
  var v208$1: bv32;
  var v208$2: bv32;
  var v211$1: bv8;
  var v211$2: bv8;
  var v212$1: bv8;
  var v212$2: bv8;
  var v207$1: bv32;
  var v207$2: bv32;
  var v215$1: bv8;
  var v215$2: bv8;
  var v210$1: bv8;
  var v210$2: bv8;
  var v213$1: bv8;
  var v213$2: bv8;
  var v214$1: bv8;
  var v214$2: bv8;
  var v206$1: bv32;
  var v206$2: bv32;
  var v209$1: bv8;
  var v209$2: bv8;
  var v216$1: bv8;
  var v216$2: bv8;
  var v16$1: bv32;
  var v16$2: bv32;
  var v3: bool;
  var v55$1: bv32;
  var v55$2: bv32;
  var v52$1: bv32;
  var v52$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v42$1: bv8;
  var v42$2: bv8;
  var v45$1: bv32;
  var v45$2: bv32;
  var v44$1: bv8;
  var v44$2: bv8;
  var v46$1: bv8;
  var v46$2: bv8;
  var v47$1: bv8;
  var v47$2: bv8;
  var v41$1: bv8;
  var v41$2: bv8;
  var v48$1: bv8;
  var v48$2: bv8;
  var v49$1: bv8;
  var v49$2: bv8;
  var v51$1: bv32;
  var v51$2: bv32;
  var v40$1: bv8;
  var v40$2: bv8;
  var v43$1: bv8;
  var v43$2: bv8;
  var v68$1: bv8;
  var v68$2: bv8;
  var v54$1: bv32;
  var v54$2: bv32;
  var v59$1: bv8;
  var v59$2: bv8;
  var v61$1: bv8;
  var v61$2: bv8;
  var v53$1: bv32;
  var v53$2: bv32;
  var v62$1: bv8;
  var v62$2: bv8;
  var v63$1: bv8;
  var v63$2: bv8;
  var v65$1: bv32;
  var v65$2: bv32;
  var v58$1: bv8;
  var v58$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v57$1: bv8;
  var v57$2: bv8;
  var v66$1: bv8;
  var v66$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v64$1: bv8;
  var v64$2: bv8;
  var v81$1: bv8;
  var v81$2: bv8;
  var v75$1: bv32;
  var v75$2: bv32;
  var v83$1: bv8;
  var v83$2: bv8;
  var v69$1: bv8;
  var v69$2: bv8;
  var v82$1: bv8;
  var v82$2: bv8;
  var v72$1: bv32;
  var v72$2: bv32;
  var v79$1: bv8;
  var v79$2: bv8;
  var v80$1: bv8;
  var v80$2: bv8;
  var v77$1: bv8;
  var v77$2: bv8;
  var v74$1: bv32;
  var v74$2: bv32;
  var v70$1: bv32;
  var v70$2: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v73$1: bv32;
  var v73$2: bv32;
  var v78$1: bv8;
  var v78$2: bv8;
  var v86$1: bv8;
  var v86$2: bv8;
  var v94$1: bv32;
  var v94$2: bv32;
  var v84$1: bv8;
  var v84$2: bv8;
  var v88$1: bv8;
  var v88$2: bv8;
  var v95$1: bv32;
  var v95$2: bv32;
  var v92$1: bv32;
  var v92$2: bv32;
  var v85$1: bv32;
  var v85$2: bv32;
  var v91$1: bv32;
  var v91$2: bv32;
  var v87$1: bv8;
  var v87$2: bv8;
  var v89$1: bv8;
  var v89$2: bv8;
  var v90$1: bv32;
  var v90$2: bv32;
  var v93$1: bv32;
  var v93$2: bv32;
  var v107$1: bv8;
  var v107$2: bv8;
  var v100$1: bv8;
  var v100$2: bv8;
  var v105$1: bv32;
  var v105$2: bv32;
  var v109$1: bv8;
  var v109$2: bv8;
  var v104$1: bv8;
  var v104$2: bv8;
  var v101$1: bv8;
  var v101$2: bv8;
  var v97$1: bv8;
  var v97$2: bv8;
  var v108$1: bv8;
  var v108$2: bv8;
  var v110$1: bv32;
  var v110$2: bv32;
  var v115$1: bv32;
  var v115$2: bv32;
  var v106$1: bv8;
  var v106$2: bv8;
  var v98$1: bv8;
  var v98$2: bv8;
  var v102$1: bv8;
  var v102$2: bv8;
  var v99$1: bv8;
  var v99$2: bv8;
  var v103$1: bv8;
  var v103$2: bv8;
  var v111$1: bv32;
  var v111$2: bv32;
  var v112$1: bv32;
  var v112$2: bv32;
  var v114$1: bv32;
  var v114$2: bv32;
  var v113$1: bv32;
  var v113$2: bv32;
  var v156$1: bv32;
  var v156$2: bv32;
  var v116$1: bv32;
  var v116$2: bv32;
  var v136$1: bv32;
  var v136$2: bv32;
  var v178$1: bv8;
  var v178$2: bv8;
  var v188$1: bv8;
  var v188$2: bv8;
  var v189$1: bv8;
  var v189$2: bv8;
  var v192$1: bv32;
  var v192$2: bv32;
  var v186$1: bv8;
  var v186$2: bv8;
  var v182$1: bv8;
  var v182$2: bv8;
  var v179$1: bv8;
  var v179$2: bv8;
  var v183$1: bv8;
  var v183$2: bv8;
  var v187$1: bv8;
  var v187$2: bv8;
  var v180$1: bv8;
  var v180$2: bv8;
  var v181$1: bv8;
  var v181$2: bv8;
  var v184$1: bv8;
  var v184$2: bv8;
  var v185$1: bv32;
  var v185$2: bv32;
  var v190$1: bv32;
  var v190$2: bv32;
  var v191$1: bv32;
  var v191$2: bv32;
  var v129$1: bv8;
  var v129$2: bv8;
  var v126$1: bv8;
  var v126$2: bv8;
  var v117$1: bv8;
  var v117$2: bv8;
  var v130$1: bv32;
  var v130$2: bv32;
  var v118$1: bv8;
  var v118$2: bv8;
  var v131$1: bv32;
  var v131$2: bv32;
  var v128$1: bv8;
  var v128$2: bv8;
  var v123$1: bv8;
  var v123$2: bv8;
  var v119$1: bv8;
  var v119$2: bv8;
  var v120$1: bv8;
  var v120$2: bv8;
  var v124$1: bv8;
  var v124$2: bv8;
  var v125$1: bv32;
  var v125$2: bv32;
  var v121$1: bv8;
  var v121$2: bv8;
  var v122$1: bv8;
  var v122$2: bv8;
  var v127$1: bv8;
  var v127$2: bv8;
  var v145$1: bv32;
  var v145$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v140$1: bv8;
  var v140$2: bv8;
  var v141$1: bv8;
  var v141$2: bv8;
  var v133$1: bv32;
  var v133$2: bv32;
  var v143$1: bv8;
  var v143$2: bv8;
  var v134$1: bv32;
  var v134$2: bv32;
  var v135$1: bv32;
  var v135$2: bv32;
  var v137$1: bv8;
  var v137$2: bv8;
  var v139$1: bv8;
  var v139$2: bv8;
  var v138$1: bv8;
  var v138$2: bv8;
  var v142$1: bv8;
  var v142$2: bv8;
  var v144$1: bv8;
  var v144$2: bv8;
  var v151$1: bv32;
  var v151$2: bv32;
  var v158$1: bv8;
  var v158$2: bv8;
  var v146$1: bv8;
  var v146$2: bv8;
  var v155$1: bv32;
  var v155$2: bv32;
  var v148$1: bv8;
  var v148$2: bv8;
  var v159$1: bv8;
  var v159$2: bv8;
  var v149$1: bv8;
  var v149$2: bv8;
  var v152$1: bv32;
  var v152$2: bv32;
  var v150$1: bv32;
  var v150$2: bv32;
  var v153$1: bv32;
  var v153$2: bv32;
  var v154$1: bv32;
  var v154$2: bv32;
  var v157$1: bv8;
  var v157$2: bv8;
  var v147$1: bv8;
  var v147$2: bv8;
  var v164$1: bv8;
  var v164$2: bv8;
  var v165$1: bv32;
  var v165$2: bv32;
  var v161$1: bv8;
  var v161$2: bv8;
  var v160$1: bv8;
  var v160$2: bv8;
  var v167$1: bv8;
  var v167$2: bv8;
  var v168$1: bv8;
  var v168$2: bv8;
  var v175$1: bv32;
  var v175$2: bv32;
  var v166$1: bv8;
  var v166$2: bv8;
  var v173$1: bv32;
  var v173$2: bv32;
  var v162$1: bv8;
  var v162$2: bv8;
  var v170$1: bv32;
  var v170$2: bv32;
  var v171$1: bv32;
  var v171$2: bv32;
  var v169$1: bv8;
  var v169$2: bv8;
  var v163$1: bv8;
  var v163$2: bv8;
  var v172$1: bv32;
  var v172$2: bv32;
  var v174$1: bv32;
  var v174$2: bv32;
  var v177$1: bv8;
  var v177$2: bv8;


  $entry:
    v0$1 := BV32_UREM(local_id_x$1, 4bv32);
    v0$2 := BV32_UREM(local_id_x$2, 4bv32);
    v1$1 := BV32_MUL(BV32_UDIV(local_id_x$1, 4bv32), 4bv32);
    v1$2 := BV32_MUL(BV32_UDIV(local_id_x$2, 4bv32), 4bv32);
    havoc v2$1, v2$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v2$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v2$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v2$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v2$2[8:0];
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v2$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v2$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v2$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v2$2[16:8];
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v2$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v2$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v2$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v2$2[24:16];
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v2$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v2$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v2$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v2$2[32:24];
    $cnt.0 := 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b4 ==> _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_MUL(BV32_ADD(0bv32, local_id_x$1), 4bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(0bv32, local_id_x$1), 4bv32), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(0bv32, local_id_x$1), 4bv32), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(0bv32, local_id_x$1), 4bv32), 3bv32));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($cnt.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($cnt.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($cnt.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($cnt.0, 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 6} true;
    assert {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block ==> BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block ==> BV32_UDIV(_WATCHED_OFFSET, 4bv32) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block ==> BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 10} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block ==> BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    v3 := BV32_ULT($cnt.0, 1bv32);
    goto $truebb, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v3;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    havoc v8$1, v8$2;
    $$agg.tmp$0bv32$1 := v8$1;
    $$agg.tmp$0bv32$2 := v8$2;
    havoc v9$1, v9$2;
    $$agg.tmp$1bv32$1 := v9$1;
    $$agg.tmp$1bv32$2 := v9$2;
    havoc v10$1, v10$2;
    $$agg.tmp$2bv32$1 := v10$1;
    $$agg.tmp$2bv32$2 := v10$2;
    call {:sourceloc_num 32} v11$1, v11$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp, 0bv32), v0$1, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 33} true;
    v12$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
    v12$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 34} true;
    v13$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
    v13$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 35} true;
    v14$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
    v14$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 36} true;
    v15$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
    v15$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
    v16$1 := BV32_XOR(v15$1 ++ v14$1 ++ v13$1 ++ v12$1, v11$1);
    v16$2 := BV32_XOR(v15$2 ++ v14$2 ++ v13$2 ++ v12$2, v11$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), v16$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), v16$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v16$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v16$2[8:0];
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v16$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v16$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v16$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v16$2[16:8];
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v16$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v16$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v16$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v16$2[24:16];
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v16$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v16$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v16$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v16$2[32:24];
    goto __partitioned_block_$falsebb_2;

  __partitioned_block_$falsebb_2:
    call {:sourceloc_num 41} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    v17$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v17$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 43} true;
    v18$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v17$1), v1$1), 4bv32)];
    v18$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v17$2), v1$2), 4bv32)];
    v19$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v19$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 45} true;
    v20$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v19$1), v1$1), 4bv32), 1bv32)];
    v20$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v19$2), v1$2), 4bv32), 1bv32)];
    v21$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v21$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 47} true;
    v22$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v21$1), v1$1), 4bv32), 2bv32)];
    v22$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v21$2), v1$2), 4bv32), 2bv32)];
    v23$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v23$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 49} true;
    v24$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v23$1), v1$1), 4bv32), 3bv32)];
    v24$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v23$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 50} true;
    v25$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v18$1)];
    v25$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v18$2)];
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 51} true;
    v26$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v20$1), 4bv32)];
    v26$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v20$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 52} true;
    v27$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$1), 4bv32), 1bv32)];
    v27$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 53} true;
    v28$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$1), 4bv32), 2bv32)];
    v28$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 54} true;
    v29$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$1), 4bv32), 3bv32)];
    v29$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v20$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 55} true;
    v30$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v22$1)];
    v30$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v22$2)];
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 56} true;
    v31$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v24$1)];
    v31$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v24$2)];
    havoc v32$1, v32$2;
    $$agg.tmp97$0bv32$1 := v32$1;
    $$agg.tmp97$0bv32$2 := v32$2;
    havoc v33$1, v33$2;
    $$agg.tmp97$1bv32$1 := v33$1;
    $$agg.tmp97$1bv32$2 := v33$2;
    havoc v34$1, v34$2;
    $$agg.tmp97$2bv32$1 := v34$1;
    $$agg.tmp97$2bv32$2 := v34$2;
    call {:sourceloc_num 63} v35$1, v35$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp97, 0bv32), BV32_ADD(v0$1, 4bv32), BV32_ADD(v0$2, 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v36$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v25$1, v29$1 ++ v28$1 ++ v27$1 ++ v26$1), v30$1), v31$1), v35$1);
    v36$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v25$2, v29$2 ++ v28$2 ++ v27$2 ++ v26$2), v30$2), v31$2), v35$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v36$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v36$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v36$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v36$2[8:0];
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v36$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v36$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v36$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v36$2[16:8];
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v36$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v36$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v36$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v36$2[24:16];
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v36$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v36$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v36$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v36$2[32:24];
    goto __partitioned_block_$falsebb_3;

  __partitioned_block_$falsebb_3:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    v37$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v37$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 70} true;
    v38$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v37$1), v1$1), 4bv32)];
    v38$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v37$2), v1$2), 4bv32)];
    v39$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v39$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 72} true;
    v40$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v39$1), v1$1), 4bv32), 1bv32)];
    v40$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v39$2), v1$2), 4bv32), 1bv32)];
    v41$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v41$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 74} true;
    v42$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v41$1), v1$1), 4bv32), 2bv32)];
    v42$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v41$2), v1$2), 4bv32), 2bv32)];
    v43$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v43$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 76} true;
    v44$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v43$1), v1$1), 4bv32), 3bv32)];
    v44$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v43$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 77} true;
    v45$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v38$1)];
    v45$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v38$2)];
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 78} true;
    v46$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v40$1), 4bv32)];
    v46$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v40$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 79} true;
    v47$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$1), 4bv32), 1bv32)];
    v47$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 80} true;
    v48$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$1), 4bv32), 2bv32)];
    v48$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 81} true;
    v49$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$1), 4bv32), 3bv32)];
    v49$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v40$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 82} true;
    v50$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v42$1)];
    v50$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v42$2)];
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 83} true;
    v51$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v44$1)];
    v51$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v44$2)];
    havoc v52$1, v52$2;
    $$agg.tmp149$0bv32$1 := v52$1;
    $$agg.tmp149$0bv32$2 := v52$2;
    havoc v53$1, v53$2;
    $$agg.tmp149$1bv32$1 := v53$1;
    $$agg.tmp149$1bv32$2 := v53$2;
    havoc v54$1, v54$2;
    $$agg.tmp149$2bv32$1 := v54$1;
    $$agg.tmp149$2bv32$2 := v54$2;
    call {:sourceloc_num 90} v55$1, v55$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp149, 0bv32), BV32_ADD(v0$1, 8bv32), BV32_ADD(v0$2, 8bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v56$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v45$1, v49$1 ++ v48$1 ++ v47$1 ++ v46$1), v50$1), v51$1), v55$1);
    v56$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v45$2, v49$2 ++ v48$2 ++ v47$2 ++ v46$2), v50$2), v51$2), v55$2);
    call {:sourceloc} {:sourceloc_num 91} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), v56$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 91} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), v56$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v56$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v56$2[8:0];
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v56$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v56$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v56$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v56$2[16:8];
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v56$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v56$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v56$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v56$2[24:16];
    call {:sourceloc} {:sourceloc_num 94} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v56$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 94} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v56$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v56$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v56$2[32:24];
    goto __partitioned_block_$falsebb_4;

  __partitioned_block_$falsebb_4:
    call {:sourceloc_num 95} $bugle_barrier_duplicated_3(1bv1, 1bv1);
    v57$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v57$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 97} true;
    v58$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v57$1), v1$1), 4bv32)];
    v58$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v57$2), v1$2), 4bv32)];
    v59$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v59$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 99} true;
    v60$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v59$1), v1$1), 4bv32), 1bv32)];
    v60$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v59$2), v1$2), 4bv32), 1bv32)];
    v61$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v61$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 101} true;
    v62$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v61$1), v1$1), 4bv32), 2bv32)];
    v62$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v61$2), v1$2), 4bv32), 2bv32)];
    v63$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v63$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 103} true;
    v64$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v63$1), v1$1), 4bv32), 3bv32)];
    v64$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v63$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 104} true;
    v65$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v58$1)];
    v65$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v58$2)];
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 105} true;
    v66$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v60$1), 4bv32)];
    v66$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v60$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 106} true;
    v67$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$1), 4bv32), 1bv32)];
    v67$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 107} true;
    v68$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$1), 4bv32), 2bv32)];
    v68$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 108} true;
    v69$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$1), 4bv32), 3bv32)];
    v69$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v60$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 109} true;
    v70$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v62$1)];
    v70$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v62$2)];
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 110} true;
    v71$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v64$1)];
    v71$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v64$2)];
    havoc v72$1, v72$2;
    $$agg.tmp201$0bv32$1 := v72$1;
    $$agg.tmp201$0bv32$2 := v72$2;
    havoc v73$1, v73$2;
    $$agg.tmp201$1bv32$1 := v73$1;
    $$agg.tmp201$1bv32$2 := v73$2;
    havoc v74$1, v74$2;
    $$agg.tmp201$2bv32$1 := v74$1;
    $$agg.tmp201$2bv32$2 := v74$2;
    call {:sourceloc_num 117} v75$1, v75$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp201, 0bv32), BV32_ADD(v0$1, 12bv32), BV32_ADD(v0$2, 12bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v76$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v65$1, v69$1 ++ v68$1 ++ v67$1 ++ v66$1), v70$1), v71$1), v75$1);
    v76$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v65$2, v69$2 ++ v68$2 ++ v67$2 ++ v66$2), v70$2), v71$2), v75$2);
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v76$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v76$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v76$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v76$2[8:0];
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v76$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v76$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v76$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v76$2[16:8];
    call {:sourceloc} {:sourceloc_num 120} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v76$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 120} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v76$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v76$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v76$2[24:16];
    call {:sourceloc} {:sourceloc_num 121} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v76$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 121} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 121} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v76$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v76$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v76$2[32:24];
    goto __partitioned_block_$falsebb_5;

  __partitioned_block_$falsebb_5:
    call {:sourceloc_num 122} $bugle_barrier_duplicated_4(1bv1, 1bv1);
    v77$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v77$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 124} true;
    v78$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v77$1), v1$1), 4bv32)];
    v78$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v77$2), v1$2), 4bv32)];
    v79$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v79$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 126} true;
    v80$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v79$1), v1$1), 4bv32), 1bv32)];
    v80$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v79$2), v1$2), 4bv32), 1bv32)];
    v81$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v81$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 128} true;
    v82$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v81$1), v1$1), 4bv32), 2bv32)];
    v82$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v81$2), v1$2), 4bv32), 2bv32)];
    v83$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v83$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 130} true;
    v84$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v83$1), v1$1), 4bv32), 3bv32)];
    v84$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v83$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 131} true;
    v85$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v78$1)];
    v85$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v78$2)];
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 132} true;
    v86$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v80$1), 4bv32)];
    v86$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v80$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 133} true;
    v87$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$1), 4bv32), 1bv32)];
    v87$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 134} true;
    v88$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$1), 4bv32), 2bv32)];
    v88$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 135} true;
    v89$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$1), 4bv32), 3bv32)];
    v89$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v80$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 136} true;
    v90$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v82$1)];
    v90$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v82$2)];
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 137} true;
    v91$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v84$1)];
    v91$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v84$2)];
    havoc v92$1, v92$2;
    $$agg.tmp253$0bv32$1 := v92$1;
    $$agg.tmp253$0bv32$2 := v92$2;
    havoc v93$1, v93$2;
    $$agg.tmp253$1bv32$1 := v93$1;
    $$agg.tmp253$1bv32$2 := v93$2;
    havoc v94$1, v94$2;
    $$agg.tmp253$2bv32$1 := v94$1;
    $$agg.tmp253$2bv32$2 := v94$2;
    call {:sourceloc_num 144} v95$1, v95$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp253, 0bv32), BV32_ADD(v0$1, 16bv32), BV32_ADD(v0$2, 16bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v96$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v85$1, v89$1 ++ v88$1 ++ v87$1 ++ v86$1), v90$1), v91$1), v95$1);
    v96$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v85$2, v89$2 ++ v88$2 ++ v87$2 ++ v86$2), v90$2), v91$2), v95$2);
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), v96$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), v96$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v96$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v96$2[8:0];
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v96$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v96$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v96$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v96$2[16:8];
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v96$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v96$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v96$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v96$2[24:16];
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v96$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v96$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v96$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v96$2[32:24];
    goto __partitioned_block_$falsebb_6;

  __partitioned_block_$falsebb_6:
    call {:sourceloc_num 149} $bugle_barrier_duplicated_5(1bv1, 1bv1);
    v97$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v97$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 151} true;
    v98$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v97$1), v1$1), 4bv32)];
    v98$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v97$2), v1$2), 4bv32)];
    v99$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v99$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 153} true;
    v100$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v99$1), v1$1), 4bv32), 1bv32)];
    v100$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v99$2), v1$2), 4bv32), 1bv32)];
    v101$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v101$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 155} true;
    v102$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v101$1), v1$1), 4bv32), 2bv32)];
    v102$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v101$2), v1$2), 4bv32), 2bv32)];
    v103$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v103$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 157} true;
    v104$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v103$1), v1$1), 4bv32), 3bv32)];
    v104$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v103$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 158} true;
    v105$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v98$1)];
    v105$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v98$2)];
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 159} true;
    v106$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v100$1), 4bv32)];
    v106$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v100$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 160} true;
    v107$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$1), 4bv32), 1bv32)];
    v107$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 161} true;
    v108$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$1), 4bv32), 2bv32)];
    v108$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 162} true;
    v109$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$1), 4bv32), 3bv32)];
    v109$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v100$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 163} true;
    v110$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v102$1)];
    v110$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v102$2)];
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 164} true;
    v111$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v104$1)];
    v111$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v104$2)];
    havoc v112$1, v112$2;
    $$agg.tmp305$0bv32$1 := v112$1;
    $$agg.tmp305$0bv32$2 := v112$2;
    havoc v113$1, v113$2;
    $$agg.tmp305$1bv32$1 := v113$1;
    $$agg.tmp305$1bv32$2 := v113$2;
    havoc v114$1, v114$2;
    $$agg.tmp305$2bv32$1 := v114$1;
    $$agg.tmp305$2bv32$2 := v114$2;
    call {:sourceloc_num 171} v115$1, v115$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp305, 0bv32), BV32_ADD(v0$1, 20bv32), BV32_ADD(v0$2, 20bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v116$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v105$1, v109$1 ++ v108$1 ++ v107$1 ++ v106$1), v110$1), v111$1), v115$1);
    v116$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v105$2, v109$2 ++ v108$2 ++ v107$2 ++ v106$2), v110$2), v111$2), v115$2);
    call {:sourceloc} {:sourceloc_num 172} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v116$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 172} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 172} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v116$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v116$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v116$2[8:0];
    call {:sourceloc} {:sourceloc_num 173} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v116$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 173} true;
    call {:check_id "check_state_84"} {:sourceloc} {:sourceloc_num 173} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v116$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v116$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v116$2[16:8];
    call {:sourceloc} {:sourceloc_num 174} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v116$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 174} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v116$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v116$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v116$2[24:16];
    call {:sourceloc} {:sourceloc_num 175} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v116$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 175} true;
    call {:check_id "check_state_86"} {:sourceloc} {:sourceloc_num 175} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v116$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v116$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v116$2[32:24];
    goto __partitioned_block_$falsebb_7;

  __partitioned_block_$falsebb_7:
    call {:sourceloc_num 176} $bugle_barrier_duplicated_6(1bv1, 1bv1);
    v117$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v117$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 178} true;
    v118$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v117$1), v1$1), 4bv32)];
    v118$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v117$2), v1$2), 4bv32)];
    v119$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v119$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 180} true;
    v120$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v119$1), v1$1), 4bv32), 1bv32)];
    v120$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v119$2), v1$2), 4bv32), 1bv32)];
    v121$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v121$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 182} true;
    v122$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v121$1), v1$1), 4bv32), 2bv32)];
    v122$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v121$2), v1$2), 4bv32), 2bv32)];
    v123$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v123$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 184} true;
    v124$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v123$1), v1$1), 4bv32), 3bv32)];
    v124$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v123$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 185} true;
    v125$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v118$1)];
    v125$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v118$2)];
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 186} true;
    v126$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v120$1), 4bv32)];
    v126$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v120$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 187} true;
    v127$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$1), 4bv32), 1bv32)];
    v127$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 188} true;
    v128$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$1), 4bv32), 2bv32)];
    v128$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 189} true;
    v129$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$1), 4bv32), 3bv32)];
    v129$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v120$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 190} true;
    v130$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v122$1)];
    v130$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v122$2)];
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 191} true;
    v131$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v124$1)];
    v131$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v124$2)];
    havoc v132$1, v132$2;
    $$agg.tmp357$0bv32$1 := v132$1;
    $$agg.tmp357$0bv32$2 := v132$2;
    havoc v133$1, v133$2;
    $$agg.tmp357$1bv32$1 := v133$1;
    $$agg.tmp357$1bv32$2 := v133$2;
    havoc v134$1, v134$2;
    $$agg.tmp357$2bv32$1 := v134$1;
    $$agg.tmp357$2bv32$2 := v134$2;
    call {:sourceloc_num 198} v135$1, v135$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp357, 0bv32), BV32_ADD(v0$1, 24bv32), BV32_ADD(v0$2, 24bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v136$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v125$1, v129$1 ++ v128$1 ++ v127$1 ++ v126$1), v130$1), v131$1), v135$1);
    v136$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v125$2, v129$2 ++ v128$2 ++ v127$2 ++ v126$2), v130$2), v131$2), v135$2);
    call {:sourceloc} {:sourceloc_num 199} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), v136$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 199} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 199} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), v136$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v136$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v136$2[8:0];
    call {:sourceloc} {:sourceloc_num 200} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v136$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_99"} {:captureState "check_state_99"} {:sourceloc} {:sourceloc_num 200} true;
    call {:check_id "check_state_99"} {:sourceloc} {:sourceloc_num 200} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v136$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v136$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v136$2[16:8];
    call {:sourceloc} {:sourceloc_num 201} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v136$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_100"} {:captureState "check_state_100"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_100"} {:sourceloc} {:sourceloc_num 201} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v136$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v136$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v136$2[24:16];
    call {:sourceloc} {:sourceloc_num 202} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v136$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_101"} {:captureState "check_state_101"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_101"} {:sourceloc} {:sourceloc_num 202} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v136$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v136$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v136$2[32:24];
    goto __partitioned_block_$falsebb_8;

  __partitioned_block_$falsebb_8:
    call {:sourceloc_num 203} $bugle_barrier_duplicated_7(1bv1, 1bv1);
    v137$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v137$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_102"} {:captureState "check_state_102"} {:sourceloc} {:sourceloc_num 205} true;
    v138$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v137$1), v1$1), 4bv32)];
    v138$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v137$2), v1$2), 4bv32)];
    v139$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v139$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_103"} {:captureState "check_state_103"} {:sourceloc} {:sourceloc_num 207} true;
    v140$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v139$1), v1$1), 4bv32), 1bv32)];
    v140$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v139$2), v1$2), 4bv32), 1bv32)];
    v141$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v141$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_104"} {:captureState "check_state_104"} {:sourceloc} {:sourceloc_num 209} true;
    v142$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v141$1), v1$1), 4bv32), 2bv32)];
    v142$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v141$2), v1$2), 4bv32), 2bv32)];
    v143$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v143$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_105"} {:captureState "check_state_105"} {:sourceloc} {:sourceloc_num 211} true;
    v144$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v143$1), v1$1), 4bv32), 3bv32)];
    v144$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v143$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_106"} {:captureState "check_state_106"} {:sourceloc} {:sourceloc_num 212} true;
    v145$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v138$1)];
    v145$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v138$2)];
    assume {:do_not_predicate} {:check_id "check_state_107"} {:captureState "check_state_107"} {:sourceloc} {:sourceloc_num 213} true;
    v146$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v140$1), 4bv32)];
    v146$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v140$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_108"} {:captureState "check_state_108"} {:sourceloc} {:sourceloc_num 214} true;
    v147$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$1), 4bv32), 1bv32)];
    v147$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_109"} {:captureState "check_state_109"} {:sourceloc} {:sourceloc_num 215} true;
    v148$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$1), 4bv32), 2bv32)];
    v148$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_110"} {:captureState "check_state_110"} {:sourceloc} {:sourceloc_num 216} true;
    v149$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$1), 4bv32), 3bv32)];
    v149$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v140$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_111"} {:captureState "check_state_111"} {:sourceloc} {:sourceloc_num 217} true;
    v150$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v142$1)];
    v150$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v142$2)];
    assume {:do_not_predicate} {:check_id "check_state_112"} {:captureState "check_state_112"} {:sourceloc} {:sourceloc_num 218} true;
    v151$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v144$1)];
    v151$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v144$2)];
    havoc v152$1, v152$2;
    $$agg.tmp409$0bv32$1 := v152$1;
    $$agg.tmp409$0bv32$2 := v152$2;
    havoc v153$1, v153$2;
    $$agg.tmp409$1bv32$1 := v153$1;
    $$agg.tmp409$1bv32$2 := v153$2;
    havoc v154$1, v154$2;
    $$agg.tmp409$2bv32$1 := v154$1;
    $$agg.tmp409$2bv32$2 := v154$2;
    call {:sourceloc_num 225} v155$1, v155$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp409, 0bv32), BV32_ADD(v0$1, 28bv32), BV32_ADD(v0$2, 28bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v156$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v145$1, v149$1 ++ v148$1 ++ v147$1 ++ v146$1), v150$1), v151$1), v155$1);
    v156$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v145$2, v149$2 ++ v148$2 ++ v147$2 ++ v146$2), v150$2), v151$2), v155$2);
    call {:sourceloc} {:sourceloc_num 226} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v156$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_113"} {:captureState "check_state_113"} {:sourceloc} {:sourceloc_num 226} true;
    call {:check_id "check_state_113"} {:sourceloc} {:sourceloc_num 226} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v156$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v156$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v156$2[8:0];
    call {:sourceloc} {:sourceloc_num 227} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v156$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_114"} {:captureState "check_state_114"} {:sourceloc} {:sourceloc_num 227} true;
    call {:check_id "check_state_114"} {:sourceloc} {:sourceloc_num 227} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v156$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v156$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v156$2[16:8];
    call {:sourceloc} {:sourceloc_num 228} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v156$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_115"} {:captureState "check_state_115"} {:sourceloc} {:sourceloc_num 228} true;
    call {:check_id "check_state_115"} {:sourceloc} {:sourceloc_num 228} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v156$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v156$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v156$2[24:16];
    call {:sourceloc} {:sourceloc_num 229} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v156$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_116"} {:captureState "check_state_116"} {:sourceloc} {:sourceloc_num 229} true;
    call {:check_id "check_state_116"} {:sourceloc} {:sourceloc_num 229} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v156$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v156$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v156$2[32:24];
    goto __partitioned_block_$falsebb_9;

  __partitioned_block_$falsebb_9:
    call {:sourceloc_num 230} $bugle_barrier_duplicated_8(1bv1, 1bv1);
    v157$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v157$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_117"} {:captureState "check_state_117"} {:sourceloc} {:sourceloc_num 232} true;
    v158$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v157$1), v1$1), 4bv32)];
    v158$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v157$2), v1$2), 4bv32)];
    v159$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v159$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_118"} {:captureState "check_state_118"} {:sourceloc} {:sourceloc_num 234} true;
    v160$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v159$1), v1$1), 4bv32), 1bv32)];
    v160$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v159$2), v1$2), 4bv32), 1bv32)];
    v161$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v161$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_119"} {:captureState "check_state_119"} {:sourceloc} {:sourceloc_num 236} true;
    v162$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v161$1), v1$1), 4bv32), 2bv32)];
    v162$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v161$2), v1$2), 4bv32), 2bv32)];
    v163$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v163$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_120"} {:captureState "check_state_120"} {:sourceloc} {:sourceloc_num 238} true;
    v164$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v163$1), v1$1), 4bv32), 3bv32)];
    v164$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v163$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_121"} {:captureState "check_state_121"} {:sourceloc} {:sourceloc_num 239} true;
    v165$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v158$1)];
    v165$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v158$2)];
    assume {:do_not_predicate} {:check_id "check_state_122"} {:captureState "check_state_122"} {:sourceloc} {:sourceloc_num 240} true;
    v166$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v160$1), 4bv32)];
    v166$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v160$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_123"} {:captureState "check_state_123"} {:sourceloc} {:sourceloc_num 241} true;
    v167$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$1), 4bv32), 1bv32)];
    v167$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_124"} {:captureState "check_state_124"} {:sourceloc} {:sourceloc_num 242} true;
    v168$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$1), 4bv32), 2bv32)];
    v168$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_125"} {:captureState "check_state_125"} {:sourceloc} {:sourceloc_num 243} true;
    v169$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$1), 4bv32), 3bv32)];
    v169$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v160$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_126"} {:captureState "check_state_126"} {:sourceloc} {:sourceloc_num 244} true;
    v170$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v162$1)];
    v170$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v162$2)];
    assume {:do_not_predicate} {:check_id "check_state_127"} {:captureState "check_state_127"} {:sourceloc} {:sourceloc_num 245} true;
    v171$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v164$1)];
    v171$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v164$2)];
    havoc v172$1, v172$2;
    $$agg.tmp461$0bv32$1 := v172$1;
    $$agg.tmp461$0bv32$2 := v172$2;
    havoc v173$1, v173$2;
    $$agg.tmp461$1bv32$1 := v173$1;
    $$agg.tmp461$1bv32$2 := v173$2;
    havoc v174$1, v174$2;
    $$agg.tmp461$2bv32$1 := v174$1;
    $$agg.tmp461$2bv32$2 := v174$2;
    call {:sourceloc_num 252} v175$1, v175$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp461, 0bv32), BV32_ADD(v0$1, 32bv32), BV32_ADD(v0$2, 32bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v176$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v165$1, v169$1 ++ v168$1 ++ v167$1 ++ v166$1), v170$1), v171$1), v175$1);
    v176$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v165$2, v169$2 ++ v168$2 ++ v167$2 ++ v166$2), v170$2), v171$2), v175$2);
    call {:sourceloc} {:sourceloc_num 253} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), v176$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_128"} {:captureState "check_state_128"} {:sourceloc} {:sourceloc_num 253} true;
    call {:check_id "check_state_128"} {:sourceloc} {:sourceloc_num 253} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), v176$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v176$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v176$2[8:0];
    call {:sourceloc} {:sourceloc_num 254} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v176$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_129"} {:captureState "check_state_129"} {:sourceloc} {:sourceloc_num 254} true;
    call {:check_id "check_state_129"} {:sourceloc} {:sourceloc_num 254} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v176$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v176$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v176$2[16:8];
    call {:sourceloc} {:sourceloc_num 255} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v176$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_130"} {:captureState "check_state_130"} {:sourceloc} {:sourceloc_num 255} true;
    call {:check_id "check_state_130"} {:sourceloc} {:sourceloc_num 255} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v176$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v176$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v176$2[24:16];
    call {:sourceloc} {:sourceloc_num 256} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v176$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_131"} {:captureState "check_state_131"} {:sourceloc} {:sourceloc_num 256} true;
    call {:check_id "check_state_131"} {:sourceloc} {:sourceloc_num 256} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v176$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v176$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v176$2[32:24];
    goto __partitioned_block_$falsebb_10;

  __partitioned_block_$falsebb_10:
    call {:sourceloc_num 257} $bugle_barrier_duplicated_9(1bv1, 1bv1);
    v177$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v177$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_132"} {:captureState "check_state_132"} {:sourceloc} {:sourceloc_num 259} true;
    v178$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v177$1), v1$1), 4bv32)];
    v178$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v177$2), v1$2), 4bv32)];
    v179$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v179$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_133"} {:captureState "check_state_133"} {:sourceloc} {:sourceloc_num 261} true;
    v180$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v179$1), v1$1), 4bv32), 1bv32)];
    v180$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v179$2), v1$2), 4bv32), 1bv32)];
    v181$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v181$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_134"} {:captureState "check_state_134"} {:sourceloc} {:sourceloc_num 263} true;
    v182$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v181$1), v1$1), 4bv32), 2bv32)];
    v182$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v181$2), v1$2), 4bv32), 2bv32)];
    v183$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v183$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_135"} {:captureState "check_state_135"} {:sourceloc} {:sourceloc_num 265} true;
    v184$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v183$1), v1$1), 4bv32), 3bv32)];
    v184$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v183$2), v1$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_136"} {:captureState "check_state_136"} {:sourceloc} {:sourceloc_num 266} true;
    v185$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v178$1)];
    v185$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v178$2)];
    assume {:do_not_predicate} {:check_id "check_state_137"} {:captureState "check_state_137"} {:sourceloc} {:sourceloc_num 267} true;
    v186$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV8_ZEXT32(v180$1), 4bv32)];
    v186$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v180$2), 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_138"} {:captureState "check_state_138"} {:sourceloc} {:sourceloc_num 268} true;
    v187$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$1), 4bv32), 1bv32)];
    v187$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$2), 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_139"} {:captureState "check_state_139"} {:sourceloc} {:sourceloc_num 269} true;
    v188$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$1), 4bv32), 2bv32)];
    v188$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$2), 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_140"} {:captureState "check_state_140"} {:sourceloc} {:sourceloc_num 270} true;
    v189$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$1), 4bv32), 3bv32)];
    v189$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v180$2), 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_141"} {:captureState "check_state_141"} {:sourceloc} {:sourceloc_num 271} true;
    v190$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v182$1)];
    v190$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v182$2)];
    assume {:do_not_predicate} {:check_id "check_state_142"} {:captureState "check_state_142"} {:sourceloc} {:sourceloc_num 272} true;
    v191$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v184$1)];
    v191$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v184$2)];
    havoc v192$1, v192$2;
    $$agg.tmp513$0bv32$1 := v192$1;
    $$agg.tmp513$0bv32$2 := v192$2;
    havoc v193$1, v193$2;
    $$agg.tmp513$1bv32$1 := v193$1;
    $$agg.tmp513$1bv32$2 := v193$2;
    havoc v194$1, v194$2;
    $$agg.tmp513$2bv32$1 := v194$1;
    $$agg.tmp513$2bv32$2 := v194$2;
    call {:sourceloc_num 279} v195$1, v195$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp513, 0bv32), BV32_ADD(v0$1, 36bv32), BV32_ADD(v0$2, 36bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v196$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v185$1, v189$1 ++ v188$1 ++ v187$1 ++ v186$1), v190$1), v191$1), v195$1);
    v196$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v185$2, v189$2 ++ v188$2 ++ v187$2 ++ v186$2), v190$2), v191$2), v195$2);
    call {:sourceloc} {:sourceloc_num 280} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4bv32), v196$1[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_143"} {:captureState "check_state_143"} {:sourceloc} {:sourceloc_num 280} true;
    call {:check_id "check_state_143"} {:sourceloc} {:sourceloc_num 280} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4bv32), v196$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := v196$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := v196$2[8:0];
    call {:sourceloc} {:sourceloc_num 281} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), v196$1[16:8], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_144"} {:captureState "check_state_144"} {:sourceloc} {:sourceloc_num 281} true;
    call {:check_id "check_state_144"} {:sourceloc} {:sourceloc_num 281} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), v196$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := v196$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := v196$2[16:8];
    call {:sourceloc} {:sourceloc_num 282} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), v196$1[24:16], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_145"} {:captureState "check_state_145"} {:sourceloc} {:sourceloc_num 282} true;
    call {:check_id "check_state_145"} {:sourceloc} {:sourceloc_num 282} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), v196$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := v196$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := v196$2[24:16];
    call {:sourceloc} {:sourceloc_num 283} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), v196$1[32:24], $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_146"} {:captureState "check_state_146"} {:sourceloc} {:sourceloc_num 283} true;
    call {:check_id "check_state_146"} {:sourceloc} {:sourceloc_num 283} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), v196$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := v196$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := v196$2[32:24];
    goto __partitioned_block_$falsebb_11;

  __partitioned_block_$falsebb_11:
    call {:sourceloc_num 284} $bugle_barrier_duplicated_10(1bv1, 1bv1);
    v197$1 := $$posIdx_E$1[BV32_MUL(v0$1, 4bv32)];
    v197$2 := $$posIdx_E$2[BV32_MUL(v0$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_147"} {:captureState "check_state_147"} {:sourceloc} {:sourceloc_num 286} true;
    v198$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v197$1), v1$1), 4bv32)];
    v198$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v197$2), v1$2), 4bv32)];
    v199$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 1bv32)];
    v199$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_148"} {:captureState "check_state_148"} {:sourceloc} {:sourceloc_num 288} true;
    v200$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v199$1), v1$1), 4bv32), 1bv32)];
    v200$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v199$2), v1$2), 4bv32), 1bv32)];
    v201$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 2bv32)];
    v201$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_149"} {:captureState "check_state_149"} {:sourceloc} {:sourceloc_num 290} true;
    v202$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v201$1), v1$1), 4bv32), 2bv32)];
    v202$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v201$2), v1$2), 4bv32), 2bv32)];
    v203$1 := $$posIdx_E$1[BV32_ADD(BV32_MUL(v0$1, 4bv32), 3bv32)];
    v203$2 := $$posIdx_E$2[BV32_ADD(BV32_MUL(v0$2, 4bv32), 3bv32)];
    assume {:do_not_predicate} {:check_id "check_state_150"} {:captureState "check_state_150"} {:sourceloc} {:sourceloc_num 292} true;
    v204$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v203$1), v1$1), 4bv32), 3bv32)];
    v204$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v203$2), v1$2), 4bv32), 3bv32)];
    havoc v205$1, v205$2;
    $$agg.tmp557$0bv32$1 := v205$1;
    $$agg.tmp557$0bv32$2 := v205$2;
    havoc v206$1, v206$2;
    $$agg.tmp557$1bv32$1 := v206$1;
    $$agg.tmp557$1bv32$2 := v206$2;
    havoc v207$1, v207$2;
    $$agg.tmp557$2bv32$1 := v207$1;
    $$agg.tmp557$2bv32$2 := v207$2;
    call {:sourceloc_num 299} v208$1, v208$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(MKPTR($arrayId$$agg.tmp557, 0bv32), BV32_ADD(v0$1, 40bv32), BV32_ADD(v0$2, 40bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    assume {:do_not_predicate} {:check_id "check_state_151"} {:captureState "check_state_151"} {:sourceloc} {:sourceloc_num 300} true;
    v209$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v204$1), 4bv32), 3bv32)];
    v209$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v204$2), 4bv32), 3bv32)];
    call {:sourceloc} {:sourceloc_num 301} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32), BV32_XOR(BV8_ZEXT32(v209$1), BV32_LSHR(v208$1, 24bv32))[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_152"} {:captureState "check_state_152"} {:sourceloc} {:sourceloc_num 301} true;
    call {:check_id "check_state_152"} {:sourceloc} {:sourceloc_num 301} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32), BV32_XOR(BV8_ZEXT32(v209$2), BV32_LSHR(v208$2, 24bv32))[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)] := BV32_XOR(BV8_ZEXT32(v209$1), BV32_LSHR(v208$1, 24bv32))[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)] := BV32_XOR(BV8_ZEXT32(v209$2), BV32_LSHR(v208$2, 24bv32))[8:0];
    assume {:do_not_predicate} {:check_id "check_state_153"} {:captureState "check_state_153"} {:sourceloc} {:sourceloc_num 302} true;
    v210$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v202$1), 4bv32), 3bv32)];
    v210$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v202$2), 4bv32), 3bv32)];
    call {:sourceloc} {:sourceloc_num 303} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32), BV32_XOR(BV8_ZEXT32(v210$1), BV32_AND(BV32_LSHR(v208$1, 16bv32), 255bv32))[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_154"} {:captureState "check_state_154"} {:sourceloc} {:sourceloc_num 303} true;
    call {:check_id "check_state_154"} {:sourceloc} {:sourceloc_num 303} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32), BV32_XOR(BV8_ZEXT32(v210$2), BV32_AND(BV32_LSHR(v208$2, 16bv32), 255bv32))[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)] := BV32_XOR(BV8_ZEXT32(v210$1), BV32_AND(BV32_LSHR(v208$1, 16bv32), 255bv32))[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)] := BV32_XOR(BV8_ZEXT32(v210$2), BV32_AND(BV32_LSHR(v208$2, 16bv32), 255bv32))[8:0];
    assume {:do_not_predicate} {:check_id "check_state_155"} {:captureState "check_state_155"} {:sourceloc} {:sourceloc_num 304} true;
    v211$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v200$1), 4bv32), 3bv32)];
    v211$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v200$2), 4bv32), 3bv32)];
    call {:sourceloc} {:sourceloc_num 305} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32), BV32_XOR(BV8_ZEXT32(v211$1), BV32_AND(BV32_LSHR(v208$1, 8bv32), 255bv32))[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_156"} {:captureState "check_state_156"} {:sourceloc} {:sourceloc_num 305} true;
    call {:check_id "check_state_156"} {:sourceloc} {:sourceloc_num 305} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32), BV32_XOR(BV8_ZEXT32(v211$2), BV32_AND(BV32_LSHR(v208$2, 8bv32), 255bv32))[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)] := BV32_XOR(BV8_ZEXT32(v211$1), BV32_AND(BV32_LSHR(v208$1, 8bv32), 255bv32))[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)] := BV32_XOR(BV8_ZEXT32(v211$2), BV32_AND(BV32_LSHR(v208$2, 8bv32), 255bv32))[8:0];
    assume {:do_not_predicate} {:check_id "check_state_157"} {:captureState "check_state_157"} {:sourceloc} {:sourceloc_num 306} true;
    v212$1 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV8_ZEXT32(v198$1), 4bv32), 3bv32)];
    v212$2 := $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV8_ZEXT32(v198$2), 4bv32), 3bv32)];
    call {:sourceloc} {:sourceloc_num 307} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4bv32), BV32_XOR(BV8_ZEXT32(v212$1), BV32_AND(v208$1, 255bv32))[8:0], $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_158"} {:captureState "check_state_158"} {:sourceloc} {:sourceloc_num 307} true;
    call {:check_id "check_state_158"} {:sourceloc} {:sourceloc_num 307} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4bv32), BV32_XOR(BV8_ZEXT32(v212$2), BV32_AND(v208$2, 255bv32))[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)] := BV32_XOR(BV8_ZEXT32(v212$1), BV32_AND(v208$1, 255bv32))[8:0];
    $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)] := BV32_XOR(BV8_ZEXT32(v212$2), BV32_AND(v208$2, 255bv32))[8:0];
    goto __partitioned_block_$falsebb_12;

  __partitioned_block_$falsebb_12:
    call {:sourceloc_num 308} $bugle_barrier_duplicated_11(1bv1, 1bv1);
    assume {:do_not_predicate} {:check_id "check_state_159"} {:captureState "check_state_159"} {:sourceloc} {:sourceloc_num 309} true;
    v213$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4bv32)];
    v213$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4bv32)];
    assume {:do_not_predicate} {:check_id "check_state_160"} {:captureState "check_state_160"} {:sourceloc} {:sourceloc_num 310} true;
    v214$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 1bv32)];
    v214$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 1bv32)];
    assume {:do_not_predicate} {:check_id "check_state_161"} {:captureState "check_state_161"} {:sourceloc} {:sourceloc_num 311} true;
    v215$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 2bv32)];
    v215$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 2bv32)];
    assume {:do_not_predicate} {:check_id "check_state_162"} {:captureState "check_state_162"} {:sourceloc} {:sourceloc_num 312} true;
    v216$1 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4bv32), 3bv32)];
    v216$2 := $$_ZZ13aesEncrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4bv32), 3bv32)];
    call {:sourceloc} {:sourceloc_num 313} _LOG_WRITE_$$result(true, BV32_ADD(BV32_MUL(256bv32, group_id_x$1), local_id_x$1), v216$1 ++ v215$1 ++ v214$1 ++ v213$1, $$result[BV32_ADD(BV32_MUL(256bv32, group_id_x$1), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(true, BV32_ADD(BV32_MUL(256bv32, group_id_x$2), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_163"} {:captureState "check_state_163"} {:sourceloc} {:sourceloc_num 313} true;
    call {:check_id "check_state_163"} {:sourceloc} {:sourceloc_num 313} _CHECK_WRITE_$$result(true, BV32_ADD(BV32_MUL(256bv32, group_id_x$2), local_id_x$2), v216$2 ++ v215$2 ++ v214$2 ++ v213$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$result"} true;
    $$result[BV32_ADD(BV32_MUL(256bv32, group_id_x$1), local_id_x$1)] := v216$1 ++ v215$1 ++ v214$1 ++ v213$1;
    $$result[BV32_ADD(BV32_MUL(256bv32, group_id_x$2), local_id_x$2)] := v216$2 ++ v215$2 ++ v214$2 ++ v213$2;
    return;

  $truebb:
    assume {:partition} v3;
    v4$1 := $$TBox0$1[BV32_ADD(local_id_x$1, $cnt.0)];
    v4$2 := $$TBox0$2[BV32_ADD(local_id_x$2, $cnt.0)];
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(true, BV32_ADD(local_id_x$1, $cnt.0), v4$1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(true, BV32_ADD(local_id_x$2, $cnt.0));
    assume {:do_not_predicate} {:check_id "check_state_164"} {:captureState "check_state_164"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_164"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(true, BV32_ADD(local_id_x$2, $cnt.0), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)] := v4$1;
    $$_ZZ13aesEncrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $cnt.0)] := v4$2;
    v5$1 := $$TBox1$1[BV32_ADD(local_id_x$1, $cnt.0)];
    v5$2 := $$TBox1$2[BV32_ADD(local_id_x$2, $cnt.0)];
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), v5$1[8:0], $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_165"} {:captureState "check_state_165"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_165"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), v5$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32)] := v5$1[8:0];
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32)] := v5$2[8:0];
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 1bv32), v5$1[16:8], $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_166"} {:captureState "check_state_166"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_166"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 1bv32), v5$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 1bv32)] := v5$1[16:8];
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 1bv32)] := v5$2[16:8];
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 2bv32), v5$1[24:16], $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_167"} {:captureState "check_state_167"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_167"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 2bv32), v5$2[24:16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 2bv32)] := v5$1[24:16];
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 2bv32)] := v5$2[24:16];
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 3bv32), v5$1[32:24], $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_168"} {:captureState "check_state_168"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_168"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(true, BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 3bv32), v5$2[32:24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, $cnt.0), 4bv32), 3bv32)] := v5$1[32:24];
    $$_ZZ13aesEncrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$2, $cnt.0), 4bv32), 3bv32)] := v5$2[32:24];
    v6$1 := $$TBox2$1[BV32_ADD(local_id_x$1, $cnt.0)];
    v6$2 := $$TBox2$2[BV32_ADD(local_id_x$2, $cnt.0)];
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(true, BV32_ADD(local_id_x$1, $cnt.0), v6$1, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(true, BV32_ADD(local_id_x$2, $cnt.0));
    assume {:do_not_predicate} {:check_id "check_state_169"} {:captureState "check_state_169"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_169"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(true, BV32_ADD(local_id_x$2, $cnt.0), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)] := v6$1;
    $$_ZZ13aesEncrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $cnt.0)] := v6$2;
    v7$1 := $$TBox3$1[BV32_ADD(local_id_x$1, $cnt.0)];
    v7$2 := $$TBox3$2[BV32_ADD(local_id_x$2, $cnt.0)];
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(true, BV32_ADD(local_id_x$1, $cnt.0), v7$1, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(true, BV32_ADD(local_id_x$2, $cnt.0));
    assume {:do_not_predicate} {:check_id "check_state_170"} {:captureState "check_state_170"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_170"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(true, BV32_ADD(local_id_x$2, $cnt.0), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} true;
    $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[1bv1][BV32_ADD(local_id_x$1, $cnt.0)] := v7$1;
    $$_ZZ13aesEncrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $cnt.0)] := v7$2;
    $cnt.0 := BV32_ADD($cnt.0, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;
}



procedure {:source_name "_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi($0: ptr, $1$1: bv32, $1$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 128bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_8($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_9($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_10($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_11($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ13aesEncrypt128PjS_iE11stageBlock1, $$_ZZ13aesEncrypt128PjS_iE10tBox0Block, $$_ZZ13aesEncrypt128PjS_iE10tBox1Block, $$_ZZ13aesEncrypt128PjS_iE10tBox2Block, $$_ZZ13aesEncrypt128PjS_iE10tBox3Block, $$_ZZ13aesEncrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



var $$agg.tmp$0bv32$1: bv32;

var $$agg.tmp$0bv32$2: bv32;

var $$agg.tmp$1bv32$1: bv32;

var $$agg.tmp$1bv32$2: bv32;

var $$agg.tmp$2bv32$1: bv32;

var $$agg.tmp$2bv32$2: bv32;

var $$agg.tmp97$0bv32$1: bv32;

var $$agg.tmp97$0bv32$2: bv32;

var $$agg.tmp97$1bv32$1: bv32;

var $$agg.tmp97$1bv32$2: bv32;

var $$agg.tmp97$2bv32$1: bv32;

var $$agg.tmp97$2bv32$2: bv32;

var $$agg.tmp149$0bv32$1: bv32;

var $$agg.tmp149$0bv32$2: bv32;

var $$agg.tmp149$1bv32$1: bv32;

var $$agg.tmp149$1bv32$2: bv32;

var $$agg.tmp149$2bv32$1: bv32;

var $$agg.tmp149$2bv32$2: bv32;

var $$agg.tmp201$0bv32$1: bv32;

var $$agg.tmp201$0bv32$2: bv32;

var $$agg.tmp201$1bv32$1: bv32;

var $$agg.tmp201$1bv32$2: bv32;

var $$agg.tmp201$2bv32$1: bv32;

var $$agg.tmp201$2bv32$2: bv32;

var $$agg.tmp253$0bv32$1: bv32;

var $$agg.tmp253$0bv32$2: bv32;

var $$agg.tmp253$1bv32$1: bv32;

var $$agg.tmp253$1bv32$2: bv32;

var $$agg.tmp253$2bv32$1: bv32;

var $$agg.tmp253$2bv32$2: bv32;

var $$agg.tmp305$0bv32$1: bv32;

var $$agg.tmp305$0bv32$2: bv32;

var $$agg.tmp305$1bv32$1: bv32;

var $$agg.tmp305$1bv32$2: bv32;

var $$agg.tmp305$2bv32$1: bv32;

var $$agg.tmp305$2bv32$2: bv32;

var $$agg.tmp357$0bv32$1: bv32;

var $$agg.tmp357$0bv32$2: bv32;

var $$agg.tmp357$1bv32$1: bv32;

var $$agg.tmp357$1bv32$2: bv32;

var $$agg.tmp357$2bv32$1: bv32;

var $$agg.tmp357$2bv32$2: bv32;

var $$agg.tmp409$0bv32$1: bv32;

var $$agg.tmp409$0bv32$2: bv32;

var $$agg.tmp409$1bv32$1: bv32;

var $$agg.tmp409$1bv32$2: bv32;

var $$agg.tmp409$2bv32$1: bv32;

var $$agg.tmp409$2bv32$2: bv32;

var $$agg.tmp461$0bv32$1: bv32;

var $$agg.tmp461$0bv32$2: bv32;

var $$agg.tmp461$1bv32$1: bv32;

var $$agg.tmp461$1bv32$2: bv32;

var $$agg.tmp461$2bv32$1: bv32;

var $$agg.tmp461$2bv32$2: bv32;

var $$agg.tmp513$0bv32$1: bv32;

var $$agg.tmp513$0bv32$2: bv32;

var $$agg.tmp513$1bv32$1: bv32;

var $$agg.tmp513$1bv32$2: bv32;

var $$agg.tmp513$2bv32$1: bv32;

var $$agg.tmp513$2bv32$2: bv32;

var $$agg.tmp557$0bv32$1: bv32;

var $$agg.tmp557$0bv32$2: bv32;

var $$agg.tmp557$1bv32$1: bv32;

var $$agg.tmp557$1bv32$2: bv32;

var $$agg.tmp557$2bv32$1: bv32;

var $$agg.tmp557$2bv32$2: bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

const _WATCHED_VALUE_$$result: bv32;

procedure {:inline 1} _LOG_READ_$$result(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_READ_$$result(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _READ_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_READ_$$result(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$result);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$result: bool;

procedure {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _WRITE_HAS_OCCURRED_$$result);
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



procedure _CHECK_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_ATOMIC_$$result(_P: bool, _offset: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



const _WATCHED_VALUE_$$inData: bv32;

procedure {:inline 1} _LOG_READ_$$inData(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$inData;



implementation {:inline 1} _LOG_READ_$$inData(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then true else _READ_HAS_OCCURRED_$$inData);
    return;
}



procedure _CHECK_READ_$$inData(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inData);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inData: bool;

procedure {:inline 1} _LOG_WRITE_$$inData(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$inData, _WRITE_READ_BENIGN_FLAG_$$inData;



implementation {:inline 1} _LOG_WRITE_$$inData(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then true else _WRITE_HAS_OCCURRED_$$inData);
    _WRITE_READ_BENIGN_FLAG_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inData);
    return;
}



procedure _CHECK_WRITE_$$inData(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData != _value);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData != _value);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inData(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$inData;



implementation {:inline 1} _LOG_ATOMIC_$$inData(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inData);
    return;
}



procedure _CHECK_ATOMIC_$$inData(_P: bool, _offset: bv32);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inData(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$inData;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inData(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inData := (if _P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inData);
    return;
}



const _WATCHED_VALUE_$$texEKey128: bv32;

procedure {:inline 1} _LOG_READ_$$texEKey128(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$texEKey128;



implementation {:inline 1} _LOG_READ_$$texEKey128(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texEKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texEKey128 == _value then true else _READ_HAS_OCCURRED_$$texEKey128);
    return;
}



procedure _CHECK_READ_$$texEKey128(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texEKey128);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texEKey128: bool;

procedure {:inline 1} _LOG_WRITE_$$texEKey128(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$texEKey128, _WRITE_READ_BENIGN_FLAG_$$texEKey128;



implementation {:inline 1} _LOG_WRITE_$$texEKey128(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texEKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texEKey128 == _value then true else _WRITE_HAS_OCCURRED_$$texEKey128);
    _WRITE_READ_BENIGN_FLAG_$$texEKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texEKey128 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texEKey128);
    return;
}



procedure _CHECK_WRITE_$$texEKey128(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texEKey128 != _value);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texEKey128 != _value);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texEKey128(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$texEKey128;



implementation {:inline 1} _LOG_ATOMIC_$$texEKey128(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texEKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texEKey128);
    return;
}



procedure _CHECK_ATOMIC_$$texEKey128(_P: bool, _offset: bv32);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset);
  requires {:source_name "texEKey128"} {:array "$$texEKey128"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texEKey128(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$texEKey128;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texEKey128(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texEKey128 := (if _P && _WRITE_HAS_OCCURRED_$$texEKey128 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texEKey128);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: bv8;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox0Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: bv8;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox1Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox2Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesEncrypt128PjS_iE10tBox3Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: bv8;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesEncrypt128PjS_iE11stageBlock2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_8($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_9($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_10($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_11($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon14;

  anon14:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon16;

  anon16:
    havoc _TRACKING;
    return;

  anon19_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$result;
    goto anon16;

  anon18_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock1;
    goto anon8;

  anon8:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox0Block;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox1Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox2Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesEncrypt128PjS_iE10tBox3Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesEncrypt128PjS_iE11stageBlock2;
    goto anon13;

  anon17_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

const {:existential true} _b4: bool;
