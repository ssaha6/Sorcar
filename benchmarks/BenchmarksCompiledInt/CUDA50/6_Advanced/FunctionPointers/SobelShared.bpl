type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "pSobelOriginal"} {:global} $$pSobelOriginal: [int]int;

axiom {:array_info "$$pSobelOriginal"} {:global} {:elem_width 8} {:source_name "pSobelOriginal"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pSobelOriginal: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pSobelOriginal: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pSobelOriginal: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$out"} {:elem_width 8} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "blockFunction_table"} {:global} $$blockFunction_table: [int]functionPtr;

axiom {:array_info "$$blockFunction_table"} {:global} {:elem_width 32} {:source_name "blockFunction_table"} {:source_elem_width 32} {:source_dimensions "2"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockFunction_table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockFunction_table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockFunction_table: bool;

var {:source_name "LocalBlock"} {:group_shared} $$LocalBlock: [bv1][int]int;

axiom {:array_info "$$LocalBlock"} {:group_shared} {:elem_width 8} {:source_name "LocalBlock"} {:source_elem_width 8} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$LocalBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$LocalBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$LocalBlock: bool;

axiom {:array_info "$$tex"} {:global} {:elem_width 8} {:source_name "tex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex: bool;

var {:source_name "blockFunction"} {:global} $$blockFunction: [int]functionPtr;

axiom {:array_info "$$blockFunction"} {:global} {:elem_width 32} {:source_name "blockFunction"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockFunction: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockFunction: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockFunction: bool;

const _WATCHED_OFFSET: int;

type functionPtr = bv4;

const $functionId$$_Z12ComputeSobelhhhhhhhhhf: functionPtr;

axiom $functionId$$_Z12ComputeSobelhhhhhhhhhf == 1bv4;

const $functionId$$abs: functionPtr;

axiom $functionId$$abs == 2bv4;

const $functionId$$_Z10ComputeBoxhhhhhhhhhf: functionPtr;

axiom $functionId$$_Z10ComputeBoxhhhhhhhhhf == 3bv4;

const $functionId$$_Z9Thresholdhf: functionPtr;

axiom $functionId$$_Z9Thresholdhf == 4bv4;

const $functionId$$_Z11SobelSharedP6uchar4tssssfiPFhhfE: functionPtr;

axiom $functionId$$_Z11SobelSharedP6uchar4tssssfiPFhhfE == 5bv4;

const $functionId$$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff: functionPtr;

axiom $functionId$$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff == 6bv4;

const $functionId$$bugle_barrier: functionPtr;

axiom $functionId$$bugle_barrier == 7bv4;

const $functionId$$null$: functionPtr;

axiom $functionId$$null$ == 0bv4;

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

function BV32_ASHR(int, int) : int;

function BV16_SEXT32(int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_TO_SI16(int) : int;

function SI16_TO_FP32(int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV16_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "ComputeSobel"} $_Z12ComputeSobelhhhhhhhhhf(_P$1: bool, $ul$1: int, $um$1: int, $ur$1: int, $ml$1: int, $mm$1: int, $mr$1: int, $ll$1: int, $lm$1: int, $lr$1: int, $fScale$1: int, _P$2: bool, $ul$2: int, $um$2: int, $ur$2: int, $ml$2: int, $mm$2: int, $mr$2: int, $ll$2: int, $lm$2: int, $lr$2: int, $fScale$2: int) returns ($ret$1: int, $ret$2: int);
  requires _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
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
  requires _b17 ==> _P$1 == _P$2;
  requires _b18 ==> _P$1 && _P$2 ==> $ul$1 == $ul$2;
  requires _b19 ==> $ul$1 == $ul$2;
  requires _b20 ==> _P$1 && _P$2 ==> $um$1 == $um$2;
  requires _b21 ==> $um$1 == $um$2;
  requires _b22 ==> _P$1 && _P$2 ==> $ur$1 == $ur$2;
  requires _b23 ==> $ur$1 == $ur$2;
  requires _b24 ==> _P$1 && _P$2 ==> $ml$1 == $ml$2;
  requires _b25 ==> $ml$1 == $ml$2;
  requires _b26 ==> _P$1 && _P$2 ==> $mm$1 == $mm$2;
  requires _b27 ==> $mm$1 == $mm$2;
  requires _b28 ==> _P$1 && _P$2 ==> $mr$1 == $mr$2;
  requires _b29 ==> $mr$1 == $mr$2;
  requires _b30 ==> _P$1 && _P$2 ==> $ll$1 == $ll$2;
  requires _b31 ==> $ll$1 == $ll$2;
  requires _b32 ==> _P$1 && _P$2 ==> $lm$1 == $lm$2;
  requires _b33 ==> $lm$1 == $lm$2;
  requires _b34 ==> _P$1 && _P$2 ==> $lr$1 == $lr$2;
  requires _b35 ==> $lr$1 == $lr$2;
  requires _b36 ==> _P$1 && _P$2 ==> $fScale$1 == $fScale$2;
  requires _b37 ==> $fScale$1 == $fScale$2;
  requires _b38 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  requires _b39 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  requires _b40 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  requires _b41 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b42 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b43 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b44 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  requires _b45 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  requires _b46 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  requires _b47 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b48 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b49 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b50 ==> !_READ_HAS_OCCURRED_$$tex;
  requires _b51 ==> !_WRITE_HAS_OCCURRED_$$tex;
  requires _b52 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  requires _b53 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b54 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b55 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b56 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  requires _b57 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  requires _b58 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  requires _b59 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b60 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b61 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b62 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  requires _b63 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  requires _b64 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  requires _b65 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b66 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b67 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _b68 ==> $ret$1 == $ret$2;
  ensures _b69 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b70 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b71 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b72 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b73 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b74 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b75 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  ensures _b76 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  ensures _b77 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  ensures _b78 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b79 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b80 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b81 ==> !_READ_HAS_OCCURRED_$$tex;
  ensures _b82 ==> !_WRITE_HAS_OCCURRED_$$tex;
  ensures _b83 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  ensures _b84 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b85 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b86 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b87 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  ensures _b88 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  ensures _b89 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  ensures _b90 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b91 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b92 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b93 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  ensures _b94 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  ensures _b95 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  ensures _b96 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b97 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b98 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;



implementation {:source_name "ComputeSobel"} $_Z12ComputeSobelhhhhhhhhhf(_P$1: bool, $ul$1: int, $um$1: int, $ur$1: int, $ml$1: int, $mm$1: int, $mr$1: int, $ll$1: int, $lm$1: int, $lr$1: int, $fScale$1: int, _P$2: bool, $ul$2: int, $um$2: int, $ur$2: int, $ml$2: int, $mm$2: int, $mr$2: int, $ll$2: int, $lm$2: int, $lr$2: int, $fScale$2: int) returns ($ret$1: int, $ret$2: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;


  $0:
    call {:sourceloc_num 1} v0$1, v0$2 := $abs(_P$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32($ur$1), BV32_MUL(2, BV8_ZEXT32($mr$1))), BV8_ZEXT32($lr$1)), BV8_ZEXT32($ul$1)), BV32_MUL(2, BV8_ZEXT32($ml$1))), BV8_ZEXT32($ll$1)), 16, 0))), _P$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32($ur$2), BV32_MUL(2, BV8_ZEXT32($mr$2))), BV8_ZEXT32($lr$2)), BV8_ZEXT32($ul$2)), BV32_MUL(2, BV8_ZEXT32($ml$2))), BV8_ZEXT32($ll$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 2} v1$1, v1$2 := $abs(_P$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32($ul$1), BV32_MUL(2, BV8_ZEXT32($um$1))), BV8_ZEXT32($ur$1)), BV8_ZEXT32($ll$1)), BV32_MUL(2, BV8_ZEXT32($lm$1))), BV8_ZEXT32($lr$1)), 16, 0))), _P$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32($ul$2), BV32_MUL(2, BV8_ZEXT32($um$2))), BV8_ZEXT32($ur$2)), BV8_ZEXT32($ll$2)), BV32_MUL(2, BV8_ZEXT32($lm$2))), BV8_ZEXT32($lr$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v2$1 := (if _P$1 then FP32_TO_SI16(FMUL32($fScale$1, FADD32(v0$1, v1$1))) else v2$1);
    v2$2 := (if _P$2 then FP32_TO_SI16(FMUL32($fScale$2, FADD32(v0$2, v1$2))) else v2$2);
    v3$1 := (if _P$1 then BV32_SLT(BV16_SEXT32(v2$1), 0) else v3$1);
    v3$2 := (if _P$2 then BV32_SLT(BV16_SEXT32(v2$2), 0) else v3$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if _P$1 && v3$1 then v3$1 else p0$1);
    p0$2 := (if _P$2 && v3$2 then v3$2 else p0$2);
    p1$1 := (if _P$1 && !v3$1 then !v3$1 else p1$1);
    p1$2 := (if _P$2 && !v3$2 then !v3$2 else p1$2);
    $0$1 := (if p0$1 then 0 else $0$1);
    $0$2 := (if p0$2 then 0 else $0$2);
    v4$1 := (if p1$1 then BV32_SGT(BV16_SEXT32(v2$1), 255) else v4$1);
    v4$2 := (if p1$2 then BV32_SGT(BV16_SEXT32(v2$2), 255) else v4$2);
    p2$1 := (if p1$1 && v4$1 then v4$1 else p2$1);
    p2$2 := (if p1$2 && v4$2 then v4$2 else p2$2);
    p3$1 := (if p1$1 && !v4$1 then !v4$1 else p3$1);
    p3$2 := (if p1$2 && !v4$2 then !v4$2 else p3$2);
    $1$1 := (if p2$1 then 255 else $1$1);
    $1$2 := (if p2$2 then 255 else $1$2);
    $1$1 := (if p3$1 then BV16_SEXT32(v2$1) else $1$1);
    $1$2 := (if p3$2 then BV16_SEXT32(v2$2) else $1$2);
    $0$1 := (if p1$1 then $1$1 else $0$1);
    $0$2 := (if p1$2 then $1$2 else $0$2);
    $ret$1 := (if _P$1 then BV_EXTRACT($0$1, 8, 0) else $ret$1);
    $ret$2 := (if _P$2 then BV_EXTRACT($0$2, 8, 0) else $ret$2);
    return;
}



procedure {:source_name "abs"} $abs(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "ComputeBox"} $_Z10ComputeBoxhhhhhhhhhf(_P$1: bool, $ul$1: int, $um$1: int, $ur$1: int, $ml$1: int, $mm$1: int, $mr$1: int, $ll$1: int, $lm$1: int, $lr$1: int, $fscale$1: int, _P$2: bool, $ul$2: int, $um$2: int, $ur$2: int, $ml$2: int, $mm$2: int, $mr$2: int, $ll$2: int, $lm$2: int, $lr$2: int, $fscale$2: int) returns ($ret$1: int, $ret$2: int);
  requires _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
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
  requires _b99 ==> _P$1 == _P$2;
  requires _b100 ==> _P$1 && _P$2 ==> $ul$1 == $ul$2;
  requires _b101 ==> $ul$1 == $ul$2;
  requires _b102 ==> _P$1 && _P$2 ==> $um$1 == $um$2;
  requires _b103 ==> $um$1 == $um$2;
  requires _b104 ==> _P$1 && _P$2 ==> $ur$1 == $ur$2;
  requires _b105 ==> $ur$1 == $ur$2;
  requires _b106 ==> _P$1 && _P$2 ==> $ml$1 == $ml$2;
  requires _b107 ==> $ml$1 == $ml$2;
  requires _b108 ==> _P$1 && _P$2 ==> $mm$1 == $mm$2;
  requires _b109 ==> $mm$1 == $mm$2;
  requires _b110 ==> _P$1 && _P$2 ==> $mr$1 == $mr$2;
  requires _b111 ==> $mr$1 == $mr$2;
  requires _b112 ==> _P$1 && _P$2 ==> $ll$1 == $ll$2;
  requires _b113 ==> $ll$1 == $ll$2;
  requires _b114 ==> _P$1 && _P$2 ==> $lm$1 == $lm$2;
  requires _b115 ==> $lm$1 == $lm$2;
  requires _b116 ==> _P$1 && _P$2 ==> $lr$1 == $lr$2;
  requires _b117 ==> $lr$1 == $lr$2;
  requires _b118 ==> _P$1 && _P$2 ==> $fscale$1 == $fscale$2;
  requires _b119 ==> $fscale$1 == $fscale$2;
  requires _b120 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  requires _b121 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  requires _b122 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  requires _b123 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b124 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b125 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b126 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  requires _b127 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  requires _b128 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  requires _b129 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b130 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b131 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b132 ==> !_READ_HAS_OCCURRED_$$tex;
  requires _b133 ==> !_WRITE_HAS_OCCURRED_$$tex;
  requires _b134 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  requires _b135 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b136 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b137 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b138 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  requires _b139 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  requires _b140 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  requires _b141 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b142 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b143 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b144 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  requires _b145 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  requires _b146 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  requires _b147 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b148 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b149 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _b150 ==> $ret$1 == $ret$2;
  ensures _b151 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b152 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b153 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b154 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b155 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b156 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b157 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  ensures _b158 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  ensures _b159 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  ensures _b160 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b161 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b162 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b163 ==> !_READ_HAS_OCCURRED_$$tex;
  ensures _b164 ==> !_WRITE_HAS_OCCURRED_$$tex;
  ensures _b165 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  ensures _b166 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b167 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b168 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b169 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  ensures _b170 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  ensures _b171 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  ensures _b172 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b173 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b174 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b175 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  ensures _b176 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  ensures _b177 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  ensures _b178 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b179 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b180 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;



