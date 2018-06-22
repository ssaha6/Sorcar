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
 b0112: bool,
 b0113: bool,
 b0114: bool,
 b0115: bool,
 b0116: bool,
 b0117: bool,
 b0118: bool,
 b0119: bool,
 b0120: bool,
 b0121: bool,
 b0122: bool,
 b0123: bool,
 b0124: bool,
 b0125: bool,
 b0126: bool,
 b0127: bool,
 b0128: bool,
 b0129: bool,
 b0130: bool,
 b0131: bool,
 b0132: bool,
 b0133: bool,
 b0134: bool,
 b0135: bool,
 b0136: bool,
 b0137: bool,
 b0138: bool,
 b0139: bool,
 b0140: bool,
 b0141: bool,
 b0142: bool,
 b0143: bool,
 b0144: bool,
 b0145: bool,
 b0146: bool,
 b0147: bool,
 b0148: bool,
 b0149: bool,
 b0150: bool,
 b0151: bool,
 b0152: bool,
 b0153: bool,
 b0154: bool,
 b0155: bool,
 b0156: bool,
 b0157: bool,
 b0158: bool,
 b0159: bool,
 b0160: bool,
 b0161: bool,
 b0162: bool,
 b0163: bool,
 b0164: bool,
 b0165: bool,
 b0166: bool,
 b0167: bool,
 b0168: bool,
 b0169: bool,
 b0170: bool,
 b0171: bool,
 b0172: bool,
 b0173: bool,
 b0174: bool,
 b0175: bool,
 b0176: bool,
 b0177: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_box_gpu"} {:global} $$d_box_gpu: [int]int;

axiom {:array_info "$$d_box_gpu"} {:global} {:elem_width 8} {:source_name "d_box_gpu"} {:source_elem_width 5248} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 5248} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_box_gpu: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 5248} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_box_gpu: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 5248} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_box_gpu: bool;

