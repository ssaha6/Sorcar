type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$binBaseAddr"} {:global} {:elem_width 32} {:source_name "binBaseAddr"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$binBaseAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$binBaseAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$binBaseAddr: bool;

var {:source_name "regionZeroAddr"} {:global} $$regionZeroAddr: [bv32]bv32;

axiom {:array_info "$$regionZeroAddr"} {:global} {:elem_width 32} {:source_name "regionZeroAddr"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$regionZeroAddr: bool;

var {:source_name "NbrListLen"} {:constant} $$NbrListLen$1: [bv32]bv32;

var {:source_name "NbrListLen"} {:constant} $$NbrListLen$2: [bv32]bv32;

axiom {:array_info "$$NbrListLen"} {:constant} {:elem_width 32} {:source_name "NbrListLen"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "NbrList"} {:constant} $$NbrList$1: [bv32]bv32;

var {:source_name "NbrList"} {:constant} $$NbrList$2: [bv32]bv32;

axiom {:array_info "$$NbrList"} {:constant} {:elem_width 32} {:source_name "NbrList"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:source_name "myBinIndex"} {:group_shared} $$opencl_cutoff_potential_lattice.myBinIndex: [bv1][bv32]bv32;

axiom {:array_info "$$opencl_cutoff_potential_lattice.myBinIndex"} {:group_shared} {:elem_width 32} {:source_name "myBinIndex"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

var {:source_name "AtomBinCache"} {:group_shared} $$opencl_cutoff_potential_lattice.AtomBinCache: [bv1][bv32]bv32;

axiom {:array_info "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:group_shared} {:elem_width 32} {:source_name "AtomBinCache"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FDIV32(bv32, bv32) : bv32;

function FEQ32(bv32, bv32) : bool;

function FFLOOR32(bv32) : bv32;

function FLT32(bv32, bv32) : bool;

function FMUL32(bv32, bv32) : bv32;

function FP32_TO_SI32(bv32) : bv32;

function FSQRT32(bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function UI32_TO_FP32(bv32) : bv32;

function __other_bv32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvashr"} BV32_ASHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

procedure {:source_name "opencl_cutoff_potential_lattice"} {:kernel} $opencl_cutoff_potential_lattice($binDim_x: bv32, $binDim_y: bv32, $offset: bv32, $h: bv32, $cutoff2: bv32, $inv_cutoff2: bv32, $zRegionIndex: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $$NbrListLen$1[0bv32] == $$NbrListLen$2[0bv32] then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 0} {:thread 2} (if $$NbrListLen$2[0bv32] == $$NbrListLen$1[0bv32] then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if FEQ32($h, 1056964608bv32) then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$binBaseAddr && !_WRITE_HAS_OCCURRED_$$binBaseAddr && !_ATOMIC_HAS_OCCURRED_$$binBaseAddr;
  requires !_READ_HAS_OCCURRED_$$regionZeroAddr && !_WRITE_HAS_OCCURRED_$$regionZeroAddr && !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
  requires !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
  requires !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
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
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex, _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING, _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _TRACKING, _WRITE_HAS_OCCURRED_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:source_name "opencl_cutoff_potential_lattice"} {:kernel} $opencl_cutoff_potential_lattice($binDim_x: bv32, $binDim_y: bv32, $offset: bv32, $h: bv32, $cutoff2: bv32, $inv_cutoff2: bv32, $zRegionIndex: bv32)
{
  var $nbrid.0$1: bv32;
  var $nbrid.0$2: bv32;
  var $totalbins.0$1: bv32;
  var $totalbins.0$2: bv32;
  var $numbins.0$1: bv32;
  var $numbins.0$2: bv32;
  var $energy.0$1: bv32;
  var $energy.0$2: bv32;
  var $nbrid.1$1: bv32;
  var $nbrid.1$2: bv32;
  var $bincnt.0$1: bv32;
  var $bincnt.0$2: bv32;
  var $0$1: bv1;
  var $0$2: bv1;
  var $numbins.1$1: bv32;
  var $numbins.1$2: bv32;
  var $energy.1$1: bv32;
  var $energy.1$2: bv32;
  var $bincnt.1$1: bv32;
  var $bincnt.1$2: bv32;
  var $energy.2$1: bv32;
  var $energy.2$2: bv32;
  var $i1.0$1: bv32;
  var $i1.0$2: bv32;
  var $energy.3$1: bv32;
  var $energy.3$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bv32;
  var v12$2: bv32;
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
  var v27$1: bv32;
  var v27$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
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
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: bv32;
  var v43$2: bv32;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bool;
  var v50$2: bool;
  var v51$1: bv32;
  var v51$2: bv32;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bv32;
  var v53$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11: bool;
  var _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_z$1, 8bv32), local_id_y$1), 8bv32), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_z$2, 8bv32), local_id_y$2), 8bv32), local_id_x$2);
    v1$1 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($zRegionIndex, num_groups_y), group_id_y$1), BV32_LSHR(num_groups_x, 2bv32)), BV32_LSHR(group_id_x$1, 2bv32)), 512bv32);
    v1$2 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($zRegionIndex, num_groups_y), group_id_y$2), BV32_LSHR(num_groups_x, 2bv32)), BV32_LSHR(group_id_x$2, 2bv32)), 512bv32);
    v2$1 := BV32_MUL(BV32_AND(group_id_x$1, 3bv32), 128bv32);
    v2$2 := BV32_MUL(BV32_AND(group_id_x$2, 3bv32), 128bv32);
    v3$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$1, 2bv32)), local_id_x$1)), $h);
    v3$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$2, 2bv32)), local_id_x$2)), $h);
    v4$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$1), local_id_y$1)), $h);
    v4$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$2), local_id_y$2)), $h);
    v5$1 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), BV32_MUL(2bv32, BV32_AND(group_id_x$1, 3bv32))), local_id_z$1)), $h);
    v5$2 := FMUL32(UI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), BV32_MUL(2bv32, BV32_AND(group_id_x$2, 3bv32))), local_id_z$2)), $h);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$1, 2bv32)), 4bv32)), $h), 1048576000bv32))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 0bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$2, 2bv32)), 4bv32)), $h), 1048576000bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$1, 2bv32)), 4bv32)), $h), 1048576000bv32)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, BV32_LSHR(group_id_x$2, 2bv32)), 4bv32)), $h), 1048576000bv32)));
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$1), 4bv32)), $h), 1048576000bv32))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1bv32);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 1bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$2), 4bv32)), $h), 1048576000bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$1), 4bv32)), $h), 1048576000bv32)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(UI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, group_id_y$2), 4bv32)), $h), 1048576000bv32)));
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), 4bv32)), $h), 1048576000bv32))), $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2bv32);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 2bv32, FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), 4bv32)), $h), 1048576000bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), 4bv32)), $h), 1048576000bv32)));
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32] := FP32_TO_SI32(FFLOOR32(FMUL32(FMUL32(SI32_TO_FP32(BV32_ADD(BV32_MUL(8bv32, $zRegionIndex), 4bv32)), $h), 1048576000bv32)));
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3bv32, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3bv32);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(true, 3bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32] := 0bv32;
    $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32] := 0bv32;
    $nbrid.0$1, $totalbins.0$1, $numbins.0$1, $energy.0$1 := BV32_ASHR(v0$1, 4bv32), 0bv32, 32bv32, 0bv32;
    $nbrid.0$2, $totalbins.0$2, $numbins.0$2, $energy.0$2 := BV32_ASHR(v0$2, 4bv32), 0bv32, 32bv32, 0bv32;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "nowrite"} _b105 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assert {:tag "noread"} _b104 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b103 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> _WATCHED_OFFSET == 0bv32 || _WATCHED_OFFSET == 1bv32 || _WATCHED_OFFSET == 2bv32 || _WATCHED_OFFSET == 3bv32;
    assert {:tag "noread"} _b102 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> $energy.3$1 == $energy.3$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> $i1.0$1 == $i1.0$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> $energy.2$1 == $energy.2$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> $bincnt.1$1 == $bincnt.1$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> $energy.1$1 == $energy.1$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> $numbins.1$1 == $numbins.1$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> $bincnt.0$1 == $bincnt.0$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> $nbrid.1$1 == $nbrid.1$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> $energy.0$1 == $energy.0$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> $numbins.0$1 == $numbins.0$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> $totalbins.0$1 == $totalbins.0$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> $nbrid.0$1 == $nbrid.0$2;
    assert {:tag "loopPredicateEquality"} _b40 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b39 ==> p0$1 == p0$2;
    assert {:tag "pow2NotZero"} _b38 ==> $nbrid.0$2 != 0bv32;
    assert {:tag "pow2"} _b37 ==> $nbrid.0$2 == 0bv32 || BV32_AND($nbrid.0$2, BV32_SUB($nbrid.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b36 ==> $nbrid.0$1 != 0bv32;
    assert {:tag "pow2"} _b35 ==> $nbrid.0$1 == 0bv32 || BV32_AND($nbrid.0$1, BV32_SUB($nbrid.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b7 ==> BV32_SLT($totalbins.0$1, v6$1) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b7 ==> BV32_SLT($totalbins.0$2, v6$2) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b6 ==> BV32_UGE($totalbins.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b6 ==> BV32_UGE($totalbins.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV32_ULE($totalbins.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV32_ULE($totalbins.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_SGE($totalbins.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_SGE($totalbins.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_SLE($totalbins.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_SLE($totalbins.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($totalbins.0$1, 0bv32) == BV32_SUB($totalbins.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($totalbins.0$2, 0bv32) == BV32_SUB($totalbins.0$1, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b1 ==> BV32_SUB($totalbins.0$1, 0bv32) == BV32_SUB($totalbins.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b1 ==> BV32_SUB($totalbins.0$2, 0bv32) == BV32_SUB($totalbins.0$1, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b0 ==> BV32_SLE(0bv32, $totalbins.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b0 ==> BV32_SLE(0bv32, $totalbins.0$2);
    assert {:block_sourceloc} {:sourceloc_num 7} p0$1 ==> true;
    v6$1 := (if p0$1 then $$NbrListLen$1[0bv32] else v6$1);
    v6$2 := (if p0$2 then $$NbrListLen$2[0bv32] else v6$2);
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
    v8$1 := (if p1$1 then BV32_MUL(32bv32, BV32_ASHR(v0$1, 4bv32)) else v8$1);
    v8$2 := (if p1$2 then BV32_MUL(32bv32, BV32_ASHR(v0$2, 4bv32)) else v8$2);
    $nbrid.1$1, $bincnt.0$1 := (if p1$1 then $nbrid.0$1 else $nbrid.1$1), (if p1$1 then 0bv32 else $bincnt.0$1);
    $nbrid.1$2, $bincnt.0$2 := (if p1$2 then $nbrid.0$2 else $nbrid.1$2), (if p1$2 then 0bv32 else $bincnt.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3 := _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b108 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$3 == _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assert {:tag "disabledMaintainsInstrumentation"} _b107 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex$ghost$$3 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b106 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> _WATCHED_OFFSET == 0bv32 || _WATCHED_OFFSET == 1bv32 || _WATCHED_OFFSET == 2bv32 || _WATCHED_OFFSET == 3bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> BV32_SLT($totalbins.0$1, v6$1) && $0$1 == 1bv1 ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> BV32_SLT($totalbins.0$2, v6$2) && $0$2 == 1bv1 ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b14 ==> p2$1 ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b14 ==> p2$2 ==> BV32_SLT($totalbins.0$2, v6$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b13 ==> BV32_UGE($bincnt.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b13 ==> BV32_UGE($bincnt.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b12 ==> BV32_ULE($bincnt.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b12 ==> BV32_ULE($bincnt.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b11 ==> BV32_SGE($bincnt.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b11 ==> BV32_SGE($bincnt.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b10 ==> BV32_SLE($bincnt.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b10 ==> BV32_SLE($bincnt.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b9 ==> BV32_SLE(0bv32, $bincnt.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b9 ==> BV32_SLE(0bv32, $bincnt.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b8 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $nbrid.1$1) == BV32_AND(BV32_SUB(8bv32, 1bv32), $nbrid.0$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b8 ==> BV32_AND(BV32_SUB(8bv32, 1bv32), $nbrid.1$2) == BV32_AND(BV32_SUB(8bv32, 1bv32), $nbrid.0$2);
    assert {:block_sourceloc} {:sourceloc_num 10} p2$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 11} {:thread 1} (if _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(v8$1, BV32_AND(v0$1, 15bv32))), 256bv32) == 0bv32 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_ADD(v8$1, BV32_AND(v0$1, 15bv32)), 16bv32)), 256bv32) == 0bv32 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    v9$1 := (if p2$1 then BV32_SLT($bincnt.0$1, 4bv32) else v9$1);
    v9$2 := (if p2$2 then BV32_SLT($bincnt.0$2, 4bv32) else v9$2);
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
    $0$1 := (if p3$1 then 0bv1 else $0$1);
    $0$2 := (if p3$2 then 0bv1 else $0$2);
    v10$1 := (if p4$1 then $$NbrListLen$1[0bv32] else v10$1);
    v10$2 := (if p4$2 then $$NbrListLen$2[0bv32] else v10$2);
    $0$1 := (if p4$1 then (if BV32_SLT($nbrid.1$1, v10$1) then 1bv1 else 0bv1) else $0$1);
    $0$2 := (if p4$2 then (if BV32_SLT($nbrid.1$2, v10$2) then 1bv1 else 0bv1) else $0$2);
    v11$1 := (if p2$1 then $0$1 == 1bv1 else v11$1);
    v11$2 := (if p2$2 then $0$2 == 1bv1 else v11$2);
    p5$1 := (if p2$1 && v11$1 then v11$1 else p5$1);
    p5$2 := (if p2$2 && v11$2 then v11$2 else p5$2);
    p2$1 := (if p2$1 && !v11$1 then v11$1 else p2$1);
    p2$2 := (if p2$2 && !v11$2 then v11$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v12$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32] else v12$1);
    v12$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v12$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v13$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32] else v13$1);
    v13$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32] else v13$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v14$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32] else v14$1);
    v14$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32] else v14$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v15$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32] else v15$1);
    v15$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32] else v15$2);
    v16$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4bv32)] else v16$1);
    v16$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4bv32)] else v16$2);
    v17$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 1bv32)] else v17$1);
    v17$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 1bv32)] else v17$2);
    v18$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 2bv32)] else v18$1);
    v18$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 2bv32)] else v18$2);
    v19$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 3bv32)] else v19$1);
    v19$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 3bv32)] else v19$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v20$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32] else v20$1);
    v20$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v20$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v21$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32] else v21$1);
    v21$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32] else v21$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v22$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32] else v22$1);
    v22$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32] else v22$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v23$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32] else v23$1);
    v23$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32] else v23$2);
    v24$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4bv32)] else v24$1);
    v24$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4bv32)] else v24$2);
    v25$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 1bv32)] else v25$1);
    v25$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 1bv32)] else v25$2);
    v26$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 2bv32)] else v26$1);
    v26$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 2bv32)] else v26$2);
    v27$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 3bv32)] else v27$1);
    v27$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 3bv32)] else v27$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 0bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v28$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][0bv32] else v28$1);
    v28$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v28$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 1bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v29$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][1bv32] else v29$1);
    v29$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1bv32] else v29$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 2bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v30$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][2bv32] else v30$1);
    v30$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2bv32] else v30$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$1, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(p5$2, 3bv32, $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex"} true;
    v31$1 := (if p5$1 then $$opencl_cutoff_potential_lattice.myBinIndex[1bv1][3bv32] else v31$1);
    v31$2 := (if p5$2 then $$opencl_cutoff_potential_lattice.myBinIndex[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3bv32] else v31$2);
    v32$1 := (if p5$1 then $$NbrList$1[BV32_MUL($nbrid.1$1, 4bv32)] else v32$1);
    v32$2 := (if p5$2 then $$NbrList$2[BV32_MUL($nbrid.1$2, 4bv32)] else v32$2);
    v33$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 1bv32)] else v33$1);
    v33$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 1bv32)] else v33$2);
    v34$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 2bv32)] else v34$1);
    v34$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 2bv32)] else v34$2);
    v35$1 := (if p5$1 then $$NbrList$1[BV32_ADD(BV32_MUL($nbrid.1$1, 4bv32), 3bv32)] else v35$1);
    v35$2 := (if p5$2 then $$NbrList$2[BV32_ADD(BV32_MUL($nbrid.1$2, 4bv32), 3bv32)] else v35$2);
    v36$1 := (if p5$1 then BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v30$1, v34$1), $binDim_y), BV32_ADD(v21$1, v25$1)), $binDim_x), BV32_ADD(v12$1, v16$1)), 32bv32) else v36$1);
    v36$2 := (if p5$2 then BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v30$2, v34$2), $binDim_y), BV32_ADD(v21$2, v25$2)), $binDim_x), BV32_ADD(v12$2, v16$2)), 32bv32) else v36$2);
    v37$1 := (if p5$1 then BV32_AND(v0$1, 15bv32) else v37$1);
    v37$2 := (if p5$2 then BV32_AND(v0$2, 15bv32) else v37$2);
    v38$1 := (if p5$1 then BV32_ADD(v8$1, BV32_MUL(BV32_MUL($bincnt.0$1, 8bv32), 32bv32)) else v38$1);
    v38$2 := (if p5$2 then BV32_ADD(v8$2, BV32_MUL(BV32_MUL($bincnt.0$2, 8bv32), 32bv32)) else v38$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v39$1 := (if p5$1 then _HAVOC_bv32$1 else v39$1);
    v39$2 := (if p5$2 then _HAVOC_bv32$2 else v39$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$1, BV32_ADD(v38$1, v37$1), v39$1, $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(v38$2, v37$2));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(v38$2, v37$2), v39$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)] := (if p5$1 then v39$1 else $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(v38$1, v37$1)]);
    $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, v37$2)] := (if p5$2 then v39$2 else $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, v37$2)]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v40$1 := (if p5$1 then _HAVOC_bv32$1 else v40$1);
    v40$2 := (if p5$2 then _HAVOC_bv32$2 else v40$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$1, BV32_ADD(BV32_ADD(v38$1, v37$1), 16bv32), v40$1, $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(BV32_ADD(v38$2, v37$2), 16bv32));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(p5$2, BV32_ADD(BV32_ADD(v38$2, v37$2), 16bv32), v40$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16bv32)] := (if p5$1 then v40$1 else $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(v38$1, v37$1), 16bv32)]);
    $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v38$2, v37$2), 16bv32)] := (if p5$2 then v40$2 else $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v38$2, v37$2), 16bv32)]);
    $nbrid.1$1, $bincnt.0$1 := (if p5$1 then BV32_ADD($nbrid.1$1, 8bv32) else $nbrid.1$1), (if p5$1 then BV32_ADD($bincnt.0$1, 1bv32) else $bincnt.0$1);
    $nbrid.1$2, $bincnt.0$2 := (if p5$2 then BV32_ADD($nbrid.1$2, 8bv32) else $nbrid.1$2), (if p5$2 then BV32_ADD($bincnt.0$2, 1bv32) else $bincnt.0$2);
    p2$1 := (if p5$1 then true else p2$1);
    p2$2 := (if p5$2 then true else p2$2);
    goto $3.backedge, __partitioned_block_$3.tail_0;

  __partitioned_block_$3.tail_0:
    assume !p2$1 && !p2$2;
    goto __partitioned_block_$3.tail_1;

  __partitioned_block_$3.tail_1:
    call {:sourceloc_num 46} $bugle_barrier_duplicated_0(1bv1, 1bv1, p1$1, p1$2);
    v41$1 := (if p1$1 then $$NbrListLen$1[0bv32] else v41$1);
    v41$2 := (if p1$2 then $$NbrListLen$2[0bv32] else v41$2);
    v42$1 := (if p1$1 then BV32_SGT(BV32_ADD($totalbins.0$1, 32bv32), v41$1) else v42$1);
    v42$2 := (if p1$2 then BV32_SGT(BV32_ADD($totalbins.0$2, 32bv32), v41$2) else v42$2);
    p7$1 := (if p1$1 && v42$1 then v42$1 else p7$1);
    p7$2 := (if p1$2 && v42$2 then v42$2 else p7$2);
    p6$1 := (if p1$1 && !v42$1 then !v42$1 else p6$1);
    p6$2 := (if p1$2 && !v42$2 then !v42$2 else p6$2);
    $numbins.1$1 := (if p6$1 then $numbins.0$1 else $numbins.1$1);
    $numbins.1$2 := (if p6$2 then $numbins.0$2 else $numbins.1$2);
    v43$1 := (if p7$1 then $$NbrListLen$1[0bv32] else v43$1);
    v43$2 := (if p7$2 then $$NbrListLen$2[0bv32] else v43$2);
    $numbins.1$1 := (if p7$1 then BV32_SUB(v43$1, $totalbins.0$1) else $numbins.1$1);
    $numbins.1$2 := (if p7$2 then BV32_SUB(v43$2, $totalbins.0$2) else $numbins.1$2);
    $energy.1$1, $bincnt.1$1 := (if p1$1 then $energy.0$1 else $energy.1$1), (if p1$1 then 0bv32 else $bincnt.1$1);
    $energy.1$2, $bincnt.1$2 := (if p1$2 then $energy.0$2 else $energy.1$2), (if p1$2 then 0bv32 else $bincnt.1$2);
    p8$1 := (if p1$1 then true else p8$1);
    p8$2 := (if p1$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b109 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$11 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p1"} true;
    assert p8$1 ==> p0$1;
    assert p8$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b25 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b24 ==> BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1) ==> p8$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b24 ==> BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2) ==> p8$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p8$1 ==> _b23 ==> p8$1 ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p8$2 ==> _b23 ==> p8$2 ==> BV32_SLT($totalbins.0$2, v6$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b22 ==> BV32_UGE($bincnt.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b22 ==> BV32_UGE($bincnt.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b21 ==> BV32_ULE($bincnt.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b21 ==> BV32_ULE($bincnt.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b20 ==> BV32_SGE($bincnt.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b20 ==> BV32_SGE($bincnt.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b19 ==> BV32_SLE($bincnt.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b19 ==> BV32_SLE($bincnt.1$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p8$1 ==> _b18 ==> BV32_SLE(0bv32, $bincnt.1$1);
    assert {:tag "guardNonNeg"} {:thread 2} p8$2 ==> _b18 ==> BV32_SLE(0bv32, $bincnt.1$2);
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
    $energy.2$1, $i1.0$1 := (if p9$1 then $energy.1$1 else $energy.2$1), (if p9$1 then 0bv32 else $i1.0$1);
    $energy.2$2, $i1.0$2 := (if p9$2 then $energy.1$2 else $energy.2$2), (if p9$2 then 0bv32 else $i1.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13 := _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b110 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache$ghost$$13 == _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
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
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($bincnt.1$1, $numbins.1$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache ==> BV32_SLT($totalbins.0$1, v6$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b32 ==> BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1) && BV32_SLT($i1.0$1, 8bv32) ==> p10$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b32 ==> BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2) && BV32_SLT($i1.0$2, 8bv32) ==> p10$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p10$1 ==> _b31 ==> p10$1 ==> BV32_SLT($totalbins.0$1, v6$1) && BV32_SLT($bincnt.1$1, $numbins.1$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p10$2 ==> _b31 ==> p10$2 ==> BV32_SLT($totalbins.0$2, v6$2) && BV32_SLT($bincnt.1$2, $numbins.1$2);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b30 ==> BV32_UGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b30 ==> BV32_UGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b29 ==> BV32_ULE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b29 ==> BV32_ULE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b28 ==> BV32_SGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b28 ==> BV32_SGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b27 ==> BV32_SLE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b27 ==> BV32_SLE($i1.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p10$1 ==> _b26 ==> BV32_SLE(0bv32, $i1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p10$2 ==> _b26 ==> BV32_SLE(0bv32, $i1.0$2);
    assert {:block_sourceloc} {:sourceloc_num 53} p10$1 ==> true;
    v45$1 := (if p10$1 then BV32_SLT($i1.0$1, 8bv32) else v45$1);
    v45$2 := (if p10$2 then BV32_SLT($i1.0$2, 8bv32) else v45$2);
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
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v46$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32))] else v46$1);
    v46$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32))] else v46$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 1bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 1bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v47$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 1bv32)] else v47$1);
    v47$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 1bv32)] else v47$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 2bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 2bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v48$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 2bv32)] else v48$1);
    v48$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 2bv32)] else v48$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$1, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 3bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 3bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(p11$2, BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 3bv32), $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 3bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache"} true;
    v49$1 := (if p11$1 then $$opencl_cutoff_potential_lattice.AtomBinCache[1bv1][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$1, 32bv32), BV32_MUL($i1.0$1, 4bv32)), 3bv32)] else v49$1);
    v49$2 := (if p11$2 then $$opencl_cutoff_potential_lattice.AtomBinCache[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL($bincnt.1$2, 32bv32), BV32_MUL($i1.0$2, 4bv32)), 3bv32)] else v49$2);
    v50$1 := (if p11$1 then FEQ32(0bv32, v49$1) else v50$1);
    v50$2 := (if p11$2 then FEQ32(0bv32, v49$2) else v50$2);
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
    v53$1 := (if p14$1 then FADD32(FMUL32(FSUB32(2147483648bv32, v51$1), $inv_cutoff2), 1065353216bv32) else v53$1);
    v53$2 := (if p14$2 then FADD32(FMUL32(FSUB32(2147483648bv32, v51$2), $inv_cutoff2), 1065353216bv32) else v53$2);
    $energy.3$1 := (if p14$1 then FADD32(FMUL32(FMUL32(FMUL32(v49$1, FDIV32(1065353216bv32, FSQRT32(v51$1))), v53$1), v53$1), $energy.2$1) else $energy.3$1);
    $energy.3$2 := (if p14$2 then FADD32(FMUL32(FMUL32(FMUL32(v49$2, FDIV32(1065353216bv32, FSQRT32(v51$2))), v53$2), v53$2), $energy.2$2) else $energy.3$2);
    $energy.2$1, $i1.0$1 := (if p12$1 then $energy.3$1 else $energy.2$1), (if p12$1 then BV32_ADD($i1.0$1, 1bv32) else $i1.0$1);
    $energy.2$2, $i1.0$2 := (if p12$2 then $energy.3$2 else $energy.2$2), (if p12$2 then BV32_ADD($i1.0$2, 1bv32) else $i1.0$2);
    p10$1 := (if p12$1 then true else p10$1);
    p10$2 := (if p12$2 then true else p10$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p10$1 && !p10$2;
    $energy.1$1, $bincnt.1$1 := (if p9$1 then $energy.2$1 else $energy.1$1), (if p9$1 then BV32_ADD($bincnt.1$1, 1bv32) else $bincnt.1$1);
    $energy.1$2, $bincnt.1$2 := (if p9$2 then $energy.2$2 else $energy.1$2), (if p9$2 then BV32_ADD($bincnt.1$2, 1bv32) else $bincnt.1$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p8$1 && !p8$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 67} $bugle_barrier_duplicated_1(1bv1, 1bv1, p1$1, p1$2);
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



axiom (if group_size_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 2bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 44bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 11bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$opencl_cutoff_potential_lattice.myBinIndex, $$opencl_cutoff_potential_lattice.AtomBinCache, $$regionZeroAddr, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

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

const _WATCHED_VALUE_$$binBaseAddr: bv32;

procedure {:inline 1} _LOG_READ_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$binBaseAddr;



implementation {:inline 1} _LOG_READ_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then true else _READ_HAS_OCCURRED_$$binBaseAddr);
    return;
}