implementation {:source_name "ComputeBox"} $_Z10ComputeBoxhhhhhhhhhf(_P$1: bool, $ul$1: int, $um$1: int, $ur$1: int, $ml$1: int, $mm$1: int, $mr$1: int, $ll$1: int, $lm$1: int, $lr$1: int, $fscale$1: int, _P$2: bool, $ul$2: int, $um$2: int, $ur$2: int, $ml$2: int, $mm$2: int, $mr$2: int, $ll$2: int, $lm$2: int, $lr$2: int, $fscale$2: int) returns ($ret$1: int, $ret$2: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;


  $0:
    v0$1 := (if _P$1 then FP32_TO_SI16(FMUL32(SI16_TO_FP32(BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV8_ZEXT32($ul$1), BV8_ZEXT32($um$1)), BV8_ZEXT32($ur$1)), BV8_ZEXT32($ml$1)), BV8_ZEXT32($mm$1)), BV8_ZEXT32($mr$1)), BV8_ZEXT32($ll$1)), BV8_ZEXT32($lm$1)), BV8_ZEXT32($lr$1)), 16, 0)), 9), 16, 0)), $fscale$1)) else v0$1);
    v0$2 := (if _P$2 then FP32_TO_SI16(FMUL32(SI16_TO_FP32(BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV8_ZEXT32($ul$2), BV8_ZEXT32($um$2)), BV8_ZEXT32($ur$2)), BV8_ZEXT32($ml$2)), BV8_ZEXT32($mm$2)), BV8_ZEXT32($mr$2)), BV8_ZEXT32($ll$2)), BV8_ZEXT32($lm$2)), BV8_ZEXT32($lr$2)), 16, 0)), 9), 16, 0)), $fscale$2)) else v0$2);
    v1$1 := (if _P$1 then BV32_SLT(BV16_SEXT32(v0$1), 0) else v1$1);
    v1$2 := (if _P$2 then BV32_SLT(BV16_SEXT32(v0$2), 0) else v1$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if _P$1 && v1$1 then v1$1 else p0$1);
    p0$2 := (if _P$2 && v1$2 then v1$2 else p0$2);
    p1$1 := (if _P$1 && !v1$1 then !v1$1 else p1$1);
    p1$2 := (if _P$2 && !v1$2 then !v1$2 else p1$2);
    $0$1 := (if p0$1 then 0 else $0$1);
    $0$2 := (if p0$2 then 0 else $0$2);
    v2$1 := (if p1$1 then BV32_SGT(BV16_SEXT32(v0$1), 255) else v2$1);
    v2$2 := (if p1$2 then BV32_SGT(BV16_SEXT32(v0$2), 255) else v2$2);
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p3$1 := (if p1$1 && !v2$1 then !v2$1 else p3$1);
    p3$2 := (if p1$2 && !v2$2 then !v2$2 else p3$2);
    $1$1 := (if p2$1 then 255 else $1$1);
    $1$2 := (if p2$2 then 255 else $1$2);
    $1$1 := (if p3$1 then BV16_SEXT32(v0$1) else $1$1);
    $1$2 := (if p3$2 then BV16_SEXT32(v0$2) else $1$2);
    $0$1 := (if p1$1 then $1$1 else $0$1);
    $0$2 := (if p1$2 then $1$2 else $0$2);
    $ret$1 := (if _P$1 then BV_EXTRACT($0$1, 8, 0) else $ret$1);
    $ret$2 := (if _P$2 then BV_EXTRACT($0$2, 8, 0) else $ret$2);
    return;
}



procedure {:source_name "Threshold"} $_Z9Thresholdhf(_P$1: bool, $in$1: int, $thresh$1: int, _P$2: bool, $in$2: int, $thresh$2: int) returns ($ret$1: int, $ret$2: int);
  requires _P$1 ==> $thresh$1 == 1125515264;
  requires _P$2 ==> $thresh$2 == 1125515264;
  requires _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  requires _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
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
  requires _b181 ==> _P$1 == _P$2;
  requires _b182 ==> _P$1 && _P$2 ==> $in$1 == $in$2;
  requires _b183 ==> $in$1 == $in$2;
  requires _b184 ==> _P$1 && _P$2 ==> $thresh$1 == $thresh$2;
  requires _b185 ==> $thresh$1 == $thresh$2;
  requires _b186 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  requires _b187 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  requires _b188 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  requires _b189 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b190 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b191 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b192 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  requires _b193 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  requires _b194 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  requires _b195 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b196 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b197 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b198 ==> !_READ_HAS_OCCURRED_$$tex;
  requires _b199 ==> !_WRITE_HAS_OCCURRED_$$tex;
  requires _b200 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  requires _b201 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b202 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b203 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b204 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  requires _b205 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  requires _b206 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  requires _b207 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b208 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b209 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b210 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  requires _b211 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  requires _b212 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  requires _b213 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b214 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  requires _b215 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
  ensures _b216 ==> $ret$1 == $ret$2;
  ensures _b217 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b218 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b219 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  ensures _b220 ==> _READ_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b221 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b222 ==> _ATOMIC_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b223 ==> !_READ_HAS_OCCURRED_$$blockFunction_table;
  ensures _b224 ==> !_WRITE_HAS_OCCURRED_$$blockFunction_table;
  ensures _b225 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  ensures _b226 ==> _READ_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b227 ==> _WRITE_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b228 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction_table ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b229 ==> !_READ_HAS_OCCURRED_$$tex;
  ensures _b230 ==> !_WRITE_HAS_OCCURRED_$$tex;
  ensures _b231 ==> !_ATOMIC_HAS_OCCURRED_$$tex;
  ensures _b232 ==> _READ_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b233 ==> _WRITE_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b234 ==> _ATOMIC_HAS_OCCURRED_$$tex ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b235 ==> !_READ_HAS_OCCURRED_$$blockFunction;
  ensures _b236 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
  ensures _b237 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  ensures _b238 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b239 ==> _WRITE_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b240 ==> _ATOMIC_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b241 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
  ensures _b242 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
  ensures _b243 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
  ensures _b244 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b245 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;
  ensures _b246 ==> _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET == local_id_x$1;



implementation {:source_name "Threshold"} $_Z9Thresholdhf(_P$1: bool, $in$1: int, $thresh$1: int, _P$2: bool, $in$2: int, $thresh$2: int) returns ($ret$1: int, $ret$2: int)
{
  var $.0$1: int;
  var $.0$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := (if _P$1 then FLT32($thresh$1, SI32_TO_FP32(BV8_ZEXT32($in$1))) else v0$1);
    v0$2 := (if _P$2 then FLT32($thresh$2, SI32_TO_FP32(BV8_ZEXT32($in$2))) else v0$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if _P$1 && v0$1 then v0$1 else p0$1);
    p0$2 := (if _P$2 && v0$2 then v0$2 else p0$2);
    p1$1 := (if _P$1 && !v0$1 then !v0$1 else p1$1);
    p1$2 := (if _P$2 && !v0$2 then !v0$2 else p1$2);
    $.0$1 := (if p0$1 then -1 else $.0$1);
    $.0$2 := (if p0$2 then -1 else $.0$2);
    $.0$1 := (if p1$1 then 0 else $.0$1);
    $.0$2 := (if p1$2 then 0 else $.0$2);
    $ret$1 := (if _P$1 then $.0$1 else $ret$1);
    $ret$2 := (if _P$2 then $.0$2 else $ret$2);
    return;
}