axiom {:array_info "$$d_rv_gpu"} {:global} {:elem_width 32} {:source_name "d_rv_gpu"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_rv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_rv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_rv_gpu: bool;

axiom {:array_info "$$d_qv_gpu"} {:global} {:elem_width 32} {:source_name "d_qv_gpu"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_qv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_qv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_qv_gpu: bool;

var {:source_name "d_fv_gpu"} {:global} $$d_fv_gpu: [int]int;

axiom {:array_info "$$d_fv_gpu"} {:global} {:elem_width 32} {:source_name "d_fv_gpu"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_fv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_fv_gpu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_fv_gpu: bool;

axiom {:array_info "$$d_par_gpu"} {:elem_width 32} {:source_name "d_par_gpu"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$d_dim_gpu"} {:elem_width 8} {:source_name "d_dim_gpu"} {:source_elem_width 448} {:source_dimensions "1"} true;

axiom {:array_info "$$d"} {:elem_width 32} {:source_name "d"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:source_name "rA_shared"} {:group_shared} $$kernel_gpu_opencl.rA_shared: [bv1][int]int;

axiom {:array_info "$$kernel_gpu_opencl.rA_shared"} {:group_shared} {:elem_width 32} {:source_name "rA_shared"} {:source_elem_width 128} {:source_dimensions "100"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared: bool;

var {:source_name "rB_shared"} {:group_shared} $$kernel_gpu_opencl.rB_shared: [bv1][int]int;

axiom {:array_info "$$kernel_gpu_opencl.rB_shared"} {:group_shared} {:elem_width 32} {:source_name "rB_shared"} {:source_elem_width 128} {:source_dimensions "100"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared: bool;

var {:source_name "qB_shared"} {:group_shared} $$kernel_gpu_opencl.qB_shared: [bv1][int]int;

axiom {:array_info "$$kernel_gpu_opencl.qB_shared"} {:group_shared} {:elem_width 32} {:source_name "qB_shared"} {:source_elem_width 32} {:source_dimensions "100"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV32_SEXT64(int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FEXP32(int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV64_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "kernel_gpu_opencl"} {:kernel} $kernel_gpu_opencl($d_par_gpu.coerce: int, $d_dim_gpu.coerce0: int, $d_dim_gpu.coerce1: int, $d_dim_gpu.coerce2: int, $d_dim_gpu.coerce3: int, $d_dim_gpu.coerce4: int, $d_dim_gpu.coerce5: int, $d_dim_gpu.coerce6: int, $d_dim_gpu.coerce7: int, $d_dim_gpu.coerce8: int);
  requires !_READ_HAS_OCCURRED_$$d_box_gpu && !_WRITE_HAS_OCCURRED_$$d_box_gpu && !_ATOMIC_HAS_OCCURRED_$$d_box_gpu;
  requires !_READ_HAS_OCCURRED_$$d_rv_gpu && !_WRITE_HAS_OCCURRED_$$d_rv_gpu && !_ATOMIC_HAS_OCCURRED_$$d_rv_gpu;
  requires !_READ_HAS_OCCURRED_$$d_qv_gpu && !_WRITE_HAS_OCCURRED_$$d_qv_gpu && !_ATOMIC_HAS_OCCURRED_$$d_qv_gpu;
  requires !_READ_HAS_OCCURRED_$$d_fv_gpu && !_WRITE_HAS_OCCURRED_$$d_fv_gpu && !_ATOMIC_HAS_OCCURRED_$$d_fv_gpu;
  requires !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
  requires !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
  requires !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
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
  modifies $$kernel_gpu_opencl.rA_shared, $$kernel_gpu_opencl.rB_shared, $$kernel_gpu_opencl.qB_shared, _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared, $$d_fv_gpu, _TRACKING, _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared, _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared, _TRACKING, _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared, _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared, _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared, _READ_HAS_OCCURRED_$$d_fv_gpu, _WRITE_HAS_OCCURRED_$$d_fv_gpu, _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu, _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu, _TRACKING;



implementation {:source_name "kernel_gpu_opencl"} {:kernel} $kernel_gpu_opencl($d_par_gpu.coerce: int, $d_dim_gpu.coerce0: int, $d_dim_gpu.coerce1: int, $d_dim_gpu.coerce2: int, $d_dim_gpu.coerce3: int, $d_dim_gpu.coerce4: int, $d_dim_gpu.coerce5: int, $d_dim_gpu.coerce6: int, $d_dim_gpu.coerce7: int, $d_dim_gpu.coerce8: int)
{
  var $wtx.0$1: int;
  var $wtx.0$2: int;
  var $k.0$1: int;
  var $k.0$2: int;
  var $pointer.0$1: int;
  var $pointer.0$2: int;
  var $wtx.2$1: int;
  var $wtx.2$2: int;
  var $wtx.3$1: int;
  var $wtx.3$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
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
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: bool;
  var v10$2: bool;
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
  var v22$1: bool;
  var v22$2: bool;
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
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bool;
  var v32$2: bool;
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
  var v46$1: bool;
  var v46$2: bool;
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
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bool;
  var v53$2: bool;
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
  var v84$1: int;
  var v84$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$2: bool;
  var _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$10: bool;
  var _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$10: bool;
  var _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$13: bool;
  var _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$13: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$13: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$13: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$13: bool;
  var _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$15: bool;
  var _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$15: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$15: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$15: bool;
  var _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$15: bool;


  $0:
    $$d_par_gpu$0$1 := $d_par_gpu.coerce;
    $$d_par_gpu$0$2 := $d_par_gpu.coerce;
    $$d_dim_gpu$0$1 := BV_EXTRACT($d_dim_gpu.coerce0, 8, 0);
    $$d_dim_gpu$0$2 := BV_EXTRACT($d_dim_gpu.coerce0, 8, 0);
    $$d_dim_gpu$1$1 := BV_EXTRACT($d_dim_gpu.coerce0, 16, 8);
    $$d_dim_gpu$1$2 := BV_EXTRACT($d_dim_gpu.coerce0, 16, 8);
    $$d_dim_gpu$2$1 := BV_EXTRACT($d_dim_gpu.coerce0, 24, 16);
    $$d_dim_gpu$2$2 := BV_EXTRACT($d_dim_gpu.coerce0, 24, 16);
    $$d_dim_gpu$3$1 := BV_EXTRACT($d_dim_gpu.coerce0, 32, 24);
    $$d_dim_gpu$3$2 := BV_EXTRACT($d_dim_gpu.coerce0, 32, 24);
    $$d_dim_gpu$4$1 := BV_EXTRACT($d_dim_gpu.coerce1, 8, 0);
    $$d_dim_gpu$4$2 := BV_EXTRACT($d_dim_gpu.coerce1, 8, 0);
    $$d_dim_gpu$5$1 := BV_EXTRACT($d_dim_gpu.coerce1, 16, 8);
    $$d_dim_gpu$5$2 := BV_EXTRACT($d_dim_gpu.coerce1, 16, 8);
    $$d_dim_gpu$6$1 := BV_EXTRACT($d_dim_gpu.coerce1, 24, 16);
    $$d_dim_gpu$6$2 := BV_EXTRACT($d_dim_gpu.coerce1, 24, 16);
    $$d_dim_gpu$7$1 := BV_EXTRACT($d_dim_gpu.coerce1, 32, 24);
    $$d_dim_gpu$7$2 := BV_EXTRACT($d_dim_gpu.coerce1, 32, 24);
    $$d_dim_gpu$8$1 := BV_EXTRACT($d_dim_gpu.coerce2, 8, 0);
    $$d_dim_gpu$8$2 := BV_EXTRACT($d_dim_gpu.coerce2, 8, 0);
    $$d_dim_gpu$9$1 := BV_EXTRACT($d_dim_gpu.coerce2, 16, 8);
    $$d_dim_gpu$9$2 := BV_EXTRACT($d_dim_gpu.coerce2, 16, 8);
    $$d_dim_gpu$10$1 := BV_EXTRACT($d_dim_gpu.coerce2, 24, 16);
    $$d_dim_gpu$10$2 := BV_EXTRACT($d_dim_gpu.coerce2, 24, 16);
    $$d_dim_gpu$11$1 := BV_EXTRACT($d_dim_gpu.coerce2, 32, 24);
    $$d_dim_gpu$11$2 := BV_EXTRACT($d_dim_gpu.coerce2, 32, 24);
    $$d_dim_gpu$12$1 := BV_EXTRACT($d_dim_gpu.coerce3, 8, 0);
    $$d_dim_gpu$12$2 := BV_EXTRACT($d_dim_gpu.coerce3, 8, 0);
    $$d_dim_gpu$13$1 := BV_EXTRACT($d_dim_gpu.coerce3, 16, 8);
    $$d_dim_gpu$13$2 := BV_EXTRACT($d_dim_gpu.coerce3, 16, 8);
    $$d_dim_gpu$14$1 := BV_EXTRACT($d_dim_gpu.coerce3, 24, 16);
    $$d_dim_gpu$14$2 := BV_EXTRACT($d_dim_gpu.coerce3, 24, 16);
    $$d_dim_gpu$15$1 := BV_EXTRACT($d_dim_gpu.coerce3, 32, 24);
    $$d_dim_gpu$15$2 := BV_EXTRACT($d_dim_gpu.coerce3, 32, 24);
    $$d_dim_gpu$16$1 := BV_EXTRACT($d_dim_gpu.coerce4, 8, 0);
    $$d_dim_gpu$16$2 := BV_EXTRACT($d_dim_gpu.coerce4, 8, 0);
    $$d_dim_gpu$17$1 := BV_EXTRACT($d_dim_gpu.coerce4, 16, 8);
    $$d_dim_gpu$17$2 := BV_EXTRACT($d_dim_gpu.coerce4, 16, 8);
    $$d_dim_gpu$18$1 := BV_EXTRACT($d_dim_gpu.coerce4, 24, 16);
    $$d_dim_gpu$18$2 := BV_EXTRACT($d_dim_gpu.coerce4, 24, 16);
    $$d_dim_gpu$19$1 := BV_EXTRACT($d_dim_gpu.coerce4, 32, 24);
    $$d_dim_gpu$19$2 := BV_EXTRACT($d_dim_gpu.coerce4, 32, 24);
    $$d_dim_gpu$20$1 := BV_EXTRACT($d_dim_gpu.coerce4, 40, 32);
    $$d_dim_gpu$20$2 := BV_EXTRACT($d_dim_gpu.coerce4, 40, 32);
    $$d_dim_gpu$21$1 := BV_EXTRACT($d_dim_gpu.coerce4, 48, 40);
    $$d_dim_gpu$21$2 := BV_EXTRACT($d_dim_gpu.coerce4, 48, 40);
    $$d_dim_gpu$22$1 := BV_EXTRACT($d_dim_gpu.coerce4, 56, 48);
    $$d_dim_gpu$22$2 := BV_EXTRACT($d_dim_gpu.coerce4, 56, 48);
    $$d_dim_gpu$23$1 := BV_EXTRACT($d_dim_gpu.coerce4, 64, 56);
    $$d_dim_gpu$23$2 := BV_EXTRACT($d_dim_gpu.coerce4, 64, 56);
    $$d_dim_gpu$24$1 := BV_EXTRACT($d_dim_gpu.coerce5, 8, 0);
    $$d_dim_gpu$24$2 := BV_EXTRACT($d_dim_gpu.coerce5, 8, 0);
    $$d_dim_gpu$25$1 := BV_EXTRACT($d_dim_gpu.coerce5, 16, 8);
    $$d_dim_gpu$25$2 := BV_EXTRACT($d_dim_gpu.coerce5, 16, 8);
    $$d_dim_gpu$26$1 := BV_EXTRACT($d_dim_gpu.coerce5, 24, 16);
    $$d_dim_gpu$26$2 := BV_EXTRACT($d_dim_gpu.coerce5, 24, 16);
    $$d_dim_gpu$27$1 := BV_EXTRACT($d_dim_gpu.coerce5, 32, 24);
    $$d_dim_gpu$27$2 := BV_EXTRACT($d_dim_gpu.coerce5, 32, 24);
    $$d_dim_gpu$28$1 := BV_EXTRACT($d_dim_gpu.coerce5, 40, 32);
    $$d_dim_gpu$28$2 := BV_EXTRACT($d_dim_gpu.coerce5, 40, 32);
    $$d_dim_gpu$29$1 := BV_EXTRACT($d_dim_gpu.coerce5, 48, 40);
    $$d_dim_gpu$29$2 := BV_EXTRACT($d_dim_gpu.coerce5, 48, 40);
    $$d_dim_gpu$30$1 := BV_EXTRACT($d_dim_gpu.coerce5, 56, 48);
    $$d_dim_gpu$30$2 := BV_EXTRACT($d_dim_gpu.coerce5, 56, 48);
    $$d_dim_gpu$31$1 := BV_EXTRACT($d_dim_gpu.coerce5, 64, 56);
    $$d_dim_gpu$31$2 := BV_EXTRACT($d_dim_gpu.coerce5, 64, 56);
    $$d_dim_gpu$32$1 := BV_EXTRACT($d_dim_gpu.coerce6, 8, 0);
    $$d_dim_gpu$32$2 := BV_EXTRACT($d_dim_gpu.coerce6, 8, 0);
    $$d_dim_gpu$33$1 := BV_EXTRACT($d_dim_gpu.coerce6, 16, 8);
    $$d_dim_gpu$33$2 := BV_EXTRACT($d_dim_gpu.coerce6, 16, 8);
    $$d_dim_gpu$34$1 := BV_EXTRACT($d_dim_gpu.coerce6, 24, 16);
    $$d_dim_gpu$34$2 := BV_EXTRACT($d_dim_gpu.coerce6, 24, 16);
    $$d_dim_gpu$35$1 := BV_EXTRACT($d_dim_gpu.coerce6, 32, 24);
    $$d_dim_gpu$35$2 := BV_EXTRACT($d_dim_gpu.coerce6, 32, 24);
    $$d_dim_gpu$36$1 := BV_EXTRACT($d_dim_gpu.coerce6, 40, 32);
    $$d_dim_gpu$36$2 := BV_EXTRACT($d_dim_gpu.coerce6, 40, 32);
    $$d_dim_gpu$37$1 := BV_EXTRACT($d_dim_gpu.coerce6, 48, 40);
    $$d_dim_gpu$37$2 := BV_EXTRACT($d_dim_gpu.coerce6, 48, 40);
    $$d_dim_gpu$38$1 := BV_EXTRACT($d_dim_gpu.coerce6, 56, 48);
    $$d_dim_gpu$38$2 := BV_EXTRACT($d_dim_gpu.coerce6, 56, 48);
    $$d_dim_gpu$39$1 := BV_EXTRACT($d_dim_gpu.coerce6, 64, 56);
    $$d_dim_gpu$39$2 := BV_EXTRACT($d_dim_gpu.coerce6, 64, 56);
    $$d_dim_gpu$40$1 := BV_EXTRACT($d_dim_gpu.coerce7, 8, 0);
    $$d_dim_gpu$40$2 := BV_EXTRACT($d_dim_gpu.coerce7, 8, 0);
    $$d_dim_gpu$41$1 := BV_EXTRACT($d_dim_gpu.coerce7, 16, 8);
    $$d_dim_gpu$41$2 := BV_EXTRACT($d_dim_gpu.coerce7, 16, 8);
    $$d_dim_gpu$42$1 := BV_EXTRACT($d_dim_gpu.coerce7, 24, 16);
    $$d_dim_gpu$42$2 := BV_EXTRACT($d_dim_gpu.coerce7, 24, 16);
    $$d_dim_gpu$43$1 := BV_EXTRACT($d_dim_gpu.coerce7, 32, 24);
    $$d_dim_gpu$43$2 := BV_EXTRACT($d_dim_gpu.coerce7, 32, 24);
    $$d_dim_gpu$44$1 := BV_EXTRACT($d_dim_gpu.coerce7, 40, 32);
    $$d_dim_gpu$44$2 := BV_EXTRACT($d_dim_gpu.coerce7, 40, 32);
    $$d_dim_gpu$45$1 := BV_EXTRACT($d_dim_gpu.coerce7, 48, 40);
    $$d_dim_gpu$45$2 := BV_EXTRACT($d_dim_gpu.coerce7, 48, 40);
    $$d_dim_gpu$46$1 := BV_EXTRACT($d_dim_gpu.coerce7, 56, 48);
    $$d_dim_gpu$46$2 := BV_EXTRACT($d_dim_gpu.coerce7, 56, 48);
    $$d_dim_gpu$47$1 := BV_EXTRACT($d_dim_gpu.coerce7, 64, 56);
    $$d_dim_gpu$47$2 := BV_EXTRACT($d_dim_gpu.coerce7, 64, 56);
    $$d_dim_gpu$48$1 := BV_EXTRACT($d_dim_gpu.coerce8, 8, 0);
    $$d_dim_gpu$48$2 := BV_EXTRACT($d_dim_gpu.coerce8, 8, 0);
    $$d_dim_gpu$49$1 := BV_EXTRACT($d_dim_gpu.coerce8, 16, 8);
    $$d_dim_gpu$49$2 := BV_EXTRACT($d_dim_gpu.coerce8, 16, 8);
    $$d_dim_gpu$50$1 := BV_EXTRACT($d_dim_gpu.coerce8, 24, 16);
    $$d_dim_gpu$50$2 := BV_EXTRACT($d_dim_gpu.coerce8, 24, 16);
    $$d_dim_gpu$51$1 := BV_EXTRACT($d_dim_gpu.coerce8, 32, 24);
    $$d_dim_gpu$51$2 := BV_EXTRACT($d_dim_gpu.coerce8, 32, 24);
    $$d_dim_gpu$52$1 := BV_EXTRACT($d_dim_gpu.coerce8, 40, 32);
    $$d_dim_gpu$52$2 := BV_EXTRACT($d_dim_gpu.coerce8, 40, 32);
    $$d_dim_gpu$53$1 := BV_EXTRACT($d_dim_gpu.coerce8, 48, 40);
    $$d_dim_gpu$53$2 := BV_EXTRACT($d_dim_gpu.coerce8, 48, 40);
    $$d_dim_gpu$54$1 := BV_EXTRACT($d_dim_gpu.coerce8, 56, 48);
    $$d_dim_gpu$54$2 := BV_EXTRACT($d_dim_gpu.coerce8, 56, 48);
    $$d_dim_gpu$55$1 := BV_EXTRACT($d_dim_gpu.coerce8, 64, 56);
    $$d_dim_gpu$55$2 := BV_EXTRACT($d_dim_gpu.coerce8, 64, 56);
    v0$1 := group_id_x$1;
    v0$2 := group_id_x$2;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := $$d_dim_gpu$16$1;
    v2$2 := $$d_dim_gpu$16$2;
    v3$1 := $$d_dim_gpu$17$1;
    v3$2 := $$d_dim_gpu$17$2;
    v4$1 := $$d_dim_gpu$18$1;
    v4$2 := $$d_dim_gpu$18$2;
    v5$1 := $$d_dim_gpu$19$1;
    v5$2 := $$d_dim_gpu$19$2;
    v6$1 := $$d_dim_gpu$20$1;
    v6$2 := $$d_dim_gpu$20$2;
    v7$1 := $$d_dim_gpu$21$1;
    v7$2 := $$d_dim_gpu$21$2;
    v8$1 := $$d_dim_gpu$22$1;
    v8$2 := $$d_dim_gpu$22$2;
    v9$1 := $$d_dim_gpu$23$1;
    v9$2 := $$d_dim_gpu$23$2;
    v10$1 := BV64_SLT(BV32_SEXT64(v0$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v9$1, v8$1), v7$1), v6$1), v5$1), v4$1), v3$1), v2$1));
    v10$2 := BV64_SLT(BV32_SEXT64(v0$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v9$2, v8$2), v7$2), v6$2), v5$2), v4$2), v3$2), v2$2));
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p13$1 := false;
    p13$2 := false;
    p0$1 := (if v10$1 then v10$1 else p0$1);
    p0$2 := (if v10$2 then v10$2 else p0$2);
    v11$1 := (if p0$1 then $$d_par_gpu$0$1 else v11$1);
    v11$2 := (if p0$2 then $$d_par_gpu$0$2 else v11$2);
    v12$1 := (if p0$1 then $$d_par_gpu$0$1 else v12$1);
    v12$2 := (if p0$2 then $$d_par_gpu$0$2 else v12$2);
    v13$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 16)] else v13$1);
    v13$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 16)] else v13$2);
    v14$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 17)] else v14$1);
    v14$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 17)] else v14$2);
    v15$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 18)] else v15$1);
    v15$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 18)] else v15$2);
    v16$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 19)] else v16$1);
    v16$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 19)] else v16$2);
    v17$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 20)] else v17$1);
    v17$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 20)] else v17$2);
    v18$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 21)] else v18$1);
    v18$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 21)] else v18$2);
    v19$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 22)] else v19$1);
    v19$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 22)] else v19$2);
    v20$1 := (if p0$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 23)] else v20$1);
    v20$2 := (if p0$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 23)] else v20$2);
    v21$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v16$1, v15$1), v14$1), v13$1) else v21$1);
    v21$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v16$2, v15$2), v14$2), v13$2) else v21$2);
    $wtx.0$1 := (if p0$1 then v1$1 else $wtx.0$1);
    $wtx.0$2 := (if p0$2 then v1$2 else $wtx.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$2 := _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_4"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$2 == _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p1$1 ==> $wtx.0$1 mod 128 == v1$1 mod 128 )  && ( p1$2 ==> $wtx.0$2 mod 128 == v1$2 mod 128 ) ,  ( p1$1 ==> BV32_SLE($wtx.0$1, v1$1) )  && ( p1$2 ==> BV32_SLE($wtx.0$2, v1$2) ) ,  ( p1$1 ==> BV32_SGE($wtx.0$1, v1$1) )  && ( p1$2 ==> BV32_SGE($wtx.0$2, v1$2) ) ,  ( p1$1 ==> BV32_ULE($wtx.0$1, v1$1) )  && ( p1$2 ==> BV32_ULE($wtx.0$2, v1$2) ) ,  ( p1$1 ==> BV32_UGE($wtx.0$1, v1$1) )  && ( p1$2 ==> BV32_UGE($wtx.0$2, v1$2) ) ,  ( p1$1 ==> p1$1 ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) )  && ( p1$2 ==> p1$2 ==> BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($wtx.0$1, 100) ==> p1$1 )  && (  BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($wtx.0$2, 100) ==> p1$2 ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 20} p1$1 ==> true;
    v22$1 := (if p1$1 then BV32_SLT($wtx.0$1, 100) else v22$1);
    v22$2 := (if p1$2 then BV32_SLT($wtx.0$2, 100) else v22$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v22$1 then v22$1 else p2$1);
    p2$2 := (if p1$2 && v22$2 then v22$2 else p2$2);
    p1$1 := (if p1$1 && !v22$1 then v22$1 else p1$1);
    p1$2 := (if p1$2 && !v22$2 then v22$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p2$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p2$2 then _HAVOC_int$2 else v23$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(p2$1, BV32_MUL($wtx.0$1, 4), v23$1, $$kernel_gpu_opencl.rA_shared[1bv1][BV32_MUL($wtx.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_MUL($wtx.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_MUL($wtx.0$2, 4), v23$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rA_shared"} true;
    $$kernel_gpu_opencl.rA_shared[1bv1][BV32_MUL($wtx.0$1, 4)] := (if p2$1 then v23$1 else $$kernel_gpu_opencl.rA_shared[1bv1][BV32_MUL($wtx.0$1, 4)]);
    $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.0$2, 4)] := (if p2$2 then v23$2 else $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.0$2, 4)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p2$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p2$2 then _HAVOC_int$2 else v24$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(p2$1, BV32_ADD(BV32_MUL($wtx.0$1, 4), 1), v24$1, $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 1), v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rA_shared"} true;
    $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 1)] := (if p2$1 then v24$1 else $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 1)]);
    $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 1)] := (if p2$2 then v24$2 else $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p2$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p2$2 then _HAVOC_int$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(p2$1, BV32_ADD(BV32_MUL($wtx.0$1, 4), 2), v25$1, $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 2), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rA_shared"} true;
    $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 2)] := (if p2$1 then v25$1 else $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 2)]);
    $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 2)] := (if p2$2 then v25$2 else $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p2$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p2$2 then _HAVOC_int$2 else v26$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(p2$1, BV32_ADD(BV32_MUL($wtx.0$1, 4), 3), v26$1, $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel_gpu_opencl.rA_shared(p2$2, BV32_ADD(BV32_MUL($wtx.0$2, 4), 3), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rA_shared"} true;
    $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 3)] := (if p2$1 then v26$1 else $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.0$1, 4), 3)]);
    $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 3)] := (if p2$2 then v26$2 else $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.0$2, 4), 3)]);
    $wtx.0$1 := (if p2$1 then BV32_ADD($wtx.0$1, 128) else $wtx.0$1);
    $wtx.0$2 := (if p2$2 then BV32_ADD($wtx.0$2, 128) else $wtx.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 31} $bugle_barrier_duplicated_0(-1, 0, p0$1, p0$2);
    $k.0$1 := (if p0$1 then 0 else $k.0$1);
    $k.0$2 := (if p0$2 then 0 else $k.0$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$5 := _READ_HAS_OCCURRED_$$d_fv_gpu;
    _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$5 := _WRITE_HAS_OCCURRED_$$d_fv_gpu;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$5 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5 := _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5 := _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p3$1 == p3$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p3$1 == p3$2 ) ,  (  p3$1 && p3$2 ==> $k.0$1 == $k.0$2 ) ,  (  p3$1 && p3$2 ==> $pointer.0$1 == $pointer.0$2 ) ,  (  p3$1 && p3$2 ==> $wtx.2$1 == $wtx.2$2 ) ,  (  p3$1 && p3$2 ==> $wtx.3$1 == $wtx.3$2 ) ,  (  p3$1 && p3$2 ==> $j.0$1 == $j.0$2 ) ,  (  p3$1 && p3$2 ==> v27$1 == v27$2 ) ,  (  p3$1 && p3$2 ==> v28$1 == v28$2 ) ,  (  p3$1 && p3$2 ==> v29$1 == v29$2 ) ,  (  p3$1 && p3$2 ==> v30$1 == v30$2 ) ,  (  p3$1 && p3$2 ==> v31$1 == v31$2 ) ,  (  p3$1 && p3$2 ==> v32$1 == v32$2 ) ,  (  p3$1 && p3$2 ==> v33$1 == v33$2 ) ,  (  p3$1 && p3$2 ==> v34$1 == v34$2 ) ,  (  p3$1 && p3$2 ==> v35$1 == v35$2 ) ,  (  p3$1 && p3$2 ==> v36$1 == v36$2 ) ,  (  p3$1 && p3$2 ==> v37$1 == v37$2 ) ,  (  p3$1 && p3$2 ==> v38$1 == v38$2 ) ,  (  p3$1 && p3$2 ==> v39$1 == v39$2 ) ,  (  p3$1 && p3$2 ==> v40$1 == v40$2 ) ,  (  p3$1 && p3$2 ==> v41$1 == v41$2 ) ,  (  p3$1 && p3$2 ==> v42$1 == v42$2 ) ,  (  p3$1 && p3$2 ==> v43$1 == v43$2 ) ,  (  p3$1 && p3$2 ==> v44$1 == v44$2 ) ,  (  p3$1 && p3$2 ==> v45$1 == v45$2 ) ,  (  p3$1 && p3$2 ==> v46$1 == v46$2 ) ,  (  p3$1 && p3$2 ==> v47$1 == v47$2 ) ,  (  p3$1 && p3$2 ==> v48$1 == v48$2 ) ,  (  p3$1 && p3$2 ==> v49$1 == v49$2 ) ,  (  p3$1 && p3$2 ==> v50$1 == v50$2 ) ,  (  p3$1 && p3$2 ==> v51$1 == v51$2 ) ,  (  p3$1 && p3$2 ==> v52$1 == v52$2 ) ,  (  p3$1 && p3$2 ==> v53$1 == v53$2 ) ,  (  p3$1 && p3$2 ==> v54$1 == v54$2 ) ,  (  p3$1 && p3$2 ==> v55$1 == v55$2 ) ,  (  p3$1 && p3$2 ==> v56$1 == v56$2 ) ,  (  p3$1 && p3$2 ==> v57$1 == v57$2 ) ,  (  p3$1 && p3$2 ==> v58$1 == v58$2 ) ,  (  p3$1 && p3$2 ==> v59$1 == v59$2 ) ,  (  p3$1 && p3$2 ==> v60$1 == v60$2 ) ,  (  p3$1 && p3$2 ==> v61$1 == v61$2 ) ,  (  p3$1 && p3$2 ==> v62$1 == v62$2 ) ,  (  p3$1 && p3$2 ==> v63$1 == v63$2 ) ,  (  p3$1 && p3$2 ==> v64$1 == v64$2 ) ,  (  p3$1 && p3$2 ==> v65$1 == v65$2 ) ,  (  p3$1 && p3$2 ==> v66$1 == v66$2 ) ,  (  p3$1 && p3$2 ==> v67$1 == v67$2 ) ,  (  p3$1 && p3$2 ==> v68$1 == v68$2 ) ,  (  p3$1 && p3$2 ==> v69$1 == v69$2 ) ,  (  p3$1 && p3$2 ==> v70$1 == v70$2 ) ,  (  p3$1 && p3$2 ==> v71$1 == v71$2 ) ,  (  p3$1 && p3$2 ==> v72$1 == v72$2 ) ,  (  p3$1 && p3$2 ==> v73$1 == v73$2 ) ,  (  p3$1 && p3$2 ==> v74$1 == v74$2 ) ,  (  p3$1 && p3$2 ==> v75$1 == v75$2 ) ,  (  p3$1 && p3$2 ==> v76$1 == v76$2 ) ,  (  p3$1 && p3$2 ==> v77$1 == v77$2 ) ,  (  p3$1 && p3$2 ==> v78$1 == v78$2 ) ,  (  p3$1 && p3$2 ==> v79$1 == v79$2 ) ,  (  p3$1 && p3$2 ==> v80$1 == v80$2 ) ,  (  p3$1 && p3$2 ==> v81$1 == v81$2 ) ,  (  p3$1 && p3$2 ==> v82$1 == v82$2 ) ,  (  p3$1 && p3$2 ==> v83$1 == v83$2 ) ,  (  p3$1 && p3$2 ==> v84$1 == v84$2 ) ,  (  !_READ_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !_WRITE_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$5 == _READ_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$5 == _WRITE_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$5 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ) ,  (  !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$5 == _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> _WATCHED_OFFSET mod 128 == v1$1 mod 128 ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$5 == _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p3"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p3$1 ==> $k.0$1 mod 1 == 0 mod 1 )  && ( p3$2 ==> $k.0$2 mod 1 == 0 mod 1 ) ,  ( p3$1 ==> BV32_SLE($k.0$1, 0) )  && ( p3$2 ==> BV32_SLE($k.0$2, 0) ) ,  ( p3$1 ==> BV32_SGE($k.0$1, 0) )  && ( p3$2 ==> BV32_SGE($k.0$2, 0) ) ,  ( p3$1 ==> BV32_ULE($k.0$1, 0) )  && ( p3$2 ==> BV32_ULE($k.0$2, 0) ) ,  ( p3$1 ==> BV32_UGE($k.0$1, 0) )  && ( p3$2 ==> BV32_UGE($k.0$2, 0) ) ,  ( p3$1 ==> p3$1 ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) )  && ( p3$2 ==> p3$2 ==> BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ==> p3$1 )  && (  BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) ==> p3$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 32} p3$1 ==> true;
    v27$1 := (if p3$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 24)] else v27$1);
    v27$2 := (if p3$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 24)] else v27$2);
    v28$1 := (if p3$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 25)] else v28$1);
    v28$2 := (if p3$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 25)] else v28$2);
    v29$1 := (if p3$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 26)] else v29$1);
    v29$2 := (if p3$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 26)] else v29$2);
    v30$1 := (if p3$1 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$1, 656), 27)] else v30$1);
    v30$2 := (if p3$2 then $$d_box_gpu[BV32_ADD(BV32_MUL(v0$2, 656), 27)] else v30$2);
    v31$1 := (if p3$1 then BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) else v31$1);
    v31$2 := (if p3$2 then BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) else v31$2);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p9$1 := false;
    p9$2 := false;
    p4$1 := (if p3$1 && v31$1 then v31$1 else p4$1);
    p4$2 := (if p3$2 && v31$2 then v31$2 else p4$2);
    p3$1 := (if p3$1 && !v31$1 then v31$1 else p3$1);
    p3$2 := (if p3$2 && !v31$2 then v31$2 else p3$2);
    v32$1 := (if p4$1 then $k.0$1 == 0 else v32$1);
    v32$2 := (if p4$2 then $k.0$2 == 0 else v32$2);
    p6$1 := (if p4$1 && v32$1 then v32$1 else p6$1);
    p6$2 := (if p4$2 && v32$2 then v32$2 else p6$2);
    p5$1 := (if p4$1 && !v32$1 then !v32$1 else p5$1);
    p5$2 := (if p4$2 && !v32$2 then !v32$2 else p5$2);
    v33$1 := (if p5$1 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$1, 656), 32), BV32_MUL(BV32_SUB($k.0$1, 1), 24)), 12)] else v33$1);
    v33$2 := (if p5$2 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$2, 656), 32), BV32_MUL(BV32_SUB($k.0$2, 1), 24)), 12)] else v33$2);
    v34$1 := (if p5$1 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$1, 656), 32), BV32_MUL(BV32_SUB($k.0$1, 1), 24)), 13)] else v34$1);
    v34$2 := (if p5$2 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$2, 656), 32), BV32_MUL(BV32_SUB($k.0$2, 1), 24)), 13)] else v34$2);
    v35$1 := (if p5$1 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$1, 656), 32), BV32_MUL(BV32_SUB($k.0$1, 1), 24)), 14)] else v35$1);
    v35$2 := (if p5$2 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$2, 656), 32), BV32_MUL(BV32_SUB($k.0$2, 1), 24)), 14)] else v35$2);
    v36$1 := (if p5$1 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$1, 656), 32), BV32_MUL(BV32_SUB($k.0$1, 1), 24)), 15)] else v36$1);
    v36$2 := (if p5$2 then $$d_box_gpu[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v0$2, 656), 32), BV32_MUL(BV32_SUB($k.0$2, 1), 24)), 15)] else v36$2);
    $pointer.0$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v36$1, v35$1), v34$1), v33$1) else $pointer.0$1);
    $pointer.0$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v36$2, v35$2), v34$2), v33$2) else $pointer.0$2);
    $pointer.0$1 := (if p6$1 then v0$1 else $pointer.0$1);
    $pointer.0$2 := (if p6$2 then v0$2 else $pointer.0$2);
    v37$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 16)] else v37$1);
    v37$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 16)] else v37$2);
    v38$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 17)] else v38$1);
    v38$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 17)] else v38$2);
    v39$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 18)] else v39$1);
    v39$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 18)] else v39$2);
    v40$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 19)] else v40$1);
    v40$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 19)] else v40$2);
    v41$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 20)] else v41$1);
    v41$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 20)] else v41$2);
    v42$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 21)] else v42$1);
    v42$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 21)] else v42$2);
    v43$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 22)] else v43$1);
    v43$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 22)] else v43$2);
    v44$1 := (if p4$1 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$1, 656), 23)] else v44$1);
    v44$2 := (if p4$2 then $$d_box_gpu[BV32_ADD(BV32_MUL($pointer.0$2, 656), 23)] else v44$2);
    v45$1 := (if p4$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$1, v39$1), v38$1), v37$1) else v45$1);
    v45$2 := (if p4$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$2, v39$2), v38$2), v37$2) else v45$2);
    $wtx.2$1 := (if p4$1 then v1$1 else $wtx.2$1);
    $wtx.2$2 := (if p4$2 then v1$2 else $wtx.2$2);
    p7$1 := (if p4$1 then true else p7$1);
    p7$2 := (if p4$2 then true else p7$2);
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$10 := _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$10 := _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p4$1 ==> _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$10 == _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> _WATCHED_OFFSET mod 128 == v1$1 mod 128 ) ,  (  !p4$1 ==> _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$10 == _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p7"} {:dominator_predicate "p4"} true;
    assert p7$1 ==> p3$1;
    assert p7$2 ==> p3$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p7$1 ==> $wtx.2$1 mod 128 == v1$1 mod 128 )  && ( p7$2 ==> $wtx.2$2 mod 128 == v1$2 mod 128 ) ,  ( p7$1 ==> BV32_SLE($wtx.2$1, v1$1) )  && ( p7$2 ==> BV32_SLE($wtx.2$2, v1$2) ) ,  ( p7$1 ==> BV32_SGE($wtx.2$1, v1$1) )  && ( p7$2 ==> BV32_SGE($wtx.2$2, v1$2) ) ,  ( p7$1 ==> BV32_ULE($wtx.2$1, v1$1) )  && ( p7$2 ==> BV32_ULE($wtx.2$2, v1$2) ) ,  ( p7$1 ==> BV32_UGE($wtx.2$1, v1$1) )  && ( p7$2 ==> BV32_UGE($wtx.2$2, v1$2) ) ,  ( p7$1 ==> p7$1 ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) )  && ( p7$2 ==> p7$2 ==> BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) ) ,  (  BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) && BV32_SLT($wtx.2$1, 100) ==> p7$1 )  && (  BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) && BV32_SLT($wtx.2$2, 100) ==> p7$2 ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 53} p7$1 ==> true;
    v46$1 := (if p7$1 then BV32_SLT($wtx.2$1, 100) else v46$1);
    v46$2 := (if p7$2 then BV32_SLT($wtx.2$2, 100) else v46$2);
    p8$1 := false;
    p8$2 := false;
    p8$1 := (if p7$1 && v46$1 then v46$1 else p8$1);
    p8$2 := (if p7$2 && v46$2 then v46$2 else p8$2);
    p7$1 := (if p7$1 && !v46$1 then v46$1 else p7$1);
    p7$2 := (if p7$2 && !v46$2 then v46$2 else p7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v47$1 := (if p8$1 then _HAVOC_int$1 else v47$1);
    v47$2 := (if p8$2 then _HAVOC_int$2 else v47$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(p8$1, BV32_MUL($wtx.2$1, 4), v47$1, $$kernel_gpu_opencl.rB_shared[1bv1][BV32_MUL($wtx.2$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_MUL($wtx.2$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_MUL($wtx.2$2, 4), v47$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rB_shared"} true;
    $$kernel_gpu_opencl.rB_shared[1bv1][BV32_MUL($wtx.2$1, 4)] := (if p8$1 then v47$1 else $$kernel_gpu_opencl.rB_shared[1bv1][BV32_MUL($wtx.2$1, 4)]);
    $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.2$2, 4)] := (if p8$2 then v47$2 else $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.2$2, 4)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v48$1 := (if p8$1 then _HAVOC_int$1 else v48$1);
    v48$2 := (if p8$2 then _HAVOC_int$2 else v48$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(p8$1, BV32_ADD(BV32_MUL($wtx.2$1, 4), 1), v48$1, $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 1), v48$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rB_shared"} true;
    $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 1)] := (if p8$1 then v48$1 else $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 1)]);
    $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 1)] := (if p8$2 then v48$2 else $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p8$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p8$2 then _HAVOC_int$2 else v49$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(p8$1, BV32_ADD(BV32_MUL($wtx.2$1, 4), 2), v49$1, $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 2), v49$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rB_shared"} true;
    $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 2)] := (if p8$1 then v49$1 else $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 2)]);
    $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 2)] := (if p8$2 then v49$2 else $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p8$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p8$2 then _HAVOC_int$2 else v50$2);
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(p8$1, BV32_ADD(BV32_MUL($wtx.2$1, 4), 3), v50$1, $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$kernel_gpu_opencl.rB_shared(p8$2, BV32_ADD(BV32_MUL($wtx.2$2, 4), 3), v50$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.rB_shared"} true;
    $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 3)] := (if p8$1 then v50$1 else $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($wtx.2$1, 4), 3)]);
    $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 3)] := (if p8$2 then v50$2 else $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.2$2, 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p8$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p8$2 then _HAVOC_int$2 else v51$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$kernel_gpu_opencl.qB_shared(p8$1, $wtx.2$1, v51$1, $$kernel_gpu_opencl.qB_shared[1bv1][$wtx.2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared(p8$2, $wtx.2$2);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$kernel_gpu_opencl.qB_shared(p8$2, $wtx.2$2, v51$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel_gpu_opencl.qB_shared"} true;
    $$kernel_gpu_opencl.qB_shared[1bv1][$wtx.2$1] := (if p8$1 then v51$1 else $$kernel_gpu_opencl.qB_shared[1bv1][$wtx.2$1]);
    $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$wtx.2$2] := (if p8$2 then v51$2 else $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$wtx.2$2]);
    $wtx.2$1 := (if p8$1 then BV32_ADD($wtx.2$1, 128) else $wtx.2$1);
    $wtx.2$2 := (if p8$2 then BV32_ADD($wtx.2$2, 128) else $wtx.2$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $10.backedge, __partitioned_block_$10.tail_0;

  __partitioned_block_$10.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$10.tail_1;

  __partitioned_block_$10.tail_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_1(-1, 0, p4$1, p4$2);
    $wtx.3$1 := (if p4$1 then v1$1 else $wtx.3$1);
    $wtx.3$2 := (if p4$2 then v1$2 else $wtx.3$2);
    p9$1 := (if p4$1 then true else p9$1);
    p9$2 := (if p4$2 then true else p9$2);
    _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$13 := _READ_HAS_OCCURRED_$$d_fv_gpu;
    _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$13 := _WRITE_HAS_OCCURRED_$$d_fv_gpu;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$13 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$13 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$13 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$13 == _READ_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !p4$1 ==> _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$13 == _WRITE_HAS_OCCURRED_$$d_fv_gpu ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$13 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$13 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$13 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p9"} {:dominator_predicate "p4"} true;
    assert p9$1 ==> p3$1;
    assert p9$2 ==> p3$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p9$1 ==> $wtx.3$1 mod 128 == v1$1 mod 128 )  && ( p9$2 ==> $wtx.3$2 mod 128 == v1$2 mod 128 ) ,  ( p9$1 ==> BV32_SLE($wtx.3$1, v1$1) )  && ( p9$2 ==> BV32_SLE($wtx.3$2, v1$2) ) ,  ( p9$1 ==> BV32_SGE($wtx.3$1, v1$1) )  && ( p9$2 ==> BV32_SGE($wtx.3$2, v1$2) ) ,  ( p9$1 ==> BV32_ULE($wtx.3$1, v1$1) )  && ( p9$2 ==> BV32_ULE($wtx.3$2, v1$2) ) ,  ( p9$1 ==> BV32_UGE($wtx.3$1, v1$1) )  && ( p9$2 ==> BV32_UGE($wtx.3$2, v1$2) ) ,  ( p9$1 ==> p9$1 ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) )  && ( p9$2 ==> p9$2 ==> BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) ) ,  (  BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) && BV32_SLT($wtx.3$1, 100) ==> p9$1 )  && (  BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) && BV32_SLT($wtx.3$2, 100) ==> p9$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 67} p9$1 ==> true;
    v52$1 := (if p9$1 then BV32_SLT($wtx.3$1, 100) else v52$1);
    v52$2 := (if p9$2 then BV32_SLT($wtx.3$2, 100) else v52$2);
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p10$1 := (if p9$1 && v52$1 then v52$1 else p10$1);
    p10$2 := (if p9$2 && v52$2 then v52$2 else p10$2);
    p9$1 := (if p9$1 && !v52$1 then v52$1 else p9$1);
    p9$2 := (if p9$2 && !v52$2 then v52$2 else p9$2);
    $j.0$1 := (if p10$1 then 0 else $j.0$1);
    $j.0$2 := (if p10$2 then 0 else $j.0$2);
    p11$1 := (if p10$1 then true else p11$1);
    p11$2 := (if p10$2 then true else p11$2);
    _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$15 := _READ_HAS_OCCURRED_$$d_fv_gpu;
    _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$15 := _WRITE_HAS_OCCURRED_$$d_fv_gpu;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$15 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$15 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$15 := _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$d_fv_gpu$ghost$$15 == _READ_HAS_OCCURRED_$$d_fv_gpu ) ,  (  !p10$1 ==> _WRITE_HAS_OCCURRED_$$d_fv_gpu$ghost$$15 == _WRITE_HAS_OCCURRED_$$d_fv_gpu ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_MUL(v1$1, 4) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 1) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 2) mod BV32_MUL(128, 4) || _WATCHED_OFFSET mod BV32_MUL(128, 4) == BV32_ADD(BV32_MUL(v1$1, 4), 3) mod BV32_MUL(128, 4) ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared$ghost$$15 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared$ghost$$15 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared$ghost$$15 == _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p10"} true;
    assert p11$1 ==> p9$1;
    assert p11$2 ==> p9$2;
    assert p9$1 ==> p3$1;
    assert p9$2 ==> p3$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p11$1 ==> $j.0$1 mod 1 == 0 mod 1 )  && ( p11$2 ==> $j.0$2 mod 1 == 0 mod 1 ) ,  ( p11$1 ==> BV32_SLE($j.0$1, 0) )  && ( p11$2 ==> BV32_SLE($j.0$2, 0) ) ,  ( p11$1 ==> BV32_SGE($j.0$1, 0) )  && ( p11$2 ==> BV32_SGE($j.0$2, 0) ) ,  ( p11$1 ==> BV32_ULE($j.0$1, 0) )  && ( p11$2 ==> BV32_ULE($j.0$2, 0) ) ,  ( p11$1 ==> BV32_UGE($j.0$1, 0) )  && ( p11$2 ==> BV32_UGE($j.0$2, 0) ) ,  ( p11$1 ==> p11$1 ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) && BV32_SLT($wtx.3$1, 100) )  && ( p11$2 ==> p11$2 ==> BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) && BV32_SLT($wtx.3$2, 100) ) ,  (  BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) && BV32_SLT($wtx.3$1, 100) && BV32_SLT($j.0$1, 100) ==> p11$1 )  && (  BV64_SLT(BV32_SEXT64(group_id_x$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) && BV32_SLT($k.0$2, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$2, v29$2), v28$2), v27$2))) && BV32_SLT($wtx.3$2, 100) && BV32_SLT($j.0$2, 100) ==> p11$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared ==> BV32_SLT($wtx.3$1, 100) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared ==> BV32_SLT($wtx.3$1, 100) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared ==> BV32_SLT($wtx.3$1, 100) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _READ_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($wtx.3$1, 100) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV64_SLT(BV32_SEXT64(group_id_x$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($d_dim_gpu.coerce4, 64, 56), BV_EXTRACT($d_dim_gpu.coerce4, 56, 48)), BV_EXTRACT($d_dim_gpu.coerce4, 48, 40)), BV_EXTRACT($d_dim_gpu.coerce4, 40, 32)), BV_EXTRACT($d_dim_gpu.coerce4, 32, 24)), BV_EXTRACT($d_dim_gpu.coerce4, 24, 16)), BV_EXTRACT($d_dim_gpu.coerce4, 16, 8)), BV_EXTRACT($d_dim_gpu.coerce4, 8, 0))) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($k.0$1, BV32_ADD(1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v30$1, v29$1), v28$1), v27$1))) ) ,  (  _WRITE_HAS_OCCURRED_$$d_fv_gpu ==> BV32_SLT($wtx.3$1, 100) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 69} p11$1 ==> true;
    v53$1 := (if p11$1 then BV32_SLT($j.0$1, 100) else v53$1);
    v53$2 := (if p11$2 then BV32_SLT($j.0$2, 100) else v53$2);
    p12$1 := false;
    p12$2 := false;
    p12$1 := (if p11$1 && v53$1 then v53$1 else p12$1);
    p12$2 := (if p11$2 && v53$2 then v53$2 else p12$2);
    p11$1 := (if p11$1 && !v53$1 then v53$1 else p11$1);
    p11$2 := (if p11$2 && !v53$2 then v53$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_MUL($wtx.3$1, 4), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_MUL($wtx.3$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_MUL($wtx.3$2, 4), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.3$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v54$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_MUL($wtx.3$1, 4)] else v54$1);
    v54$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($wtx.3$2, 4)] else v54$2);
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_MUL($j.0$1, 4), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_MUL($j.0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_MUL($j.0$2, 4), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v55$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_MUL($j.0$1, 4)] else v55$1);
    v55$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0$2, 4)] else v55$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 1), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 1), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v56$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 1)] else v56$1);
    v56$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 1)] else v56$2);
    call {:sourceloc} {:sourceloc_num 74} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 1), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 74} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 1), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v57$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 1)] else v57$1);
    v57$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 1)] else v57$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 2), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 2), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v58$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 2)] else v58$1);
    v58$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 2)] else v58$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 2), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 2), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v59$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 2)] else v59$1);
    v59$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 2)] else v59$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 3), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 3), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v60$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 3)] else v60$1);
    v60$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 3)] else v60$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 3), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 3), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v61$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 3)] else v61$1);
    v61$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 3)] else v61$2);
    v62$1 := (if p12$1 then FEXP32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(FMUL32(1073741824, v11$1), v12$1), FSUB32(FADD32(v54$1, v55$1), FADD32(FMUL32(v60$1, v61$1), FADD32(FMUL32(v56$1, v57$1), FMUL32(v58$1, v59$1)))))), 1069066811)) else v62$1);
    v62$2 := (if p12$2 then FEXP32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(FMUL32(1073741824, v11$2), v12$2), FSUB32(FADD32(v54$2, v55$2), FADD32(FMUL32(v60$2, v61$2), FADD32(FMUL32(v56$2, v57$2), FMUL32(v58$2, v59$2)))))), 1069066811)) else v62$2);
    v63$1 := (if p12$1 then FMUL32(1073741824, v62$1) else v63$1);
    v63$2 := (if p12$2 then FMUL32(1073741824, v62$2) else v63$2);
    call {:sourceloc} {:sourceloc_num 79} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 1), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 79} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 1), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v64$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 1)] else v64$1);
    v64$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 1)] else v64$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 1), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 1), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v65$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 1)] else v65$1);
    v65$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 1)] else v65$2);
    $$d$0$1 := (if p12$1 then FSUB32(v64$1, v65$1) else $$d$0$1);
    $$d$0$2 := (if p12$2 then FSUB32(v64$2, v65$2) else $$d$0$2);
    v66$1 := (if p12$1 then $$d$0$1 else v66$1);
    v66$2 := (if p12$2 then $$d$0$2 else v66$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 2), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 83} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 2), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v67$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 2)] else v67$1);
    v67$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 2)] else v67$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 2), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 2), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v68$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 2)] else v68$1);
    v68$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 2)] else v68$2);
    $$d$1$1 := (if p12$1 then FSUB32(v67$1, v68$1) else $$d$1$1);
    $$d$1$2 := (if p12$2 then FSUB32(v67$2, v68$2) else $$d$1$2);
    v69$1 := (if p12$1 then $$d$1$1 else v69$1);
    v69$2 := (if p12$2 then $$d$1$2 else v69$2);
    call {:sourceloc} {:sourceloc_num 87} _LOG_READ_$$kernel_gpu_opencl.rA_shared(p12$1, BV32_ADD(BV32_MUL($wtx.3$1, 4), 3), $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 87} _CHECK_READ_$$kernel_gpu_opencl.rA_shared(p12$2, BV32_ADD(BV32_MUL($wtx.3$2, 4), 3), $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rA_shared"} true;
    v70$1 := (if p12$1 then $$kernel_gpu_opencl.rA_shared[1bv1][BV32_ADD(BV32_MUL($wtx.3$1, 4), 3)] else v70$1);
    v70$2 := (if p12$2 then $$kernel_gpu_opencl.rA_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($wtx.3$2, 4), 3)] else v70$2);
    call {:sourceloc} {:sourceloc_num 88} _LOG_READ_$$kernel_gpu_opencl.rB_shared(p12$1, BV32_ADD(BV32_MUL($j.0$1, 4), 3), $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 88} _CHECK_READ_$$kernel_gpu_opencl.rB_shared(p12$2, BV32_ADD(BV32_MUL($j.0$2, 4), 3), $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.rB_shared"} true;
    v71$1 := (if p12$1 then $$kernel_gpu_opencl.rB_shared[1bv1][BV32_ADD(BV32_MUL($j.0$1, 4), 3)] else v71$1);
    v71$2 := (if p12$2 then $$kernel_gpu_opencl.rB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 4), 3)] else v71$2);
    $$d$2$1 := (if p12$1 then FSUB32(v70$1, v71$1) else $$d$2$1);
    $$d$2$2 := (if p12$2 then FSUB32(v70$2, v71$2) else $$d$2$2);
    v72$1 := (if p12$1 then $$d$2$1 else v72$1);
    v72$2 := (if p12$2 then $$d$2$2 else v72$2);
    call {:sourceloc} {:sourceloc_num 91} _LOG_READ_$$kernel_gpu_opencl.qB_shared(p12$1, $j.0$1, $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 91} _CHECK_READ_$$kernel_gpu_opencl.qB_shared(p12$2, $j.0$2, $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.qB_shared"} true;
    v73$1 := (if p12$1 then $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1] else v73$1);
    v73$2 := (if p12$2 then $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2] else v73$2);
    v74$1 := (if p12$1 then BV32_ADD(v21$1, $wtx.3$1) else v74$1);
    v74$2 := (if p12$2 then BV32_ADD(v21$2, $wtx.3$2) else v74$2);
    call {:sourceloc} {:sourceloc_num 92} _LOG_READ_$$d_fv_gpu(p12$1, BV32_MUL(v74$1, 4), $$d_fv_gpu[BV32_MUL(v74$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 92} _CHECK_READ_$$d_fv_gpu(p12$2, BV32_MUL(v74$2, 4), $$d_fv_gpu[BV32_MUL(v74$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_fv_gpu"} true;
    v75$1 := (if p12$1 then $$d_fv_gpu[BV32_MUL(v74$1, 4)] else v75$1);
    v75$2 := (if p12$2 then $$d_fv_gpu[BV32_MUL(v74$2, 4)] else v75$2);
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$d_fv_gpu(p12$1, BV32_MUL(v74$1, 4), FADD32(v75$1, FMUL32(v73$1, v62$1)), $$d_fv_gpu[BV32_MUL(v74$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(p12$2, BV32_MUL(v74$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$d_fv_gpu(p12$2, BV32_MUL(v74$2, 4), FADD32(v75$2, FMUL32(v73$2, v62$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_fv_gpu"} true;
    $$d_fv_gpu[BV32_MUL(v74$1, 4)] := (if p12$1 then FADD32(v75$1, FMUL32(v73$1, v62$1)) else $$d_fv_gpu[BV32_MUL(v74$1, 4)]);
    $$d_fv_gpu[BV32_MUL(v74$2, 4)] := (if p12$2 then FADD32(v75$2, FMUL32(v73$2, v62$2)) else $$d_fv_gpu[BV32_MUL(v74$2, 4)]);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$kernel_gpu_opencl.qB_shared(p12$1, $j.0$1, $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$kernel_gpu_opencl.qB_shared(p12$2, $j.0$2, $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.qB_shared"} true;
    v76$1 := (if p12$1 then $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1] else v76$1);
    v76$2 := (if p12$2 then $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2] else v76$2);
    v77$1 := (if p12$1 then BV32_ADD(v21$1, $wtx.3$1) else v77$1);
    v77$2 := (if p12$2 then BV32_ADD(v21$2, $wtx.3$2) else v77$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_READ_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v77$1, 4), 1), $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 95} _CHECK_READ_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v77$2, 4), 1), $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_fv_gpu"} true;
    v78$1 := (if p12$1 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$1, 4), 1)] else v78$1);
    v78$2 := (if p12$2 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$2, 4), 1)] else v78$2);
    call {:sourceloc} {:sourceloc_num 96} _LOG_WRITE_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v77$1, 4), 1), FADD32(v78$1, FMUL32(v76$1, FMUL32(v63$1, v66$1))), $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v77$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 96} _CHECK_WRITE_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v77$2, 4), 1), FADD32(v78$2, FMUL32(v76$2, FMUL32(v63$2, v66$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_fv_gpu"} true;
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$1, 4), 1)] := (if p12$1 then FADD32(v78$1, FMUL32(v76$1, FMUL32(v63$1, v66$1))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$1, 4), 1)]);
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$2, 4), 1)] := (if p12$2 then FADD32(v78$2, FMUL32(v76$2, FMUL32(v63$2, v66$2))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v77$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 97} _LOG_READ_$$kernel_gpu_opencl.qB_shared(p12$1, $j.0$1, $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 97} _CHECK_READ_$$kernel_gpu_opencl.qB_shared(p12$2, $j.0$2, $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.qB_shared"} true;
    v79$1 := (if p12$1 then $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1] else v79$1);
    v79$2 := (if p12$2 then $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2] else v79$2);
    v80$1 := (if p12$1 then BV32_ADD(v21$1, $wtx.3$1) else v80$1);
    v80$2 := (if p12$2 then BV32_ADD(v21$2, $wtx.3$2) else v80$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v80$1, 4), 2), $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v80$2, 4), 2), $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_fv_gpu"} true;
    v81$1 := (if p12$1 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$1, 4), 2)] else v81$1);
    v81$2 := (if p12$2 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$2, 4), 2)] else v81$2);
    call {:sourceloc} {:sourceloc_num 99} _LOG_WRITE_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v80$1, 4), 2), FADD32(v81$1, FMUL32(v79$1, FMUL32(v63$1, v69$1))), $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v80$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 99} _CHECK_WRITE_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v80$2, 4), 2), FADD32(v81$2, FMUL32(v79$2, FMUL32(v63$2, v69$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_fv_gpu"} true;
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$1, 4), 2)] := (if p12$1 then FADD32(v81$1, FMUL32(v79$1, FMUL32(v63$1, v69$1))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$1, 4), 2)]);
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$2, 4), 2)] := (if p12$2 then FADD32(v81$2, FMUL32(v79$2, FMUL32(v63$2, v69$2))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v80$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$kernel_gpu_opencl.qB_shared(p12$1, $j.0$1, $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$kernel_gpu_opencl.qB_shared(p12$2, $j.0$2, $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel_gpu_opencl.qB_shared"} true;
    v82$1 := (if p12$1 then $$kernel_gpu_opencl.qB_shared[1bv1][$j.0$1] else v82$1);
    v82$2 := (if p12$2 then $$kernel_gpu_opencl.qB_shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$j.0$2] else v82$2);
    v83$1 := (if p12$1 then BV32_ADD(v21$1, $wtx.3$1) else v83$1);
    v83$2 := (if p12$2 then BV32_ADD(v21$2, $wtx.3$2) else v83$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_READ_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v83$1, 4), 3), $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 101} _CHECK_READ_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v83$2, 4), 3), $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_fv_gpu"} true;
    v84$1 := (if p12$1 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$1, 4), 3)] else v84$1);
    v84$2 := (if p12$2 then $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$2, 4), 3)] else v84$2);
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$d_fv_gpu(p12$1, BV32_ADD(BV32_MUL(v83$1, 4), 3), FADD32(v84$1, FMUL32(v82$1, FMUL32(v63$1, v72$1))), $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v83$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$d_fv_gpu(p12$2, BV32_ADD(BV32_MUL(v83$2, 4), 3), FADD32(v84$2, FMUL32(v82$2, FMUL32(v63$2, v72$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_fv_gpu"} true;
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$1, 4), 3)] := (if p12$1 then FADD32(v84$1, FMUL32(v82$1, FMUL32(v63$1, v72$1))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$1, 4), 3)]);
    $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$2, 4), 3)] := (if p12$2 then FADD32(v84$2, FMUL32(v82$2, FMUL32(v63$2, v72$2))) else $$d_fv_gpu[BV32_ADD(BV32_MUL(v83$2, 4), 3)]);
    $j.0$1 := (if p12$1 then BV32_ADD($j.0$1, 1) else $j.0$1);
    $j.0$2 := (if p12$2 then BV32_ADD($j.0$2, 1) else $j.0$2);
    p11$1 := (if p12$1 then true else p11$1);
    p11$2 := (if p12$2 then true else p11$2);
    goto $15.backedge, $15.tail;

  $15.tail:
    assume !p11$1 && !p11$2;
    $wtx.3$1 := (if p10$1 then BV32_ADD($wtx.3$1, 128) else $wtx.3$1);
    $wtx.3$2 := (if p10$2 then BV32_ADD($wtx.3$2, 128) else $wtx.3$2);
    p9$1 := (if p10$1 then true else p9$1);
    p9$2 := (if p10$2 then true else p9$2);
    goto $13.backedge, __partitioned_block_$13.tail_0;

  __partitioned_block_$13.tail_0:
    assume !p9$1 && !p9$2;
    goto __partitioned_block_$13.tail_1;

  __partitioned_block_$13.tail_1:
    call {:sourceloc_num 106} $bugle_barrier_duplicated_2(-1, 0, p4$1, p4$2);
    $k.0$1 := (if p4$1 then BV32_ADD($k.0$1, 1) else $k.0$1);
    $k.0$2 := (if p4$2 then BV32_ADD($k.0$2, 1) else $k.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p3$1 && !p3$2;
    return;

  $5.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $13.backedge:
    assume {:backedge} p9$1 || p9$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $13;

  $15.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $15;

  $10.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $10;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 1000 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$kernel_gpu_opencl.rA_shared, $$kernel_gpu_opencl.rB_shared, $$kernel_gpu_opencl.qB_shared, $$d_fv_gpu, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$kernel_gpu_opencl.rA_shared, $$kernel_gpu_opencl.rB_shared, $$kernel_gpu_opencl.qB_shared, $$d_fv_gpu, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$kernel_gpu_opencl.rA_shared, $$kernel_gpu_opencl.rB_shared, $$kernel_gpu_opencl.qB_shared, $$d_fv_gpu, _TRACKING;



var $$d_par_gpu$0$1: int;

var $$d_par_gpu$0$2: int;

var $$d_dim_gpu$0$1: int;

var $$d_dim_gpu$0$2: int;

var $$d_dim_gpu$1$1: int;

var $$d_dim_gpu$1$2: int;

var $$d_dim_gpu$2$1: int;

var $$d_dim_gpu$2$2: int;

var $$d_dim_gpu$3$1: int;

var $$d_dim_gpu$3$2: int;

var $$d_dim_gpu$4$1: int;

var $$d_dim_gpu$4$2: int;

var $$d_dim_gpu$5$1: int;

var $$d_dim_gpu$5$2: int;

var $$d_dim_gpu$6$1: int;

var $$d_dim_gpu$6$2: int;

var $$d_dim_gpu$7$1: int;

var $$d_dim_gpu$7$2: int;

var $$d_dim_gpu$8$1: int;

var $$d_dim_gpu$8$2: int;

var $$d_dim_gpu$9$1: int;

var $$d_dim_gpu$9$2: int;

var $$d_dim_gpu$10$1: int;

var $$d_dim_gpu$10$2: int;

var $$d_dim_gpu$11$1: int;

var $$d_dim_gpu$11$2: int;

var $$d_dim_gpu$12$1: int;

var $$d_dim_gpu$12$2: int;

var $$d_dim_gpu$13$1: int;

var $$d_dim_gpu$13$2: int;

var $$d_dim_gpu$14$1: int;

var $$d_dim_gpu$14$2: int;

var $$d_dim_gpu$15$1: int;

var $$d_dim_gpu$15$2: int;

var $$d_dim_gpu$16$1: int;

var $$d_dim_gpu$16$2: int;

var $$d_dim_gpu$17$1: int;

var $$d_dim_gpu$17$2: int;

var $$d_dim_gpu$18$1: int;

var $$d_dim_gpu$18$2: int;

var $$d_dim_gpu$19$1: int;

var $$d_dim_gpu$19$2: int;

var $$d_dim_gpu$20$1: int;

var $$d_dim_gpu$20$2: int;

var $$d_dim_gpu$21$1: int;

var $$d_dim_gpu$21$2: int;

var $$d_dim_gpu$22$1: int;

var $$d_dim_gpu$22$2: int;

var $$d_dim_gpu$23$1: int;

var $$d_dim_gpu$23$2: int;

var $$d_dim_gpu$24$1: int;

var $$d_dim_gpu$24$2: int;

var $$d_dim_gpu$25$1: int;

var $$d_dim_gpu$25$2: int;

var $$d_dim_gpu$26$1: int;

var $$d_dim_gpu$26$2: int;

var $$d_dim_gpu$27$1: int;

var $$d_dim_gpu$27$2: int;

var $$d_dim_gpu$28$1: int;

var $$d_dim_gpu$28$2: int;

var $$d_dim_gpu$29$1: int;

var $$d_dim_gpu$29$2: int;

var $$d_dim_gpu$30$1: int;

var $$d_dim_gpu$30$2: int;

var $$d_dim_gpu$31$1: int;

var $$d_dim_gpu$31$2: int;

var $$d_dim_gpu$32$1: int;

var $$d_dim_gpu$32$2: int;

var $$d_dim_gpu$33$1: int;

var $$d_dim_gpu$33$2: int;

var $$d_dim_gpu$34$1: int;

var $$d_dim_gpu$34$2: int;

var $$d_dim_gpu$35$1: int;

var $$d_dim_gpu$35$2: int;

var $$d_dim_gpu$36$1: int;

var $$d_dim_gpu$36$2: int;

var $$d_dim_gpu$37$1: int;

var $$d_dim_gpu$37$2: int;

var $$d_dim_gpu$38$1: int;

var $$d_dim_gpu$38$2: int;

var $$d_dim_gpu$39$1: int;

var $$d_dim_gpu$39$2: int;

var $$d_dim_gpu$40$1: int;

var $$d_dim_gpu$40$2: int;

var $$d_dim_gpu$41$1: int;

var $$d_dim_gpu$41$2: int;

var $$d_dim_gpu$42$1: int;

var $$d_dim_gpu$42$2: int;

var $$d_dim_gpu$43$1: int;

var $$d_dim_gpu$43$2: int;

var $$d_dim_gpu$44$1: int;

var $$d_dim_gpu$44$2: int;

var $$d_dim_gpu$45$1: int;

var $$d_dim_gpu$45$2: int;

var $$d_dim_gpu$46$1: int;

var $$d_dim_gpu$46$2: int;

var $$d_dim_gpu$47$1: int;

var $$d_dim_gpu$47$2: int;

var $$d_dim_gpu$48$1: int;

var $$d_dim_gpu$48$2: int;

var $$d_dim_gpu$49$1: int;

var $$d_dim_gpu$49$2: int;

var $$d_dim_gpu$50$1: int;

var $$d_dim_gpu$50$2: int;

var $$d_dim_gpu$51$1: int;

var $$d_dim_gpu$51$2: int;

var $$d_dim_gpu$52$1: int;

var $$d_dim_gpu$52$2: int;

var $$d_dim_gpu$53$1: int;

var $$d_dim_gpu$53$2: int;

var $$d_dim_gpu$54$1: int;

var $$d_dim_gpu$54$2: int;

var $$d_dim_gpu$55$1: int;

var $$d_dim_gpu$55$2: int;

var $$d$0$1: int;

var $$d$0$2: int;

var $$d$1$1: int;

var $$d$1$2: int;

var $$d$2$1: int;

var $$d$2$2: int;



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









































































































































const _WATCHED_VALUE_$$d_box_gpu: int;

procedure {:inline 1} _LOG_READ_$$d_box_gpu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_box_gpu;



implementation {:inline 1} _LOG_READ_$$d_box_gpu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_box_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_box_gpu == _value then true else _READ_HAS_OCCURRED_$$d_box_gpu);
    return;
}



