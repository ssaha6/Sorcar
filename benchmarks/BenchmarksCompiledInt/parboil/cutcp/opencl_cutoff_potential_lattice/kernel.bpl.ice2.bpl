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
 b0019: bool,
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool,
 b0024: bool,
 b0025: bool,
 b0026: bool,
 b0027: bool,
 b0028: bool,
 b0029: bool,
 b0030: bool,
 b0031: bool,
 b0032: bool,
 b0033: bool,
 b0034: bool,
 b0035: bool,
 b0036: bool,
 b0037: bool,
 b0038: bool,
 b0039: bool,
 b0040: bool,
 b0041: bool,
 b0042: bool,
 b0043: bool,
 b0044: bool,
 b0045: bool,
 b0046: bool,
 b0047: bool,
 b0048: bool,
 b0049: bool,
 b0050: bool,
 b0051: bool,
 b0052: bool,
 b0053: bool,
 b0054: bool,
 b0055: bool,
 b0056: bool,
 b0057: bool,
 b0058: bool,
 b0059: bool,
 b0060: bool,
 b0061: bool,
 b0062: bool,
 b0063: bool,
 b0064: bool,
 b0065: bool,
 b0066: bool,
 b0067: bool,
 b0068: bool,
 b0069: bool,
 b0070: bool,
 b0071: bool,
 b0072: bool,
 b0073: bool,
 b0074: bool,
 b0075: bool,
 b0076: bool,
 b0077: bool,
 b0078: bool,
 b0079: bool,
 b0080: bool,
 b0081: bool,
 b0082: bool,
 b0083: bool,
 b0084: bool,
 b0085: bool,
 b0086: bool,
 b0087: bool,
 b0088: bool,
 b0089: bool,
 b0090: bool,
 b0091: bool,
 b0092: bool,
 b0093: bool,
 b0094: bool,
 b0095: bool,
 b0096: bool,
 b0097: bool,
 b0098: bool,
 b0099: bool,
 b0100: bool,
 b0101: bool,
 b0102: bool,
 b0103: bool,
 b0104: bool,
 b0105: bool,
 b0106: bool,
 b0107: bool,
 b0108: bool,
 b0109: bool,
 b0110: bool,
 b0111: bool,
 b0112: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$binBaseAddr"} {:global} {:elem_width 32} {:source_name "binBaseAddr"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$binBaseAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$binBaseAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$binBaseAddr: bool;

var {:source_name "regionZeroAddr"} {:global} $$regionZeroAddr: [int]int;

axiom {:array_info "$$regionZeroAddr"} {:global} {:elem_width 32} {:source_name "regionZeroAddr"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:source_name "NbrListLen"} {:constant} $$NbrListLen$1: [int]int;

var {:source_name "NbrListLen"} {:constant} $$NbrListLen$2: [int]int;

axiom {:array_info "$$NbrListLen"} {:constant} {:elem_width 32} {:source_name "NbrListLen"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "NbrList"} {:constant} $$NbrList$1: [int]int;

var {:source_name "NbrList"} {:constant} $$NbrList$2: [int]int;

axiom {:array_info "$$NbrList"} {:constant} {:elem_width 32} {:source_name "NbrList"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:source_name "myBinIndex"} {:group_shared} $$opencl_cutoff_potential_lattice.myBinIndex: [bv1][int]int;

axiom {:array_info "$$opencl_cutoff_potential_lattice.myBinIndex"} {:group_shared} {:elem_width 32} {:source_name "myBinIndex"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:source_name "AtomBinCache"} {:group_shared} $$opencl_cutoff_potential_lattice.AtomBinCache: [bv1][int]int;