procedure {:source_name "SobelShared"} {:kernel} $_Z11SobelSharedP6uchar4tssssfiPFhhfE($SobelPitch: int, $BlockWidth: int, $SharedPitch: int, $w: int, $h: int, $fScale: int, $blockOperation: int, $pPointFunction: functionPtr);
  requires {:sourceloc_num 30} {:thread 1} (if BV16_ZEXT32($SobelPitch) == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 31} {:thread 1} (if BV16_SEXT32($w) == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 32} {:thread 1} (if BV16_SEXT32($BlockWidth) == 80 then 1 else 0) != 0;
  requires {:sourceloc_num 33} {:thread 1} (if BV16_SEXT32($SharedPitch) == 384 then 1 else 0) != 0;
  requires {:sourceloc_num 34} {:thread 1} (if BV32_OR(BV1_ZEXT32((if $blockOperation == 0 then 1 else 0)), BV1_ZEXT32((if $blockOperation == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:sourceloc_num 35} {:thread 1} (if $$blockFunction_table[0] == $functionId$$_Z12ComputeSobelhhhhhhhhhf then 1 else 0) != 0;
  requires {:sourceloc_num 35} {:thread 2} (if $$blockFunction_table[0] == $functionId$$_Z12ComputeSobelhhhhhhhhhf then 1 else 0) != 0;
  requires {:sourceloc_num 36} {:thread 1} (if $$blockFunction_table[1] == $functionId$$_Z10ComputeBoxhhhhhhhhhf then 1 else 0) != 0;
  requires {:sourceloc_num 36} {:thread 2} (if $$blockFunction_table[1] == $functionId$$_Z10ComputeBoxhhhhhhhhhf then 1 else 0) != 0;
  requires {:sourceloc_num 37} {:thread 1} (if BV32_OR(BV1_ZEXT32((if $pPointFunction == $functionId$$_Z9Thresholdhf then 1 else 0)), BV1_ZEXT32((if $pPointFunction == $functionId$$null$ then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$pSobelOriginal && !_WRITE_HAS_OCCURRED_$$pSobelOriginal && !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  requires !_READ_HAS_OCCURRED_$$blockFunction_table && !_WRITE_HAS_OCCURRED_$$blockFunction_table && !_ATOMIC_HAS_OCCURRED_$$blockFunction_table;
  requires !_READ_HAS_OCCURRED_$$tex && !_WRITE_HAS_OCCURRED_$$tex && !_ATOMIC_HAS_OCCURRED_$$tex;
  requires !_READ_HAS_OCCURRED_$$blockFunction && !_WRITE_HAS_OCCURRED_$$blockFunction && !_ATOMIC_HAS_OCCURRED_$$blockFunction;
  requires !_READ_HAS_OCCURRED_$$LocalBlock && !_WRITE_HAS_OCCURRED_$$LocalBlock && !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
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
  modifies $$LocalBlock, _WRITE_HAS_OCCURRED_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock, $$pSobelOriginal, $$blockFunction, _TRACKING, _WRITE_HAS_OCCURRED_$$blockFunction, _WRITE_READ_BENIGN_FLAG_$$blockFunction, _WRITE_READ_BENIGN_FLAG_$$blockFunction, _READ_HAS_OCCURRED_$$LocalBlock, _READ_HAS_OCCURRED_$$blockFunction, _WRITE_HAS_OCCURRED_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal, _TRACKING;



implementation {:source_name "SobelShared"} {:kernel} $_Z11SobelSharedP6uchar4tssssfiPFhhfE($SobelPitch: int, $BlockWidth: int, $SharedPitch: int, $w: int, $h: int, $fScale: int, $blockOperation: int, $pPointFunction: functionPtr)
{
  var $ib.0$1: int;
  var $ib.0$2: int;
  var $ib.1$1: int;
  var $ib.1$2: int;
  var $ib.2$1: int;
  var $ib.2$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
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
  var v32$1: int;
  var v32$2: int;
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
  var v59$1: int;
  var v59$2: int;
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
  var v58$1: int;
  var v58$2: int;
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
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: bool;
  var v92$2: bool;
  var v93$1: int;
  var v93$2: int;
  var v103$1: int;
  var v103$2: int;
  var v94$1: bool;
  var v94$2: bool;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
  var v107$1: int;
  var v107$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
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
  var v122$1: int;
  var v122$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v120$1: int;
  var v120$2: int;
  var v121$1: int;
  var v121$2: int;
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
  var v125$1: int;
  var v125$2: int;
  var v126$1: int;
  var v126$2: int;
  var v127$1: int;
  var v127$2: int;
  var v128$1: int;
  var v128$2: int;
  var v129$1: int;
  var v129$2: int;
  var v130$1: int;
  var v130$2: int;
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
  var v137$1: int;
  var v137$2: int;
  var v138$1: int;
  var v138$2: int;
  var v148$1: int;
  var v148$2: int;
  var v139$1: int;
  var v139$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: int;
  var v142$2: int;
  var v143$1: int;
  var v143$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v147$1: int;
  var v147$2: int;
  var v151$1: int;
  var v151$2: int;
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
  var v180$1: int;
  var v180$2: int;
  var v181$1: int;
  var v181$2: int;
  var v182$1: int;
  var v182$2: int;
  var v183$1: int;
  var v183$2: int;
  var v184$1: int;
  var v184$2: int;
  var v185$1: functionPtr;
  var v185$2: functionPtr;
  var v186$1: bool;
  var v186$2: bool;
  var v187$1: int;
  var v187$2: int;
  var v190$1: int;
  var v190$2: int;
  var v188$1: int;
  var v188$2: int;
  var v189$1: int;
  var v189$2: int;
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
  var v196$1: functionPtr;
  var v196$2: functionPtr;
  var v197$1: int;
  var v197$2: int;
  var v198$1: int;
  var v198$2: int;
  var v199$1: int;
  var v199$2: int;
  var v200$1: int;
  var v200$2: int;
  var v201$1: functionPtr;
  var v201$2: functionPtr;
  var v202$1: int;
  var v202$2: int;
  var v203$1: int;
  var v203$2: int;
  var v204$1: int;
  var v204$2: int;
  var v205$1: int;
  var v205$2: int;
  var v206$1: functionPtr;
  var v206$2: functionPtr;
  var v207$1: int;
  var v207$2: int;
  var v208$1: int;
  var v208$2: int;
  var v209$1: int;
  var v209$2: int;
  var v210$1: int;
  var v210$2: int;
  var v211$1: functionPtr;
  var v211$2: functionPtr;
  var v212$1: int;
  var v212$2: int;
  var v213$1: bool;
  var v213$2: bool;
  var v214$1: int;
  var v214$2: int;
  var v215$1: int;
  var v215$2: int;
  var v216$1: int;
  var v216$2: int;
  var v217$1: int;
  var v217$2: int;
  var v218$1: int;
  var v218$2: int;
  var v219$1: int;
  var v219$2: int;
  var v220$1: int;
  var v220$2: int;
  var v221$1: int;
  var v221$2: int;
  var v222$1: bool;
  var v222$2: bool;
  var v223$1: bool;
  var v223$2: bool;
  var v224$1: int;
  var v224$2: int;
  var v225$1: int;
  var v225$2: int;
  var v226$1: int;
  var v226$2: int;
  var v227$1: int;
  var v227$2: int;
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
  var p17$1: bool;
  var p17$2: bool;
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6: bool;


  $0:
    v0$1 := BV_EXTRACT(BV32_MUL(BV32_MUL(4, group_id_x$1), BV16_SEXT32($BlockWidth)), 16, 0);
    v0$2 := BV_EXTRACT(BV32_MUL(BV32_MUL(4, group_id_x$2), BV16_SEXT32($BlockWidth)), 16, 0);
    v1$1 := BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 16, 0);
    v1$2 := BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 16, 0);
    v2$1 := BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch));
    v2$2 := BV32_MUL(local_id_y$2, BV16_SEXT32($SharedPitch));
    $ib.0$1 := BV_EXTRACT(local_id_x$1, 16, 0);
    $ib.0$2 := BV_EXTRACT(local_id_x$2, 16, 0);
    p0$1 := false;
    p0$2 := false;
    p4$1 := false;
    p4$2 := false;
    p7$1 := false;
    p7$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b247 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b4 ==> BV32_SLT(BV16_SEXT32($ib.0$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b4 ==> BV32_SLT(BV16_SEXT32($ib.0$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_UGE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_UGE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_ULE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_ULE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SGE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SGE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b0 ==> BV32_SLE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b0 ==> BV32_SLE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:block_sourceloc} {:sourceloc_num 39} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 40} {:thread 1} (if BV32_UREM(BV16_SEXT32($ib.0$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 40} {:thread 2} (if BV32_UREM(BV16_SEXT32($ib.0$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 41} {:thread 1} (if _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v2$1), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 42} {:thread 1} (if _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v2$1), 4), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    v3$1 := (if p0$1 then BV32_SLT(BV16_SEXT32($ib.0$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v3$1);
    v3$2 := (if p0$2 then BV32_SLT(BV16_SEXT32($ib.0$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v3$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p6$1 := false;
    p6$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    $$0$0$1 := (if p1$1 then v4$1 else $$0$0$1);
    $$0$0$2 := (if p1$2 then v4$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p1$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p1$2 then _HAVOC_int$2 else v5$2);
    $$0$1$1 := (if p1$1 then v5$1 else $$0$1$1);
    $$0$1$2 := (if p1$2 then v5$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p1$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p1$2 then _HAVOC_int$2 else v6$2);
    $$0$2$1 := (if p1$1 then v6$1 else $$0$2$1);
    $$0$2$2 := (if p1$2 then v6$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p1$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p1$2 then _HAVOC_int$2 else v7$2);
    $$0$3$1 := (if p1$1 then v7$1 else $$0$3$1);
    $$0$3$2 := (if p1$2 then v7$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p1$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p1$2 then _HAVOC_int$2 else v8$2);
    $$0$4$1 := (if p1$1 then v8$1 else $$0$4$1);
    $$0$4$2 := (if p1$2 then v8$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p1$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p1$2 then _HAVOC_int$2 else v9$2);
    $$0$5$1 := (if p1$1 then v9$1 else $$0$5$1);
    $$0$5$2 := (if p1$2 then v9$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p1$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p1$2 then _HAVOC_int$2 else v10$2);
    $$0$6$1 := (if p1$1 then v10$1 else $$0$6$1);
    $$0$6$2 := (if p1$2 then v10$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p1$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p1$2 then _HAVOC_int$2 else v11$2);
    $$0$7$1 := (if p1$1 then v11$1 else $$0$7$1);
    $$0$7$2 := (if p1$2 then v11$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p1$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p1$2 then _HAVOC_int$2 else v12$2);
    $$0$8$1 := (if p1$1 then v12$1 else $$0$8$1);
    $$0$8$2 := (if p1$2 then v12$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p1$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p1$2 then _HAVOC_int$2 else v13$2);
    $$0$9$1 := (if p1$1 then v13$1 else $$0$9$1);
    $$0$9$2 := (if p1$2 then v13$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p1$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p1$2 then _HAVOC_int$2 else v14$2);
    $$0$10$1 := (if p1$1 then v14$1 else $$0$10$1);
    $$0$10$2 := (if p1$2 then v14$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p1$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p1$2 then _HAVOC_int$2 else v15$2);
    $$0$11$1 := (if p1$1 then v15$1 else $$0$11$1);
    $$0$11$2 := (if p1$2 then v15$2 else $$0$11$2);
    v16$1 := (if p1$1 then $$0$0$1 else v16$1);
    v16$2 := (if p1$2 then $$0$0$2 else v16$2);
    v17$1 := (if p1$1 then $$0$4$1 else v17$1);
    v17$2 := (if p1$2 then $$0$4$2 else v17$2);
    v18$1 := (if p1$1 then $$0$5$1 else v18$1);
    v18$2 := (if p1$2 then $$0$5$2 else v18$2);
    v19$1 := (if p1$1 then $$0$6$1 else v19$1);
    v19$2 := (if p1$2 then $$0$6$2 else v19$2);
    v20$1 := (if p1$1 then $$0$7$1 else v20$1);
    v20$2 := (if p1$2 then $$0$7$2 else v20$2);
    v21$1 := (if p1$1 then $$0$8$1 else v21$1);
    v21$2 := (if p1$2 then $$0$8$2 else v21$2);
    v22$1 := (if p1$1 then $$0$9$1 else v22$1);
    v22$2 := (if p1$2 then $$0$9$2 else v22$2);
    v23$1 := (if p1$1 then $$0$10$1 else v23$1);
    v23$2 := (if p1$2 then $$0$10$2 else v23$2);
    v24$1 := (if p1$1 then $$0$11$1 else v24$1);
    v24$2 := (if p1$2 then $$0$11$2 else v24$2);
    call {:sourceloc_num 77} v25$1, v25$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v16$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$1, v19$1), v18$1), v17$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$1, v23$1), v22$1), v21$1), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v16$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$2, v19$2), v18$2), v17$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$2, v23$2), v22$2), v21$2), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), v25$1, $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))] := (if p1$1 then v25$1 else $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2)))] := (if p1$2 then v25$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2)))]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p1$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p1$2 then _HAVOC_int$2 else v26$2);
    $$1$0$1 := (if p1$1 then v26$1 else $$1$0$1);
    $$1$0$2 := (if p1$2 then v26$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v27$1 := (if p1$1 then _HAVOC_int$1 else v27$1);
    v27$2 := (if p1$2 then _HAVOC_int$2 else v27$2);
    $$1$1$1 := (if p1$1 then v27$1 else $$1$1$1);
    $$1$1$2 := (if p1$2 then v27$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p1$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p1$2 then _HAVOC_int$2 else v28$2);
    $$1$2$1 := (if p1$1 then v28$1 else $$1$2$1);
    $$1$2$2 := (if p1$2 then v28$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p1$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p1$2 then _HAVOC_int$2 else v29$2);
    $$1$3$1 := (if p1$1 then v29$1 else $$1$3$1);
    $$1$3$2 := (if p1$2 then v29$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p1$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p1$2 then _HAVOC_int$2 else v30$2);
    $$1$4$1 := (if p1$1 then v30$1 else $$1$4$1);
    $$1$4$2 := (if p1$2 then v30$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p1$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p1$2 then _HAVOC_int$2 else v31$2);
    $$1$5$1 := (if p1$1 then v31$1 else $$1$5$1);
    $$1$5$2 := (if p1$2 then v31$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p1$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p1$2 then _HAVOC_int$2 else v32$2);
    $$1$6$1 := (if p1$1 then v32$1 else $$1$6$1);
    $$1$6$2 := (if p1$2 then v32$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p1$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p1$2 then _HAVOC_int$2 else v33$2);
    $$1$7$1 := (if p1$1 then v33$1 else $$1$7$1);
    $$1$7$2 := (if p1$2 then v33$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p1$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p1$2 then _HAVOC_int$2 else v34$2);
    $$1$8$1 := (if p1$1 then v34$1 else $$1$8$1);
    $$1$8$2 := (if p1$2 then v34$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p1$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p1$2 then _HAVOC_int$2 else v35$2);
    $$1$9$1 := (if p1$1 then v35$1 else $$1$9$1);
    $$1$9$2 := (if p1$2 then v35$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p1$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p1$2 then _HAVOC_int$2 else v36$2);
    $$1$10$1 := (if p1$1 then v36$1 else $$1$10$1);
    $$1$10$2 := (if p1$2 then v36$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p1$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p1$2 then _HAVOC_int$2 else v37$2);
    $$1$11$1 := (if p1$1 then v37$1 else $$1$11$1);
    $$1$11$2 := (if p1$2 then v37$2 else $$1$11$2);
    v38$1 := (if p1$1 then $$1$0$1 else v38$1);
    v38$2 := (if p1$2 then $$1$0$2 else v38$2);
    v39$1 := (if p1$1 then $$1$4$1 else v39$1);
    v39$2 := (if p1$2 then $$1$4$2 else v39$2);
    v40$1 := (if p1$1 then $$1$5$1 else v40$1);
    v40$2 := (if p1$2 then $$1$5$2 else v40$2);
    v41$1 := (if p1$1 then $$1$6$1 else v41$1);
    v41$2 := (if p1$2 then $$1$6$2 else v41$2);
    v42$1 := (if p1$1 then $$1$7$1 else v42$1);
    v42$2 := (if p1$2 then $$1$7$2 else v42$2);
    v43$1 := (if p1$1 then $$1$8$1 else v43$1);
    v43$2 := (if p1$2 then $$1$8$2 else v43$2);
    v44$1 := (if p1$1 then $$1$9$1 else v44$1);
    v44$2 := (if p1$2 then $$1$9$2 else v44$2);
    v45$1 := (if p1$1 then $$1$10$1 else v45$1);
    v45$2 := (if p1$2 then $$1$10$2 else v45$2);
    v46$1 := (if p1$1 then $$1$11$1 else v46$1);
    v46$2 := (if p1$2 then $$1$11$2 else v46$2);
    call {:sourceloc_num 112} v47$1, v47$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v38$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v42$1, v41$1), v40$1), v39$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v46$1, v45$1), v44$1), v43$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v38$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v42$2, v41$2), v40$2), v39$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v46$2, v45$2), v44$2), v43$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), v47$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), v47$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)] := (if p1$1 then v47$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)] := (if p1$2 then v47$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v48$1 := (if p1$1 then _HAVOC_int$1 else v48$1);
    v48$2 := (if p1$2 then _HAVOC_int$2 else v48$2);
    $$2$0$1 := (if p1$1 then v48$1 else $$2$0$1);
    $$2$0$2 := (if p1$2 then v48$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p1$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p1$2 then _HAVOC_int$2 else v49$2);
    $$2$1$1 := (if p1$1 then v49$1 else $$2$1$1);
    $$2$1$2 := (if p1$2 then v49$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p1$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p1$2 then _HAVOC_int$2 else v50$2);
    $$2$2$1 := (if p1$1 then v50$1 else $$2$2$1);
    $$2$2$2 := (if p1$2 then v50$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p1$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p1$2 then _HAVOC_int$2 else v51$2);
    $$2$3$1 := (if p1$1 then v51$1 else $$2$3$1);
    $$2$3$2 := (if p1$2 then v51$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p1$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p1$2 then _HAVOC_int$2 else v52$2);
    $$2$4$1 := (if p1$1 then v52$1 else $$2$4$1);
    $$2$4$2 := (if p1$2 then v52$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v53$1 := (if p1$1 then _HAVOC_int$1 else v53$1);
    v53$2 := (if p1$2 then _HAVOC_int$2 else v53$2);
    $$2$5$1 := (if p1$1 then v53$1 else $$2$5$1);
    $$2$5$2 := (if p1$2 then v53$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v54$1 := (if p1$1 then _HAVOC_int$1 else v54$1);
    v54$2 := (if p1$2 then _HAVOC_int$2 else v54$2);
    $$2$6$1 := (if p1$1 then v54$1 else $$2$6$1);
    $$2$6$2 := (if p1$2 then v54$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v55$1 := (if p1$1 then _HAVOC_int$1 else v55$1);
    v55$2 := (if p1$2 then _HAVOC_int$2 else v55$2);
    $$2$7$1 := (if p1$1 then v55$1 else $$2$7$1);
    $$2$7$2 := (if p1$2 then v55$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v56$1 := (if p1$1 then _HAVOC_int$1 else v56$1);
    v56$2 := (if p1$2 then _HAVOC_int$2 else v56$2);
    $$2$8$1 := (if p1$1 then v56$1 else $$2$8$1);
    $$2$8$2 := (if p1$2 then v56$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v57$1 := (if p1$1 then _HAVOC_int$1 else v57$1);
    v57$2 := (if p1$2 then _HAVOC_int$2 else v57$2);
    $$2$9$1 := (if p1$1 then v57$1 else $$2$9$1);
    $$2$9$2 := (if p1$2 then v57$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v58$1 := (if p1$1 then _HAVOC_int$1 else v58$1);
    v58$2 := (if p1$2 then _HAVOC_int$2 else v58$2);
    $$2$10$1 := (if p1$1 then v58$1 else $$2$10$1);
    $$2$10$2 := (if p1$2 then v58$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p1$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p1$2 then _HAVOC_int$2 else v59$2);
    $$2$11$1 := (if p1$1 then v59$1 else $$2$11$1);
    $$2$11$2 := (if p1$2 then v59$2 else $$2$11$2);
    v60$1 := (if p1$1 then $$2$0$1 else v60$1);
    v60$2 := (if p1$2 then $$2$0$2 else v60$2);
    v61$1 := (if p1$1 then $$2$4$1 else v61$1);
    v61$2 := (if p1$2 then $$2$4$2 else v61$2);
    v62$1 := (if p1$1 then $$2$5$1 else v62$1);
    v62$2 := (if p1$2 then $$2$5$2 else v62$2);
    v63$1 := (if p1$1 then $$2$6$1 else v63$1);
    v63$2 := (if p1$2 then $$2$6$2 else v63$2);
    v64$1 := (if p1$1 then $$2$7$1 else v64$1);
    v64$2 := (if p1$2 then $$2$7$2 else v64$2);
    v65$1 := (if p1$1 then $$2$8$1 else v65$1);
    v65$2 := (if p1$2 then $$2$8$2 else v65$2);
    v66$1 := (if p1$1 then $$2$9$1 else v66$1);
    v66$2 := (if p1$2 then $$2$9$2 else v66$2);
    v67$1 := (if p1$1 then $$2$10$1 else v67$1);
    v67$2 := (if p1$2 then $$2$10$2 else v67$2);
    v68$1 := (if p1$1 then $$2$11$1 else v68$1);
    v68$2 := (if p1$2 then $$2$11$2 else v68$2);
    call {:sourceloc_num 147} v69$1, v69$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v60$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v64$1, v63$1), v62$1), v61$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$1, v67$1), v66$1), v65$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 2)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v60$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v64$2, v63$2), v62$2), v61$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$2, v67$2), v66$2), v65$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 2)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2), v69$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2), v69$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)] := (if p1$1 then v69$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2)] := (if p1$2 then v69$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v70$1 := (if p1$1 then _HAVOC_int$1 else v70$1);
    v70$2 := (if p1$2 then _HAVOC_int$2 else v70$2);
    $$3$0$1 := (if p1$1 then v70$1 else $$3$0$1);
    $$3$0$2 := (if p1$2 then v70$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v71$1 := (if p1$1 then _HAVOC_int$1 else v71$1);
    v71$2 := (if p1$2 then _HAVOC_int$2 else v71$2);
    $$3$1$1 := (if p1$1 then v71$1 else $$3$1$1);
    $$3$1$2 := (if p1$2 then v71$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v72$1 := (if p1$1 then _HAVOC_int$1 else v72$1);
    v72$2 := (if p1$2 then _HAVOC_int$2 else v72$2);
    $$3$2$1 := (if p1$1 then v72$1 else $$3$2$1);
    $$3$2$2 := (if p1$2 then v72$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v73$1 := (if p1$1 then _HAVOC_int$1 else v73$1);
    v73$2 := (if p1$2 then _HAVOC_int$2 else v73$2);
    $$3$3$1 := (if p1$1 then v73$1 else $$3$3$1);
    $$3$3$2 := (if p1$2 then v73$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v74$1 := (if p1$1 then _HAVOC_int$1 else v74$1);
    v74$2 := (if p1$2 then _HAVOC_int$2 else v74$2);
    $$3$4$1 := (if p1$1 then v74$1 else $$3$4$1);
    $$3$4$2 := (if p1$2 then v74$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v75$1 := (if p1$1 then _HAVOC_int$1 else v75$1);
    v75$2 := (if p1$2 then _HAVOC_int$2 else v75$2);
    $$3$5$1 := (if p1$1 then v75$1 else $$3$5$1);
    $$3$5$2 := (if p1$2 then v75$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v76$1 := (if p1$1 then _HAVOC_int$1 else v76$1);
    v76$2 := (if p1$2 then _HAVOC_int$2 else v76$2);
    $$3$6$1 := (if p1$1 then v76$1 else $$3$6$1);
    $$3$6$2 := (if p1$2 then v76$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v77$1 := (if p1$1 then _HAVOC_int$1 else v77$1);
    v77$2 := (if p1$2 then _HAVOC_int$2 else v77$2);
    $$3$7$1 := (if p1$1 then v77$1 else $$3$7$1);
    $$3$7$2 := (if p1$2 then v77$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v78$1 := (if p1$1 then _HAVOC_int$1 else v78$1);
    v78$2 := (if p1$2 then _HAVOC_int$2 else v78$2);
    $$3$8$1 := (if p1$1 then v78$1 else $$3$8$1);
    $$3$8$2 := (if p1$2 then v78$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v79$1 := (if p1$1 then _HAVOC_int$1 else v79$1);
    v79$2 := (if p1$2 then _HAVOC_int$2 else v79$2);
    $$3$9$1 := (if p1$1 then v79$1 else $$3$9$1);
    $$3$9$2 := (if p1$2 then v79$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v80$1 := (if p1$1 then _HAVOC_int$1 else v80$1);
    v80$2 := (if p1$2 then _HAVOC_int$2 else v80$2);
    $$3$10$1 := (if p1$1 then v80$1 else $$3$10$1);
    $$3$10$2 := (if p1$2 then v80$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v81$1 := (if p1$1 then _HAVOC_int$1 else v81$1);
    v81$2 := (if p1$2 then _HAVOC_int$2 else v81$2);
    $$3$11$1 := (if p1$1 then v81$1 else $$3$11$1);
    $$3$11$2 := (if p1$2 then v81$2 else $$3$11$2);
    v82$1 := (if p1$1 then $$3$0$1 else v82$1);
    v82$2 := (if p1$2 then $$3$0$2 else v82$2);
    v83$1 := (if p1$1 then $$3$4$1 else v83$1);
    v83$2 := (if p1$2 then $$3$4$2 else v83$2);
    v84$1 := (if p1$1 then $$3$5$1 else v84$1);
    v84$2 := (if p1$2 then $$3$5$2 else v84$2);
    v85$1 := (if p1$1 then $$3$6$1 else v85$1);
    v85$2 := (if p1$2 then $$3$6$2 else v85$2);
    v86$1 := (if p1$1 then $$3$7$1 else v86$1);
    v86$2 := (if p1$2 then $$3$7$2 else v86$2);
    v87$1 := (if p1$1 then $$3$8$1 else v87$1);
    v87$2 := (if p1$2 then $$3$8$2 else v87$2);
    v88$1 := (if p1$1 then $$3$9$1 else v88$1);
    v88$2 := (if p1$2 then $$3$9$2 else v88$2);
    v89$1 := (if p1$1 then $$3$10$1 else v89$1);
    v89$2 := (if p1$2 then $$3$10$2 else v89$2);
    v90$1 := (if p1$1 then $$3$11$1 else v90$1);
    v90$2 := (if p1$2 then $$3$11$2 else v90$2);
    call {:sourceloc_num 182} v91$1, v91$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v82$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v86$1, v85$1), v84$1), v83$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v90$1, v89$1), v88$1), v87$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 3)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v82$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v86$2, v85$2), v84$2), v83$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v90$2, v89$2), v88$2), v87$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 3)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 183} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3), v91$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 183} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 183} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3), v91$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)] := (if p1$1 then v91$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3)] := (if p1$2 then v91$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3)]);
    $ib.0$1 := (if p1$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.0$1), group_size_x), 16, 0) else $ib.0$1);
    $ib.0$2 := (if p1$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.0$2), group_size_x), 16, 0) else $ib.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    v92$1 := BV32_ULT(local_id_y$1, 2);
    v92$2 := BV32_ULT(local_id_y$2, 2);
    p3$1 := (if v92$1 then v92$1 else p3$1);
    p3$2 := (if v92$2 then v92$2 else p3$2);
    v93$1 := (if p3$1 then BV32_MUL(BV32_ADD(group_size_y, local_id_y$1), BV16_SEXT32($SharedPitch)) else v93$1);
    v93$2 := (if p3$2 then BV32_MUL(BV32_ADD(group_size_y, local_id_y$2), BV16_SEXT32($SharedPitch)) else v93$2);
    $ib.1$1 := (if p3$1 then BV_EXTRACT(local_id_x$1, 16, 0) else $ib.1$1);
    $ib.1$2 := (if p3$2 then BV_EXTRACT(local_id_x$2, 16, 0) else $ib.1$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6 := _WRITE_HAS_OCCURRED_$$LocalBlock;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b249 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6 == _WRITE_HAS_OCCURRED_$$LocalBlock;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b248 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_ULT(local_id_y$1, 2);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> BV32_ULT(local_id_y$1, 2) && BV32_SLT(BV16_SEXT32($ib.1$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> BV32_ULT(local_id_y$2, 2) && BV32_SLT(BV16_SEXT32($ib.1$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b14 ==> p4$1 ==> BV32_ULT(local_id_y$1, 2);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b14 ==> p4$2 ==> BV32_ULT(local_id_y$2, 2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b13 ==> BV32_UGE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b13 ==> BV32_UGE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b12 ==> BV32_ULE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b12 ==> BV32_ULE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b11 ==> BV32_SGE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b11 ==> BV32_SGE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV32_SLE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV32_SLE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:block_sourceloc} {:sourceloc_num 187} p4$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 188} {:thread 1} (if BV32_ULT(local_id_y$1, 2) ==> BV32_UREM(BV16_SEXT32($ib.1$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 188} {:thread 2} (if BV32_ULT(local_id_y$2, 2) ==> BV32_UREM(BV16_SEXT32($ib.1$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 189} {:thread 1} (if BV32_ULT(local_id_y$1, 2) ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v93$1), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v93$1), 4), group_size_x) == local_id_x$1 then 1 else 0))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch))), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch))), 4), group_size_x) == local_id_x$1 then 1 else 0)))) != 0 then 1 else 0) != 0;
    v94$1 := (if p4$1 then BV32_SLT(BV16_SEXT32($ib.1$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v94$1);
    v94$2 := (if p4$2 then BV32_SLT(BV16_SEXT32($ib.1$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v94$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v94$1 then v94$1 else p5$1);
    p5$2 := (if p4$2 && v94$2 then v94$2 else p5$2);
    p4$1 := (if p4$1 && !v94$1 then v94$1 else p4$1);
    p4$2 := (if p4$2 && !v94$2 then v94$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v95$1 := (if p5$1 then _HAVOC_int$1 else v95$1);
    v95$2 := (if p5$2 then _HAVOC_int$2 else v95$2);
    $$4$0$1 := (if p5$1 then v95$1 else $$4$0$1);
    $$4$0$2 := (if p5$2 then v95$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v96$1 := (if p5$1 then _HAVOC_int$1 else v96$1);
    v96$2 := (if p5$2 then _HAVOC_int$2 else v96$2);
    $$4$1$1 := (if p5$1 then v96$1 else $$4$1$1);
    $$4$1$2 := (if p5$2 then v96$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v97$1 := (if p5$1 then _HAVOC_int$1 else v97$1);
    v97$2 := (if p5$2 then _HAVOC_int$2 else v97$2);
    $$4$2$1 := (if p5$1 then v97$1 else $$4$2$1);
    $$4$2$2 := (if p5$2 then v97$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v98$1 := (if p5$1 then _HAVOC_int$1 else v98$1);
    v98$2 := (if p5$2 then _HAVOC_int$2 else v98$2);
    $$4$3$1 := (if p5$1 then v98$1 else $$4$3$1);
    $$4$3$2 := (if p5$2 then v98$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v99$1 := (if p5$1 then _HAVOC_int$1 else v99$1);
    v99$2 := (if p5$2 then _HAVOC_int$2 else v99$2);
    $$4$4$1 := (if p5$1 then v99$1 else $$4$4$1);
    $$4$4$2 := (if p5$2 then v99$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v100$1 := (if p5$1 then _HAVOC_int$1 else v100$1);
    v100$2 := (if p5$2 then _HAVOC_int$2 else v100$2);
    $$4$5$1 := (if p5$1 then v100$1 else $$4$5$1);
    $$4$5$2 := (if p5$2 then v100$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v101$1 := (if p5$1 then _HAVOC_int$1 else v101$1);
    v101$2 := (if p5$2 then _HAVOC_int$2 else v101$2);
    $$4$6$1 := (if p5$1 then v101$1 else $$4$6$1);
    $$4$6$2 := (if p5$2 then v101$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v102$1 := (if p5$1 then _HAVOC_int$1 else v102$1);
    v102$2 := (if p5$2 then _HAVOC_int$2 else v102$2);
    $$4$7$1 := (if p5$1 then v102$1 else $$4$7$1);
    $$4$7$2 := (if p5$2 then v102$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v103$1 := (if p5$1 then _HAVOC_int$1 else v103$1);
    v103$2 := (if p5$2 then _HAVOC_int$2 else v103$2);
    $$4$8$1 := (if p5$1 then v103$1 else $$4$8$1);
    $$4$8$2 := (if p5$2 then v103$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v104$1 := (if p5$1 then _HAVOC_int$1 else v104$1);
    v104$2 := (if p5$2 then _HAVOC_int$2 else v104$2);
    $$4$9$1 := (if p5$1 then v104$1 else $$4$9$1);
    $$4$9$2 := (if p5$2 then v104$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v105$1 := (if p5$1 then _HAVOC_int$1 else v105$1);
    v105$2 := (if p5$2 then _HAVOC_int$2 else v105$2);
    $$4$10$1 := (if p5$1 then v105$1 else $$4$10$1);
    $$4$10$2 := (if p5$2 then v105$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v106$1 := (if p5$1 then _HAVOC_int$1 else v106$1);
    v106$2 := (if p5$2 then _HAVOC_int$2 else v106$2);
    $$4$11$1 := (if p5$1 then v106$1 else $$4$11$1);
    $$4$11$2 := (if p5$2 then v106$2 else $$4$11$2);
    v107$1 := (if p5$1 then $$4$0$1 else v107$1);
    v107$2 := (if p5$2 then $$4$0$2 else v107$2);
    v108$1 := (if p5$1 then $$4$4$1 else v108$1);
    v108$2 := (if p5$2 then $$4$4$2 else v108$2);
    v109$1 := (if p5$1 then $$4$5$1 else v109$1);
    v109$2 := (if p5$2 then $$4$5$2 else v109$2);
    v110$1 := (if p5$1 then $$4$6$1 else v110$1);
    v110$2 := (if p5$2 then $$4$6$2 else v110$2);
    v111$1 := (if p5$1 then $$4$7$1 else v111$1);
    v111$2 := (if p5$2 then $$4$7$2 else v111$2);
    v112$1 := (if p5$1 then $$4$8$1 else v112$1);
    v112$2 := (if p5$2 then $$4$8$2 else v112$2);
    v113$1 := (if p5$1 then $$4$9$1 else v113$1);
    v113$2 := (if p5$2 then $$4$9$2 else v113$2);
    v114$1 := (if p5$1 then $$4$10$1 else v114$1);
    v114$2 := (if p5$2 then $$4$10$2 else v114$2);
    v115$1 := (if p5$1 then $$4$11$1 else v115$1);
    v115$2 := (if p5$2 then $$4$11$2 else v115$2);
    call {:sourceloc_num 224} v116$1, v116$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v107$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$1, v110$1), v109$1), v108$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$1, v114$1), v113$1), v112$1), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v107$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$2, v110$2), v109$2), v108$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$2, v114$2), v113$2), v112$2), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 225} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), v116$1, $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 225} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 225} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), v116$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))] := (if p5$1 then v116$1 else $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2)))] := (if p5$2 then v116$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2)))]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p5$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p5$2 then _HAVOC_int$2 else v117$2);
    $$5$0$1 := (if p5$1 then v117$1 else $$5$0$1);
    $$5$0$2 := (if p5$2 then v117$2 else $$5$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p5$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p5$2 then _HAVOC_int$2 else v118$2);
    $$5$1$1 := (if p5$1 then v118$1 else $$5$1$1);
    $$5$1$2 := (if p5$2 then v118$2 else $$5$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p5$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p5$2 then _HAVOC_int$2 else v119$2);
    $$5$2$1 := (if p5$1 then v119$1 else $$5$2$1);
    $$5$2$2 := (if p5$2 then v119$2 else $$5$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p5$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p5$2 then _HAVOC_int$2 else v120$2);
    $$5$3$1 := (if p5$1 then v120$1 else $$5$3$1);
    $$5$3$2 := (if p5$2 then v120$2 else $$5$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v121$1 := (if p5$1 then _HAVOC_int$1 else v121$1);
    v121$2 := (if p5$2 then _HAVOC_int$2 else v121$2);
    $$5$4$1 := (if p5$1 then v121$1 else $$5$4$1);
    $$5$4$2 := (if p5$2 then v121$2 else $$5$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v122$1 := (if p5$1 then _HAVOC_int$1 else v122$1);
    v122$2 := (if p5$2 then _HAVOC_int$2 else v122$2);
    $$5$5$1 := (if p5$1 then v122$1 else $$5$5$1);
    $$5$5$2 := (if p5$2 then v122$2 else $$5$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v123$1 := (if p5$1 then _HAVOC_int$1 else v123$1);
    v123$2 := (if p5$2 then _HAVOC_int$2 else v123$2);
    $$5$6$1 := (if p5$1 then v123$1 else $$5$6$1);
    $$5$6$2 := (if p5$2 then v123$2 else $$5$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p5$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p5$2 then _HAVOC_int$2 else v124$2);
    $$5$7$1 := (if p5$1 then v124$1 else $$5$7$1);
    $$5$7$2 := (if p5$2 then v124$2 else $$5$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v125$1 := (if p5$1 then _HAVOC_int$1 else v125$1);
    v125$2 := (if p5$2 then _HAVOC_int$2 else v125$2);
    $$5$8$1 := (if p5$1 then v125$1 else $$5$8$1);
    $$5$8$2 := (if p5$2 then v125$2 else $$5$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v126$1 := (if p5$1 then _HAVOC_int$1 else v126$1);
    v126$2 := (if p5$2 then _HAVOC_int$2 else v126$2);
    $$5$9$1 := (if p5$1 then v126$1 else $$5$9$1);
    $$5$9$2 := (if p5$2 then v126$2 else $$5$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v127$1 := (if p5$1 then _HAVOC_int$1 else v127$1);
    v127$2 := (if p5$2 then _HAVOC_int$2 else v127$2);
    $$5$10$1 := (if p5$1 then v127$1 else $$5$10$1);
    $$5$10$2 := (if p5$2 then v127$2 else $$5$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v128$1 := (if p5$1 then _HAVOC_int$1 else v128$1);
    v128$2 := (if p5$2 then _HAVOC_int$2 else v128$2);
    $$5$11$1 := (if p5$1 then v128$1 else $$5$11$1);
    $$5$11$2 := (if p5$2 then v128$2 else $$5$11$2);
    v129$1 := (if p5$1 then $$5$0$1 else v129$1);
    v129$2 := (if p5$2 then $$5$0$2 else v129$2);
    v130$1 := (if p5$1 then $$5$4$1 else v130$1);
    v130$2 := (if p5$2 then $$5$4$2 else v130$2);
    v131$1 := (if p5$1 then $$5$5$1 else v131$1);
    v131$2 := (if p5$2 then $$5$5$2 else v131$2);
    v132$1 := (if p5$1 then $$5$6$1 else v132$1);
    v132$2 := (if p5$2 then $$5$6$2 else v132$2);
    v133$1 := (if p5$1 then $$5$7$1 else v133$1);
    v133$2 := (if p5$2 then $$5$7$2 else v133$2);
    v134$1 := (if p5$1 then $$5$8$1 else v134$1);
    v134$2 := (if p5$2 then $$5$8$2 else v134$2);
    v135$1 := (if p5$1 then $$5$9$1 else v135$1);
    v135$2 := (if p5$2 then $$5$9$2 else v135$2);
    v136$1 := (if p5$1 then $$5$10$1 else v136$1);
    v136$2 := (if p5$2 then $$5$10$2 else v136$2);
    v137$1 := (if p5$1 then $$5$11$1 else v137$1);
    v137$2 := (if p5$2 then $$5$11$2 else v137$2);
    call {:sourceloc_num 259} v138$1, v138$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v129$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v133$1, v132$1), v131$1), v130$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$1, v136$1), v135$1), v134$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v129$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v133$2, v132$2), v131$2), v130$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$2, v136$2), v135$2), v134$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 260} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), v138$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 260} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 260} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), v138$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)] := (if p5$1 then v138$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)] := (if p5$2 then v138$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v139$1 := (if p5$1 then _HAVOC_int$1 else v139$1);
    v139$2 := (if p5$2 then _HAVOC_int$2 else v139$2);
    $$6$0$1 := (if p5$1 then v139$1 else $$6$0$1);
    $$6$0$2 := (if p5$2 then v139$2 else $$6$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v140$1 := (if p5$1 then _HAVOC_int$1 else v140$1);
    v140$2 := (if p5$2 then _HAVOC_int$2 else v140$2);
    $$6$1$1 := (if p5$1 then v140$1 else $$6$1$1);
    $$6$1$2 := (if p5$2 then v140$2 else $$6$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v141$1 := (if p5$1 then _HAVOC_int$1 else v141$1);
    v141$2 := (if p5$2 then _HAVOC_int$2 else v141$2);
    $$6$2$1 := (if p5$1 then v141$1 else $$6$2$1);
    $$6$2$2 := (if p5$2 then v141$2 else $$6$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v142$1 := (if p5$1 then _HAVOC_int$1 else v142$1);
    v142$2 := (if p5$2 then _HAVOC_int$2 else v142$2);
    $$6$3$1 := (if p5$1 then v142$1 else $$6$3$1);
    $$6$3$2 := (if p5$2 then v142$2 else $$6$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v143$1 := (if p5$1 then _HAVOC_int$1 else v143$1);
    v143$2 := (if p5$2 then _HAVOC_int$2 else v143$2);
    $$6$4$1 := (if p5$1 then v143$1 else $$6$4$1);
    $$6$4$2 := (if p5$2 then v143$2 else $$6$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v144$1 := (if p5$1 then _HAVOC_int$1 else v144$1);
    v144$2 := (if p5$2 then _HAVOC_int$2 else v144$2);
    $$6$5$1 := (if p5$1 then v144$1 else $$6$5$1);
    $$6$5$2 := (if p5$2 then v144$2 else $$6$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v145$1 := (if p5$1 then _HAVOC_int$1 else v145$1);
    v145$2 := (if p5$2 then _HAVOC_int$2 else v145$2);
    $$6$6$1 := (if p5$1 then v145$1 else $$6$6$1);
    $$6$6$2 := (if p5$2 then v145$2 else $$6$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v146$1 := (if p5$1 then _HAVOC_int$1 else v146$1);
    v146$2 := (if p5$2 then _HAVOC_int$2 else v146$2);
    $$6$7$1 := (if p5$1 then v146$1 else $$6$7$1);
    $$6$7$2 := (if p5$2 then v146$2 else $$6$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v147$1 := (if p5$1 then _HAVOC_int$1 else v147$1);
    v147$2 := (if p5$2 then _HAVOC_int$2 else v147$2);
    $$6$8$1 := (if p5$1 then v147$1 else $$6$8$1);
    $$6$8$2 := (if p5$2 then v147$2 else $$6$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v148$1 := (if p5$1 then _HAVOC_int$1 else v148$1);
    v148$2 := (if p5$2 then _HAVOC_int$2 else v148$2);
    $$6$9$1 := (if p5$1 then v148$1 else $$6$9$1);
    $$6$9$2 := (if p5$2 then v148$2 else $$6$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v149$1 := (if p5$1 then _HAVOC_int$1 else v149$1);
    v149$2 := (if p5$2 then _HAVOC_int$2 else v149$2);
    $$6$10$1 := (if p5$1 then v149$1 else $$6$10$1);
    $$6$10$2 := (if p5$2 then v149$2 else $$6$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v150$1 := (if p5$1 then _HAVOC_int$1 else v150$1);
    v150$2 := (if p5$2 then _HAVOC_int$2 else v150$2);
    $$6$11$1 := (if p5$1 then v150$1 else $$6$11$1);
    $$6$11$2 := (if p5$2 then v150$2 else $$6$11$2);
    v151$1 := (if p5$1 then $$6$0$1 else v151$1);
    v151$2 := (if p5$2 then $$6$0$2 else v151$2);
    v152$1 := (if p5$1 then $$6$4$1 else v152$1);
    v152$2 := (if p5$2 then $$6$4$2 else v152$2);
    v153$1 := (if p5$1 then $$6$5$1 else v153$1);
    v153$2 := (if p5$2 then $$6$5$2 else v153$2);
    v154$1 := (if p5$1 then $$6$6$1 else v154$1);
    v154$2 := (if p5$2 then $$6$6$2 else v154$2);
    v155$1 := (if p5$1 then $$6$7$1 else v155$1);
    v155$2 := (if p5$2 then $$6$7$2 else v155$2);
    v156$1 := (if p5$1 then $$6$8$1 else v156$1);
    v156$2 := (if p5$2 then $$6$8$2 else v156$2);
    v157$1 := (if p5$1 then $$6$9$1 else v157$1);
    v157$2 := (if p5$2 then $$6$9$2 else v157$2);
    v158$1 := (if p5$1 then $$6$10$1 else v158$1);
    v158$2 := (if p5$2 then $$6$10$2 else v158$2);
    v159$1 := (if p5$1 then $$6$11$1 else v159$1);
    v159$2 := (if p5$2 then $$6$11$2 else v159$2);
    call {:sourceloc_num 294} v160$1, v160$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v151$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v155$1, v154$1), v153$1), v152$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$1, v158$1), v157$1), v156$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 2)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v151$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v155$2, v154$2), v153$2), v152$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$2, v158$2), v157$2), v156$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 2)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 295} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2), v160$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 295} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 295} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2), v160$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)] := (if p5$1 then v160$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2)] := (if p5$2 then v160$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v161$1 := (if p5$1 then _HAVOC_int$1 else v161$1);
    v161$2 := (if p5$2 then _HAVOC_int$2 else v161$2);
    $$7$0$1 := (if p5$1 then v161$1 else $$7$0$1);
    $$7$0$2 := (if p5$2 then v161$2 else $$7$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v162$1 := (if p5$1 then _HAVOC_int$1 else v162$1);
    v162$2 := (if p5$2 then _HAVOC_int$2 else v162$2);
    $$7$1$1 := (if p5$1 then v162$1 else $$7$1$1);
    $$7$1$2 := (if p5$2 then v162$2 else $$7$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v163$1 := (if p5$1 then _HAVOC_int$1 else v163$1);
    v163$2 := (if p5$2 then _HAVOC_int$2 else v163$2);
    $$7$2$1 := (if p5$1 then v163$1 else $$7$2$1);
    $$7$2$2 := (if p5$2 then v163$2 else $$7$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v164$1 := (if p5$1 then _HAVOC_int$1 else v164$1);
    v164$2 := (if p5$2 then _HAVOC_int$2 else v164$2);
    $$7$3$1 := (if p5$1 then v164$1 else $$7$3$1);
    $$7$3$2 := (if p5$2 then v164$2 else $$7$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v165$1 := (if p5$1 then _HAVOC_int$1 else v165$1);
    v165$2 := (if p5$2 then _HAVOC_int$2 else v165$2);
    $$7$4$1 := (if p5$1 then v165$1 else $$7$4$1);
    $$7$4$2 := (if p5$2 then v165$2 else $$7$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v166$1 := (if p5$1 then _HAVOC_int$1 else v166$1);
    v166$2 := (if p5$2 then _HAVOC_int$2 else v166$2);
    $$7$5$1 := (if p5$1 then v166$1 else $$7$5$1);
    $$7$5$2 := (if p5$2 then v166$2 else $$7$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v167$1 := (if p5$1 then _HAVOC_int$1 else v167$1);
    v167$2 := (if p5$2 then _HAVOC_int$2 else v167$2);
    $$7$6$1 := (if p5$1 then v167$1 else $$7$6$1);
    $$7$6$2 := (if p5$2 then v167$2 else $$7$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v168$1 := (if p5$1 then _HAVOC_int$1 else v168$1);
    v168$2 := (if p5$2 then _HAVOC_int$2 else v168$2);
    $$7$7$1 := (if p5$1 then v168$1 else $$7$7$1);
    $$7$7$2 := (if p5$2 then v168$2 else $$7$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v169$1 := (if p5$1 then _HAVOC_int$1 else v169$1);
    v169$2 := (if p5$2 then _HAVOC_int$2 else v169$2);
    $$7$8$1 := (if p5$1 then v169$1 else $$7$8$1);
    $$7$8$2 := (if p5$2 then v169$2 else $$7$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v170$1 := (if p5$1 then _HAVOC_int$1 else v170$1);
    v170$2 := (if p5$2 then _HAVOC_int$2 else v170$2);
    $$7$9$1 := (if p5$1 then v170$1 else $$7$9$1);
    $$7$9$2 := (if p5$2 then v170$2 else $$7$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v171$1 := (if p5$1 then _HAVOC_int$1 else v171$1);
    v171$2 := (if p5$2 then _HAVOC_int$2 else v171$2);
    $$7$10$1 := (if p5$1 then v171$1 else $$7$10$1);
    $$7$10$2 := (if p5$2 then v171$2 else $$7$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v172$1 := (if p5$1 then _HAVOC_int$1 else v172$1);
    v172$2 := (if p5$2 then _HAVOC_int$2 else v172$2);
    $$7$11$1 := (if p5$1 then v172$1 else $$7$11$1);
    $$7$11$2 := (if p5$2 then v172$2 else $$7$11$2);
    v173$1 := (if p5$1 then $$7$0$1 else v173$1);
    v173$2 := (if p5$2 then $$7$0$2 else v173$2);
    v174$1 := (if p5$1 then $$7$4$1 else v174$1);
    v174$2 := (if p5$2 then $$7$4$2 else v174$2);
    v175$1 := (if p5$1 then $$7$5$1 else v175$1);
    v175$2 := (if p5$2 then $$7$5$2 else v175$2);
    v176$1 := (if p5$1 then $$7$6$1 else v176$1);
    v176$2 := (if p5$2 then $$7$6$2 else v176$2);
    v177$1 := (if p5$1 then $$7$7$1 else v177$1);
    v177$2 := (if p5$2 then $$7$7$2 else v177$2);
    v178$1 := (if p5$1 then $$7$8$1 else v178$1);
    v178$2 := (if p5$2 then $$7$8$2 else v178$2);
    v179$1 := (if p5$1 then $$7$9$1 else v179$1);
    v179$2 := (if p5$2 then $$7$9$2 else v179$2);
    v180$1 := (if p5$1 then $$7$10$1 else v180$1);
    v180$2 := (if p5$2 then $$7$10$2 else v180$2);
    v181$1 := (if p5$1 then $$7$11$1 else v181$1);
    v181$2 := (if p5$2 then $$7$11$2 else v181$2);
    call {:sourceloc_num 329} v182$1, v182$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v173$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v177$1, v176$1), v175$1), v174$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v181$1, v180$1), v179$1), v178$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 3)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v173$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v177$2, v176$2), v175$2), v174$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v181$2, v180$2), v179$2), v178$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 3)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 330} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3), v182$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 330} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 330} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3), v182$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)] := (if p5$1 then v182$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3)] := (if p5$2 then v182$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3)]);
    $ib.1$1 := (if p5$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.1$1), group_size_x), 16, 0) else $ib.1$1);
    $ib.1$2 := (if p5$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.1$2), group_size_x), 16, 0) else $ib.1$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $6.backedge, __partitioned_block_$6.tail_0;

  __partitioned_block_$6.tail_0:
    assume !p4$1 && !p4$2;
    goto __partitioned_block_$6.tail_1;

  __partitioned_block_$6.tail_1:
    call {:sourceloc_num 334} $bugle_barrier_duplicated_0(-1, -1);
    v183$1 := BV_EXTRACT(BV32_ASHR(BV16_SEXT32(v0$1), 2), 16, 0);
    v183$2 := BV_EXTRACT(BV32_ASHR(BV16_SEXT32(v0$2), 2), 16, 0);
    v184$1 := BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch));
    v184$2 := BV32_MUL(local_id_y$2, BV16_SEXT32($SharedPitch));
    v185$1 := $$blockFunction_table[$blockOperation];
    v185$2 := $$blockFunction_table[$blockOperation];
    call {:sourceloc} {:sourceloc_num 336} _LOG_WRITE_$$blockFunction(true, 0, v185$1, $$blockFunction[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockFunction(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 336} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 336} _CHECK_WRITE_$$blockFunction(true, 0, v185$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockFunction"} true;
    $$blockFunction[0] := v185$1;
    $$blockFunction[0] := v185$2;
    $ib.2$1 := BV_EXTRACT(local_id_x$1, 16, 0);
    $ib.2$2 := BV_EXTRACT(local_id_x$2, 16, 0);
    p7$1 := true;
    p7$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b254 ==> _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b253 ==> _READ_HAS_OCCURRED_$$blockFunction ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b252 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1;
    assert {:tag "accessUpperBoundBlock"} _b251 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_MUL(BV32_ADD(group_id_y$1, 1), group_size_y), local_id_y$1), 16, 0)), BV16_ZEXT32($SobelPitch)));
    assert {:tag "accessLowerBoundBlock"} _b250 ==> _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_SLE(BV32_MUL(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 16, 0)), BV16_ZEXT32($SobelPitch)), _WATCHED_OFFSET);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b9 ==> BV32_SLT(BV16_SEXT32($ib.2$1), BV16_SEXT32($BlockWidth)) ==> p7$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b9 ==> BV32_SLT(BV16_SEXT32($ib.2$2), BV16_SEXT32($BlockWidth)) ==> p7$2;
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b8 ==> BV32_UGE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b8 ==> BV32_UGE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b7 ==> BV32_ULE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b7 ==> BV32_ULE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b6 ==> BV32_SGE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b6 ==> BV32_SGE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b5 ==> BV32_SLE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0));
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b5 ==> BV32_SLE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0));
    assert {:block_sourceloc} {:sourceloc_num 337} p7$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 338} {:thread 1} (if BV32_UREM(BV16_SEXT32($ib.2$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 338} {:thread 2} (if BV32_UREM(BV16_SEXT32($ib.2$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 339} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch))), 4), BV16_SEXT32(v183$1)), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 340} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch))), 4), BV16_SEXT32(v183$1)), BV16_SEXT32($BlockWidth)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 341} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_ULT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV16_SEXT32(v1$1), 1), BV16_ZEXT32($SobelPitch))) then 1 else 0) != 0;
    v186$1 := (if p7$1 then BV32_SLT(BV16_SEXT32($ib.2$1), BV16_SEXT32($BlockWidth)) else v186$1);
    v186$2 := (if p7$2 then BV32_SLT(BV16_SEXT32($ib.2$2), BV16_SEXT32($BlockWidth)) else v186$2);
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
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p8$1 := (if p7$1 && v186$1 then v186$1 else p8$1);
    p8$2 := (if p7$2 && v186$2 then v186$2 else p8$2);
    p7$1 := (if p7$1 && !v186$1 then v186$1 else p7$1);
    p7$2 := (if p7$2 && !v186$2 then v186$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 343} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 343} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 343} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v187$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))] else v187$1);
    v187$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))] else v187$2);
    call {:sourceloc} {:sourceloc_num 344} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 344} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 344} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v188$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)] else v188$1);
    v188$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)] else v188$2);
    call {:sourceloc} {:sourceloc_num 345} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 345} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 345} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v189$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)] else v189$1);
    v189$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)] else v189$2);
    call {:sourceloc} {:sourceloc_num 346} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 346} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 346} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v190$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch))] else v190$1);
    v190$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch))] else v190$2);
    call {:sourceloc} {:sourceloc_num 347} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 347} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 347} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v191$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1)] else v191$1);
    v191$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1)] else v191$2);
    call {:sourceloc} {:sourceloc_num 348} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 348} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 348} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v192$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2)] else v192$1);
    v192$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2)] else v192$2);
    call {:sourceloc} {:sourceloc_num 349} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 349} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 349} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v193$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))] else v193$1);
    v193$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))] else v193$2);
    call {:sourceloc} {:sourceloc_num 350} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 350} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 350} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v194$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)] else v194$1);
    v194$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)] else v194$2);
    call {:sourceloc} {:sourceloc_num 351} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 351} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 351} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v195$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)] else v195$1);
    v195$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)] else v195$2);
    call {:sourceloc} {:sourceloc_num 352} _LOG_READ_$$blockFunction(p8$1, 0, $$blockFunction[0]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 352} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 352} _CHECK_READ_$$blockFunction(p8$2, 0, $$blockFunction[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockFunction"} true;
    v196$1 := (if p8$1 then $$blockFunction[0] else v196$1);
    v196$2 := (if p8$2 then $$blockFunction[0] else v196$2);
    p9$1 := (if p8$1 && v196$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v196$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p9$1);
    p9$2 := (if p8$2 && v196$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v196$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p9$2);
    p10$1 := (if p8$1 && v196$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v196$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p10$1);
    p10$2 := (if p8$2 && v196$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v196$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p10$2);
    call {:sourceloc_num 353} v197$1, v197$2 := $_Z10ComputeBoxhhhhhhhhhf(p9$1, v187$1, v188$1, v189$1, v190$1, v191$1, v192$1, v193$1, v194$1, v195$1, $fScale, p9$2, v187$2, v188$2, v189$2, v190$2, v191$2, v192$2, v193$2, v194$2, v195$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10ComputeBoxhhhhhhhhhf"} true;
    p12$1 := (if p10$1 && v196$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v196$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p12$1);
    p12$2 := (if p10$2 && v196$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v196$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p12$2);
    p11$1 := (if p10$1 && v196$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v196$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p11$1);
    p11$2 := (if p10$2 && v196$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v196$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p11$2);
    assert {:bad_pointer_access} {:sourceloc_num 355} {:thread 1} p11$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 355} {:thread 2} p11$2 ==> false;
    call {:sourceloc_num 354} v197$1, v197$2 := $_Z12ComputeSobelhhhhhhhhhf(p12$1, v187$1, v188$1, v189$1, v190$1, v191$1, v192$1, v193$1, v194$1, v195$1, $fScale, p12$2, v187$2, v188$2, v189$2, v190$2, v191$2, v192$2, v193$2, v194$2, v195$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z12ComputeSobelhhhhhhhhhf"} true;
    $$out$0$1 := (if p8$1 then v197$1 else $$out$0$1);
    $$out$0$2 := (if p8$2 then v197$2 else $$out$0$2);
    call {:sourceloc} {:sourceloc_num 357} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 357} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 357} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v198$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)] else v198$1);
    v198$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)] else v198$2);
    call {:sourceloc} {:sourceloc_num 358} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 358} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 358} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v199$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3)] else v199$1);
    v199$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3)] else v199$2);
    call {:sourceloc} {:sourceloc_num 359} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 359} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 359} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v200$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)] else v200$1);
    v200$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)] else v200$2);
    call {:sourceloc} {:sourceloc_num 360} _LOG_READ_$$blockFunction(p8$1, 0, $$blockFunction[0]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 360} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 360} _CHECK_READ_$$blockFunction(p8$2, 0, $$blockFunction[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockFunction"} true;
    v201$1 := (if p8$1 then $$blockFunction[0] else v201$1);
    v201$2 := (if p8$2 then $$blockFunction[0] else v201$2);
    p13$1 := (if p8$1 && v201$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v201$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p13$1);
    p13$2 := (if p8$2 && v201$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v201$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p13$2);
    p14$1 := (if p8$1 && v201$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v201$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p14$1);
    p14$2 := (if p8$2 && v201$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v201$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p14$2);
    call {:sourceloc_num 361} v202$1, v202$2 := $_Z10ComputeBoxhhhhhhhhhf(p13$1, v188$1, v189$1, v198$1, v191$1, v192$1, v199$1, v194$1, v195$1, v200$1, $fScale, p13$2, v188$2, v189$2, v198$2, v191$2, v192$2, v199$2, v194$2, v195$2, v200$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10ComputeBoxhhhhhhhhhf"} true;
    p16$1 := (if p14$1 && v201$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v201$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p16$1);
    p16$2 := (if p14$2 && v201$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v201$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p16$2);
    p15$1 := (if p14$1 && v201$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v201$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p15$1);
    p15$2 := (if p14$2 && v201$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v201$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p15$2);
    assert {:bad_pointer_access} {:sourceloc_num 363} {:thread 1} p15$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 363} {:thread 2} p15$2 ==> false;
    call {:sourceloc_num 362} v202$1, v202$2 := $_Z12ComputeSobelhhhhhhhhhf(p16$1, v188$1, v189$1, v198$1, v191$1, v192$1, v199$1, v194$1, v195$1, v200$1, $fScale, p16$2, v188$2, v189$2, v198$2, v191$2, v192$2, v199$2, v194$2, v195$2, v200$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z12ComputeSobelhhhhhhhhhf"} true;
    $$out$1$1 := (if p8$1 then v202$1 else $$out$1$1);
    $$out$1$2 := (if p8$2 then v202$2 else $$out$1$2);
    call {:sourceloc} {:sourceloc_num 365} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 365} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 365} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v203$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)] else v203$1);
    v203$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)] else v203$2);
    call {:sourceloc} {:sourceloc_num 366} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 366} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 366} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v204$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4)] else v204$1);
    v204$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4)] else v204$2);
    call {:sourceloc} {:sourceloc_num 367} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 367} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 367} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v205$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)] else v205$1);
    v205$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)] else v205$2);
    call {:sourceloc} {:sourceloc_num 368} _LOG_READ_$$blockFunction(p8$1, 0, $$blockFunction[0]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 368} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 368} _CHECK_READ_$$blockFunction(p8$2, 0, $$blockFunction[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockFunction"} true;
    v206$1 := (if p8$1 then $$blockFunction[0] else v206$1);
    v206$2 := (if p8$2 then $$blockFunction[0] else v206$2);
    p17$1 := (if p8$1 && v206$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v206$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p17$1);
    p17$2 := (if p8$2 && v206$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v206$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p17$2);
    p18$1 := (if p8$1 && v206$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v206$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p18$1);
    p18$2 := (if p8$2 && v206$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v206$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p18$2);
    call {:sourceloc_num 369} v207$1, v207$2 := $_Z10ComputeBoxhhhhhhhhhf(p17$1, v189$1, v198$1, v203$1, v192$1, v199$1, v204$1, v195$1, v200$1, v205$1, $fScale, p17$2, v189$2, v198$2, v203$2, v192$2, v199$2, v204$2, v195$2, v200$2, v205$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10ComputeBoxhhhhhhhhhf"} true;
    p20$1 := (if p18$1 && v206$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v206$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p20$1);
    p20$2 := (if p18$2 && v206$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v206$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p20$2);
    p19$1 := (if p18$1 && v206$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v206$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p19$1);
    p19$2 := (if p18$2 && v206$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v206$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p19$2);
    assert {:bad_pointer_access} {:sourceloc_num 371} {:thread 1} p19$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 371} {:thread 2} p19$2 ==> false;
    call {:sourceloc_num 370} v207$1, v207$2 := $_Z12ComputeSobelhhhhhhhhhf(p20$1, v189$1, v198$1, v203$1, v192$1, v199$1, v204$1, v195$1, v200$1, v205$1, $fScale, p20$2, v189$2, v198$2, v203$2, v192$2, v199$2, v204$2, v195$2, v200$2, v205$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z12ComputeSobelhhhhhhhhhf"} true;
    $$out$2$1 := (if p8$1 then v207$1 else $$out$2$1);
    $$out$2$2 := (if p8$2 then v207$2 else $$out$2$2);
    call {:sourceloc} {:sourceloc_num 373} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 373} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 373} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v208$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)] else v208$1);
    v208$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)] else v208$2);
    call {:sourceloc} {:sourceloc_num 374} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 374} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 374} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v209$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5)] else v209$1);
    v209$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5)] else v209$2);
    call {:sourceloc} {:sourceloc_num 375} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 375} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 375} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v210$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)] else v210$1);
    v210$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)] else v210$2);
    call {:sourceloc} {:sourceloc_num 376} _LOG_READ_$$blockFunction(p8$1, 0, $$blockFunction[0]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 376} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 376} _CHECK_READ_$$blockFunction(p8$2, 0, $$blockFunction[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockFunction"} true;
    v211$1 := (if p8$1 then $$blockFunction[0] else v211$1);
    v211$2 := (if p8$2 then $$blockFunction[0] else v211$2);
    p21$1 := (if p8$1 && v211$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v211$1 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p21$1);
    p21$2 := (if p8$2 && v211$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf then v211$2 == $functionId$$_Z10ComputeBoxhhhhhhhhhf else p21$2);
    p22$1 := (if p8$1 && v211$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v211$1 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p22$1);
    p22$2 := (if p8$2 && v211$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf then v211$2 != $functionId$$_Z10ComputeBoxhhhhhhhhhf else p22$2);
    call {:sourceloc_num 377} v212$1, v212$2 := $_Z10ComputeBoxhhhhhhhhhf(p21$1, v198$1, v203$1, v208$1, v199$1, v204$1, v209$1, v200$1, v205$1, v210$1, $fScale, p21$2, v198$2, v203$2, v208$2, v199$2, v204$2, v209$2, v200$2, v205$2, v210$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10ComputeBoxhhhhhhhhhf"} true;
    p24$1 := (if p22$1 && v211$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v211$1 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p24$1);
    p24$2 := (if p22$2 && v211$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf then v211$2 == $functionId$$_Z12ComputeSobelhhhhhhhhhf else p24$2);
    p23$1 := (if p22$1 && v211$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v211$1 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p23$1);
    p23$2 := (if p22$2 && v211$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf then v211$2 != $functionId$$_Z12ComputeSobelhhhhhhhhhf else p23$2);
    assert {:bad_pointer_access} {:sourceloc_num 379} {:thread 1} p23$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 379} {:thread 2} p23$2 ==> false;
    call {:sourceloc_num 378} v212$1, v212$2 := $_Z12ComputeSobelhhhhhhhhhf(p24$1, v198$1, v203$1, v208$1, v199$1, v204$1, v209$1, v200$1, v205$1, v210$1, $fScale, p24$2, v198$2, v203$2, v208$2, v199$2, v204$2, v209$2, v200$2, v205$2, v210$2, $fScale);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z12ComputeSobelhhhhhhhhhf"} true;
    $$out$3$1 := (if p8$1 then v212$1 else $$out$3$1);
    $$out$3$2 := (if p8$2 then v212$2 else $$out$3$2);
    v213$1 := (if p8$1 then $pPointFunction != $functionId$$null$ else v213$1);
    v213$2 := (if p8$2 then $pPointFunction != $functionId$$null$ else v213$2);
    p26$1 := (if p8$1 && v213$1 then v213$1 else p26$1);
    p26$2 := (if p8$2 && v213$2 then v213$2 else p26$2);
    v214$1 := (if p26$1 then $$out$0$1 else v214$1);
    v214$2 := (if p26$2 then $$out$0$2 else v214$2);
    p28$1 := (if p26$1 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p28$1);
    p28$2 := (if p26$2 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p28$2);
    p27$1 := (if p26$1 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p27$1);
    p27$2 := (if p26$2 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p27$2);
    assert {:bad_pointer_access} {:sourceloc_num 384} {:thread 1} p27$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 384} {:thread 2} p27$2 ==> false;
    call {:sourceloc_num 383} v215$1, v215$2 := $_Z9Thresholdhf(p28$1, v214$1, 1125515264, p28$2, v214$2, 1125515264);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9Thresholdhf"} true;
    $$out$0$1 := (if p26$1 then v215$1 else $$out$0$1);
    $$out$0$2 := (if p26$2 then v215$2 else $$out$0$2);
    v216$1 := (if p26$1 then $$out$1$1 else v216$1);
    v216$2 := (if p26$2 then $$out$1$2 else v216$2);
    p30$1 := (if p26$1 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p30$1);
    p30$2 := (if p26$2 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p30$2);
    p29$1 := (if p26$1 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p29$1);
    p29$2 := (if p26$2 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p29$2);
    assert {:bad_pointer_access} {:sourceloc_num 388} {:thread 1} p29$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 388} {:thread 2} p29$2 ==> false;
    call {:sourceloc_num 387} v217$1, v217$2 := $_Z9Thresholdhf(p30$1, v216$1, 1125515264, p30$2, v216$2, 1125515264);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9Thresholdhf"} true;
    $$out$1$1 := (if p26$1 then v217$1 else $$out$1$1);
    $$out$1$2 := (if p26$2 then v217$2 else $$out$1$2);
    v218$1 := (if p26$1 then $$out$2$1 else v218$1);
    v218$2 := (if p26$2 then $$out$2$2 else v218$2);
    p32$1 := (if p26$1 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p32$1);
    p32$2 := (if p26$2 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p32$2);
    p31$1 := (if p26$1 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p31$1);
    p31$2 := (if p26$2 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p31$2);
    assert {:bad_pointer_access} {:sourceloc_num 392} {:thread 1} p31$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 392} {:thread 2} p31$2 ==> false;
    call {:sourceloc_num 391} v219$1, v219$2 := $_Z9Thresholdhf(p32$1, v218$1, 1125515264, p32$2, v218$2, 1125515264);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9Thresholdhf"} true;
    $$out$2$1 := (if p26$1 then v219$1 else $$out$2$1);
    $$out$2$2 := (if p26$2 then v219$2 else $$out$2$2);
    v220$1 := (if p26$1 then $$out$3$1 else v220$1);
    v220$2 := (if p26$2 then $$out$3$2 else v220$2);
    p34$1 := (if p26$1 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p34$1);
    p34$2 := (if p26$2 && $pPointFunction == $functionId$$_Z9Thresholdhf then $pPointFunction == $functionId$$_Z9Thresholdhf else p34$2);
    p33$1 := (if p26$1 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p33$1);
    p33$2 := (if p26$2 && $pPointFunction != $functionId$$_Z9Thresholdhf then $pPointFunction != $functionId$$_Z9Thresholdhf else p33$2);
    assert {:bad_pointer_access} {:sourceloc_num 396} {:thread 1} p33$1 ==> false;
    assert {:bad_pointer_access} {:sourceloc_num 396} {:thread 2} p33$2 ==> false;
    call {:sourceloc_num 395} v221$1, v221$2 := $_Z9Thresholdhf(p34$1, v220$1, 1125515264, p34$2, v220$2, 1125515264);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z9Thresholdhf"} true;
    $$out$3$1 := (if p26$1 then v221$1 else $$out$3$1);
    $$out$3$2 := (if p26$2 then v221$2 else $$out$3$2);
    v222$1 := (if p8$1 then BV32_SLT(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), BV32_SDIV(BV16_SEXT32($w), 4)) else v222$1);
    v222$2 := (if p8$2 then BV32_SLT(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), BV32_SDIV(BV16_SEXT32($w), 4)) else v222$2);
    p36$1 := (if p8$1 && v222$1 then v222$1 else p36$1);
    p36$2 := (if p8$2 && v222$2 then v222$2 else p36$2);
    v223$1 := (if p36$1 then BV32_SLT(BV16_SEXT32(v1$1), BV16_SEXT32($h)) else v223$1);
    v223$2 := (if p36$2 then BV32_SLT(BV16_SEXT32(v1$2), BV16_SEXT32($h)) else v223$2);
    p38$1 := (if p36$1 && v223$1 then v223$1 else p38$1);
    p38$2 := (if p36$2 && v223$2 then v223$2 else p38$2);
    v224$1 := (if p38$1 then $$out$0$1 else v224$1);
    v224$2 := (if p38$2 then $$out$0$2 else v224$2);
    call {:sourceloc} {:sourceloc_num 402} _LOG_WRITE_$$pSobelOriginal(p38$1, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), v224$1, $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p38$2, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 402} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 402} _CHECK_WRITE_$$pSobelOriginal(p38$2, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), v224$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))] := (if p38$1 then v224$1 else $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))]);
    $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4))] := (if p38$2 then v224$2 else $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4))]);
    v225$1 := (if p38$1 then $$out$1$1 else v225$1);
    v225$2 := (if p38$2 then $$out$1$2 else v225$2);
    call {:sourceloc} {:sourceloc_num 404} _LOG_WRITE_$$pSobelOriginal(p38$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1), v225$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 404} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 404} _CHECK_WRITE_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1), v225$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)] := (if p38$1 then v225$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1)] := (if p38$2 then v225$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1)]);
    v226$1 := (if p38$1 then $$out$2$1 else v226$1);
    v226$2 := (if p38$2 then $$out$2$2 else v226$2);
    call {:sourceloc} {:sourceloc_num 406} _LOG_WRITE_$$pSobelOriginal(p38$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2), v226$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 406} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 406} _CHECK_WRITE_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2), v226$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)] := (if p38$1 then v226$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2)] := (if p38$2 then v226$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2)]);
    v227$1 := (if p38$1 then $$out$3$1 else v227$1);
    v227$2 := (if p38$2 then $$out$3$2 else v227$2);
    call {:sourceloc} {:sourceloc_num 408} _LOG_WRITE_$$pSobelOriginal(p38$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3), v227$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 408} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 408} _CHECK_WRITE_$$pSobelOriginal(p38$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3), v227$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)] := (if p38$1 then v227$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3)] := (if p38$2 then v227$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3)]);
    $ib.2$1 := (if p8$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.2$1), group_size_x), 16, 0) else $ib.2$1);
    $ib.2$2 := (if p8$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.2$2), group_size_x), 16, 0) else $ib.2$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 412} $bugle_barrier_duplicated_1(-1, -1);
    return;

  $11.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $11;

  $6.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $6;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $1;
}



