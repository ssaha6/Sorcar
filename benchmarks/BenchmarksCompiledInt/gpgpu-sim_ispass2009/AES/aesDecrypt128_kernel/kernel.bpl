type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "result"} {:global} $$result: [int]int;

axiom {:array_info "$$result"} {:global} {:elem_width 32} {:source_name "result"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$result: bool;

axiom {:array_info "$$inData"} {:global} {:elem_width 32} {:source_name "inData"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inData: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:source_name "stageBlock1"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE11stageBlock1: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:group_shared} {:elem_width 8} {:source_name "stageBlock1"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1: bool;

var {:source_name "TBoxi0"} {:constant} $$TBoxi0$1: [int]int;

var {:source_name "TBoxi0"} {:constant} $$TBoxi0$2: [int]int;

axiom {:array_info "$$TBoxi0"} {:constant} {:elem_width 32} {:source_name "TBoxi0"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:source_name "tBox0Block"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE10tBox0Block: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:group_shared} {:elem_width 32} {:source_name "tBox0Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block: bool;

var {:source_name "TBoxi1"} {:constant} $$TBoxi1$1: [int]int;

var {:source_name "TBoxi1"} {:constant} $$TBoxi1$2: [int]int;

axiom {:array_info "$$TBoxi1"} {:constant} {:elem_width 32} {:source_name "TBoxi1"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:source_name "tBox1Block"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE10tBox1Block: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:group_shared} {:elem_width 32} {:source_name "tBox1Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block: bool;

var {:source_name "TBoxi2"} {:constant} $$TBoxi2$1: [int]int;

var {:source_name "TBoxi2"} {:constant} $$TBoxi2$2: [int]int;

axiom {:array_info "$$TBoxi2"} {:constant} {:elem_width 32} {:source_name "TBoxi2"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:source_name "tBox2Block"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE10tBox2Block: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:group_shared} {:elem_width 32} {:source_name "tBox2Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block: bool;

var {:source_name "TBoxi3"} {:constant} $$TBoxi3$1: [int]int;

var {:source_name "TBoxi3"} {:constant} $$TBoxi3$2: [int]int;

axiom {:array_info "$$TBoxi3"} {:constant} {:elem_width 32} {:source_name "TBoxi3"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:source_name "tBox3Block"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE10tBox3Block: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:group_shared} {:elem_width 32} {:source_name "tBox3Block"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block: bool;

var {:source_name "inv_SBox"} {:constant} $$inv_SBox$1: [int]int;

var {:source_name "inv_SBox"} {:constant} $$inv_SBox$2: [int]int;

axiom {:array_info "$$inv_SBox"} {:constant} {:elem_width 32} {:source_name "inv_SBox"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:source_name "invSBoxBlock"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:group_shared} {:elem_width 8} {:source_name "invSBoxBlock"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: bool;

axiom {:array_info "$$texDKey128"} {:global} {:elem_width 32} {:source_name "texDKey128"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texDKey128: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texDKey128: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texDKey128: bool;

var {:source_name "stageBlock2"} {:group_shared} $$_ZZ13aesDecrypt128PjS_iE11stageBlock2: [bv1][int]int;

axiom {:array_info "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:group_shared} {:elem_width 8} {:source_name "stageBlock2"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2: bool;

var {:source_name "posIdx_D"} {:constant} $$posIdx_D$1: [int]int;

var {:source_name "posIdx_D"} {:constant} $$posIdx_D$2: [int]int;

axiom {:array_info "$$posIdx_D"} {:constant} {:elem_width 8} {:source_name "posIdx_D"} {:source_elem_width 8} {:source_dimensions "32"} true;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

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

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

function {:inline true} BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "aesDecrypt128"} {:kernel} $_Z13aesDecrypt128PjS_i($inputSize: int);
  requires !_READ_HAS_OCCURRED_$$result && !_WRITE_HAS_OCCURRED_$$result && !_ATOMIC_HAS_OCCURRED_$$result;
  requires !_READ_HAS_OCCURRED_$$inData && !_WRITE_HAS_OCCURRED_$$inData && !_ATOMIC_HAS_OCCURRED_$$inData;
  requires !_READ_HAS_OCCURRED_$$texDKey128 && !_WRITE_HAS_OCCURRED_$$texDKey128 && !_ATOMIC_HAS_OCCURRED_$$texDKey128;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
  requires !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
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
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$result, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1, _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, _TRACKING, _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:source_name "aesDecrypt128"} {:kernel} $_Z13aesDecrypt128PjS_i($inputSize: int)
{
  var v0$1: int;
  var v0$2: int;
  var v24$1: int;
  var v24$2: int;
  var v30$1: int;
  var v30$2: int;
  var v4$1: int;
  var v4$2: int;
  var v25$1: int;
  var v25$2: int;
  var v207$1: int;
  var v207$2: int;
  var v208$1: int;
  var v208$2: int;
  var v209$1: int;
  var v209$2: int;
  var v210$1: int;
  var v210$2: int;
  var v211$1: int;
  var v211$2: int;
  var v6$1: int;
  var v6$2: int;
  var v26$1: int;
  var v26$2: int;
  var v34$1: int;
  var v34$2: int;
  var v27$1: int;
  var v27$2: int;
  var v40$1: int;
  var v40$2: int;
  var v42$1: int;
  var v42$2: int;
  var v44$1: int;
  var v44$2: int;
  var v38$1: int;
  var v38$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
  var v79$1: int;
  var v79$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v43$1: int;
  var v43$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v127$1: int;
  var v127$2: int;
  var v128$1: int;
  var v128$2: int;
  var v129$1: int;
  var v129$2: int;
  var v130$1: int;
  var v130$2: int;
  var v125$1: int;
  var v125$2: int;
  var v126$1: int;
  var v126$2: int;
  var v205$1: int;
  var v205$2: int;
  var v206$1: int;
  var v206$2: int;
  var v203$1: int;
  var v203$2: int;
  var v204$1: int;
  var v204$2: int;
  var v39$1: int;
  var v39$2: int;
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
  var v201$1: int;
  var v201$2: int;
  var v202$1: int;
  var v202$2: int;
  var v137$1: int;
  var v137$2: int;
  var v138$1: int;
  var v138$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: int;
  var v142$2: int;
  var v143$1: int;
  var v143$2: int;
  var v7$1: int;
  var v7$2: int;
  var v1$1: int;
  var v1$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v62$1: int;
  var v62$2: int;
  var v122$1: int;
  var v122$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v147$1: int;
  var v147$2: int;
  var v148$1: int;
  var v148$2: int;
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
  var v151$1: int;
  var v151$2: int;
  var v41$1: int;
  var v41$2: int;
  var v216$1: int;
  var v216$2: int;
  var v217$1: int;
  var v217$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v102$1: int;
  var v102$2: int;
  var v139$1: int;
  var v139$2: int;
  var v152$1: int;
  var v152$2: int;
  var v153$1: int;
  var v153$2: int;
  var v154$1: int;
  var v154$2: int;
  var v155$1: int;
  var v155$2: int;
  var v156$1: int;
  var v156$2: int;
  var v157$1: int;
  var v157$2: int;
  var v158$1: int;
  var v158$2: int;
  var v159$1: int;
  var v159$2: int;
  var v160$1: int;
  var v160$2: int;
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
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v47$1: int;
  var v47$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v161$1: int;
  var v161$2: int;
  var v162$1: int;
  var v162$2: int;
  var v163$1: int;
  var v163$2: int;
  var v164$1: int;
  var v164$2: int;
  var v165$1: int;
  var v165$2: int;
  var v166$1: int;
  var v166$2: int;
  var v19$1: int;
  var v19$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v81$1: int;
  var v81$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v167$1: int;
  var v167$2: int;
  var v168$1: int;
  var v168$2: int;
  var v169$1: int;
  var v169$2: int;
  var v170$1: int;
  var v170$2: int;
  var v171$1: int;
  var v171$2: int;
  var v172$1: int;
  var v172$2: int;
  var v173$1: int;
  var v173$2: int;
  var v174$1: int;
  var v174$2: int;
  var v175$1: int;
  var v175$2: int;
  var v176$1: int;
  var v176$2: int;
  var v177$1: int;
  var v177$2: int;
  var v178$1: int;
  var v178$2: int;
  var v179$1: int;
  var v179$2: int;
  var v5$1: int;
  var v5$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v107$1: int;
  var v107$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v213$1: int;
  var v213$2: int;
  var v214$1: int;
  var v214$2: int;
  var v215$1: int;
  var v215$2: int;
  var v180$1: int;
  var v180$2: int;
  var v181$1: int;
  var v181$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v2$1: int;
  var v2$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v59$1: int;
  var v59$2: int;
  var v110$1: int;
  var v110$2: int;
  var v111$1: int;
  var v111$2: int;
  var v112$1: int;
  var v112$2: int;
  var v113$1: int;
  var v113$2: int;
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: int;
  var v116$2: int;
  var v182$1: int;
  var v182$2: int;
  var v183$1: int;
  var v183$2: int;
  var v184$1: int;
  var v184$2: int;
  var v185$1: int;
  var v185$2: int;
  var v186$1: int;
  var v186$2: int;
  var v187$1: int;
  var v187$2: int;
  var v22$1: int;
  var v22$2: int;
  var v97$1: int;
  var v97$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v60$1: int;
  var v60$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v188$1: int;
  var v188$2: int;
  var v189$1: int;
  var v189$2: int;
  var v190$1: int;
  var v190$2: int;
  var v191$1: int;
  var v191$2: int;
  var v192$1: int;
  var v192$2: int;
  var v193$1: int;
  var v193$2: int;
  var v194$1: int;
  var v194$2: int;
  var v195$1: int;
  var v195$2: int;
  var v196$1: int;
  var v196$2: int;
  var v197$1: int;
  var v197$2: int;
  var v198$1: int;
  var v198$2: int;
  var v212$1: int;
  var v212$2: int;
  var v199$1: int;
  var v199$2: int;
  var v200$1: int;
  var v200$2: int;
  var v23$1: int;
  var v23$2: int;
  var v35$1: int;
  var v35$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v61$1: int;
  var v61$2: int;
  var v120$1: int;
  var v120$2: int;
  var v121$1: int;
  var v121$2: int;
  var v131$1: int;
  var v131$2: int;
  var v132$1: int;
  var v132$2: int;
  var v133$1: int;
  var v133$2: int;
  var v134$1: int;
  var v134$2: int;
  var v135$1: int;
  var v135$2: int;
  var v136$1: int;
  var v136$2: int;
  var v64$1: int;
  var v64$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v80$1: int;
  var v80$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v3$1: int;
  var v3$2: int;
  var v63$1: int;
  var v63$2: int;
  var v218$1: int;
  var v218$2: int;
  var v219$1: int;
  var v219$2: int;
  var v220$1: int;
  var v220$2: int;
  var v221$1: int;
  var v221$2: int;
  var v222$1: int;
  var v222$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_UREM(local_id_x$1, 4);
    v0$2 := BV32_UREM(local_id_x$2, 4);
    v1$1 := BV32_MUL(BV32_UDIV(local_id_x$1, 4), 4);
    v1$2 := BV32_MUL(BV32_UDIV(local_id_x$2, 4), 4);
    havoc v2$1, v2$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v2$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v2$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v2$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v2$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v2$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v2$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v2$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v2$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v2$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v2$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v2$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v2$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v2$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v2$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v2$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v2$2, 32, 24);
    v3$1 := $$TBoxi0$1[local_id_x$1];
    v3$2 := $$TBoxi0$2[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, local_id_x$1, v3$1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, local_id_x$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][local_id_x$1] := v3$1;
    $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v3$2;
    v4$1 := $$TBoxi1$1[local_id_x$1];
    v4$2 := $$TBoxi1$2[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, local_id_x$1, v4$1, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, local_id_x$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][local_id_x$1] := v4$1;
    $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v4$2;
    v5$1 := $$TBoxi2$1[local_id_x$1];
    v5$2 := $$TBoxi2$2[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, local_id_x$1, v5$1, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, local_id_x$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][local_id_x$1] := v5$1;
    $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v5$2;
    v6$1 := $$TBoxi3$1[local_id_x$1];
    v6$2 := $$TBoxi3$2[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, local_id_x$1, v6$1, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, local_id_x$2, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][local_id_x$1] := v6$1;
    $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v6$2;
    v7$1 := $$inv_SBox$1[local_id_x$1];
    v7$2 := $$inv_SBox$2[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v7$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v7$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} true;
    $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v7$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v7$2, 8, 0);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_0(-1, -1);
    havoc v8$1, v8$2;
    $$0$0$1 := v8$1;
    $$0$0$2 := v8$2;
    havoc v9$1, v9$2;
    $$0$1$1 := v9$1;
    $$0$1$2 := v9$2;
    havoc v10$1, v10$2;
    $$0$2$1 := v10$1;
    $$0$2$2 := v10$2;
    v11$1 := $$0$0$1;
    v11$2 := $$0$0$2;
    v12$1 := $$0$1$1;
    v12$2 := $$0$1$2;
    v13$1 := $$0$2$1;
    v13$2 := $$0$2$2;
    call {:sourceloc_num 26} v14$1, v14$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v11$1, v12$1, v13$1, v0$1, v11$2, v12$2, v13$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v15$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)];
    v15$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)];
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v16$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)];
    v16$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v17$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)];
    v17$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v18$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)];
    v18$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)];
    v19$1 := BV32_XOR(BV_CONCAT(BV_CONCAT(BV_CONCAT(v18$1, v17$1), v16$1), v15$1), v14$1);
    v19$2 := BV32_XOR(BV_CONCAT(BV_CONCAT(BV_CONCAT(v18$2, v17$2), v16$2), v15$2), v14$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v19$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v19$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v19$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v19$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v19$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v19$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v19$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v19$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v19$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v19$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v19$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v19$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v19$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v19$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v19$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v19$2, 32, 24);
    goto __partitioned_block_$0_2;

  __partitioned_block_$0_2:
    call {:sourceloc_num 35} $bugle_barrier_duplicated_1(-1, -1);
    v20$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v20$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v21$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$1), v1$1), 4)];
    v21$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v20$2), v1$2), 4)];
    v22$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v22$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v23$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$1), v1$1), 4), 1)];
    v23$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v22$2), v1$2), 4), 1)];
    v24$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v24$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v25$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$1), v1$1), 4), 2)];
    v25$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v24$2), v1$2), 4), 2)];
    v26$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v26$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v27$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$1), v1$1), 4), 3)];
    v27$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v26$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v21$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v21$1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v21$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v21$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v28$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v21$1)];
    v28$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v21$2)];
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v23$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v23$1)]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v23$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v23$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v29$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v23$1)];
    v29$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v23$2)];
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v25$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v25$1)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v25$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v25$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v30$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v25$1)];
    v30$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v25$2)];
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v27$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v27$1)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v27$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v27$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v31$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v27$1)];
    v31$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v27$2)];
    havoc v32$1, v32$2;
    $$1$0$1 := v32$1;
    $$1$0$2 := v32$2;
    havoc v33$1, v33$2;
    $$1$1$1 := v33$1;
    $$1$1$2 := v33$2;
    havoc v34$1, v34$2;
    $$1$2$1 := v34$1;
    $$1$2$2 := v34$2;
    v35$1 := $$1$0$1;
    v35$2 := $$1$0$2;
    v36$1 := $$1$1$1;
    v36$2 := $$1$1$2;
    v37$1 := $$1$2$1;
    v37$2 := $$1$2$2;
    call {:sourceloc_num 57} v38$1, v38$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v35$1, v36$1, v37$1, BV32_ADD(v0$1, 4), v35$2, v36$2, v37$2, BV32_ADD(v0$2, 4));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v39$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v28$1, v29$1), v30$1), v31$1), v38$1);
    v39$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v28$2, v29$2), v30$2), v31$2), v38$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v39$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v39$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v39$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v39$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v39$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v39$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v39$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v39$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v39$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v39$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v39$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v39$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v39$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v39$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v39$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v39$2, 32, 24);
    goto __partitioned_block_$0_3;

  __partitioned_block_$0_3:
    call {:sourceloc_num 62} $bugle_barrier_duplicated_2(-1, -1);
    v40$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v40$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v41$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$1), v1$1), 4)];
    v41$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v40$2), v1$2), 4)];
    v42$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v42$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v43$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$1), v1$1), 4), 1)];
    v43$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v42$2), v1$2), 4), 1)];
    v44$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v44$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v45$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$1), v1$1), 4), 2)];
    v45$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v44$2), v1$2), 4), 2)];
    v46$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v46$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v47$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$1), v1$1), 4), 3)];
    v47$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v46$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v41$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v41$1)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v41$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v41$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v48$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v41$1)];
    v48$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v41$2)];
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v43$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v43$1)]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v43$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v43$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v49$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v43$1)];
    v49$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v43$2)];
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v45$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v45$1)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v45$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v45$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v50$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v45$1)];
    v50$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v45$2)];
    call {:sourceloc} {:sourceloc_num 74} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v47$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v47$1)]);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 74} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v47$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v47$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v51$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v47$1)];
    v51$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v47$2)];
    havoc v52$1, v52$2;
    $$2$0$1 := v52$1;
    $$2$0$2 := v52$2;
    havoc v53$1, v53$2;
    $$2$1$1 := v53$1;
    $$2$1$2 := v53$2;
    havoc v54$1, v54$2;
    $$2$2$1 := v54$1;
    $$2$2$2 := v54$2;
    v55$1 := $$2$0$1;
    v55$2 := $$2$0$2;
    v56$1 := $$2$1$1;
    v56$2 := $$2$1$2;
    v57$1 := $$2$2$1;
    v57$2 := $$2$2$2;
    call {:sourceloc_num 84} v58$1, v58$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v55$1, v56$1, v57$1, BV32_ADD(v0$1, 8), v55$2, v56$2, v57$2, BV32_ADD(v0$2, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v59$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v48$1, v49$1), v50$1), v51$1), v58$1);
    v59$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v48$2, v49$2), v50$2), v51$2), v58$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v59$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v59$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v59$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v59$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v59$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v59$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v59$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v59$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 87} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v59$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 87} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v59$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v59$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v59$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v59$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v59$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v59$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v59$2, 32, 24);
    goto __partitioned_block_$0_4;

  __partitioned_block_$0_4:
    call {:sourceloc_num 89} $bugle_barrier_duplicated_3(-1, -1);
    v60$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v60$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 91} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 91} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v61$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$1), v1$1), 4)];
    v61$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v60$2), v1$2), 4)];
    v62$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v62$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 93} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 93} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v63$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$1), v1$1), 4), 1)];
    v63$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v62$2), v1$2), 4), 1)];
    v64$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v64$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 95} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 95} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v65$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$1), v1$1), 4), 2)];
    v65$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v64$2), v1$2), 4), 2)];
    v66$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v66$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 97} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 97} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v67$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$1), v1$1), 4), 3)];
    v67$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v66$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v61$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v61$1)]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v61$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v61$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v68$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v61$1)];
    v68$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v61$2)];
    call {:sourceloc} {:sourceloc_num 99} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v63$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v63$1)]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 99} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v63$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v63$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v69$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v63$1)];
    v69$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v63$2)];
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v65$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v65$1)]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v65$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v65$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v70$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v65$1)];
    v70$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v65$2)];
    call {:sourceloc} {:sourceloc_num 101} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v67$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v67$1)]);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 101} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v67$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v67$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v71$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v67$1)];
    v71$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v67$2)];
    havoc v72$1, v72$2;
    $$3$0$1 := v72$1;
    $$3$0$2 := v72$2;
    havoc v73$1, v73$2;
    $$3$1$1 := v73$1;
    $$3$1$2 := v73$2;
    havoc v74$1, v74$2;
    $$3$2$1 := v74$1;
    $$3$2$2 := v74$2;
    v75$1 := $$3$0$1;
    v75$2 := $$3$0$2;
    v76$1 := $$3$1$1;
    v76$2 := $$3$1$2;
    v77$1 := $$3$2$1;
    v77$2 := $$3$2$2;
    call {:sourceloc_num 111} v78$1, v78$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v75$1, v76$1, v77$1, BV32_ADD(v0$1, 12), v75$2, v76$2, v77$2, BV32_ADD(v0$2, 12));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v79$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v68$1, v69$1), v70$1), v71$1), v78$1);
    v79$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v68$2, v69$2), v70$2), v71$2), v78$2);
    call {:sourceloc} {:sourceloc_num 112} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v79$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 112} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 112} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v79$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v79$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v79$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v79$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v79$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v79$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v79$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 114} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v79$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 114} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 114} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v79$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v79$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v79$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 115} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v79$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 115} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v79$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v79$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v79$2, 32, 24);
    goto __partitioned_block_$0_5;

  __partitioned_block_$0_5:
    call {:sourceloc_num 116} $bugle_barrier_duplicated_4(-1, -1);
    v80$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v80$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 118} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 118} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v81$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$1), v1$1), 4)];
    v81$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v80$2), v1$2), 4)];
    v82$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v82$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 120} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 120} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v83$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$1), v1$1), 4), 1)];
    v83$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v82$2), v1$2), 4), 1)];
    v84$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v84$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 122} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 122} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 122} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v85$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$1), v1$1), 4), 2)];
    v85$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v84$2), v1$2), 4), 2)];
    v86$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v86$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 124} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 124} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v87$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$1), v1$1), 4), 3)];
    v87$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v86$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 125} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v81$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v81$1)]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 125} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 125} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v81$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v81$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v88$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v81$1)];
    v88$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v81$2)];
    call {:sourceloc} {:sourceloc_num 126} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v83$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v83$1)]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 126} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 126} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v83$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v83$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v89$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v83$1)];
    v89$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v83$2)];
    call {:sourceloc} {:sourceloc_num 127} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v85$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v85$1)]);
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 127} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 127} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v85$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v85$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v90$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v85$1)];
    v90$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v85$2)];
    call {:sourceloc} {:sourceloc_num 128} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v87$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v87$1)]);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 128} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 128} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v87$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v87$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v91$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v87$1)];
    v91$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v87$2)];
    havoc v92$1, v92$2;
    $$4$0$1 := v92$1;
    $$4$0$2 := v92$2;
    havoc v93$1, v93$2;
    $$4$1$1 := v93$1;
    $$4$1$2 := v93$2;
    havoc v94$1, v94$2;
    $$4$2$1 := v94$1;
    $$4$2$2 := v94$2;
    v95$1 := $$4$0$1;
    v95$2 := $$4$0$2;
    v96$1 := $$4$1$1;
    v96$2 := $$4$1$2;
    v97$1 := $$4$2$1;
    v97$2 := $$4$2$2;
    call {:sourceloc_num 138} v98$1, v98$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v95$1, v96$1, v97$1, BV32_ADD(v0$1, 16), v95$2, v96$2, v97$2, BV32_ADD(v0$2, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v99$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v88$1, v89$1), v90$1), v91$1), v98$1);
    v99$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v88$2, v89$2), v90$2), v91$2), v98$2);
    call {:sourceloc} {:sourceloc_num 139} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v99$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 139} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 139} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v99$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v99$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v99$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 140} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v99$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 140} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 140} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v99$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v99$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v99$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 141} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v99$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 141} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 141} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v99$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v99$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v99$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 142} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v99$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 142} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v99$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v99$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v99$2, 32, 24);
    goto __partitioned_block_$0_6;

  __partitioned_block_$0_6:
    call {:sourceloc_num 143} $bugle_barrier_duplicated_5(-1, -1);
    v100$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v100$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 145} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 145} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v101$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$1), v1$1), 4)];
    v101$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v100$2), v1$2), 4)];
    v102$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v102$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 147} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 147} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v103$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$1), v1$1), 4), 1)];
    v103$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v102$2), v1$2), 4), 1)];
    v104$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v104$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 149} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 149} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v105$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$1), v1$1), 4), 2)];
    v105$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v104$2), v1$2), 4), 2)];
    v106$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v106$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 151} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 151} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v107$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$1), v1$1), 4), 3)];
    v107$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v106$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 152} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v101$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v101$1)]);
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 152} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v101$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v101$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v108$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v101$1)];
    v108$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v101$2)];
    call {:sourceloc} {:sourceloc_num 153} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v103$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v103$1)]);
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 153} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v103$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v103$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v109$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v103$1)];
    v109$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v103$2)];
    call {:sourceloc} {:sourceloc_num 154} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v105$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v105$1)]);
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 154} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 154} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v105$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v105$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v110$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v105$1)];
    v110$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v105$2)];
    call {:sourceloc} {:sourceloc_num 155} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v107$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v107$1)]);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 155} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v107$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v107$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v111$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v107$1)];
    v111$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v107$2)];
    havoc v112$1, v112$2;
    $$5$0$1 := v112$1;
    $$5$0$2 := v112$2;
    havoc v113$1, v113$2;
    $$5$1$1 := v113$1;
    $$5$1$2 := v113$2;
    havoc v114$1, v114$2;
    $$5$2$1 := v114$1;
    $$5$2$2 := v114$2;
    v115$1 := $$5$0$1;
    v115$2 := $$5$0$2;
    v116$1 := $$5$1$1;
    v116$2 := $$5$1$2;
    v117$1 := $$5$2$1;
    v117$2 := $$5$2$2;
    call {:sourceloc_num 165} v118$1, v118$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v115$1, v116$1, v117$1, BV32_ADD(v0$1, 20), v115$2, v116$2, v117$2, BV32_ADD(v0$2, 20));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v119$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v108$1, v109$1), v110$1), v111$1), v118$1);
    v119$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v108$2, v109$2), v110$2), v111$2), v118$2);
    call {:sourceloc} {:sourceloc_num 166} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v119$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 166} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 166} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v119$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v119$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v119$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 167} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v119$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 167} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 167} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v119$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v119$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v119$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 168} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v119$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 168} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 168} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v119$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v119$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v119$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 169} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v119$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 169} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 169} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v119$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v119$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v119$2, 32, 24);
    goto __partitioned_block_$0_7;

  __partitioned_block_$0_7:
    call {:sourceloc_num 170} $bugle_barrier_duplicated_6(-1, -1);
    v120$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v120$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 172} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 172} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 172} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v121$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$1), v1$1), 4)];
    v121$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v120$2), v1$2), 4)];
    v122$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v122$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 174} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 174} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v123$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$1), v1$1), 4), 1)];
    v123$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v122$2), v1$2), 4), 1)];
    v124$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v124$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 176} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 176} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 176} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v125$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$1), v1$1), 4), 2)];
    v125$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v124$2), v1$2), 4), 2)];
    v126$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v126$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 178} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 178} true;
    call {:check_id "check_state_80"} {:sourceloc} {:sourceloc_num 178} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v127$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$1), v1$1), 4), 3)];
    v127$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v126$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 179} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v121$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v121$1)]);
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 179} true;
    call {:check_id "check_state_81"} {:sourceloc} {:sourceloc_num 179} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v121$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v121$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v128$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v121$1)];
    v128$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v121$2)];
    call {:sourceloc} {:sourceloc_num 180} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v123$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v123$1)]);
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 180} true;
    call {:check_id "check_state_82"} {:sourceloc} {:sourceloc_num 180} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v123$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v123$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v129$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v123$1)];
    v129$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v123$2)];
    call {:sourceloc} {:sourceloc_num 181} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v125$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v125$1)]);
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 181} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 181} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v125$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v125$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v130$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v125$1)];
    v130$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v125$2)];
    call {:sourceloc} {:sourceloc_num 182} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v127$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v127$1)]);
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_84"} {:sourceloc} {:sourceloc_num 182} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v127$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v127$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v131$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v127$1)];
    v131$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v127$2)];
    havoc v132$1, v132$2;
    $$6$0$1 := v132$1;
    $$6$0$2 := v132$2;
    havoc v133$1, v133$2;
    $$6$1$1 := v133$1;
    $$6$1$2 := v133$2;
    havoc v134$1, v134$2;
    $$6$2$1 := v134$1;
    $$6$2$2 := v134$2;
    v135$1 := $$6$0$1;
    v135$2 := $$6$0$2;
    v136$1 := $$6$1$1;
    v136$2 := $$6$1$2;
    v137$1 := $$6$2$1;
    v137$2 := $$6$2$2;
    call {:sourceloc_num 192} v138$1, v138$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v135$1, v136$1, v137$1, BV32_ADD(v0$1, 24), v135$2, v136$2, v137$2, BV32_ADD(v0$2, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v139$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v128$1, v129$1), v130$1), v131$1), v138$1);
    v139$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v128$2, v129$2), v130$2), v131$2), v138$2);
    call {:sourceloc} {:sourceloc_num 193} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v139$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 193} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 193} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v139$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v139$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v139$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 194} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v139$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 194} true;
    call {:check_id "check_state_86"} {:sourceloc} {:sourceloc_num 194} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v139$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v139$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v139$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 195} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v139$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 195} true;
    call {:check_id "check_state_87"} {:sourceloc} {:sourceloc_num 195} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v139$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v139$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v139$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 196} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v139$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 196} true;
    call {:check_id "check_state_88"} {:sourceloc} {:sourceloc_num 196} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v139$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v139$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v139$2, 32, 24);
    goto __partitioned_block_$0_8;

  __partitioned_block_$0_8:
    call {:sourceloc_num 197} $bugle_barrier_duplicated_7(-1, -1);
    v140$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v140$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 199} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 199} true;
    call {:check_id "check_state_89"} {:sourceloc} {:sourceloc_num 199} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v141$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$1), v1$1), 4)];
    v141$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v140$2), v1$2), 4)];
    v142$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v142$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 201} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_90"} {:sourceloc} {:sourceloc_num 201} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v143$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$1), v1$1), 4), 1)];
    v143$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v142$2), v1$2), 4), 1)];
    v144$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v144$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 203} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 203} true;
    call {:check_id "check_state_91"} {:sourceloc} {:sourceloc_num 203} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v145$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$1), v1$1), 4), 2)];
    v145$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v144$2), v1$2), 4), 2)];
    v146$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v146$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 205} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 205} true;
    call {:check_id "check_state_92"} {:sourceloc} {:sourceloc_num 205} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v147$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$1), v1$1), 4), 3)];
    v147$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v146$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 206} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v141$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v141$1)]);
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 206} true;
    call {:check_id "check_state_93"} {:sourceloc} {:sourceloc_num 206} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v141$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v141$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v148$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v141$1)];
    v148$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v141$2)];
    call {:sourceloc} {:sourceloc_num 207} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v143$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v143$1)]);
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 207} true;
    call {:check_id "check_state_94"} {:sourceloc} {:sourceloc_num 207} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v143$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v143$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v149$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v143$1)];
    v149$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v143$2)];
    call {:sourceloc} {:sourceloc_num 208} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v145$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v145$1)]);
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 208} true;
    call {:check_id "check_state_95"} {:sourceloc} {:sourceloc_num 208} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v145$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v145$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v150$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v145$1)];
    v150$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v145$2)];
    call {:sourceloc} {:sourceloc_num 209} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v147$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v147$1)]);
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 209} true;
    call {:check_id "check_state_96"} {:sourceloc} {:sourceloc_num 209} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v147$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v147$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v151$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v147$1)];
    v151$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v147$2)];
    havoc v152$1, v152$2;
    $$7$0$1 := v152$1;
    $$7$0$2 := v152$2;
    havoc v153$1, v153$2;
    $$7$1$1 := v153$1;
    $$7$1$2 := v153$2;
    havoc v154$1, v154$2;
    $$7$2$1 := v154$1;
    $$7$2$2 := v154$2;
    v155$1 := $$7$0$1;
    v155$2 := $$7$0$2;
    v156$1 := $$7$1$1;
    v156$2 := $$7$1$2;
    v157$1 := $$7$2$1;
    v157$2 := $$7$2$2;
    call {:sourceloc_num 219} v158$1, v158$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v155$1, v156$1, v157$1, BV32_ADD(v0$1, 28), v155$2, v156$2, v157$2, BV32_ADD(v0$2, 28));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v159$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v148$1, v149$1), v150$1), v151$1), v158$1);
    v159$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v148$2, v149$2), v150$2), v151$2), v158$2);
    call {:sourceloc} {:sourceloc_num 220} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v159$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 220} true;
    call {:check_id "check_state_97"} {:sourceloc} {:sourceloc_num 220} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v159$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v159$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v159$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 221} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v159$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 221} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 221} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v159$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v159$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v159$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 222} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v159$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_99"} {:captureState "check_state_99"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_99"} {:sourceloc} {:sourceloc_num 222} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v159$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v159$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v159$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 223} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v159$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_100"} {:captureState "check_state_100"} {:sourceloc} {:sourceloc_num 223} true;
    call {:check_id "check_state_100"} {:sourceloc} {:sourceloc_num 223} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v159$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v159$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v159$2, 32, 24);
    goto __partitioned_block_$0_9;

  __partitioned_block_$0_9:
    call {:sourceloc_num 224} $bugle_barrier_duplicated_8(-1, -1);
    v160$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v160$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 226} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_101"} {:captureState "check_state_101"} {:sourceloc} {:sourceloc_num 226} true;
    call {:check_id "check_state_101"} {:sourceloc} {:sourceloc_num 226} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v161$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$1), v1$1), 4)];
    v161$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v160$2), v1$2), 4)];
    v162$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v162$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 228} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_102"} {:captureState "check_state_102"} {:sourceloc} {:sourceloc_num 228} true;
    call {:check_id "check_state_102"} {:sourceloc} {:sourceloc_num 228} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v163$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$1), v1$1), 4), 1)];
    v163$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v162$2), v1$2), 4), 1)];
    v164$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v164$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 230} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_103"} {:captureState "check_state_103"} {:sourceloc} {:sourceloc_num 230} true;
    call {:check_id "check_state_103"} {:sourceloc} {:sourceloc_num 230} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v165$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$1), v1$1), 4), 2)];
    v165$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v164$2), v1$2), 4), 2)];
    v166$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v166$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 232} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_104"} {:captureState "check_state_104"} {:sourceloc} {:sourceloc_num 232} true;
    call {:check_id "check_state_104"} {:sourceloc} {:sourceloc_num 232} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v167$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$1), v1$1), 4), 3)];
    v167$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v166$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 233} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v161$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v161$1)]);
    assume {:do_not_predicate} {:check_id "check_state_105"} {:captureState "check_state_105"} {:sourceloc} {:sourceloc_num 233} true;
    call {:check_id "check_state_105"} {:sourceloc} {:sourceloc_num 233} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v161$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v161$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v168$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v161$1)];
    v168$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v161$2)];
    call {:sourceloc} {:sourceloc_num 234} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v163$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v163$1)]);
    assume {:do_not_predicate} {:check_id "check_state_106"} {:captureState "check_state_106"} {:sourceloc} {:sourceloc_num 234} true;
    call {:check_id "check_state_106"} {:sourceloc} {:sourceloc_num 234} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v163$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v163$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v169$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v163$1)];
    v169$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v163$2)];
    call {:sourceloc} {:sourceloc_num 235} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v165$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v165$1)]);
    assume {:do_not_predicate} {:check_id "check_state_107"} {:captureState "check_state_107"} {:sourceloc} {:sourceloc_num 235} true;
    call {:check_id "check_state_107"} {:sourceloc} {:sourceloc_num 235} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v165$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v165$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v170$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v165$1)];
    v170$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v165$2)];
    call {:sourceloc} {:sourceloc_num 236} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v167$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v167$1)]);
    assume {:do_not_predicate} {:check_id "check_state_108"} {:captureState "check_state_108"} {:sourceloc} {:sourceloc_num 236} true;
    call {:check_id "check_state_108"} {:sourceloc} {:sourceloc_num 236} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v167$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v167$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v171$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v167$1)];
    v171$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v167$2)];
    havoc v172$1, v172$2;
    $$8$0$1 := v172$1;
    $$8$0$2 := v172$2;
    havoc v173$1, v173$2;
    $$8$1$1 := v173$1;
    $$8$1$2 := v173$2;
    havoc v174$1, v174$2;
    $$8$2$1 := v174$1;
    $$8$2$2 := v174$2;
    v175$1 := $$8$0$1;
    v175$2 := $$8$0$2;
    v176$1 := $$8$1$1;
    v176$2 := $$8$1$2;
    v177$1 := $$8$2$1;
    v177$2 := $$8$2$2;
    call {:sourceloc_num 246} v178$1, v178$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v175$1, v176$1, v177$1, BV32_ADD(v0$1, 32), v175$2, v176$2, v177$2, BV32_ADD(v0$2, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v179$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v168$1, v169$1), v170$1), v171$1), v178$1);
    v179$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v168$2, v169$2), v170$2), v171$2), v178$2);
    call {:sourceloc} {:sourceloc_num 247} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v179$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_109"} {:captureState "check_state_109"} {:sourceloc} {:sourceloc_num 247} true;
    call {:check_id "check_state_109"} {:sourceloc} {:sourceloc_num 247} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v179$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v179$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v179$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 248} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v179$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_110"} {:captureState "check_state_110"} {:sourceloc} {:sourceloc_num 248} true;
    call {:check_id "check_state_110"} {:sourceloc} {:sourceloc_num 248} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v179$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v179$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v179$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 249} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v179$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_111"} {:captureState "check_state_111"} {:sourceloc} {:sourceloc_num 249} true;
    call {:check_id "check_state_111"} {:sourceloc} {:sourceloc_num 249} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v179$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v179$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v179$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 250} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v179$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_112"} {:captureState "check_state_112"} {:sourceloc} {:sourceloc_num 250} true;
    call {:check_id "check_state_112"} {:sourceloc} {:sourceloc_num 250} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v179$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v179$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v179$2, 32, 24);
    goto __partitioned_block_$0_10;

  __partitioned_block_$0_10:
    call {:sourceloc_num 251} $bugle_barrier_duplicated_9(-1, -1);
    v180$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v180$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 253} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_113"} {:captureState "check_state_113"} {:sourceloc} {:sourceloc_num 253} true;
    call {:check_id "check_state_113"} {:sourceloc} {:sourceloc_num 253} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v181$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$1), v1$1), 4)];
    v181$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v180$2), v1$2), 4)];
    v182$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v182$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 255} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_114"} {:captureState "check_state_114"} {:sourceloc} {:sourceloc_num 255} true;
    call {:check_id "check_state_114"} {:sourceloc} {:sourceloc_num 255} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v183$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$1), v1$1), 4), 1)];
    v183$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v182$2), v1$2), 4), 1)];
    v184$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v184$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 257} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_115"} {:captureState "check_state_115"} {:sourceloc} {:sourceloc_num 257} true;
    call {:check_id "check_state_115"} {:sourceloc} {:sourceloc_num 257} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v185$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$1), v1$1), 4), 2)];
    v185$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v184$2), v1$2), 4), 2)];
    v186$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v186$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 259} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_116"} {:captureState "check_state_116"} {:sourceloc} {:sourceloc_num 259} true;
    call {:check_id "check_state_116"} {:sourceloc} {:sourceloc_num 259} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v187$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$1), v1$1), 4), 3)];
    v187$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v186$2), v1$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 260} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v181$1), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v181$1)]);
    assume {:do_not_predicate} {:check_id "check_state_117"} {:captureState "check_state_117"} {:sourceloc} {:sourceloc_num 260} true;
    call {:check_id "check_state_117"} {:sourceloc} {:sourceloc_num 260} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(true, BV8_ZEXT32(v181$2), $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v181$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} true;
    v188$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[1bv1][BV8_ZEXT32(v181$1)];
    v188$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox0Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v181$2)];
    call {:sourceloc} {:sourceloc_num 261} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v183$1), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v183$1)]);
    assume {:do_not_predicate} {:check_id "check_state_118"} {:captureState "check_state_118"} {:sourceloc} {:sourceloc_num 261} true;
    call {:check_id "check_state_118"} {:sourceloc} {:sourceloc_num 261} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(true, BV8_ZEXT32(v183$2), $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v183$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} true;
    v189$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[1bv1][BV8_ZEXT32(v183$1)];
    v189$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox1Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v183$2)];
    call {:sourceloc} {:sourceloc_num 262} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v185$1), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v185$1)]);
    assume {:do_not_predicate} {:check_id "check_state_119"} {:captureState "check_state_119"} {:sourceloc} {:sourceloc_num 262} true;
    call {:check_id "check_state_119"} {:sourceloc} {:sourceloc_num 262} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(true, BV8_ZEXT32(v185$2), $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v185$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} true;
    v190$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[1bv1][BV8_ZEXT32(v185$1)];
    v190$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox2Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v185$2)];
    call {:sourceloc} {:sourceloc_num 263} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v187$1), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v187$1)]);
    assume {:do_not_predicate} {:check_id "check_state_120"} {:captureState "check_state_120"} {:sourceloc} {:sourceloc_num 263} true;
    call {:check_id "check_state_120"} {:sourceloc} {:sourceloc_num 263} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(true, BV8_ZEXT32(v187$2), $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v187$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} true;
    v191$1 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[1bv1][BV8_ZEXT32(v187$1)];
    v191$2 := $$_ZZ13aesDecrypt128PjS_iE10tBox3Block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV8_ZEXT32(v187$2)];
    havoc v192$1, v192$2;
    $$9$0$1 := v192$1;
    $$9$0$2 := v192$2;
    havoc v193$1, v193$2;
    $$9$1$1 := v193$1;
    $$9$1$2 := v193$2;
    havoc v194$1, v194$2;
    $$9$2$1 := v194$1;
    $$9$2$2 := v194$2;
    v195$1 := $$9$0$1;
    v195$2 := $$9$0$2;
    v196$1 := $$9$1$1;
    v196$2 := $$9$1$2;
    v197$1 := $$9$2$1;
    v197$2 := $$9$2$2;
    call {:sourceloc_num 273} v198$1, v198$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v195$1, v196$1, v197$1, BV32_ADD(v0$1, 36), v195$2, v196$2, v197$2, BV32_ADD(v0$2, 36));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    v199$1 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v188$1, v189$1), v190$1), v191$1), v198$1);
    v199$2 := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(v188$2, v189$2), v190$2), v191$2), v198$2);
    call {:sourceloc} {:sourceloc_num 274} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(v199$1, 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_121"} {:captureState "check_state_121"} {:sourceloc} {:sourceloc_num 274} true;
    call {:check_id "check_state_121"} {:sourceloc} {:sourceloc_num 274} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(v199$2, 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(v199$1, 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(v199$2, 8, 0);
    call {:sourceloc} {:sourceloc_num 275} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(v199$1, 16, 8), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_122"} {:captureState "check_state_122"} {:sourceloc} {:sourceloc_num 275} true;
    call {:check_id "check_state_122"} {:sourceloc} {:sourceloc_num 275} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(v199$2, 16, 8));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(v199$1, 16, 8);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(v199$2, 16, 8);
    call {:sourceloc} {:sourceloc_num 276} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(v199$1, 24, 16), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_123"} {:captureState "check_state_123"} {:sourceloc} {:sourceloc_num 276} true;
    call {:check_id "check_state_123"} {:sourceloc} {:sourceloc_num 276} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(v199$2, 24, 16));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(v199$1, 24, 16);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(v199$2, 24, 16);
    call {:sourceloc} {:sourceloc_num 277} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(v199$1, 32, 24), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_124"} {:captureState "check_state_124"} {:sourceloc} {:sourceloc_num 277} true;
    call {:check_id "check_state_124"} {:sourceloc} {:sourceloc_num 277} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(v199$2, 32, 24));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(v199$1, 32, 24);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(v199$2, 32, 24);
    goto __partitioned_block_$0_11;

  __partitioned_block_$0_11:
    call {:sourceloc_num 278} $bugle_barrier_duplicated_10(-1, -1);
    v200$1 := $$posIdx_D$1[BV32_ADD(16, BV32_MUL(v0$1, 4))];
    v200$2 := $$posIdx_D$2[BV32_ADD(16, BV32_MUL(v0$2, 4))];
    call {:sourceloc} {:sourceloc_num 280} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$1), v1$1), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$1), v1$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_125"} {:captureState "check_state_125"} {:sourceloc} {:sourceloc_num 280} true;
    call {:check_id "check_state_125"} {:sourceloc} {:sourceloc_num 280} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$2), v1$2), 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$2), v1$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v201$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$1), v1$1), 4)];
    v201$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV8_ZEXT32(v200$2), v1$2), 4)];
    v202$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 17)];
    v202$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 17)];
    call {:sourceloc} {:sourceloc_num 282} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$1), v1$1), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$1), v1$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_126"} {:captureState "check_state_126"} {:sourceloc} {:sourceloc_num 282} true;
    call {:check_id "check_state_126"} {:sourceloc} {:sourceloc_num 282} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$2), v1$2), 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$2), v1$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v203$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$1), v1$1), 4), 1)];
    v203$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v202$2), v1$2), 4), 1)];
    v204$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 18)];
    v204$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 18)];
    call {:sourceloc} {:sourceloc_num 284} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$1), v1$1), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$1), v1$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_127"} {:captureState "check_state_127"} {:sourceloc} {:sourceloc_num 284} true;
    call {:check_id "check_state_127"} {:sourceloc} {:sourceloc_num 284} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$2), v1$2), 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$2), v1$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v205$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$1), v1$1), 4), 2)];
    v205$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v204$2), v1$2), 4), 2)];
    v206$1 := $$posIdx_D$1[BV32_ADD(BV32_MUL(v0$1, 4), 19)];
    v206$2 := $$posIdx_D$2[BV32_ADD(BV32_MUL(v0$2, 4), 19)];
    call {:sourceloc} {:sourceloc_num 286} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$1), v1$1), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$1), v1$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_128"} {:captureState "check_state_128"} {:sourceloc} {:sourceloc_num 286} true;
    call {:check_id "check_state_128"} {:sourceloc} {:sourceloc_num 286} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(true, BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$2), v1$2), 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$2), v1$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} true;
    v207$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$1), v1$1), 4), 3)];
    v207$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV8_ZEXT32(v206$2), v1$2), 4), 3)];
    havoc v208$1, v208$2;
    $$10$0$1 := v208$1;
    $$10$0$2 := v208$2;
    havoc v209$1, v209$2;
    $$10$1$1 := v209$1;
    $$10$1$2 := v209$2;
    havoc v210$1, v210$2;
    $$10$2$1 := v210$1;
    $$10$2$2 := v210$2;
    v211$1 := $$10$0$1;
    v211$2 := $$10$0$2;
    v212$1 := $$10$1$1;
    v212$2 := $$10$1$2;
    v213$1 := $$10$2$1;
    v213$2 := $$10$2$2;
    call {:sourceloc_num 296} v214$1, v214$2 := $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(v211$1, v212$1, v213$1, BV32_ADD(v0$1, 40), v211$2, v212$2, v213$2, BV32_ADD(v0$2, 40));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 297} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v207$1), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v207$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_129"} {:captureState "check_state_129"} {:sourceloc} {:sourceloc_num 297} true;
    call {:check_id "check_state_129"} {:sourceloc} {:sourceloc_num 297} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v207$2), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v207$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} true;
    v215$1 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v207$1), 4)];
    v215$2 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v207$2), 4)];
    call {:sourceloc} {:sourceloc_num 298} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v215$1), BV32_LSHR(v214$1, 24)), 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_130"} {:captureState "check_state_130"} {:sourceloc} {:sourceloc_num 298} true;
    call {:check_id "check_state_130"} {:sourceloc} {:sourceloc_num 298} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v215$2), BV32_LSHR(v214$2, 24)), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v215$1), BV32_LSHR(v214$1, 24)), 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v215$2), BV32_LSHR(v214$2, 24)), 8, 0);
    call {:sourceloc} {:sourceloc_num 299} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v205$1), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v205$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_131"} {:captureState "check_state_131"} {:sourceloc} {:sourceloc_num 299} true;
    call {:check_id "check_state_131"} {:sourceloc} {:sourceloc_num 299} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v205$2), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v205$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} true;
    v216$1 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v205$1), 4)];
    v216$2 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v205$2), 4)];
    call {:sourceloc} {:sourceloc_num 300} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v216$1), BV32_AND(BV32_LSHR(v214$1, 16), 255)), 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_132"} {:captureState "check_state_132"} {:sourceloc} {:sourceloc_num 300} true;
    call {:check_id "check_state_132"} {:sourceloc} {:sourceloc_num 300} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v216$2), BV32_AND(BV32_LSHR(v214$2, 16), 255)), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v216$1), BV32_AND(BV32_LSHR(v214$1, 16), 255)), 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v216$2), BV32_AND(BV32_LSHR(v214$2, 16), 255)), 8, 0);
    call {:sourceloc} {:sourceloc_num 301} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v203$1), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v203$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_133"} {:captureState "check_state_133"} {:sourceloc} {:sourceloc_num 301} true;
    call {:check_id "check_state_133"} {:sourceloc} {:sourceloc_num 301} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v203$2), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v203$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} true;
    v217$1 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v203$1), 4)];
    v217$2 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v203$2), 4)];
    call {:sourceloc} {:sourceloc_num 302} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v217$1), BV32_AND(BV32_LSHR(v214$1, 8), 255)), 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_134"} {:captureState "check_state_134"} {:sourceloc} {:sourceloc_num 302} true;
    call {:check_id "check_state_134"} {:sourceloc} {:sourceloc_num 302} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v217$2), BV32_AND(BV32_LSHR(v214$2, 8), 255)), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v217$1), BV32_AND(BV32_LSHR(v214$1, 8), 255)), 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v217$2), BV32_AND(BV32_LSHR(v214$2, 8), 255)), 8, 0);
    call {:sourceloc} {:sourceloc_num 303} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v201$1), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v201$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_135"} {:captureState "check_state_135"} {:sourceloc} {:sourceloc_num 303} true;
    call {:check_id "check_state_135"} {:sourceloc} {:sourceloc_num 303} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(true, BV32_MUL(BV8_ZEXT32(v201$2), 4), $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v201$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} true;
    v218$1 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[1bv1][BV32_MUL(BV8_ZEXT32(v201$1), 4)];
    v218$2 := $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV8_ZEXT32(v201$2), 4)];
    call {:sourceloc} {:sourceloc_num 304} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v218$1), BV32_AND(v214$1, 255)), 8, 0), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_136"} {:captureState "check_state_136"} {:sourceloc} {:sourceloc_num 304} true;
    call {:check_id "check_state_136"} {:sourceloc} {:sourceloc_num 304} _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v218$2), BV32_AND(v214$2, 255)), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v218$1), BV32_AND(v214$1, 255)), 8, 0);
    $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)] := BV_EXTRACT(BV32_XOR(BV8_ZEXT32(v218$2), BV32_AND(v214$2, 255)), 8, 0);
    goto __partitioned_block_$0_12;

  __partitioned_block_$0_12:
    call {:sourceloc_num 305} $bugle_barrier_duplicated_11(-1, -1);
    call {:sourceloc} {:sourceloc_num 306} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$1, 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_137"} {:captureState "check_state_137"} {:sourceloc} {:sourceloc_num 306} true;
    call {:check_id "check_state_137"} {:sourceloc} {:sourceloc_num 306} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_MUL(local_id_x$2, 4), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v219$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_MUL(local_id_x$1, 4)];
    v219$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 4)];
    call {:sourceloc} {:sourceloc_num 307} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_138"} {:captureState "check_state_138"} {:sourceloc} {:sourceloc_num 307} true;
    call {:check_id "check_state_138"} {:sourceloc} {:sourceloc_num 307} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 1), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v220$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 1)];
    v220$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 308} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_139"} {:captureState "check_state_139"} {:sourceloc} {:sourceloc_num 308} true;
    call {:check_id "check_state_139"} {:sourceloc} {:sourceloc_num 308} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 2), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v221$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 2)];
    v221$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 309} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$1, 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_140"} {:captureState "check_state_140"} {:sourceloc} {:sourceloc_num 309} true;
    call {:check_id "check_state_140"} {:sourceloc} {:sourceloc_num 309} _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(true, BV32_ADD(BV32_MUL(local_id_x$2, 4), 3), $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} true;
    v222$1 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 4), 3)];
    v222$2 := $$_ZZ13aesDecrypt128PjS_iE11stageBlock2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 4), 3)];
    call {:sourceloc} {:sourceloc_num 310} _LOG_WRITE_$$result(true, BV32_ADD(BV32_MUL(256, group_id_x$1), local_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v222$1, v221$1), v220$1), v219$1), $$result[BV32_ADD(BV32_MUL(256, group_id_x$1), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(true, BV32_ADD(BV32_MUL(256, group_id_x$2), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_141"} {:captureState "check_state_141"} {:sourceloc} {:sourceloc_num 310} true;
    call {:check_id "check_state_141"} {:sourceloc} {:sourceloc_num 310} _CHECK_WRITE_$$result(true, BV32_ADD(BV32_MUL(256, group_id_x$2), local_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v222$2, v221$2), v220$2), v219$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$result"} true;
    $$result[BV32_ADD(BV32_MUL(256, group_id_x$1), local_id_x$1)] := BV_CONCAT(BV_CONCAT(BV_CONCAT(v222$1, v221$1), v220$1), v219$1);
    $$result[BV32_ADD(BV32_MUL(256, group_id_x$2), local_id_x$2)] := BV_CONCAT(BV_CONCAT(BV_CONCAT(v222$2, v221$2), v220$2), v219$2);
    return;
}



procedure {:source_name "_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIjET_7textureIS0_Li1EL19cudaTextureReadMode0EEi($0$1: int, $1$1: int, $2$1: int, $3$1: int, $0$2: int, $1$2: int, $2$2: int, $3$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_8($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_9($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_10($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_11($0: int, $1: int);
  modifies $$_ZZ13aesDecrypt128PjS_iE11stageBlock1, $$_ZZ13aesDecrypt128PjS_iE10tBox0Block, $$_ZZ13aesDecrypt128PjS_iE10tBox1Block, $$_ZZ13aesDecrypt128PjS_iE10tBox2Block, $$_ZZ13aesDecrypt128PjS_iE10tBox3Block, $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, $$_ZZ13aesDecrypt128PjS_iE11stageBlock2, $$result, _TRACKING;



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

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$10$2$1: int;

var $$10$2$2: int;

const _WATCHED_VALUE_$$result: int;

procedure {:inline 1} _LOG_READ_$$result(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_READ_$$result(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _READ_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_READ_$$result(_P: bool, _offset: int, _value: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$result);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$result: bool;

procedure {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _WRITE_HAS_OCCURRED_$$result);
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



procedure _CHECK_WRITE_$$result(_P: bool, _offset: int, _value: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_ATOMIC_$$result(_P: bool, _offset: int);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



const _WATCHED_VALUE_$$inData: int;

procedure {:inline 1} _LOG_READ_$$inData(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$inData;



implementation {:inline 1} _LOG_READ_$$inData(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then true else _READ_HAS_OCCURRED_$$inData);
    return;
}



procedure _CHECK_READ_$$inData(_P: bool, _offset: int, _value: int);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inData);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inData: bool;

procedure {:inline 1} _LOG_WRITE_$$inData(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$inData, _WRITE_READ_BENIGN_FLAG_$$inData;



implementation {:inline 1} _LOG_WRITE_$$inData(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then true else _WRITE_HAS_OCCURRED_$$inData);
    _WRITE_READ_BENIGN_FLAG_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inData);
    return;
}



procedure _CHECK_WRITE_$$inData(_P: bool, _offset: int, _value: int);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData != _value);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inData != _value);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inData(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$inData;



implementation {:inline 1} _LOG_ATOMIC_$$inData(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inData);
    return;
}



procedure _CHECK_ATOMIC_$$inData(_P: bool, _offset: int);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);
  requires {:source_name "inData"} {:array "$$inData"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inData(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$inData;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inData(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inData := (if _P && _WRITE_HAS_OCCURRED_$$inData && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inData);
    return;
}



const _WATCHED_VALUE_$$texDKey128: int;

procedure {:inline 1} _LOG_READ_$$texDKey128(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texDKey128;



implementation {:inline 1} _LOG_READ_$$texDKey128(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texDKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texDKey128 == _value then true else _READ_HAS_OCCURRED_$$texDKey128);
    return;
}



procedure _CHECK_READ_$$texDKey128(_P: bool, _offset: int, _value: int);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texDKey128);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texDKey128: bool;

procedure {:inline 1} _LOG_WRITE_$$texDKey128(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texDKey128, _WRITE_READ_BENIGN_FLAG_$$texDKey128;



implementation {:inline 1} _LOG_WRITE_$$texDKey128(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texDKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texDKey128 == _value then true else _WRITE_HAS_OCCURRED_$$texDKey128);
    _WRITE_READ_BENIGN_FLAG_$$texDKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texDKey128 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texDKey128);
    return;
}



procedure _CHECK_WRITE_$$texDKey128(_P: bool, _offset: int, _value: int);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texDKey128 != _value);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texDKey128 != _value);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texDKey128(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texDKey128;



implementation {:inline 1} _LOG_ATOMIC_$$texDKey128(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texDKey128 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texDKey128);
    return;
}