procedure _CHECK_READ_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$binBaseAddr: bool;

procedure {:inline 1} _LOG_WRITE_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$binBaseAddr, _WRITE_READ_BENIGN_FLAG_$$binBaseAddr;



implementation {:inline 1} _LOG_WRITE_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then true else _WRITE_HAS_OCCURRED_$$binBaseAddr);
    _WRITE_READ_BENIGN_FLAG_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
    return;
}



procedure _CHECK_WRITE_$$binBaseAddr(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr != _value);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binBaseAddr != _value);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$binBaseAddr(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$binBaseAddr;



implementation {:inline 1} _LOG_ATOMIC_$$binBaseAddr(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$binBaseAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$binBaseAddr);
    return;
}



procedure _CHECK_ATOMIC_$$binBaseAddr(_P: bool, _offset: bv32);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);
  requires {:source_name "binBaseAddr"} {:array "$$binBaseAddr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binBaseAddr(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$binBaseAddr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binBaseAddr(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$binBaseAddr := (if _P && _WRITE_HAS_OCCURRED_$$binBaseAddr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$binBaseAddr);
    return;
}



const _WATCHED_VALUE_$$regionZeroAddr: bv32;

procedure {:inline 1} _LOG_READ_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$regionZeroAddr;



implementation {:inline 1} _LOG_READ_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then true else _READ_HAS_OCCURRED_$$regionZeroAddr);
    return;
}