procedure {:source_name "_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 4 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if num_groups_y == 128 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$LocalBlock, $$pSobelOriginal, $$blockFunction, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$LocalBlock, $$pSobelOriginal, $$blockFunction, _TRACKING;



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

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$1$4$1: int;

var $$1$4$2: int;

var $$1$5$1: int;

var $$1$5$2: int;

var $$1$6$1: int;

var $$1$6$2: int;

var $$1$7$1: int;

var $$1$7$2: int;

var $$1$8$1: int;

var $$1$8$2: int;

var $$1$9$1: int;

var $$1$9$2: int;

var $$1$10$1: int;

var $$1$10$2: int;

var $$1$11$1: int;

var $$1$11$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$2$4$1: int;

var $$2$4$2: int;

var $$2$5$1: int;

var $$2$5$2: int;

var $$2$6$1: int;

var $$2$6$2: int;

var $$2$7$1: int;

var $$2$7$2: int;

var $$2$8$1: int;

var $$2$8$2: int;

var $$2$9$1: int;

var $$2$9$2: int;

var $$2$10$1: int;

var $$2$10$2: int;

var $$2$11$1: int;

var $$2$11$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$3$4$1: int;

var $$3$4$2: int;

var $$3$5$1: int;

var $$3$5$2: int;

var $$3$6$1: int;

var $$3$6$2: int;

var $$3$7$1: int;

var $$3$7$2: int;

var $$3$8$1: int;

var $$3$8$2: int;

var $$3$9$1: int;

var $$3$9$2: int;

var $$3$10$1: int;

var $$3$10$2: int;

var $$3$11$1: int;

var $$3$11$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$4$4$1: int;

var $$4$4$2: int;

var $$4$5$1: int;

var $$4$5$2: int;

var $$4$6$1: int;

var $$4$6$2: int;

var $$4$7$1: int;

var $$4$7$2: int;

var $$4$8$1: int;

var $$4$8$2: int;

var $$4$9$1: int;

var $$4$9$2: int;

var $$4$10$1: int;

var $$4$10$2: int;

var $$4$11$1: int;

var $$4$11$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$5$3$1: int;

var $$5$3$2: int;

var $$5$4$1: int;

var $$5$4$2: int;

var $$5$5$1: int;

var $$5$5$2: int;

var $$5$6$1: int;

var $$5$6$2: int;

var $$5$7$1: int;

var $$5$7$2: int;

var $$5$8$1: int;

var $$5$8$2: int;

var $$5$9$1: int;

var $$5$9$2: int;

var $$5$10$1: int;

var $$5$10$2: int;

var $$5$11$1: int;

var $$5$11$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$6$4$1: int;

var $$6$4$2: int;

var $$6$5$1: int;

var $$6$5$2: int;

var $$6$6$1: int;

var $$6$6$2: int;

var $$6$7$1: int;

var $$6$7$2: int;

var $$6$8$1: int;

var $$6$8$2: int;

var $$6$9$1: int;

var $$6$9$2: int;

var $$6$10$1: int;

var $$6$10$2: int;

var $$6$11$1: int;

var $$6$11$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$7$3$1: int;

var $$7$3$2: int;

var $$7$4$1: int;

var $$7$4$2: int;

var $$7$5$1: int;

var $$7$5$2: int;

var $$7$6$1: int;

var $$7$6$2: int;

var $$7$7$1: int;

var $$7$7$2: int;

var $$7$8$1: int;

var $$7$8$2: int;

var $$7$9$1: int;

var $$7$9$2: int;

var $$7$10$1: int;

var $$7$10$2: int;

var $$7$11$1: int;

var $$7$11$2: int;

var $$out$0$1: int;

var $$out$0$2: int;

var $$out$1$1: int;

var $$out$1$2: int;

var $$out$2$1: int;

var $$out$2$2: int;

var $$out$3$1: int;

var $$out$3$2: int;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b0: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const _WATCHED_VALUE_$$pSobelOriginal: int;

procedure {:inline 1} _LOG_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pSobelOriginal;



implementation {:inline 1} _LOG_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then true else _READ_HAS_OCCURRED_$$pSobelOriginal);
    return;
}