axiom {:array_info "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:group_shared} {:elem_width 32} {:source_name "AtomBinCache"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_ASHR(int, int) : int;

function BV32_LSHR(int, int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEQ32(int, int) : bool;

function FFLOOR32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_TO_SI32(int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function __other_bv32(int) : int;

function  BV1_ZEXT32(x: int) : int
{
  x
}

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "opencl_cutoff_potential_lattice"} {:kernel} $opencl_cutoff_potential_lattice($binDim_x: int, $binDim_y: int, $offset: int, $h: int, $cutoff2: int, $inv_cutoff2: int, $zRegionIndex: int);
  requires {:sourceloc_num 0} {:thread 1} (if $$NbrListLen$1[0] == $$NbrListLen$2[0] then 1 else 0) != 0;
  requires {:sourceloc_num 0} {:thread 2} (if $$NbrListLen$2[0] == $$NbrListLen$1[0] then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if FEQ32($h, 1056964608) then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$binBaseAddr && !_WRITE_HAS_OCCURRED_$$binBaseAddr && !_ATOMIC_HAS_OCCURRED_$$binBaseAddr;
  requires !_READ_HAS_OCCURRED_$$regionZeroAddr && !_WRITE_HAS_OCCURRED_$$regionZeroAddr && !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
  requires !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
  requires !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
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
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex, _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING, _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _TRACKING, _WRITE_HAS_OCCURRED_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:source_name "opencl_cutoff_potential_lattice"} {:kernel} $opencl_cutoff_potential_lattice($binDim_x: int, $binDim_y: int, $offset: int, $h: int, $cutoff2: int, $inv_cutoff2: int, $zRegionIndex: int)
{
  var $nbrid.0$1: int;
  var $nbrid.0$2: int;
  var $totalbins.0$1: int;
  var $totalbins.0$2: int;
  var $numbins.0$1: int;
  var $numbins.0$2: int;
  var $energy.0$1: int;
  var $energy.0$2: int;
  var $nbrid.1$1: int;
  var $nbrid.1$2: int;
  var $bincnt.0$1: int;
  var $bincnt.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $numbins.1$1: int;
  var $numbins.1$2: int;
  var $energy.1$1: int;
  var $energy.1$2: int;
  var $bincnt.1$1: int;
  var $bincnt.1$2: int;
  var $energy.2$1: int;
  var $energy.2$2: int;
  var $i1.0$1: int;
  var $i1.0$2: int;
  var $energy.3$1: int;
  var $energy.3$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
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
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: int;
  var v10$2: int;
  var v11$1: bool;
  var v11$2: bool;
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
  var v34$1: int;
  var v34$2: int;
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
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: int;
  var v43$2: int;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: bool;
  var v50$2: bool;
  var v51$1: int;
  var v51$2: int;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: int;
  var v53$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11: bool;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_z$1, 8), local_id_y$1), 8), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_z$2, 8), local_id_y$2), 8), local_id_x$2);
    v1$1 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($zRegionIndex, num_groups_y), group_id_y$1), BV32_LSHR(num_groups_x, 2)), BV32_LSHR(group_id_x$1, 2)), 512);
    v1$2 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($zRegionIndex, num_groups_y), group_id_y$2), BV32_LSHR(num_groups_x, 2)), BV32_LSHR(group_id_x$2, 2)), 512);
    v2$1 := BV32_MUL(BV32_AND(group_id_x$1, 3), 128);
    v2$2 := BV32_MUL(BV32_AND(group_id_x$2, 3), 128);
    v3$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$1, 2)), local_id_x$1)), $h);
    v3$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$2, 2)), local_id_x$2)), $h);
    v4$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$1), local_id_y$1)), $h);
    v4$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$2), local_id_y$2)), $h);
    v5$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_MUL(8, $zRegionIndex), BV32_MUL(2, BV32_AND(group_id_x$1, 3))), local_id_z$1)), $h);
    v5$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_MUL(8, $zRegionIndex), BV32_MUL(2, BV32_AND(group_id_x$2, 3))), local_id_z$2)), $h);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$1, 2)), 4)), $h), 1048576000))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$2, 2)), 4)), $h), 1048576000))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$1, 2)), 4)), $h), 1048576000)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, BV32_LSHR(group_id_x$2, 2)), 4)), $h), 1048576000)));
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$1), 4)), $h), 1048576000))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$2), 4)), $h), 1048576000))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$1), 4)), $h), 1048576000)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8, group_id_y$2), 4)), $h), 1048576000)));
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8, $zRegionIndex), 4)), $h), 1048576000))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8, $zRegionIndex), 4)), $h), 1048576000))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8, $zRegionIndex), 4)), $h), 1048576000)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8, $zRegionIndex), 4)), $h), 1048576000)));
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3, 0, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3] := 0;
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3] := 0;
    $nbrid.0$1, $totalbins.0$1, $numbins.0$1, $energy.0$1 := BV32_ASHR(v0$1, 4), 0, 32, 0;
    $nbrid.0$2, $totalbins.0$2, $numbins.0$2, $energy.0$2 := BV32_ASHR(v0$2, 4), 0, 32, 0;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> BV32_SLE($totalbins.0$1, 0) )  && ( p0$2 ==> BV32_SLE($totalbins.0$2, 0) ) ,  ( p0$1 ==> BV32_SGE($totalbins.0$1, 0) )  && ( p0$2 ==> BV32_SGE($totalbins.0$2, 0) ) ,  ( p0$1 ==> BV32_ULE($totalbins.0$1, 0) )  && ( p0$2 ==> BV32_ULE($totalbins.0$2, 0) ) ,  ( p0$1 ==> BV32_UGE($totalbins.0$1, 0) )  && ( p0$2 ==> BV32_UGE($totalbins.0$2, 0) ) ,  (  BV32_SLT($totalbins.0$1, v6$1) ==> p0$1 )  && (  BV32_SLT($totalbins.0$2, v6$2) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $nbrid.0$1 == 0 || BV32_AND($nbrid.0$1, BV32_SUB($nbrid.0$1, 1)) == 0 ) ,  (  $nbrid.0$1 != 0 ) ,  (  $nbrid.0$2 == 0 || BV32_AND($nbrid.0$2, BV32_SUB($nbrid.0$2, 1)) == 0 ) ,  (  $nbrid.0$2 != 0 ) ,  (  p0$1 == p0$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2 ) ,  (  p0$1 && p0$2 ==> $nbrid.0$1 == $nbrid.0$2 ) ,  (  p0$1 && p0$2 ==> $totalbins.0$1 == $totalbins.0$2 ) ,  (  p0$1 && p0$2 ==> $numbins.0$1 == $numbins.0$2 ) ,  (  p0$1 && p0$2 ==> $energy.0$1 == $energy.0$2 ) ,  (  p0$1 && p0$2 ==> $nbrid.1$1 == $nbrid.1$2 ) ,  (  p0$1 && p0$2 ==> $bincnt.0$1 == $bincnt.0$2 ) ,  (  p0$1 && p0$2 ==> $0$1 == $0$2 ) ,  (  p0$1 && p0$2 ==> $numbins.1$1 == $numbins.1$2 ) ,  (  p0$1 && p0$2 ==> $energy.1$1 == $energy.1$2 ) ,  (  p0$1 && p0$2 ==> $bincnt.1$1 == $bincnt.1$2 ) ,  (  p0$1 && p0$2 ==> $energy.2$1 == $energy.2$2 ) ,  (  p0$1 && p0$2 ==> $i1.0$1 == $i1.0$2 ) ,  (  p0$1 && p0$2 ==> $energy.3$1 == $energy.3$2 ) ,  (  p0$1 && p0$2 ==> v6$1 == v6$2 ) ,  (  p0$1 && p0$2 ==> v7$1 == v7$2 ) ,  (  p0$1 && p0$2 ==> v8$1 == v8$2 ) ,  (  p0$1 && p0$2 ==> v9$1 == v9$2 ) ,  (  p0$1 && p0$2 ==> v10$1 == v10$2 ) ,  (  p0$1 && p0$2 ==> v11$1 == v11$2 ) ,  (  p0$1 && p0$2 ==> v12$1 == v12$2 ) ,  (  p0$1 && p0$2 ==> v13$1 == v13$2 ) ,  (  p0$1 && p0$2 ==> v14$1 == v14$2 ) ,  (  p0$1 && p0$2 ==> v15$1 == v15$2 ) ,  (  p0$1 && p0$2 ==> v16$1 == v16$2 ) ,  (  p0$1 && p0$2 ==> v17$1 == v17$2 ) ,  (  p0$1 && p0$2 ==> v18$1 == v18$2 ) ,  (  p0$1 && p0$2 ==> v19$1 == v19$2 ) ,  (  p0$1 && p0$2 ==> v20$1 == v20$2 ) ,  (  p0$1 && p0$2 ==> v21$1 == v21$2 ) ,  (  p0$1 && p0$2 ==> v22$1 == v22$2 ) ,  (  p0$1 && p0$2 ==> v23$1 == v23$2 ) ,  (  p0$1 && p0$2 ==> v34$1 == v34$2 ) ,  (  p0$1 && p0$2 ==> v24$1 == v24$2 ) ,  (  p0$1 && p0$2 ==> v25$1 == v25$2 ) ,  (  p0$1 && p0$2 ==> v26$1 == v26$2 ) ,  (  p0$1 && p0$2 ==> v27$1 == v27$2 ) ,  (  p0$1 && p0$2 ==> v28$1 == v28$2 ) ,  (  p0$1 && p0$2 ==> v29$1 == v29$2 ) ,  (  p0$1 && p0$2 ==> v30$1 == v30$2 ) ,  (  p0$1 && p0$2 ==> v31$1 == v31$2 ) ,  (  p0$1 && p0$2 ==> v32$1 == v32$2 ) ,  (  p0$1 && p0$2 ==> v33$1 == v33$2 ) ,  (  p0$1 && p0$2 ==> v35$1 == v35$2 ) ,  (  p0$1 && p0$2 ==> v36$1 == v36$2 ) ,  (  p0$1 && p0$2 ==> v37$1 == v37$2 ) ,  (  p0$1 && p0$2 ==> v38$1 == v38$2 ) ,  (  p0$1 && p0$2 ==> v39$1 == v39$2 ) ,  (  p0$1 && p0$2 ==> v40$1 == v40$2 ) ,  (  p0$1 && p0$2 ==> v41$1 == v41$2 ) ,  (  p0$1 && p0$2 ==> v42$1 == v42$2 ) ,  (  p0$1 && p0$2 ==> v43$1 == v43$2 ) ,  (  p0$1 && p0$2 ==> v44$1 == v44$2 ) ,  (  p0$1 && p0$2 ==> v45$1 == v45$2 ) ,  (  p0$1 && p0$2 ==> v46$1 == v46$2 ) ,  (  p0$1 && p0$2 ==> v47$1 == v47$2 ) ,  (  p0$1 && p0$2 ==> v48$1 == v48$2 ) ,  (  p0$1 && p0$2 ==> v49$1 == v49$2 ) ,  (  p0$1 && p0$2 ==> v50$1 == v50$2 ) ,  (  p0$1 && p0$2 ==> v51$1 == v51$2 ) ,  (  p0$1 && p0$2 ==> v52$1 == v52$2 ) ,  (  p0$1 && p0$2 ==> v53$1 == v53$2 ) ,  (  !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET == 1 || _WATCHED_OFFSET == 2 || _WATCHED_OFFSET == 3 ) ,  (  !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ) ,  (  !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 16) mod 1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 7} p0$1 ==> true;
    v6$1 := (if p0$1 then $$NbrListLen$1[0] else v6$1);
    v6$2 := (if p0$2 then $$NbrListLen$2[0] else v6$2);
    v7$1 := (if p0$1 then BV32_SLT($totalbins.0$1, v6$1) else v7$1);
    v7$2 := (if p0$2 then BV32_SLT($totalbins.0$2, v6$2) else v7$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p8$1 := false;
    p8$2 := false;
    p17$1 := false;
    p17$2 := false;
    p1$1 := (if p0$1 && v7$1 then v7$1 else p1$1);
    p1$2 := (if p0$2 && v7$2 then v7$2 else p1$2);
    p0$1 := (if p0$1 && !v7$1 then v7$1 else p0$1);
    p0$2 := (if p0$2 && !v7$2 then v7$2 else p0$2);
    v8$1 := (if p1$1 then BV32_MUL(32, BV32_ASHR(v0$1, 4)) else v8$1);
    v8$2 := (if p1$2 then BV32_MUL(32, BV32_ASHR(v0$2, 4)) else v8$2);
    $nbrid.1$1, $bincnt.0$1 := (if p1$1 then $nbrid.0$1 else $nbrid.1$1), (if p1$1 then 0 else $bincnt.0$1);
    $nbrid.1$2, $bincnt.0$2 := (if p1$2 then $nbrid.0$2 else $nbrid.1$2), (if p1$2 then 0 else $bincnt.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3 := _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET == 1 || _WATCHED_OFFSET == 2 || _WATCHED_OFFSET == 3 ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ) ,  (  _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 16) mod 1 ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3 == _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> $nbrid.1$1 mod 8 == $nbrid.0$1 mod 8 )  && ( p2$2 ==> $nbrid.1$2 mod 8 == $nbrid.0$2 mod 8 ) ,  ( p2$1 ==> $bincnt.0$1 mod 1 == 0 mod 1 )  && ( p2$2 ==> $bincnt.0$2 mod 1 == 0 mod 1 ) ,  ( p2$1 ==> BV32_SLE($bincnt.0$1, 0) )  && ( p2$2 ==> BV32_SLE($bincnt.0$2, 0) ) ,  ( p2$1 ==> BV32_SGE($bincnt.0$1, 0) )  && ( p2$2 ==> BV32_SGE($bincnt.0$2, 0) ) ,  ( p2$1 ==> BV32_ULE($bincnt.0$1, 0) )  && ( p2$2 ==> BV32_ULE($bincnt.0$2, 0) ) ,  ( p2$1 ==> BV32_UGE($bincnt.0$1, 0) )  && ( p2$2 ==> BV32_UGE($bincnt.0$2, 0) ) ,  ( p2$1 ==> p2$1 ==> BV32_SLT($totalbins.0$1, v6$1) )  && ( p2$2 ==> p2$2 ==> BV32_SLT($totalbins.0$2, v6$2) ) ,  (  BV32_SLT($totalbins.0$1, v6$1) && $0$1 == 1 ==> p2$1 )  && (  BV32_SLT($totalbins.0$2, v6$2) && $0$2 == 1 ==> p2$2 ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> BV32_SLT($totalbins.0$1, v6$1) ) ,  (  _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 10} p2$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 11} {:thread 1} (if _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_ADD(v8$1, BV32_AND(v0$1, 15))), 256) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_ADD(BV32_ADD(v8$1, BV32_AND(v0$1, 15)), 16)), 256) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    v9$1 := (if p2$1 then BV32_SLT($bincnt.0$1, 4) else v9$1);
    v9$2 := (if p2$2 then BV32_SLT($bincnt.0$2, 4) else v9$2);
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
    p4$1 := (if p2$1 && v9$1 then v9$1 else p4$1);
    p4$2 := (if p2$2 && v9$2 then v9$2 else p4$2);
    p3$1 := (if p2$1 && !v9$1 then !v9$1 else p3$1);
    p3$2 := (if p2$2 && !v9$2 then !v9$2 else p3$2);
    $0$1 := (if p3$1 then 0 else $0$1);
    $0$2 := (if p3$2 then 0 else $0$2);
    v10$1 := (if p4$1 then $$NbrListLen$1[0] else v10$1);
    v10$2 := (if p4$2 then $$NbrListLen$2[0] else v10$2);
    $0$1 := (if p4$1 then (if BV32_SLT($nbrid.1$1, v10$1) then 1 else 0) else $0$1);
    $0$2 := (if p4$2 then (if BV32_SLT($nbrid.1$2, v10$2) then 1 else 0) else $0$2);
    v11$1 := (if p2$1 then $0$1 == 1 else v11$1);
    v11$2 := (if p2$2 then $0$2 == 1 else v11$2);
    p5$1 := (if p2$1 && v11$1 then v11$1 else p5$1);
    p5$2 := (if p2$2 && v11$2 then v11$2 else p5$2);
    p2$1 := (if p2$1 && !v11$1 then v11$1 else p2$1);
    p2$2 := (if p2$2 && !v11$2 then v11$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v12$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0] else v12$1);
    v12$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v12$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v13$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1] else v13$1);
    v13$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1] else v13$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v14$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2] else v14$1);
    v14$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2] else v14$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v15$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3] else v15$1);
    v15$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3] else v15$2);
    v16$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4)] else v16$1);
    v16$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4)] else v16$2);
    v17$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 1)] else v17$1);
    v17$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 1)] else v17$2);
    v18$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 2)] else v18$1);
    v18$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 2)] else v18$2);
    v19$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 3)] else v19$1);
    v19$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 3)] else v19$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v20$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0] else v20$1);
    v20$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v20$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v21$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1] else v21$1);
    v21$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1] else v21$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v22$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2] else v22$1);
    v22$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2] else v22$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v23$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3] else v23$1);
    v23$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3] else v23$2);
    v24$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4)] else v24$1);
    v24$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4)] else v24$2);
    v25$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 1)] else v25$1);
    v25$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 1)] else v25$2);
    v26$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 2)] else v26$1);
    v26$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 2)] else v26$2);
    v27$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 3)] else v27$1);
    v27$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 3)] else v27$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v28$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0] else v28$1);
    v28$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v28$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v29$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1] else v29$1);
    v29$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1] else v29$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v30$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2] else v30$1);
    v30$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2] else v30$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v31$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3] else v31$1);
    v31$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3] else v31$2);
    v32$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4)] else v32$1);
    v32$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4)] else v32$2);
    v33$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 1)] else v33$1);
    v33$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 1)] else v33$2);
    v34$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 2)] else v34$1);
    v34$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 2)] else v34$2);
    v35$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4), 3)] else v35$1);
    v35$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4), 3)] else v35$2);
    v36$1 := (if p5$1 then BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v30$1, v34$1), $binDim_y), BV32_ADD(v21$1, v25$1)), $binDim_x), BV32_ADD(v12$1, v16$1)), 32) else v36$1);
    v36$2 := (if p5$2 then BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v30$2, v34$2), $binDim_y), BV32_ADD(v21$2, v25$2)), $binDim_x), BV32_ADD(v12$2, v16$2)), 32) else v36$2);
    v37$1 := (if p5$1 then BV32_AND(v0$1, 15) else v37$1);
    v37$2 := (if p5$2 then BV32_AND(v0$2, 15) else v37$2);
    v38$1 := (if p5$1 then BV32_ADD(v8$1, BV32_MUL(BV32_MUL($bincnt.0$1, 8), 32)) else v38$1);
    v38$2 := (if p5$2 then BV32_ADD(v8$2, BV32_MUL(BV32_MUL($bincnt.0$2, 8), 32)) else v38$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p5$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p5$2 then _HAVOC_int$2 else v39$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$1, BV32_ADD(v38$1, v37$1), v39$1, $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(v38$2, v37$2));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(v38$2, v37$2), v39$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)] := (if p5$1 then v39$1 else $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)]);
    $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, v37$2)] := (if p5$2 then v39$2 else $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, v37$2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p5$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p5$2 then _HAVOC_int$2 else v40$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$1, BV32_ADD(BV32_ADD(v38$1, v37$1), 16), v40$1, $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(BV32_ADD(v38$2, v37$2), 16));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(BV32_ADD(v38$2, v37$2), 16), v40$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16)] := (if p5$1 then v40$1 else $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16)]);
    $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v38$2, v37$2), 16)] := (if p5$2 then v40$2 else $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v38$2, v37$2), 16)]);
    $nbrid.1$1, $bincnt.0$1 := (if p5$1 then BV32_ADD($nbrid.1$1, 8) else $nbrid.1$1), (if p5$1 then BV32_ADD($bincnt.0$1, 1) else $bincnt.0$1);
    $nbrid.1$2, $bincnt.0$2 := (if p5$2 then BV32_ADD($nbrid.1$2, 8) else $nbrid.1$2), (if p5$2 then BV32_ADD($bincnt.0$2, 1) else $bincnt.0$2);
    p2$1 := (if p5$1 then true else p2$1);
    p2$2 := (if p5$2 then true else p2$2);
    goto $3.backedge, __partitioned_block_$3.tail_0;

  __partitioned_block_$3.tail_0:
    assume !p2$1 && !p2$2;
    goto __partitioned_block_$3.tail_1;

  __partitioned_block_$3.tail_1:
    call {:sourceloc_num 46} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
    v41$1 := (if p1$1 then $$NbrListLen$1[0] else v41$1);
    v41$2 := (if p1$2 then $$NbrListLen$2[0] else v41$2);
    v42$1 := (if p1$1 then BV32_SGT(BV32_ADD($totalbins.0$1, 32), v41$1) else v42$1);
    v42$2 := (if p1$2 then BV32_SGT(BV32_ADD($totalbins.0$2, 32), v41$2) else v42$2);
    p7$1 := (if p1$1 && v42$1 then v42$1 else p7$1);
    p7$2 := (if p1$2 && v42$2 then v42$2 else p7$2);
    p6$1 := (if p1$1 && !v42$1 then !v42$1 else p6$1);
    p6$2 := (if p1$2 && !v42$2 then !v42$2 else p6$2);
    $numbins.1$1 := (if p6$1 then $numbins.0$1 else $numbins.1$1);
    $numbins.1$2 := (if p6$2 then $numbins.0$2 else $numbins.1$2);
    v43$1 := (if p7$1 then $$NbrListLen$1[0] else v43$1);
    v43$2 := (if p7$2 then $$NbrListLen$2[0] else v43$2);
    $numbins.1$1 := (if p7$1 then BV32_SUB(v43$1, $totalbins.0$1) else $numbins.1$1);
    $numbins.1$2 := (if p7$2 then BV32_SUB(v43$2, $totalbins.0$2) else $numbins.1$2);
    $energy.1$1, $bincnt.1$1 := (if p1$1 then $energy.0$1 else $energy.1$1), (if p1$1 then 0 else $bincnt.1$1);
    $energy.1$2, $bincnt.1$2 := (if p1$2 then $energy.0$2 else $energy.1$2), (if p1$2 then 0 else $bincnt.1$2);
    p8$1 := (if p1$1 then true else p8$1);
    p8$2 := (if p1$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  (  !p1$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ) ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p1"} true;
    assert p8$1 ==> p0$1;
    assert p8$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> $bincnt.1$1 mod 1 == 0 mod 1 )  && ( p8$2 ==> $bincnt.1$2 mod 1 == 0 mod 1 ) ,  ( p8$1 ==> BV32_SLE($bincnt.1$1, 0) )  && ( p8$2 ==> BV32_SLE($bincnt.1$2, 0) ) ,  ( p8$1 ==> BV32_SGE($bincnt.1$1, 0) )  && ( p8$2 ==> BV32_SGE($bincnt.1$2, 0) ) ,  ( p8$1 ==> BV32_ULE($bincnt.1$1, 0) )  && ( p8$2 ==> BV32_ULE($bincnt.1$2, 0) ) ,  ( p8$1 ==> BV32_UGE($bincnt.1$1, 0) )  && ( p8$2 ==> BV32_UGE($bincnt.1$2, 0) ) ,  ( p8$1 ==> p8$1 ==> BV32_SLT($totalbins.0$1, v6$1) )  && ( p8$2 ==> p8$2 ==> BV32_SLT($totalbins.0$2, v6$2) ) ,  (  BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1) ==> p8$1 )  && (  BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 51} p8$1 ==> true;
    v44$1 := (if p8$1 then BV32_SLT($bincnt.1$1, $numbins.1$1) else v44$1);
    v44$2 := (if p8$2 then BV32_SLT($bincnt.1$2, $numbins.1$2) else v44$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p9$1 := (if p8$1 && v44$1 then v44$1 else p9$1);
    p9$2 := (if p8$2 && v44$2 then v44$2 else p9$2);
    p8$1 := (if p8$1 && !v44$1 then v44$1 else p8$1);
    p8$2 := (if p8$2 && !v44$2 then v44$2 else p8$2);
    $energy.2$1, $i1.0$1 := (if p9$1 then $energy.1$1 else $energy.2$1), (if p9$1 then 0 else $i1.0$1);
    $energy.2$2, $i1.0$2 := (if p9$2 then $energy.1$2 else $energy.2$2), (if p9$2 then 0 else $i1.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_2"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p8$1;
    assert p10$2 ==> p8$2;
    assert p8$1 ==> p0$1;
    assert p8$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> $i1.0$1 mod 1 == 0 mod 1 )  && ( p10$2 ==> $i1.0$2 mod 1 == 0 mod 1 ) ,  ( p10$1 ==> BV32_SLE($i1.0$1, 0) )  && ( p10$2 ==> BV32_SLE($i1.0$2, 0) ) ,  ( p10$1 ==> BV32_SGE($i1.0$1, 0) )  && ( p10$2 ==> BV32_SGE($i1.0$2, 0) ) ,  ( p10$1 ==> BV32_ULE($i1.0$1, 0) )  && ( p10$2 ==> BV32_ULE($i1.0$2, 0) ) ,  ( p10$1 ==> BV32_UGE($i1.0$1, 0) )  && ( p10$2 ==> BV32_UGE($i1.0$2, 0) ) ,  ( p10$1 ==> p10$1 ==> BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1) )  && ( p10$2 ==> p10$2 ==> BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2) ) ,  (  BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1) && BV32_SLT($i1.0$1, 8) ==> p10$1 )  && (  BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2) && BV32_SLT($i1.0$2, 8) ==> p10$2 ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1) ) ,  (  _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($bincnt.1$1, $numbins.1$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 53} p10$1 ==> true;
    v45$1 := (if p10$1 then BV32_SLT($i1.0$1, 8) else v45$1);
    v45$2 := (if p10$2 then BV32_SLT($i1.0$2, 8) else v45$2);
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
    p11$1 := (if p10$1 && v45$1 then v45$1 else p11$1);
    p11$2 := (if p10$2 && v45$2 then v45$2 else p11$2);
    p10$1 := (if p10$1 && !v45$1 then v45$1 else p10$1);
    p10$2 := (if p10$2 && !v45$2 then v45$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4))]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v46$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4))] else v46$1);
    v46$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4))] else v46$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 1), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 1), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v47$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 1)] else v47$1);
    v47$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 1)] else v47$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 2), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 2), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v48$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 2)] else v48$1);
    v48$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 2)] else v48$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 3), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 3), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v49$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32), BV32_MUL($i1.0$1, 4)), 3)] else v49$1);
    v49$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32), BV32_MUL($i1.0$2, 4)), 3)] else v49$2);
    v50$1 := (if p11$1 then FEQ32(0, v49$1) else v50$1);
    v50$2 := (if p11$2 then FEQ32(0, v49$2) else v50$2);
    p10$1 := (if p11$1 && v50$1 then !v50$1 else p10$1);
    p10$2 := (if p11$2 && v50$2 then !v50$2 else p10$2);
    p12$1 := (if p11$1 && !v50$1 then !v50$1 else p12$1);
    p12$2 := (if p11$2 && !v50$2 then !v50$2 else p12$2);
    v51$1 := (if p12$1 then FADD32(FMUL32(FSUB32(v48$1, v5$1), FSUB32(v48$1, v5$1)), FADD32(FMUL32(FSUB32(v46$1, v3$1), FSUB32(v46$1, v3$1)), FMUL32(FSUB32(v47$1, v4$1), FSUB32(v47$1, v4$1)))) else v51$1);
    v51$2 := (if p12$2 then FADD32(FMUL32(FSUB32(v48$2, v5$2), FSUB32(v48$2, v5$2)), FADD32(FMUL32(FSUB32(v46$2, v3$2), FSUB32(v46$2, v3$2)), FMUL32(FSUB32(v47$2, v4$2), FSUB32(v47$2, v4$2)))) else v51$2);
    v52$1 := (if p12$1 then FLT32(v51$1, $cutoff2) else v52$1);
    v52$2 := (if p12$2 then FLT32(v51$2, $cutoff2) else v52$2);
    p14$1 := (if p12$1 && v52$1 then v52$1 else p14$1);
    p14$2 := (if p12$2 && v52$2 then v52$2 else p14$2);
    p13$1 := (if p12$1 && !v52$1 then !v52$1 else p13$1);
    p13$2 := (if p12$2 && !v52$2 then !v52$2 else p13$2);
    $energy.3$1 := (if p13$1 then $energy.2$1 else $energy.3$1);
    $energy.3$2 := (if p13$2 then $energy.2$2 else $energy.3$2);
    v53$1 := (if p14$1 then FADD32(FMUL32(FSUB32(-2147483648, v51$1), $inv_cutoff2), 1065353216) else v53$1);
    v53$2 := (if p14$2 then FADD32(FMUL32(FSUB32(-2147483648, v51$2), $inv_cutoff2), 1065353216) else v53$2);
    $energy.3$1 := (if p14$1 then FADD32($energy.2$1, FMUL32(FMUL32(FMUL32(v49$1, FDIV32(1065353216, FSQRT32(v51$1))), v53$1), v53$1)) else $energy.3$1);
    $energy.3$2 := (if p14$2 then FADD32($energy.2$2, FMUL32(FMUL32(FMUL32(v49$2, FDIV32(1065353216, FSQRT32(v51$2))), v53$2), v53$2)) else $energy.3$2);
    $energy.2$1, $i1.0$1 := (if p12$1 then $energy.3$1 else $energy.2$1), (if p12$1 then BV32_ADD($i1.0$1, 1) else $i1.0$1);
    $energy.2$2, $i1.0$2 := (if p12$2 then $energy.3$2 else $energy.2$2), (if p12$2 then BV32_ADD($i1.0$2, 1) else $i1.0$2);
    p10$1 := (if p12$1 then true else p10$1);
    p10$2 := (if p12$2 then true else p10$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p10$1 && !p10$2;
    $energy.1$1, $bincnt.1$1 := (if p9$1 then $energy.2$1 else $energy.1$1), (if p9$1 then BV32_ADD($bincnt.1$1, 1) else $bincnt.1$1);
    $energy.1$2, $bincnt.1$2 := (if p9$2 then $energy.2$2 else $energy.1$2), (if p9$2 then BV32_ADD($bincnt.1$2, 1) else $bincnt.1$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p8$1 && !p8$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 67} $bugle_barrier_duplicated_1(-1, -1, p1$1, p1$2);
    $nbrid.0$1, $totalbins.0$1, $numbins.0$1, $energy.0$1 := (if p1$1 then $nbrid.1$1 else $nbrid.0$1), (if p1$1 then BV32_ADD($totalbins.0$1, $numbins.1$1) else $totalbins.0$1), (if p1$1 then $numbins.1$1 else $numbins.0$1), (if p1$1 then $energy.1$1 else $energy.0$1);
    $nbrid.0$2, $totalbins.0$2, $numbins.0$2, $energy.0$2 := (if p1$2 then $nbrid.1$2 else $nbrid.0$2), (if p1$2 then BV32_ADD($totalbins.0$2, $numbins.1$2) else $totalbins.0$2), (if p1$2 then $numbins.1$2 else $numbins.0$2), (if p1$2 then $energy.1$2 else $energy.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    call {:sourceloc} {:sourceloc_num 70} _LOG_WRITE_$$regionZeroAddr(true, BV32_ADD(BV32_ADD(v1$1, v2$1), v0$1), $energy.0$1, $$regionZeroAddr[BV32_ADD(BV32_ADD(v1$1, v2$1), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$regionZeroAddr(true, BV32_ADD(BV32_ADD(v1$2, v2$2), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 70} _CHECK_WRITE_$$regionZeroAddr(true, BV32_ADD(BV32_ADD(v1$2, v2$2), v0$2), $energy.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$regionZeroAddr"} true;
    $$regionZeroAddr[BV32_ADD(BV32_ADD(v1$1, v2$1), v0$1)] := $energy.0$1;
    $$regionZeroAddr[BV32_ADD(BV32_ADD(v1$2, v2$2), v0$2)] := $energy.0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $11.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $11;

  $13.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $13;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $3;
}



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 2 then 1 else 0) != 0;

axiom (if num_groups_x == 44 then 1 else 0) != 0;

axiom (if num_groups_y == 11 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING;



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



























































const _WATCHED_VALUE_$$binBaseAddr: int;

procedure {:inline 1} _LOG_READ_$$binBaseAddr(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$binBaseAddr;



implementation {:inline 1} _LOG_READ_$$binBaseAddr(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then true else _READ_HAS_OCCURRED_$$binBaseAddr);
    return;
}



procedure _CHECK_READ_$$binBaseAddr(_P: bool, _offset: int, _value: int);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$binBaseAddr: bool;

procedure {:inline 1} _LOG_WRITE_$$binBaseAddr(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$binBaseAddr, _WRITE_READ_BENIGN_FLAG_$$binBaseAddr;



implementation {:inline 1} _LOG_WRITE_$$binBaseAddr(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then true else _WRITE_HAS_OCCURRED_$$binBaseAddr);
    _WRITE_READ_BENIGN_FLAG_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
    return;
}



procedure _CHECK_WRITE_$$binBaseAddr(_P: bool, _offset: int, _value: int);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr != _value);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr != _value);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$binBaseAddr(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$binBaseAddr;



implementation {:inline 1} _LOG_ATOMIC_$$binBaseAddr(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$binBaseAddr);
    return;
}



procedure _CHECK_ATOMIC_$$binBaseAddr(_P: bool, _offset: int);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binBaseAddr(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$binBaseAddr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binBaseAddr(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$binBaseAddr := (if _P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
    return;
}



const _WATCHED_VALUE_$$regionZeroAddr: int;

procedure {:inline 1} _LOG_READ_$$regionZeroAddr(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$regionZeroAddr;



implementation {:inline 1} _LOG_READ_$$regionZeroAddr(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then true else _READ_HAS_OCCURRED_$$regionZeroAddr);
    return;
}



procedure _CHECK_READ_$$regionZeroAddr(_P: bool, _offset: int, _value: int);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr: bool;

procedure {:inline 1} _LOG_WRITE_$$regionZeroAddr(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:inline 1} _LOG_WRITE_$$regionZeroAddr(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then true else _WRITE_HAS_OCCURRED_$$regionZeroAddr);
    _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
    return;
}



procedure _CHECK_WRITE_$$regionZeroAddr(_P: bool, _offset: int, _value: int);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr != _value);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr != _value);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$regionZeroAddr(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$regionZeroAddr;



implementation {:inline 1} _LOG_ATOMIC_$$regionZeroAddr(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$regionZeroAddr);
    return;
}



procedure _CHECK_ATOMIC_$$regionZeroAddr(_P: bool, _offset: int);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$regionZeroAddr(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$regionZeroAddr(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr := (if _P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
    return;
}



const _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex: int;

procedure {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then true else _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then true else _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



const _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache: int;

procedure {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then true else _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

procedure {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then true else _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int, _value: int);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$regionZeroAddr;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon4;

  anon4:
    havoc $$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$regionZeroAddr;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon4;

  anon4:
    havoc $$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}




































































































































