procedure _CHECK_READ_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr: bool;

procedure {:inline 1} _LOG_WRITE_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$regionZeroAddr, _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:inline 1} _LOG_WRITE_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then true else _WRITE_HAS_OCCURRED_$$regionZeroAddr);
    _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
    return;
}



procedure _CHECK_WRITE_$$regionZeroAddr(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr != _value);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$regionZeroAddr != _value);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$regionZeroAddr(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$regionZeroAddr;



implementation {:inline 1} _LOG_ATOMIC_$$regionZeroAddr(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$regionZeroAddr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$regionZeroAddr);
    return;
}



procedure _CHECK_ATOMIC_$$regionZeroAddr(_P: bool, _offset: bv32);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);
  requires {:source_name "regionZeroAddr"} {:array "$$regionZeroAddr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$regionZeroAddr(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$regionZeroAddr(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr := (if _P && _WRITE_HAS_OCCURRED_$$regionZeroAddr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$regionZeroAddr);
    return;
}



const _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex: bv32;

procedure {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then true else _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_READ_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then true else _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_WRITE_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.myBinIndex != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



procedure _CHECK_ATOMIC_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "myBinIndex"} {:array "$$opencl_cutoff_potential_lattice.myBinIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex := (if _P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.myBinIndex);
    return;
}



const _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache: bv32;

procedure {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then true else _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_READ_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache: bool;

procedure {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache, _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then true else _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_WRITE_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$opencl_cutoff_potential_lattice.AtomBinCache != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _LOG_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



procedure _CHECK_ATOMIC_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "AtomBinCache"} {:array "$$opencl_cutoff_potential_lattice.AtomBinCache"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache := (if _P && _WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$opencl_cutoff_potential_lattice.AtomBinCache);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$regionZeroAddr;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
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



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.myBinIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$opencl_cutoff_potential_lattice.AtomBinCache;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$regionZeroAddr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$regionZeroAddr;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$regionZeroAddr;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
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