procedure _CHECK_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal: bool;

procedure {:inline 1} _LOG_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal;



implementation {:inline 1} _LOG_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then true else _WRITE_HAS_OCCURRED_$$pSobelOriginal);
    _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
    return;
}



procedure _CHECK_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal != _value);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal != _value);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pSobelOriginal;



implementation {:inline 1} _LOG_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pSobelOriginal);
    return;
}



procedure _CHECK_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal := (if _P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
    return;
}



const _WATCHED_VALUE_$$blockFunction_table: functionPtr;

procedure {:inline 1} _LOG_READ_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr);
  modifies _READ_HAS_OCCURRED_$$blockFunction_table;



implementation {:inline 1} _LOG_READ_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blockFunction_table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction_table == _value then true else _READ_HAS_OCCURRED_$$blockFunction_table);
    return;
}



procedure _CHECK_READ_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blockFunction_table);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blockFunction_table: bool;

procedure {:inline 1} _LOG_WRITE_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr, _value_old: functionPtr);
  modifies _WRITE_HAS_OCCURRED_$$blockFunction_table, _WRITE_READ_BENIGN_FLAG_$$blockFunction_table;



implementation {:inline 1} _LOG_WRITE_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr, _value_old: functionPtr)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blockFunction_table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction_table == _value then true else _WRITE_HAS_OCCURRED_$$blockFunction_table);
    _WRITE_READ_BENIGN_FLAG_$$blockFunction_table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction_table == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blockFunction_table);
    return;
}