procedure _CHECK_READ_$$d_box_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_box_gpu);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_box_gpu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_box_gpu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_box_gpu, _WRITE_READ_BENIGN_FLAG_$$d_box_gpu;



implementation {:inline 1} _LOG_WRITE_$$d_box_gpu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_box_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_box_gpu == _value then true else _WRITE_HAS_OCCURRED_$$d_box_gpu);
    _WRITE_READ_BENIGN_FLAG_$$d_box_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_box_gpu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_box_gpu);
    return;
}



procedure _CHECK_WRITE_$$d_box_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_box_gpu != _value);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_box_gpu != _value);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_box_gpu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_box_gpu;



implementation {:inline 1} _LOG_ATOMIC_$$d_box_gpu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_box_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_box_gpu);
    return;
}



procedure _CHECK_ATOMIC_$$d_box_gpu(_P: bool, _offset: int);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_box_gpu"} {:array "$$d_box_gpu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_box_gpu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_box_gpu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_box_gpu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_box_gpu := (if _P && _WRITE_HAS_OCCURRED_$$d_box_gpu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_box_gpu);
    return;
}



const _WATCHED_VALUE_$$d_rv_gpu: int;

procedure {:inline 1} _LOG_READ_$$d_rv_gpu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_rv_gpu;



implementation {:inline 1} _LOG_READ_$$d_rv_gpu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_rv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_rv_gpu == _value then true else _READ_HAS_OCCURRED_$$d_rv_gpu);
    return;
}



