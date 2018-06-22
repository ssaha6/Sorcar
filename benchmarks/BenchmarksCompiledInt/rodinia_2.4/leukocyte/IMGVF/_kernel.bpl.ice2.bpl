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
 b0177: bool,
 b0178: bool,
 b0179: bool,
 b0180: bool,
 b0181: bool,
 b0182: bool,
 b0183: bool,
 b0184: bool,
 b0185: bool,
 b0186: bool,
 b0187: bool,
 b0188: bool,
 b0189: bool,
 b0190: bool,
 b0191: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "IMGVF_array"} {:global} $$IMGVF_array: [int]int;

axiom {:array_info "$$IMGVF_array"} {:global} {:elem_width 32} {:source_name "IMGVF_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_array: bool;

axiom {:array_info "$$I_array"} {:global} {:elem_width 32} {:source_name "I_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$I_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$I_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$I_array: bool;

var {:source_name "I_offsets"} {:constant} $$I_offsets$1: [int]int;

var {:source_name "I_offsets"} {:constant} $$I_offsets$2: [int]int;

axiom {:array_info "$$I_offsets"} {:constant} {:elem_width 32} {:source_name "I_offsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "m_array"} {:constant} $$m_array$1: [int]int;

var {:source_name "m_array"} {:constant} $$m_array$2: [int]int;

axiom {:array_info "$$m_array"} {:constant} {:elem_width 32} {:source_name "m_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "n_array"} {:constant} $$n_array$1: [int]int;

var {:source_name "n_array"} {:constant} $$n_array$2: [int]int;

axiom {:array_info "$$n_array"} {:constant} {:elem_width 32} {:source_name "n_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "IMGVF"} {:group_shared} $$IMGVF_kernel.IMGVF: [bv1][int]int;

axiom {:array_info "$$IMGVF_kernel.IMGVF"} {:group_shared} {:elem_width 32} {:source_name "IMGVF"} {:source_elem_width 32} {:source_dimensions "3321"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:source_name "cell_converged"} {:group_shared} $$IMGVF_kernel.cell_converged: [bv1][int]int;

axiom {:array_info "$$IMGVF_kernel.cell_converged"} {:group_shared} {:elem_width 32} {:source_name "cell_converged"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:source_name "buffer"} {:group_shared} $$IMGVF_kernel.buffer: [bv1][int]int;

axiom {:array_info "$$IMGVF_kernel.buffer"} {:group_shared} {:elem_width 32} {:source_name "buffer"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

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

function FABS32(int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_TO_SI32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function __bugle_atan_float(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "IMGVF_kernel"} {:kernel} $IMGVF_kernel($vx: int, $vy: int, $e: int, $max_iterations: int, $cutoff: int);
  requires !_READ_HAS_OCCURRED_$$IMGVF_array && !_WRITE_HAS_OCCURRED_$$IMGVF_array && !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
  requires !_READ_HAS_OCCURRED_$$I_array && !_WRITE_HAS_OCCURRED_$$I_array && !_ATOMIC_HAS_OCCURRED_$$I_array;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
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
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, _READ_HAS_OCCURRED_$$IMGVF_array, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF, $$IMGVF_array, _TRACKING, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged, _TRACKING, _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:source_name "IMGVF_kernel"} {:kernel} $IMGVF_kernel($vx: int, $vy: int, $e: int, $max_iterations: int, $cutoff: int)
{
  var $thread_block.0$1: int;
  var $thread_block.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $i.1$1: int;
  var $i.1$2: int;
  var $iterations.0$1: int;
  var $iterations.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $thread_block.1$1: int;
  var $thread_block.1$2: int;
  var $i.2$1: int;
  var $i.2$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var $total_diff.0$1: int;
  var $total_diff.0$2: int;
  var $j.1$1: int;
  var $j.1$2: int;
  var $new_val.0$1: int;
  var $new_val.0$2: int;
  var $old_val.0$1: int;
  var $old_val.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $4$1: int;
  var $4$2: int;
  var $th.0$1: int;
  var $th.0$2: int;
  var $thread_block.2$1: int;
  var $thread_block.2$2: int;
  var v68$1: int;
  var v68$2: int;
  var v57$1: bool;
  var v57$2: bool;
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
  var v10$1: int;
  var v10$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
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
  var v47$1: bool;
  var v47$2: bool;
  var v48$1: bool;
  var v48$2: bool;
  var v49$1: int;
  var v49$2: int;
  var v50$1: bool;
  var v50$2: bool;
  var v51$1: bool;
  var v51$2: bool;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: bool;
  var v56$2: bool;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: bool;
  var v60$2: bool;
  var v61$1: int;
  var v61$2: int;
  var v62$1: bool;
  var v62$2: bool;
  var v63$1: bool;
  var v63$2: bool;
  var v64$1: int;
  var v64$2: int;
  var v66$1: int;
  var v66$2: int;
  var v65$1: int;
  var v65$2: int;
  var v67$1: bool;
  var v67$2: bool;
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
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var p42$1: bool;
  var p42$2: bool;
  var p43$1: bool;
  var p43$2: bool;
  var p44$1: bool;
  var p44$2: bool;
  var p45$1: bool;
  var p45$2: bool;
  var p46$1: bool;
  var p46$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0: bool;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0: bool;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0: bool;


  $0:
    v0$1 := group_id_x$1;
    v0$2 := group_id_x$2;
    v1$1 := $$I_offsets$1[v0$1];
    v1$2 := $$I_offsets$2[v0$2];
    v2$1 := $$m_array$1[v0$1];
    v2$2 := $$m_array$2[v0$2];
    v3$1 := $$n_array$1[v0$1];
    v3$2 := $$n_array$2[v0$2];
    v4$1 := BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256), 1), 256);
    v4$2 := BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256), 1), 256);
    v5$1 := local_id_x$1;
    v5$2 := local_id_x$2;
    havoc v6$1, v6$2;
    $thread_block.0$1, $i.0$1 := 0, v6$1;
    $thread_block.0$2, $i.0$2 := 0, v6$2;
    p0$1 := false;
    p0$2 := false;
    p7$1 := false;
    p7$2 := false;
    p43$1 := false;
    p43$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $thread_block.0$1 mod 1 == 0 mod 1 )  && ( p0$2 ==> $thread_block.0$2 mod 1 == 0 mod 1 ) ,  ( p0$1 ==> BV32_SLE($thread_block.0$1, 0) )  && ( p0$2 ==> BV32_SLE($thread_block.0$2, 0) ) ,  ( p0$1 ==> BV32_SGE($thread_block.0$1, 0) )  && ( p0$2 ==> BV32_SGE($thread_block.0$2, 0) ) ,  ( p0$1 ==> BV32_ULE($thread_block.0$1, 0) )  && ( p0$2 ==> BV32_ULE($thread_block.0$2, 0) ) ,  ( p0$1 ==> BV32_UGE($thread_block.0$1, 0) )  && ( p0$2 ==> BV32_UGE($thread_block.0$2, 0) ) ,  (  BV32_SLT($thread_block.0$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256), 1), 256)) ==> p0$1 )  && (  BV32_SLT($thread_block.0$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256), 1), 256)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 4} p0$1 ==> true;
    v7$1 := (if p0$1 then BV32_SLT($thread_block.0$1, v4$1) else v7$1);
    v7$2 := (if p0$2 then BV32_SLT($thread_block.0$2, v4$2) else v7$2);
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
    p1$1 := (if p0$1 && v7$1 then v7$1 else p1$1);
    p1$2 := (if p0$2 && v7$2 then v7$2 else p1$2);
    p0$1 := (if p0$1 && !v7$1 then v7$1 else p0$1);
    p0$2 := (if p0$2 && !v7$2 then v7$2 else p0$2);
    v8$1 := (if p1$1 then BV32_MUL($thread_block.0$1, 256) else v8$1);
    v8$2 := (if p1$2 then BV32_MUL($thread_block.0$2, 256) else v8$2);
    v9$1 := (if p1$1 then BV32_SDIV(BV32_ADD(v5$1, v8$1), v3$1) else v9$1);
    v9$2 := (if p1$2 then BV32_SDIV(BV32_ADD(v5$2, v8$2), v3$2) else v9$2);
    v10$1 := (if p1$1 then BV32_SREM(BV32_ADD(v5$1, v8$1), v3$1) else v10$1);
    v10$2 := (if p1$2 then BV32_SREM(BV32_ADD(v5$2, v8$2), v3$2) else v10$2);
    v11$1 := (if p1$1 then BV32_SLT(v9$1, v2$1) else v11$1);
    v11$2 := (if p1$2 then BV32_SLT(v9$2, v2$2) else v11$2);
    p3$1 := (if p1$1 && v11$1 then v11$1 else p3$1);
    p3$2 := (if p1$2 && v11$2 then v11$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$IMGVF_array(p3$1, BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)), $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1))]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$IMGVF_array(p3$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)), $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_array"} true;
    v12$1 := (if p3$1 then $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1))] else v12$1);
    v12$2 := (if p3$2 then $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2))] else v12$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p3$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1), v12$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p3$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p3$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)] := (if p3$1 then v12$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)] := (if p3$2 then v12$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)]);
    $thread_block.0$1, $i.0$1 := (if p1$1 then BV32_ADD($thread_block.0$1, 1) else $thread_block.0$1), (if p1$1 then v9$1 else $i.0$1);
    $thread_block.0$2, $i.0$2 := (if p1$2 then BV32_ADD($thread_block.0$2, 1) else $thread_block.0$2), (if p1$2 then v9$2 else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(-1, 0);
    v13$1 := v5$1 == 0;
    v13$2 := v5$2 == 0;
    p5$1 := (if v13$1 then v13$1 else p5$1);
    p5$2 := (if v13$2 then v13$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$IMGVF_kernel.cell_converged(p5$1, 0, 0, $$IMGVF_kernel.cell_converged[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(p5$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$IMGVF_kernel.cell_converged(p5$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.cell_converged"} true;
    $$IMGVF_kernel.cell_converged[1bv1][0] := (if p5$1 then 0 else $$IMGVF_kernel.cell_converged[1bv1][0]);
    $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p5$2 then 0 else $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$1.tail_2;

  __partitioned_block_$1.tail_2:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_1(-1, 0);
    v14$1 := BV32_SREM(256, v3$1);
    v14$2 := BV32_SREM(256, v3$2);
    v15 := FDIV32(1065353216, $e);
    $i.1$1, $iterations.0$1 := $i.0$1, 0;
    $i.1$2, $iterations.0$2 := $i.0$2, 0;
    p7$1 := true;
    p7$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p7$1 ==> $iterations.0$1 mod 1 == 0 mod 1 )  && ( p7$2 ==> $iterations.0$2 mod 1 == 0 mod 1 ) ,  (  $0$1 == 1 ==> p7$1 )  && (  $0$2 == 1 ==> p7$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $th.0$1 == 0 || BV32_AND($th.0$1, BV32_SUB($th.0$1, 1)) == 0 ) ,  (  $th.0$1 != 0 ) ,  (  $th.0$2 == 0 || BV32_AND($th.0$2, BV32_SUB($th.0$2, 1)) == 0 ) ,  (  $th.0$2 != 0 ) ,  (  p7$1 == p7$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p7$1 == p7$2 ) ,  (  p7$1 && p7$2 ==> $i.1$1 == $i.1$2 ) ,  (  p7$1 && p7$2 ==> $iterations.0$1 == $iterations.0$2 ) ,  (  p7$1 && p7$2 ==> $0$1 == $0$2 ) ,  (  p7$1 && p7$2 ==> $thread_block.1$1 == $thread_block.1$2 ) ,  (  p7$1 && p7$2 ==> $i.2$1 == $i.2$2 ) ,  (  p7$1 && p7$2 ==> $j.0$1 == $j.0$2 ) ,  (  p7$1 && p7$2 ==> $total_diff.0$1 == $total_diff.0$2 ) ,  (  p7$1 && p7$2 ==> $j.1$1 == $j.1$2 ) ,  (  p7$1 && p7$2 ==> $new_val.0$1 == $new_val.0$2 ) ,  (  p7$1 && p7$2 ==> $old_val.0$1 == $old_val.0$2 ) ,  (  p7$1 && p7$2 ==> $1$1 == $1$2 ) ,  (  p7$1 && p7$2 ==> $2$1 == $2$2 ) ,  (  p7$1 && p7$2 ==> $3$1 == $3$2 ) ,  (  p7$1 && p7$2 ==> $4$1 == $4$2 ) ,  (  p7$1 && p7$2 ==> $th.0$1 == $th.0$2 ) ,  (  p7$1 && p7$2 ==> v57$1 == v57$2 ) ,  (  p7$1 && p7$2 ==> v16$1 == v16$2 ) ,  (  p7$1 && p7$2 ==> v17$1 == v17$2 ) ,  (  p7$1 && p7$2 ==> v18$1 == v18$2 ) ,  (  p7$1 && p7$2 ==> v19$1 == v19$2 ) ,  (  p7$1 && p7$2 ==> v20$1 == v20$2 ) ,  (  p7$1 && p7$2 ==> v21$1 == v21$2 ) ,  (  p7$1 && p7$2 ==> v22$1 == v22$2 ) ,  (  p7$1 && p7$2 ==> v23$1 == v23$2 ) ,  (  p7$1 && p7$2 ==> v24$1 == v24$2 ) ,  (  p7$1 && p7$2 ==> v25$1 == v25$2 ) ,  (  p7$1 && p7$2 ==> v26$1 == v26$2 ) ,  (  p7$1 && p7$2 ==> v27$1 == v27$2 ) ,  (  p7$1 && p7$2 ==> v28$1 == v28$2 ) ,  (  p7$1 && p7$2 ==> v29$1 == v29$2 ) ,  (  p7$1 && p7$2 ==> v30$1 == v30$2 ) ,  (  p7$1 && p7$2 ==> v31$1 == v31$2 ) ,  (  p7$1 && p7$2 ==> v32$1 == v32$2 ) ,  (  p7$1 && p7$2 ==> v33$1 == v33$2 ) ,  (  p7$1 && p7$2 ==> v34$1 == v34$2 ) ,  (  p7$1 && p7$2 ==> v35$1 == v35$2 ) ,  (  p7$1 && p7$2 ==> v36$1 == v36$2 ) ,  (  p7$1 && p7$2 ==> v37$1 == v37$2 ) ,  (  p7$1 && p7$2 ==> v38$1 == v38$2 ) ,  (  p7$1 && p7$2 ==> v39$1 == v39$2 ) ,  (  p7$1 && p7$2 ==> v40$1 == v40$2 ) ,  (  p7$1 && p7$2 ==> v41$1 == v41$2 ) ,  (  p7$1 && p7$2 ==> v42$1 == v42$2 ) ,  (  p7$1 && p7$2 ==> v43$1 == v43$2 ) ,  (  p7$1 && p7$2 ==> v44$1 == v44$2 ) ,  (  p7$1 && p7$2 ==> v45$1 == v45$2 ) ,  (  p7$1 && p7$2 ==> v46$1 == v46$2 ) ,  (  p7$1 && p7$2 ==> v47$1 == v47$2 ) ,  (  p7$1 && p7$2 ==> v48$1 == v48$2 ) ,  (  p7$1 && p7$2 ==> v49$1 == v49$2 ) ,  (  p7$1 && p7$2 ==> v50$1 == v50$2 ) ,  (  p7$1 && p7$2 ==> v51$1 == v51$2 ) ,  (  p7$1 && p7$2 ==> v52$1 == v52$2 ) ,  (  p7$1 && p7$2 ==> v53$1 == v53$2 ) ,  (  p7$1 && p7$2 ==> v54$1 == v54$2 ) ,  (  p7$1 && p7$2 ==> v55$1 == v55$2 ) ,  (  p7$1 && p7$2 ==> v56$1 == v56$2 ) ,  (  p7$1 && p7$2 ==> v58$1 == v58$2 ) ,  (  p7$1 && p7$2 ==> v59$1 == v59$2 ) ,  (  p7$1 && p7$2 ==> v60$1 == v60$2 ) ,  (  p7$1 && p7$2 ==> v61$1 == v61$2 ) ,  (  p7$1 && p7$2 ==> v62$1 == v62$2 ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> _WATCHED_OFFSET == 0 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> _WATCHED_OFFSET == 0 ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_SUB(local_id_x$1, 256) || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_SUB(local_id_x$1, 256) || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 17} p7$1 ==> true;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$IMGVF_kernel.cell_converged(p7$1, 0, $$IMGVF_kernel.cell_converged[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$IMGVF_kernel.cell_converged(p7$2, 0, $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.cell_converged"} true;
    v16$1 := (if p7$1 then $$IMGVF_kernel.cell_converged[1bv1][0] else v16$1);
    v16$2 := (if p7$2 then $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v16$2);
    v17$1 := (if p7$1 then v16$1 != 0 else v17$1);
    v17$2 := (if p7$2 then v16$2 != 0 else v17$2);
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p35$1 := false;
    p35$2 := false;
    p9$1 := (if p7$1 && v17$1 then v17$1 else p9$1);
    p9$2 := (if p7$2 && v17$2 then v17$2 else p9$2);
    p8$1 := (if p7$1 && !v17$1 then !v17$1 else p8$1);
    p8$2 := (if p7$2 && !v17$2 then !v17$2 else p8$2);
    $0$1 := (if p8$1 then (if BV32_SLT($iterations.0$1, $max_iterations) then 1 else 0) else $0$1);
    $0$2 := (if p8$2 then (if BV32_SLT($iterations.0$2, $max_iterations) then 1 else 0) else $0$2);
    $0$1 := (if p9$1 then 0 else $0$1);
    $0$2 := (if p9$2 then 0 else $0$2);
    v18$1 := (if p7$1 then $0$1 == 1 else v18$1);
    v18$2 := (if p7$2 then $0$2 == 1 else v18$2);
    p10$1 := (if p7$1 && v18$1 then v18$1 else p10$1);
    p10$2 := (if p7$2 && v18$2 then v18$2 else p10$2);
    p7$1 := (if p7$1 && !v18$1 then v18$1 else p7$1);
    p7$2 := (if p7$2 && !v18$2 then v18$2 else p7$2);
    $thread_block.1$1, $i.2$1, $j.0$1, $total_diff.0$1 := (if p10$1 then 0 else $thread_block.1$1), (if p10$1 then $i.1$1 else $i.2$1), (if p10$1 then BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1) else $j.0$1), (if p10$1 then 0 else $total_diff.0$1);
    $thread_block.1$2, $i.2$2, $j.0$2, $total_diff.0$2 := (if p10$2 then 0 else $thread_block.1$2), (if p10$2 then $i.1$2 else $i.2$2), (if p10$2 then BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2) else $j.0$2), (if p10$2 then 0 else $total_diff.0$2);
    p11$1 := (if p10$1 then true else p11$1);
    p11$2 := (if p10$2 then true else p11$2);
    _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto __partitioned_block_$13_0;

  __partitioned_block_$13_0:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p11$1 == p11$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p11$1 == p11$2 ) ,  (  p11$1 && p11$2 ==> $thread_block.1$1 == $thread_block.1$2 ) ,  (  p11$1 && p11$2 ==> $i.2$1 == $i.2$2 ) ,  (  p11$1 && p11$2 ==> $j.0$1 == $j.0$2 ) ,  (  p11$1 && p11$2 ==> $total_diff.0$1 == $total_diff.0$2 ) ,  (  p11$1 && p11$2 ==> $j.1$1 == $j.1$2 ) ,  (  p11$1 && p11$2 ==> $new_val.0$1 == $new_val.0$2 ) ,  (  p11$1 && p11$2 ==> $old_val.0$1 == $old_val.0$2 ) ,  (  p11$1 && p11$2 ==> $1$1 == $1$2 ) ,  (  p11$1 && p11$2 ==> $2$1 == $2$2 ) ,  (  p11$1 && p11$2 ==> $3$1 == $3$2 ) ,  (  p11$1 && p11$2 ==> $4$1 == $4$2 ) ,  (  p11$1 && p11$2 ==> v19$1 == v19$2 ) ,  (  p11$1 && p11$2 ==> v20$1 == v20$2 ) ,  (  p11$1 && p11$2 ==> v21$1 == v21$2 ) ,  (  p11$1 && p11$2 ==> v22$1 == v22$2 ) ,  (  p11$1 && p11$2 ==> v23$1 == v23$2 ) ,  (  p11$1 && p11$2 ==> v24$1 == v24$2 ) ,  (  p11$1 && p11$2 ==> v25$1 == v25$2 ) ,  (  p11$1 && p11$2 ==> v26$1 == v26$2 ) ,  (  p11$1 && p11$2 ==> v27$1 == v27$2 ) ,  (  p11$1 && p11$2 ==> v28$1 == v28$2 ) ,  (  p11$1 && p11$2 ==> v29$1 == v29$2 ) ,  (  p11$1 && p11$2 ==> v30$1 == v30$2 ) ,  (  p11$1 && p11$2 ==> v31$1 == v31$2 ) ,  (  p11$1 && p11$2 ==> v32$1 == v32$2 ) ,  (  p11$1 && p11$2 ==> v33$1 == v33$2 ) ,  (  p11$1 && p11$2 ==> v34$1 == v34$2 ) ,  (  p11$1 && p11$2 ==> v35$1 == v35$2 ) ,  (  p11$1 && p11$2 ==> v36$1 == v36$2 ) ,  (  p11$1 && p11$2 ==> v37$1 == v37$2 ) ,  (  p11$1 && p11$2 ==> v38$1 == v38$2 ) ,  (  p11$1 && p11$2 ==> v39$1 == v39$2 ) ,  (  p11$1 && p11$2 ==> v40$1 == v40$2 ) ,  (  p11$1 && p11$2 ==> v41$1 == v41$2 ) ,  (  p11$1 && p11$2 ==> v42$1 == v42$2 ) ,  (  p11$1 && p11$2 ==> v43$1 == v43$2 ) ,  (  p11$1 && p11$2 ==> v44$1 == v44$2 ) ,  (  p11$1 && p11$2 ==> v45$1 == v45$2 ) ,  (  p11$1 && p11$2 ==> v46$1 == v46$2 ) ,  (  p11$1 && p11$2 ==> v47$1 == v47$2 ) ,  (  p11$1 && p11$2 ==> v48$1 == v48$2 ) ,  (  p11$1 && p11$2 ==> v49$1 == v49$2 ) ,  (  p11$1 && p11$2 ==> v50$1 == v50$2 ) ,  (  p11$1 && p11$2 ==> v51$1 == v51$2 ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$13_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$13_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p10"} true;
    assert p11$1 ==> p7$1;
    assert p11$2 ==> p7$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p11$1 ==> $thread_block.1$1 mod 1 == 0 mod 1 )  && ( p11$2 ==> $thread_block.1$2 mod 1 == 0 mod 1 ) ,  ( p11$1 ==> BV32_SLE($thread_block.1$1, 0) )  && ( p11$2 ==> BV32_SLE($thread_block.1$2, 0) ) ,  ( p11$1 ==> BV32_SGE($thread_block.1$1, 0) )  && ( p11$2 ==> BV32_SGE($thread_block.1$2, 0) ) ,  ( p11$1 ==> BV32_ULE($thread_block.1$1, 0) )  && ( p11$2 ==> BV32_ULE($thread_block.1$2, 0) ) ,  ( p11$1 ==> BV32_UGE($thread_block.1$1, 0) )  && ( p11$2 ==> BV32_UGE($thread_block.1$2, 0) ) ,  ( p11$1 ==> BV32_SLE($i.2$1, $i.1$1) )  && ( p11$2 ==> BV32_SLE($i.2$2, $i.1$2) ) ,  ( p11$1 ==> BV32_SGE($i.2$1, $i.1$1) )  && ( p11$2 ==> BV32_SGE($i.2$2, $i.1$2) ) ,  ( p11$1 ==> BV32_ULE($i.2$1, $i.1$1) )  && ( p11$2 ==> BV32_ULE($i.2$2, $i.1$2) ) ,  ( p11$1 ==> BV32_UGE($i.2$1, $i.1$1) )  && ( p11$2 ==> BV32_UGE($i.2$2, $i.1$2) ) ,  ( p11$1 ==> BV32_SLE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1)) )  && ( p11$2 ==> BV32_SLE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2)) ) ,  ( p11$1 ==> BV32_SGE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1)) )  && ( p11$2 ==> BV32_SGE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2)) ) ,  ( p11$1 ==> BV32_ULE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1)) )  && ( p11$2 ==> BV32_ULE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2)) ) ,  ( p11$1 ==> BV32_UGE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1)) )  && ( p11$2 ==> BV32_UGE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2)) ) ,  ( p11$1 ==> p11$1 ==> $0$1 == 1 )  && ( p11$2 ==> p11$2 ==> $0$2 == 1 ) ,  (  $0$1 == 1 && BV32_SLT($thread_block.1$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256), 1), 256)) ==> p11$1 )  && (  $0$2 == 1 && BV32_SLT($thread_block.1$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256), 1), 256)) ==> p11$2 ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1 ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> $0$1 == 1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> $0$1 == 1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 22} p11$1 ==> true;
    v19$1 := (if p11$1 then BV32_SLT($thread_block.1$1, v4$1) else v19$1);
    v19$2 := (if p11$2 then BV32_SLT($thread_block.1$2, v4$2) else v19$2);
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
    p12$1 := (if p11$1 && v19$1 then v19$1 else p12$1);
    p12$2 := (if p11$2 && v19$2 then v19$2 else p12$2);
    p11$1 := (if p11$1 && !v19$1 then v19$1 else p11$1);
    p11$2 := (if p11$2 && !v19$2 then v19$2 else p11$2);
    v20$1 := (if p12$1 then FP32_TO_SI32(FMUL32(SI32_TO_FP32(BV32_ADD(v5$1, BV32_MUL($thread_block.1$1, 256))), FDIV32(1065353216, SI32_TO_FP32(v3$1)))) else v20$1);
    v20$2 := (if p12$2 then FP32_TO_SI32(FMUL32(SI32_TO_FP32(BV32_ADD(v5$2, BV32_MUL($thread_block.1$2, 256))), FDIV32(1065353216, SI32_TO_FP32(v3$2)))) else v20$2);
    v21$1 := (if p12$1 then BV32_ADD($j.0$1, v14$1) else v21$1);
    v21$2 := (if p12$2 then BV32_ADD($j.0$2, v14$2) else v21$2);
    v22$1 := (if p12$1 then BV32_SGE(v21$1, v3$1) else v22$1);
    v22$2 := (if p12$2 then BV32_SGE(v21$2, v3$2) else v22$2);
    p14$1 := (if p12$1 && v22$1 then v22$1 else p14$1);
    p14$2 := (if p12$2 && v22$2 then v22$2 else p14$2);
    p13$1 := (if p12$1 && !v22$1 then !v22$1 else p13$1);
    p13$2 := (if p12$2 && !v22$2 then !v22$2 else p13$2);
    $j.1$1 := (if p13$1 then v21$1 else $j.1$1);
    $j.1$2 := (if p13$2 then v21$2 else $j.1$2);
    $j.1$1 := (if p14$1 then BV32_SUB(v21$1, v3$1) else $j.1$1);
    $j.1$2 := (if p14$2 then BV32_SUB(v21$2, v3$2) else $j.1$2);
    v23$1 := (if p12$1 then BV32_SLT(v20$1, v2$1) else v23$1);
    v23$2 := (if p12$2 then BV32_SLT(v20$2, v2$2) else v23$2);
    p16$1 := (if p12$1 && v23$1 then v23$1 else p16$1);
    p16$2 := (if p12$2 && v23$2 then v23$2 else p16$2);
    p15$1 := (if p12$1 && !v23$1 then !v23$1 else p15$1);
    p15$2 := (if p12$2 && !v23$2 then !v23$2 else p15$2);
    $new_val.0$1, $old_val.0$1 := (if p15$1 then 0 else $new_val.0$1), (if p15$1 then 0 else $old_val.0$1);
    $new_val.0$2, $old_val.0$2 := (if p15$2 then 0 else $new_val.0$2), (if p15$2 then 0 else $old_val.0$2);
    v24$1 := (if p16$1 then v20$1 == 0 else v24$1);
    v24$2 := (if p16$2 then v20$2 == 0 else v24$2);
    p18$1 := (if p16$1 && v24$1 then v24$1 else p18$1);
    p18$2 := (if p16$2 && v24$2 then v24$2 else p18$2);
    p17$1 := (if p16$1 && !v24$1 then !v24$1 else p17$1);
    p17$2 := (if p16$2 && !v24$2 then !v24$2 else p17$2);
    $1$1 := (if p17$1 then BV32_SUB(v20$1, 1) else $1$1);
    $1$2 := (if p17$2 then BV32_SUB(v20$2, 1) else $1$2);
    $1$1 := (if p18$1 then 0 else $1$1);
    $1$2 := (if p18$2 then 0 else $1$2);
    v25$1 := (if p16$1 then v20$1 == BV32_SUB(v2$1, 1) else v25$1);
    v25$2 := (if p16$2 then v20$2 == BV32_SUB(v2$2, 1) else v25$2);
    p20$1 := (if p16$1 && v25$1 then v25$1 else p20$1);
    p20$2 := (if p16$2 && v25$2 then v25$2 else p20$2);
    p19$1 := (if p16$1 && !v25$1 then !v25$1 else p19$1);
    p19$2 := (if p16$2 && !v25$2 then !v25$2 else p19$2);
    $2$1 := (if p19$1 then BV32_ADD(v20$1, 1) else $2$1);
    $2$2 := (if p19$2 then BV32_ADD(v20$2, 1) else $2$2);
    $2$1 := (if p20$1 then BV32_SUB(v2$1, 1) else $2$1);
    $2$2 := (if p20$2 then BV32_SUB(v2$2, 1) else $2$2);
    v26$1 := (if p16$1 then $j.1$1 == 0 else v26$1);
    v26$2 := (if p16$2 then $j.1$2 == 0 else v26$2);
    p22$1 := (if p16$1 && v26$1 then v26$1 else p22$1);
    p22$2 := (if p16$2 && v26$2 then v26$2 else p22$2);
    p21$1 := (if p16$1 && !v26$1 then !v26$1 else p21$1);
    p21$2 := (if p16$2 && !v26$2 then !v26$2 else p21$2);
    $3$1 := (if p21$1 then BV32_SUB($j.1$1, 1) else $3$1);
    $3$2 := (if p21$2 then BV32_SUB($j.1$2, 1) else $3$2);
    $3$1 := (if p22$1 then 0 else $3$1);
    $3$2 := (if p22$2 then 0 else $3$2);
    v27$1 := (if p16$1 then $j.1$1 == BV32_SUB(v3$1, 1) else v27$1);
    v27$2 := (if p16$2 then $j.1$2 == BV32_SUB(v3$2, 1) else v27$2);
    p24$1 := (if p16$1 && v27$1 then v27$1 else p24$1);
    p24$2 := (if p16$2 && v27$2 then v27$2 else p24$2);
    p23$1 := (if p16$1 && !v27$1 then !v27$1 else p23$1);
    p23$2 := (if p16$2 && !v27$2 then !v27$2 else p23$2);
    $4$1 := (if p23$1 then BV32_ADD($j.1$1, 1) else $4$1);
    $4$2 := (if p23$2 then BV32_ADD($j.1$2, 1) else $4$2);
    $4$1 := (if p24$1 then BV32_SUB(v3$1, 1) else $4$1);
    $4$2 := (if p24$2 then BV32_SUB(v3$2, 1) else $4$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v28$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)] else v28$1);
    v28$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)] else v28$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($1$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($1$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v29$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $j.1$1)] else v29$1);
    v29$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $j.1$2)] else v29$2);
    v30$1 := (if p16$1 then FSUB32(v29$1, v28$1) else v30$1);
    v30$2 := (if p16$2 then FSUB32(v29$2, v28$2) else v30$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($2$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($2$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v31$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $j.1$1)] else v31$1);
    v31$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $j.1$2)] else v31$2);
    v32$1 := (if p16$1 then FSUB32(v31$1, v28$1) else v32$1);
    v32$2 := (if p16$2 then FSUB32(v31$2, v28$2) else v32$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $3$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $3$1)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $3$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $3$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v33$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $3$1)] else v33$1);
    v33$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $3$2)] else v33$2);
    v34$1 := (if p16$1 then FSUB32(v33$1, v28$1) else v34$1);
    v34$2 := (if p16$2 then FSUB32(v33$2, v28$2) else v34$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $4$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $4$1)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $4$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $4$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v35$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $4$1)] else v35$1);
    v35$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $4$2)] else v35$2);
    v36$1 := (if p16$1 then FSUB32(v35$1, v28$1) else v36$1);
    v36$2 := (if p16$2 then FSUB32(v35$2, v28$2) else v36$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($1$1, v3$1), $4$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $4$1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($1$2, v3$2), $4$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $4$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v37$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $4$1)] else v37$1);
    v37$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $4$2)] else v37$2);
    v38$1 := (if p16$1 then FSUB32(v37$1, v28$1) else v38$1);
    v38$2 := (if p16$2 then FSUB32(v37$2, v28$2) else v38$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($2$1, v3$1), $4$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $4$1)]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($2$2, v3$2), $4$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $4$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v39$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $4$1)] else v39$1);
    v39$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $4$2)] else v39$2);
    v40$1 := (if p16$1 then FSUB32(v39$1, v28$1) else v40$1);
    v40$2 := (if p16$2 then FSUB32(v39$2, v28$2) else v40$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($1$1, v3$1), $3$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $3$1)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($1$2, v3$2), $3$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $3$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v41$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($1$1, v3$1), $3$1)] else v41$1);
    v41$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($1$2, v3$2), $3$2)] else v41$2);
    v42$1 := (if p16$1 then FSUB32(v41$1, v28$1) else v42$1);
    v42$2 := (if p16$2 then FSUB32(v41$2, v28$2) else v42$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($2$1, v3$1), $3$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $3$1)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($2$2, v3$2), $3$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $3$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v43$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($2$1, v3$1), $3$1)] else v43$1);
    v43$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($2$2, v3$2), $3$2)] else v43$2);
    v44$1 := (if p16$1 then FSUB32(v43$1, v28$1) else v44$1);
    v44$2 := (if p16$2 then FSUB32(v43$2, v28$2) else v44$2);
    v45$1 := (if p16$1 then FADD32(FMUL32(1036831949, FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v44$1, FADD32(FSUB32(-2147483648, $vx), $vy)), v15)), 1050868108), 1056964608), v44$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v42$1, FSUB32(FSUB32(-2147483648, $vx), $vy)), v15)), 1050868108), 1056964608), v42$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v40$1, FADD32($vx, $vy)), v15)), 1050868108), 1056964608), v40$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v38$1, FSUB32($vx, $vy)), v15)), 1050868108), 1056964608), v38$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v36$1, $vx), v15)), 1050868108), 1056964608), v36$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v34$1, FSUB32(-2147483648, $vx)), v15)), 1050868108), 1056964608), v34$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v30$1, FSUB32(-2147483648, $vy)), v15)), 1050868108), 1056964608), v30$1), FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v32$1, $vy), v15)), 1050868108), 1056964608), v32$1))))))))), v28$1) else v45$1);
    v45$2 := (if p16$2 then FADD32(FMUL32(1036831949, FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v44$2, FADD32(FSUB32(-2147483648, $vx), $vy)), v15)), 1050868108), 1056964608), v44$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v42$2, FSUB32(FSUB32(-2147483648, $vx), $vy)), v15)), 1050868108), 1056964608), v42$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v40$2, FADD32($vx, $vy)), v15)), 1050868108), 1056964608), v40$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v38$2, FSUB32($vx, $vy)), v15)), 1050868108), 1056964608), v38$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v36$2, $vx), v15)), 1050868108), 1056964608), v36$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v34$2, FSUB32(-2147483648, $vx)), v15)), 1050868108), 1056964608), v34$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v30$2, FSUB32(-2147483648, $vy)), v15)), 1050868108), 1056964608), v30$2), FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v32$2, $vy), v15)), 1050868108), 1056964608), v32$2))))))))), v28$2) else v45$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v46$1 := (if p16$1 then _HAVOC_int$1 else v46$1);
    v46$2 := (if p16$2 then _HAVOC_int$2 else v46$2);
    $new_val.0$1, $old_val.0$1 := (if p16$1 then FSUB32(v45$1, FMUL32(FMUL32(1045220557, v46$1), FSUB32(v45$1, v46$1))) else $new_val.0$1), (if p16$1 then v28$1 else $old_val.0$1);
    $new_val.0$2, $old_val.0$2 := (if p16$2 then FSUB32(v45$2, FMUL32(FMUL32(1045220557, v46$2), FSUB32(v45$2, v46$2))) else $new_val.0$2), (if p16$2 then v28$2 else $old_val.0$2);
    v47$1 := (if p12$1 then BV32_SGT($thread_block.1$1, 0) else v47$1);
    v47$2 := (if p12$2 then BV32_SGT($thread_block.1$2, 0) else v47$2);
    p26$1 := (if p12$1 && v47$1 then v47$1 else p26$1);
    p26$2 := (if p12$2 && v47$2 then v47$2 else p26$2);
    v48$1 := (if p26$1 then BV32_SLT($i.2$1, v2$1) else v48$1);
    v48$2 := (if p26$2 then BV32_SLT($i.2$2, v2$2) else v48$2);
    p28$1 := (if p26$1 && v48$1 then v48$1 else p28$1);
    p28$2 := (if p26$2 && v48$2 then v48$2 else p28$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$IMGVF_kernel.buffer(p28$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$IMGVF_kernel.buffer(p28$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v49$1 := (if p28$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v49$1);
    v49$2 := (if p28$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v49$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p28$1, BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1), v49$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p28$2, BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p28$2, BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2), v49$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)] := (if p28$1 then v49$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2)] := (if p28$2 then v49$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2)]);
    v50$1 := (if p12$1 then BV32_SLT($thread_block.1$1, BV32_SUB(v4$1, 1)) else v50$1);
    v50$2 := (if p12$2 then BV32_SLT($thread_block.1$2, BV32_SUB(v4$2, 1)) else v50$2);
    p29$1 := (if p12$1 && v50$1 then v50$1 else p29$1);
    p29$2 := (if p12$2 && v50$2 then v50$2 else p29$2);
    p30$1 := (if p12$1 && !v50$1 then !v50$1 else p30$1);
    p30$2 := (if p12$2 && !v50$2 then !v50$2 else p30$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$IMGVF_kernel.buffer(p29$1, v5$1, $new_val.0$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p29$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$IMGVF_kernel.buffer(p29$2, v5$2, $new_val.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p29$1 then $new_val.0$1 else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p29$2 then $new_val.0$2 else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    v51$1 := (if p30$1 then BV32_SLT(v20$1, v2$1) else v51$1);
    v51$2 := (if p30$2 then BV32_SLT(v20$2, v2$2) else v51$2);
    p32$1 := (if p30$1 && v51$1 then v51$1 else p32$1);
    p32$2 := (if p30$2 && v51$2 then v51$2 else p32$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p32$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1), $new_val.0$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p32$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p32$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2), $new_val.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)] := (if p32$1 then $new_val.0$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)] := (if p32$2 then $new_val.0$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)]);
    goto __partitioned_block_$13_1;

  __partitioned_block_$13_1:
    call {:sourceloc_num 62} $bugle_barrier_duplicated_6(-1, 0, p12$1, p12$2);
    $thread_block.1$1, $i.2$1, $j.0$1, $total_diff.0$1 := (if p12$1 then BV32_ADD($thread_block.1$1, 1) else $thread_block.1$1), (if p12$1 then v20$1 else $i.2$1), (if p12$1 then $j.1$1 else $j.0$1), (if p12$1 then FADD32($total_diff.0$1, FABS32(FSUB32($new_val.0$1, $old_val.0$1))) else $total_diff.0$1);
    $thread_block.1$2, $i.2$2, $j.0$2, $total_diff.0$2 := (if p12$2 then BV32_ADD($thread_block.1$2, 1) else $thread_block.1$2), (if p12$2 then v20$2 else $i.2$2), (if p12$2 then $j.1$2 else $j.0$2), (if p12$2 then FADD32($total_diff.0$2, FABS32(FSUB32($new_val.0$2, $old_val.0$2))) else $total_diff.0$2);
    p11$1 := (if p12$1 then true else p11$1);
    p11$2 := (if p12$2 then true else p11$2);
    goto $13.backedge, __partitioned_block_$13.tail_0;

  __partitioned_block_$13.tail_0:
    assume !p11$1 && !p11$2;
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$IMGVF_kernel.buffer(p10$1, v5$1, $total_diff.0$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p10$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$IMGVF_kernel.buffer(p10$2, v5$2, $total_diff.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p10$1 then $total_diff.0$1 else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p10$2 then $total_diff.0$2 else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    goto __partitioned_block_$13.tail_1;

  __partitioned_block_$13.tail_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_2(-1, 0, p10$1, p10$2);
    v52$1 := (if p10$1 then BV32_SGE(v5$1, 256) else v52$1);
    v52$2 := (if p10$2 then BV32_SGE(v5$2, 256) else v52$2);
    p34$1 := (if p10$1 && v52$1 then v52$1 else p34$1);
    p34$2 := (if p10$2 && v52$2 then v52$2 else p34$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$IMGVF_kernel.buffer(p34$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$IMGVF_kernel.buffer(p34$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v53$1 := (if p34$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v53$1);
    v53$2 := (if p34$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v53$2);
    v54$1 := (if p34$1 then BV32_SUB(v5$1, 256) else v54$1);
    v54$2 := (if p34$2 then BV32_SUB(v5$2, 256) else v54$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$IMGVF_kernel.buffer(p34$1, v54$1, $$IMGVF_kernel.buffer[1bv1][v54$1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$IMGVF_kernel.buffer(p34$2, v54$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v55$1 := (if p34$1 then $$IMGVF_kernel.buffer[1bv1][v54$1] else v55$1);
    v55$2 := (if p34$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2] else v55$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_WRITE_$$IMGVF_kernel.buffer(p34$1, v54$1, FADD32(v55$1, v53$1), $$IMGVF_kernel.buffer[1bv1][v54$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p34$2, v54$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 70} _CHECK_WRITE_$$IMGVF_kernel.buffer(p34$2, v54$2, FADD32(v55$2, v53$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v54$1] := (if p34$1 then FADD32(v55$1, v53$1) else $$IMGVF_kernel.buffer[1bv1][v54$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2] := (if p34$2 then FADD32(v55$2, v53$2) else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2]);
    goto __partitioned_block_$13.tail_2;

  __partitioned_block_$13.tail_2:
    call {:sourceloc_num 72} $bugle_barrier_duplicated_3(-1, 0, p10$1, p10$2);
    $th.0$1 := (if p10$1 then 128 else $th.0$1);
    $th.0$2 := (if p10$2 then 128 else $th.0$2);
    p35$1 := (if p10$1 then true else p35$1);
    p35$2 := (if p10$2 then true else p35$2);
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$44_0;

  __partitioned_block_$44_0:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $th.0$1 == 0 || BV32_AND($th.0$1, BV32_SUB($th.0$1, 1)) == 0 ) ,  (  $th.0$1 != 0 ) ,  (  $th.0$2 == 0 || BV32_AND($th.0$2, BV32_SUB($th.0$2, 1)) == 0 ) ,  (  $th.0$2 != 0 ) ,  (  p35$1 == p35$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p35$1 == p35$2 ) ,  (  p35$1 && p35$2 ==> $th.0$1 == $th.0$2 ) ,  (  p35$1 && p35$2 ==> v57$1 == v57$2 ) ,  (  p35$1 && p35$2 ==> v56$1 == v56$2 ) ,  (  p35$1 && p35$2 ==> v58$1 == v58$2 ) ,  (  p35$1 && p35$2 ==> v59$1 == v59$2 ) ,  (  !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ) ,  (  !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$44_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p35"} {:dominator_predicate "p10"} true;
    assert p35$1 ==> p7$1;
    assert p35$2 ==> p7$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p35$1 ==> BV32_SLE($th.0$1, 128) )  && ( p35$2 ==> BV32_SLE($th.0$2, 128) ) ,  ( p35$1 ==> BV32_SGE($th.0$1, 128) )  && ( p35$2 ==> BV32_SGE($th.0$2, 128) ) ,  ( p35$1 ==> BV32_ULE($th.0$1, 128) )  && ( p35$2 ==> BV32_ULE($th.0$2, 128) ) ,  ( p35$1 ==> BV32_UGE($th.0$1, 128) )  && ( p35$2 ==> BV32_UGE($th.0$2, 128) ) ,  ( p35$1 ==> p35$1 ==> $0$1 == 1 )  && ( p35$2 ==> p35$2 ==> $0$2 == 1 ) ,  (  $0$1 == 1 && BV32_SGT($th.0$1, 0) ==> p35$1 )  && (  $0$2 == 1 && BV32_SGT($th.0$2, 0) ==> p35$2 ) ,  (  _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1 ) ,  (  _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 73} p35$1 ==> true;
    v56$1 := (if p35$1 then BV32_SGT($th.0$1, 0) else v56$1);
    v56$2 := (if p35$2 then BV32_SGT($th.0$2, 0) else v56$2);
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p42$1 := false;
    p42$2 := false;
    p36$1 := (if p35$1 && v56$1 then v56$1 else p36$1);
    p36$2 := (if p35$2 && v56$2 then v56$2 else p36$2);
    p35$1 := (if p35$1 && !v56$1 then v56$1 else p35$1);
    p35$2 := (if p35$2 && !v56$2 then v56$2 else p35$2);
    v57$1 := (if p36$1 then BV32_SLT(v5$1, $th.0$1) else v57$1);
    v57$2 := (if p36$2 then BV32_SLT(v5$2, $th.0$2) else v57$2);
    p38$1 := (if p36$1 && v57$1 then v57$1 else p38$1);
    p38$2 := (if p36$2 && v57$2 then v57$2 else p38$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$IMGVF_kernel.buffer(p38$1, BV32_ADD(v5$1, $th.0$1), $$IMGVF_kernel.buffer[1bv1][BV32_ADD(v5$1, $th.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$IMGVF_kernel.buffer(p38$2, BV32_ADD(v5$2, $th.0$2), $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v5$2, $th.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v58$1 := (if p38$1 then $$IMGVF_kernel.buffer[1bv1][BV32_ADD(v5$1, $th.0$1)] else v58$1);
    v58$2 := (if p38$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v5$2, $th.0$2)] else v58$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$IMGVF_kernel.buffer(p38$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$IMGVF_kernel.buffer(p38$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v59$1 := (if p38$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v59$1);
    v59$2 := (if p38$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v59$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$IMGVF_kernel.buffer(p38$1, v5$1, FADD32(v59$1, v58$1), $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p38$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$IMGVF_kernel.buffer(p38$2, v5$2, FADD32(v59$2, v58$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p38$1 then FADD32(v59$1, v58$1) else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p38$2 then FADD32(v59$2, v58$2) else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    goto __partitioned_block_$44_1;

  __partitioned_block_$44_1:
    call {:sourceloc_num 80} $bugle_barrier_duplicated_5(-1, 0, p36$1, p36$2);
    $th.0$1 := (if p36$1 then BV32_SDIV($th.0$1, 2) else $th.0$1);
    $th.0$2 := (if p36$2 then BV32_SDIV($th.0$2, 2) else $th.0$2);
    p35$1 := (if p36$1 then true else p35$1);
    p35$2 := (if p36$2 then true else p35$2);
    goto $44.backedge, __partitioned_block_$44.tail_0;

  __partitioned_block_$44.tail_0:
    assume !p35$1 && !p35$2;
    v60$1 := (if p10$1 then v5$1 == 0 else v60$1);
    v60$2 := (if p10$2 then v5$2 == 0 else v60$2);
    p40$1 := (if p10$1 && v60$1 then v60$1 else p40$1);
    p40$2 := (if p10$2 && v60$2 then v60$2 else p40$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$IMGVF_kernel.buffer(p40$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$IMGVF_kernel.buffer(p40$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v61$1 := (if p40$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v61$1);
    v61$2 := (if p40$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v61$2);
    v62$1 := (if p40$1 then FLT32(FDIV32(v61$1, SI32_TO_FP32(BV32_MUL(v2$1, v3$1))), $cutoff) else v62$1);
    v62$2 := (if p40$2 then FLT32(FDIV32(v61$2, SI32_TO_FP32(BV32_MUL(v2$2, v3$2))), $cutoff) else v62$2);
    p42$1 := (if p40$1 && v62$1 then v62$1 else p42$1);
    p42$2 := (if p40$2 && v62$2 then v62$2 else p42$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$IMGVF_kernel.cell_converged(p42$1, 0, 1, $$IMGVF_kernel.cell_converged[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(p42$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$IMGVF_kernel.cell_converged(p42$2, 0, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.cell_converged"} true;
    $$IMGVF_kernel.cell_converged[1bv1][0] := (if p42$1 then 1 else $$IMGVF_kernel.cell_converged[1bv1][0]);
    $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p42$2 then 1 else $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$44.tail_1;

  __partitioned_block_$44.tail_1:
    call {:sourceloc_num 89} $bugle_barrier_duplicated_4(-1, 0, p10$1, p10$2);
    $i.1$1, $iterations.0$1 := (if p10$1 then $i.2$1 else $i.1$1), (if p10$1 then BV32_ADD($iterations.0$1, 1) else $iterations.0$1);
    $i.1$2, $iterations.0$2 := (if p10$2 then $i.2$2 else $i.1$2), (if p10$2 then BV32_ADD($iterations.0$2, 1) else $iterations.0$2);
    p7$1 := (if p10$1 then true else p7$1);
    p7$2 := (if p10$2 then true else p7$2);
    goto $9.backedge, $9.tail;

  $9.tail:
    assume !p7$1 && !p7$2;
    $thread_block.2$1 := 0;
    $thread_block.2$2 := 0;
    p43$1 := true;
    p43$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $55;

  $55:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p43$1 ==> $thread_block.2$1 mod 1 == 0 mod 1 )  && ( p43$2 ==> $thread_block.2$2 mod 1 == 0 mod 1 ) ,  ( p43$1 ==> BV32_SLE($thread_block.2$1, 0) )  && ( p43$2 ==> BV32_SLE($thread_block.2$2, 0) ) ,  ( p43$1 ==> BV32_SGE($thread_block.2$1, 0) )  && ( p43$2 ==> BV32_SGE($thread_block.2$2, 0) ) ,  ( p43$1 ==> BV32_ULE($thread_block.2$1, 0) )  && ( p43$2 ==> BV32_ULE($thread_block.2$2, 0) ) ,  ( p43$1 ==> BV32_UGE($thread_block.2$1, 0) )  && ( p43$2 ==> BV32_UGE($thread_block.2$2, 0) ) ,  (  BV32_SLT($thread_block.2$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256), 1), 256)) ==> p43$1 )  && (  BV32_SLT($thread_block.2$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256), 1), 256)) ==> p43$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 91} p43$1 ==> true;
    v63$1 := (if p43$1 then BV32_SLT($thread_block.2$1, v4$1) else v63$1);
    v63$2 := (if p43$2 then BV32_SLT($thread_block.2$2, v4$2) else v63$2);
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p46$1 := false;
    p46$2 := false;
    p44$1 := (if p43$1 && v63$1 then v63$1 else p44$1);
    p44$2 := (if p43$2 && v63$2 then v63$2 else p44$2);
    p43$1 := (if p43$1 && !v63$1 then v63$1 else p43$1);
    p43$2 := (if p43$2 && !v63$2 then v63$2 else p43$2);
    v64$1 := (if p44$1 then BV32_MUL($thread_block.2$1, 256) else v64$1);
    v64$2 := (if p44$2 then BV32_MUL($thread_block.2$2, 256) else v64$2);
    v65$1 := (if p44$1 then BV32_SDIV(BV32_ADD(v5$1, v64$1), v3$1) else v65$1);
    v65$2 := (if p44$2 then BV32_SDIV(BV32_ADD(v5$2, v64$2), v3$2) else v65$2);
    v66$1 := (if p44$1 then BV32_SREM(BV32_ADD(v5$1, v64$1), v3$1) else v66$1);
    v66$2 := (if p44$2 then BV32_SREM(BV32_ADD(v5$2, v64$2), v3$2) else v66$2);
    v67$1 := (if p44$1 then BV32_SLT(v65$1, v2$1) else v67$1);
    v67$2 := (if p44$2 then BV32_SLT(v65$2, v2$2) else v67$2);
    p46$1 := (if p44$1 && v67$1 then v67$1 else p46$1);
    p46$2 := (if p44$2 && v67$2 then v67$2 else p46$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$IMGVF_kernel.IMGVF(p46$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$IMGVF_kernel.IMGVF(p46$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v68$1 := (if p46$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)] else v68$1);
    v68$2 := (if p46$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)] else v68$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$IMGVF_array(p46$1, BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)), v68$1, $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(p46$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$IMGVF_array(p46$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)), v68$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_array"} true;
    $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))] := (if p46$1 then v68$1 else $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))]);
    $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2))] := (if p46$2 then v68$2 else $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2))]);
    $thread_block.2$1 := (if p44$1 then BV32_ADD($thread_block.2$1, 1) else $thread_block.2$1);
    $thread_block.2$2 := (if p44$2 then BV32_ADD($thread_block.2$2, 1) else $thread_block.2$2);
    p43$1 := (if p44$1 then true else p43$1);
    p43$2 := (if p44$2 then true else p43$2);
    goto $55.backedge, $55.tail;

  $55.tail:
    assume !p43$1 && !p43$2;
    return;

  $55.backedge:
    assume {:backedge} p43$1 || p43$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $55;

  $9.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $9;

  $44.backedge:
    assume {:backedge} p35$1 || p35$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$44_0;

  $13.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto __partitioned_block_$13_0;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 36 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;





function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}





function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}











































































const _WATCHED_VALUE_$$IMGVF_array: int;

procedure {:inline 1} _LOG_READ_$$IMGVF_array(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$IMGVF_array;



implementation {:inline 1} _LOG_READ_$$IMGVF_array(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then true else _READ_HAS_OCCURRED_$$IMGVF_array);
    return;
}



procedure _CHECK_READ_$$IMGVF_array(_P: bool, _offset: int, _value: int);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_array: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_array(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_array(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_array);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_array(_P: bool, _offset: int, _value: int);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array != _value);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array != _value);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_array(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_array;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_array(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_array);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_array(_P: bool, _offset: int);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_array := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
    return;
}



const _WATCHED_VALUE_$$I_array: int;

procedure {:inline 1} _LOG_READ_$$I_array(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$I_array;



implementation {:inline 1} _LOG_READ_$$I_array(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then true else _READ_HAS_OCCURRED_$$I_array);
    return;
}



procedure _CHECK_READ_$$I_array(_P: bool, _offset: int, _value: int);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$I_array);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$I_array: bool;

procedure {:inline 1} _LOG_WRITE_$$I_array(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$I_array, _WRITE_READ_BENIGN_FLAG_$$I_array;



implementation {:inline 1} _LOG_WRITE_$$I_array(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then true else _WRITE_HAS_OCCURRED_$$I_array);
    _WRITE_READ_BENIGN_FLAG_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$I_array);
    return;
}



procedure _CHECK_WRITE_$$I_array(_P: bool, _offset: int, _value: int);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array != _value);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array != _value);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$I_array(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$I_array;



implementation {:inline 1} _LOG_ATOMIC_$$I_array(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$I_array);
    return;
}



procedure _CHECK_ATOMIC_$$I_array(_P: bool, _offset: int);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$I_array(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$I_array;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$I_array(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$I_array := (if _P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$I_array);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.IMGVF: int;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int, _value: int);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.cell_converged: int;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int, _value: int);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.buffer: int;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: int);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
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
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
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
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
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
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
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
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
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
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function BV32_AND(int, int) : int;














































































































































































































































































