procedure _CHECK_WRITE_$$blockFunction_table(_P: bool, _offset: int, _value: functionPtr);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction_table != _value);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction_table != _value);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blockFunction_table(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blockFunction_table;



implementation {:inline 1} _LOG_ATOMIC_$$blockFunction_table(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blockFunction_table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blockFunction_table);
    return;
}



procedure _CHECK_ATOMIC_$$blockFunction_table(_P: bool, _offset: int);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockFunction_table"} {:array "$$blockFunction_table"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockFunction_table(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blockFunction_table;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockFunction_table(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blockFunction_table := (if _P && _WRITE_HAS_OCCURRED_$$blockFunction_table && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blockFunction_table);
    return;
}



const _WATCHED_VALUE_$$tex: int;

procedure {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _READ_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_READ_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex: bool;

procedure {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$tex, _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _WRITE_HAS_OCCURRED_$$tex);
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



procedure _CHECK_WRITE_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_ATOMIC_$$tex(_P: bool, _offset: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



const _WATCHED_VALUE_$$blockFunction: functionPtr;

procedure {:inline 1} _LOG_READ_$$blockFunction(_P: bool, _offset: int, _value: functionPtr);
  modifies _READ_HAS_OCCURRED_$$blockFunction;



implementation {:inline 1} _LOG_READ_$$blockFunction(_P: bool, _offset: int, _value: functionPtr)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blockFunction := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction == _value then true else _READ_HAS_OCCURRED_$$blockFunction);
    return;
}