procedure _CHECK_READ_$$d_rv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_rv_gpu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_rv_gpu, _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu;



implementation {:inline 1} _LOG_WRITE_$$d_rv_gpu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_rv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_rv_gpu == _value then true else _WRITE_HAS_OCCURRED_$$d_rv_gpu);
    _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_rv_gpu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu);
    return;
}



procedure _CHECK_WRITE_$$d_rv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_rv_gpu != _value);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_rv_gpu != _value);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_rv_gpu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_rv_gpu;



implementation {:inline 1} _LOG_ATOMIC_$$d_rv_gpu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_rv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_rv_gpu);
    return;
}



procedure _CHECK_ATOMIC_$$d_rv_gpu(_P: bool, _offset: int);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_rv_gpu"} {:array "$$d_rv_gpu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_rv_gpu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_rv_gpu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu := (if _P && _WRITE_HAS_OCCURRED_$$d_rv_gpu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_rv_gpu);
    return;
}



const _WATCHED_VALUE_$$d_qv_gpu: int;

procedure {:inline 1} _LOG_READ_$$d_qv_gpu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_qv_gpu;



implementation {:inline 1} _LOG_READ_$$d_qv_gpu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_qv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_qv_gpu == _value then true else _READ_HAS_OCCURRED_$$d_qv_gpu);
    return;
}