procedure _CHECK_ATOMIC_$$texDKey128(_P: bool, _offset: int);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset);
  requires {:source_name "texDKey128"} {:array "$$texDKey128"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texDKey128(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texDKey128;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texDKey128(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texDKey128 := (if _P && _WRITE_HAS_OCCURRED_$$texDKey128 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texDKey128);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int, _value: int);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock1"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox0Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox0Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox1Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox1Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox2Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox2Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int, _value: int);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tBox3Block"} {:array "$$_ZZ13aesDecrypt128PjS_iE10tBox3Block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "invSBoxBlock"} {:array "$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock);
    return;
}



const _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 == _value then true else _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_READ_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2, _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int, _value: int);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "stageBlock2"} {:array "$$_ZZ13aesDecrypt128PjS_iE11stageBlock2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_8($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_9($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_10($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_11($0: int, $1: int)
{

  __BarrierImpl:
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon5;

  anon5:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon6;

  anon6:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon7;

  anon7:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon15;

  anon15:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon16;

  anon16:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon18;

  anon18:
    havoc _TRACKING;
    return;

  anon21_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$result;
    goto anon18;

  anon20_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock1;
    goto anon9;

  anon9:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox0Block;
    goto anon10;

  anon10:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox1Block;
    goto anon11;

  anon11:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox2Block;
    goto anon12;

  anon12:
    havoc $$_ZZ13aesDecrypt128PjS_iE10tBox3Block;
    goto anon13;

  anon13:
    havoc $$_ZZ13aesDecrypt128PjS_iE12invSBoxBlock;
    goto anon14;

  anon14:
    havoc $$_ZZ13aesDecrypt128PjS_iE11stageBlock2;
    goto anon15;

  anon19_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



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