procedure _CHECK_READ_$$blockFunction(_P: bool, _offset: int, _value: functionPtr);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blockFunction);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blockFunction: bool;

procedure {:inline 1} _LOG_WRITE_$$blockFunction(_P: bool, _offset: int, _value: functionPtr, _value_old: functionPtr);
  modifies _WRITE_HAS_OCCURRED_$$blockFunction, _WRITE_READ_BENIGN_FLAG_$$blockFunction;



implementation {:inline 1} _LOG_WRITE_$$blockFunction(_P: bool, _offset: int, _value: functionPtr, _value_old: functionPtr)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blockFunction := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction == _value then true else _WRITE_HAS_OCCURRED_$$blockFunction);
    _WRITE_READ_BENIGN_FLAG_$$blockFunction := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blockFunction);
    return;
}



procedure _CHECK_WRITE_$$blockFunction(_P: bool, _offset: int, _value: functionPtr);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction != _value);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockFunction != _value);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blockFunction(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blockFunction;



implementation {:inline 1} _LOG_ATOMIC_$$blockFunction(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blockFunction := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blockFunction);
    return;
}



procedure _CHECK_ATOMIC_$$blockFunction(_P: bool, _offset: int);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockFunction"} {:array "$$blockFunction"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockFunction(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blockFunction;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockFunction(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blockFunction := (if _P && _WRITE_HAS_OCCURRED_$$blockFunction && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blockFunction);
    return;
}