procedure _CHECK_READ_$$d_qv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_qv_gpu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_qv_gpu, _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu;



implementation {:inline 1} _LOG_WRITE_$$d_qv_gpu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_qv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_qv_gpu == _value then true else _WRITE_HAS_OCCURRED_$$d_qv_gpu);
    _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_qv_gpu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu);
    return;
}



procedure _CHECK_WRITE_$$d_qv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_qv_gpu != _value);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_qv_gpu != _value);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_qv_gpu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_qv_gpu;



implementation {:inline 1} _LOG_ATOMIC_$$d_qv_gpu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_qv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_qv_gpu);
    return;
}



procedure _CHECK_ATOMIC_$$d_qv_gpu(_P: bool, _offset: int);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_qv_gpu"} {:array "$$d_qv_gpu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_qv_gpu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_qv_gpu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu := (if _P && _WRITE_HAS_OCCURRED_$$d_qv_gpu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_qv_gpu);
    return;
}



const _WATCHED_VALUE_$$d_fv_gpu: int;

procedure {:inline 1} _LOG_READ_$$d_fv_gpu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_fv_gpu;



implementation {:inline 1} _LOG_READ_$$d_fv_gpu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_fv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_fv_gpu == _value then true else _READ_HAS_OCCURRED_$$d_fv_gpu);
    return;
}