const _WATCHED_VALUE_$$LocalBlock: int;

procedure {:inline 1} _LOG_READ_$$LocalBlock(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$LocalBlock;



implementation {:inline 1} _LOG_READ_$$LocalBlock(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then true else _READ_HAS_OCCURRED_$$LocalBlock);
    return;
}



procedure _CHECK_READ_$$LocalBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$LocalBlock && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$LocalBlock: bool;

procedure {:inline 1} _LOG_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock;



implementation {:inline 1} _LOG_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then true else _WRITE_HAS_OCCURRED_$$LocalBlock);
    _WRITE_READ_BENIGN_FLAG_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$LocalBlock);
    return;
}



procedure _CHECK_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$LocalBlock(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$LocalBlock;



implementation {:inline 1} _LOG_ATOMIC_$$LocalBlock(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$LocalBlock);
    return;
}



procedure _CHECK_ATOMIC_$$LocalBlock(_P: bool, _offset: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$LocalBlock;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$LocalBlock := (if _P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$LocalBlock);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$blockFunction;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$pSobelOriginal;
    goto anon7;

  anon7:
    havoc $$blockFunction;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$LocalBlock;
    goto anon3;

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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$blockFunction;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockFunction;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockFunction;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$pSobelOriginal;
    goto anon7;

  anon7:
    havoc $$blockFunction;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$LocalBlock;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

const {:existential true} _b134: bool;

const {:existential true} _b135: bool;

const {:existential true} _b136: bool;

const {:existential true} _b137: bool;

const {:existential true} _b138: bool;

const {:existential true} _b139: bool;

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;

const {:existential true} _b180: bool;

const {:existential true} _b181: bool;

const {:existential true} _b182: bool;

const {:existential true} _b183: bool;

const {:existential true} _b184: bool;

const {:existential true} _b185: bool;

const {:existential true} _b186: bool;

const {:existential true} _b187: bool;

const {:existential true} _b188: bool;

const {:existential true} _b189: bool;

const {:existential true} _b190: bool;

const {:existential true} _b191: bool;

const {:existential true} _b192: bool;

const {:existential true} _b193: bool;

const {:existential true} _b194: bool;

const {:existential true} _b195: bool;

const {:existential true} _b196: bool;

const {:existential true} _b197: bool;

const {:existential true} _b198: bool;

const {:existential true} _b199: bool;

const {:existential true} _b200: bool;

const {:existential true} _b201: bool;

const {:existential true} _b202: bool;

const {:existential true} _b203: bool;

const {:existential true} _b204: bool;

const {:existential true} _b205: bool;

const {:existential true} _b206: bool;

const {:existential true} _b207: bool;

const {:existential true} _b208: bool;

const {:existential true} _b209: bool;

const {:existential true} _b210: bool;

const {:existential true} _b211: bool;

const {:existential true} _b212: bool;

const {:existential true} _b213: bool;

const {:existential true} _b214: bool;

const {:existential true} _b215: bool;

const {:existential true} _b216: bool;

const {:existential true} _b217: bool;

const {:existential true} _b218: bool;

const {:existential true} _b219: bool;

const {:existential true} _b220: bool;

const {:existential true} _b221: bool;

const {:existential true} _b222: bool;

const {:existential true} _b223: bool;

const {:existential true} _b224: bool;

const {:existential true} _b225: bool;

const {:existential true} _b226: bool;

const {:existential true} _b227: bool;

const {:existential true} _b228: bool;

const {:existential true} _b229: bool;

const {:existential true} _b230: bool;

const {:existential true} _b231: bool;

const {:existential true} _b232: bool;

const {:existential true} _b233: bool;

const {:existential true} _b234: bool;

const {:existential true} _b235: bool;

const {:existential true} _b236: bool;

const {:existential true} _b237: bool;

const {:existential true} _b238: bool;

const {:existential true} _b239: bool;

const {:existential true} _b240: bool;

const {:existential true} _b241: bool;

const {:existential true} _b242: bool;

const {:existential true} _b243: bool;

const {:existential true} _b244: bool;

const {:existential true} _b245: bool;

const {:existential true} _b246: bool;

const {:existential true} _b247: bool;

const {:existential true} _b248: bool;

const {:existential true} _b249: bool;

const {:existential true} _b250: bool;

const {:existential true} _b251: bool;

const {:existential true} _b252: bool;

const {:existential true} _b253: bool;

const {:existential true} _b254: bool;