procedure _CHECK_READ_$$d_fv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_fv_gpu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_fv_gpu, _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu;



implementation {:inline 1} _LOG_WRITE_$$d_fv_gpu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_fv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_fv_gpu == _value then true else _WRITE_HAS_OCCURRED_$$d_fv_gpu);
    _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_fv_gpu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu);
    return;
}



procedure _CHECK_WRITE_$$d_fv_gpu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_fv_gpu != _value);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_fv_gpu != _value);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_fv_gpu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_fv_gpu;



implementation {:inline 1} _LOG_ATOMIC_$$d_fv_gpu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_fv_gpu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_fv_gpu);
    return;
}



procedure _CHECK_ATOMIC_$$d_fv_gpu(_P: bool, _offset: int);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_fv_gpu"} {:array "$$d_fv_gpu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_fv_gpu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu := (if _P && _WRITE_HAS_OCCURRED_$$d_fv_gpu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_fv_gpu);
    return;
}



const _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared: int;

procedure {:inline 1} _LOG_READ_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;



implementation {:inline 1} _LOG_READ_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared == _value then true else _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared);
    return;
}



procedure _CHECK_READ_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared;



implementation {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared == _value then true else _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared);
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared);
    return;
}



procedure _CHECK_WRITE_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rA_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;



implementation {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared);
    return;
}



procedure _CHECK_ATOMIC_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rA_shared"} {:array "$$kernel_gpu_opencl.rA_shared"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared := (if _P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rA_shared);
    return;
}



const _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared: int;

procedure {:inline 1} _LOG_READ_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;



implementation {:inline 1} _LOG_READ_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared == _value then true else _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared);
    return;
}



procedure _CHECK_READ_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared;



implementation {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared == _value then true else _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared);
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared);
    return;
}



procedure _CHECK_WRITE_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.rB_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;



implementation {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared);
    return;
}



procedure _CHECK_ATOMIC_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "rB_shared"} {:array "$$kernel_gpu_opencl.rB_shared"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared := (if _P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.rB_shared);
    return;
}



const _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared: int;

procedure {:inline 1} _LOG_READ_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;



implementation {:inline 1} _LOG_READ_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared == _value then true else _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared);
    return;
}



procedure _CHECK_READ_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared, _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared;



implementation {:inline 1} _LOG_WRITE_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared == _value then true else _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared);
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared);
    return;
}



procedure _CHECK_WRITE_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel_gpu_opencl.qB_shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;



implementation {:inline 1} _LOG_ATOMIC_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared);
    return;
}



procedure _CHECK_ATOMIC_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "qB_shared"} {:array "$$kernel_gpu_opencl.qB_shared"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared := (if _P && _WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel_gpu_opencl.qB_shared);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_fv_gpu;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$d_fv_gpu;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel_gpu_opencl.rA_shared;
    goto anon5;

  anon5:
    havoc $$kernel_gpu_opencl.rB_shared;
    goto anon6;

  anon6:
    havoc $$kernel_gpu_opencl.qB_shared;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_fv_gpu;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$d_fv_gpu;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel_gpu_opencl.rA_shared;
    goto anon5;

  anon5:
    havoc $$kernel_gpu_opencl.rB_shared;
    goto anon6;

  anon6:
    havoc $$kernel_gpu_opencl.qB_shared;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rA_shared;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.rB_shared;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel_gpu_opencl.qB_shared;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_fv_gpu;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_fv_gpu;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$d_fv_gpu;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel_gpu_opencl.rA_shared;
    goto anon5;

  anon5:
    havoc $$kernel_gpu_opencl.rB_shared;
    goto anon6;

  anon6:
    havoc $$kernel_gpu_opencl.qB_shared;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}




















































































































































































































