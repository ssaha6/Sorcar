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
 b0191: bool,
 b0192: bool,
 b0193: bool,
 b0194: bool,
 b0195: bool,
 b0196: bool,
 b0197: bool,
 b0198: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$sample_g"} {:global} {:elem_width 32} {:source_name "sample_g"} {:source_elem_width 192} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sample_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sample_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sample_g: bool;

var {:source_name "binStartAddr_g"} {:global} $$binStartAddr_g: [int]int;

axiom {:array_info "$$binStartAddr_g"} {:global} {:elem_width 32} {:source_name "binStartAddr_g"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$binStartAddr_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$binStartAddr_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$binStartAddr_g: bool;

var {:source_name "gridData_g"} {:global} $$gridData_g: [int]int;

axiom {:array_info "$$gridData_g"} {:global} {:elem_width 32} {:source_name "gridData_g"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridData_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridData_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridData_g: bool;

var {:source_name "sampleDensity_g"} {:global} $$sampleDensity_g: [int]int;

axiom {:array_info "$$sampleDensity_g"} {:global} {:elem_width 32} {:source_name "sampleDensity_g"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sampleDensity_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sampleDensity_g: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sampleDensity_g: bool;

var {:source_name "sharedBin"} {:group_shared} $$gridding_GPU.sharedBin: [bv1][int]int;

axiom {:array_info "$$gridding_GPU.sharedBin"} {:group_shared} {:elem_width 32} {:source_name "sharedBin"} {:source_elem_width 192} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin: bool;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FADD64(int, int) : int;

function FDIV32(int, int) : int;

function FLT32(int, int) : bool;

function FLT64(int, int) : bool;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FP64_TO_SI32(int) : int;

function FSQRT64(int) : int;

function FSUB32(int, int) : int;

function FSUB64(int, int) : int;

function FUNO32(int, int) : bool;

function SI32_TO_FP32(int) : int;

function SI32_TO_FP64(int) : int;

function UI32_TO_FP64(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
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

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "gridding_GPU"} {:kernel} $gridding_GPU($beta: int);
  requires !_READ_HAS_OCCURRED_$$sample_g && !_WRITE_HAS_OCCURRED_$$sample_g && !_ATOMIC_HAS_OCCURRED_$$sample_g;
  requires !_READ_HAS_OCCURRED_$$binStartAddr_g && !_WRITE_HAS_OCCURRED_$$binStartAddr_g && !_ATOMIC_HAS_OCCURRED_$$binStartAddr_g;
  requires !_READ_HAS_OCCURRED_$$gridData_g && !_WRITE_HAS_OCCURRED_$$gridData_g && !_ATOMIC_HAS_OCCURRED_$$gridData_g;
  requires !_READ_HAS_OCCURRED_$$sampleDensity_g && !_WRITE_HAS_OCCURRED_$$sampleDensity_g && !_ATOMIC_HAS_OCCURRED_$$sampleDensity_g;
  requires !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin && !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin && !_ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin;
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
  modifies $$gridding_GPU.sharedBin, $$gridData_g, $$sampleDensity_g, _TRACKING, _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin, _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin, _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin, _TRACKING, _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin, _WRITE_HAS_OCCURRED_$$gridData_g, _WRITE_READ_BENIGN_FLAG_$$gridData_g, _WRITE_READ_BENIGN_FLAG_$$gridData_g, _WRITE_HAS_OCCURRED_$$sampleDensity_g, _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g, _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g;



implementation {:source_name "gridding_GPU"} {:kernel} $gridding_GPU($beta: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $4$1: int;
  var $4$2: int;
  var $5$1: int;
  var $5$2: int;
  var $pt.0$1: int;
  var $pt.0$2: int;
  var $density.0$1: int;
  var $density.0$2: int;
  var $z.0$1: int;
  var $z.0$2: int;
  var $pt.1$1: int;
  var $pt.1$2: int;
  var $density.1$1: int;
  var $density.1$2: int;
  var $y.0$1: int;
  var $y.0$2: int;
  var $pt.2$1: int;
  var $pt.2$2: int;
  var $density.2$1: int;
  var $density.2$2: int;
  var $x.0$1: int;
  var $x.0$2: int;
  var $6$1: int;
  var $6$2: int;
  var $pt.3$1: int;
  var $pt.3$2: int;
  var $density.3$1: int;
  var $density.3$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var $pt.5$1: int;
  var $pt.5$2: int;
  var $density.5$1: int;
  var $density.5$2: int;
  var $pt.4$1: int;
  var $pt.4$2: int;
  var $density.4$1: int;
  var $density.4$2: int;
  var v13$1: int;
  var v13$2: int;
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
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: int;
  var v9$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: int;
  var v11$2: int;
  var v12$1: bool;
  var v12$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: int;
  var v17$2: int;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bool;
  var v21$2: bool;
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
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
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
  var v36$1: bool;
  var v36$2: bool;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: bool;
  var v40$2: bool;
  var v41$1: bool;
  var v41$2: bool;
  var v42$1: bool;
  var v42$2: bool;
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
  var v50$1: bool;
  var v50$2: bool;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21: bool;
  var _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0: bool;
  var _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0: bool;
  var _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$30: bool;


  $0:
    v0$1 := BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1);
    v0$2 := BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$2, group_size_y), group_size_x), BV32_MUL(local_id_y$2, group_size_x)), local_id_x$2);
    v1$1 := BV32_MUL(group_size_z, BV32_UDIV(group_id_y$1, BV32_UDIV(256, group_size_y)));
    v1$2 := BV32_MUL(group_size_z, BV32_UDIV(group_id_y$2, BV32_UDIV(256, group_size_y)));
    v2$1 := BV32_MUL(group_size_y, BV32_UREM(group_id_y$1, BV32_UDIV(256, group_size_y)));
    v2$2 := BV32_MUL(group_size_y, BV32_UREM(group_id_y$2, BV32_UDIV(256, group_size_y)));
    v3$1 := BV32_MUL(group_id_x$1, group_size_x);
    v3$2 := BV32_MUL(group_id_x$2, group_size_x);
    v4$1 := BV32_ADD(v3$1, local_id_x$1);
    v4$2 := BV32_ADD(v3$2, local_id_x$2);
    v5$1 := BV32_ADD(v2$1, local_id_y$1);
    v5$2 := BV32_ADD(v2$2, local_id_y$2);
    v6$1 := BV32_ADD(v1$1, local_id_z$1);
    v6$2 := BV32_ADD(v1$2, local_id_z$2);
    v7$1 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v3$1), 4613937818241073152));
    v7$2 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v3$2), 4613937818241073152));
    v8$1 := BV32_SLT(v7$1, 0);
    v8$2 := BV32_SLT(v7$2, 0);
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
    p0$1 := (if v8$1 then v8$1 else p0$1);
    p0$2 := (if v8$2 then v8$2 else p0$2);
    p1$1 := (if !v8$1 then !v8$1 else p1$1);
    p1$2 := (if !v8$2 then !v8$2 else p1$2);
    $0$1 := (if p0$1 then 0 else $0$1);
    $0$2 := (if p0$2 then 0 else $0$2);
    $0$1 := (if p1$1 then v7$1 else $0$1);
    $0$2 := (if p1$2 then v7$2 else $0$2);
    v9$1 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v3$1, group_size_x)), 4612811918334230528));
    v9$2 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v3$2, group_size_x)), 4612811918334230528));
    v10$1 := BV32_SGE(v9$1, 256);
    v10$2 := BV32_SGE(v9$2, 256);
    p2$1 := (if v10$1 then v10$1 else p2$1);
    p2$2 := (if v10$2 then v10$2 else p2$2);
    p3$1 := (if !v10$1 then !v10$1 else p3$1);
    p3$2 := (if !v10$2 then !v10$2 else p3$2);
    $1$1 := (if p2$1 then 255 else $1$1);
    $1$2 := (if p2$2 then 255 else $1$2);
    $1$1 := (if p3$1 then v9$1 else $1$1);
    $1$2 := (if p3$2 then v9$2 else $1$2);
    v11$1 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v2$1), 4613937818241073152));
    v11$2 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v2$2), 4613937818241073152));
    v12$1 := BV32_SLT(v11$1, 0);
    v12$2 := BV32_SLT(v11$2, 0);
    p4$1 := (if v12$1 then v12$1 else p4$1);
    p4$2 := (if v12$2 then v12$2 else p4$2);
    p5$1 := (if !v12$1 then !v12$1 else p5$1);
    p5$2 := (if !v12$2 then !v12$2 else p5$2);
    $2$1 := (if p4$1 then 0 else $2$1);
    $2$2 := (if p4$2 then 0 else $2$2);
    $2$1 := (if p5$1 then v11$1 else $2$1);
    $2$2 := (if p5$2 then v11$2 else $2$2);
    v13$1 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v2$1, group_size_y)), 4612811918334230528));
    v13$2 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v2$2, group_size_y)), 4612811918334230528));
    v14$1 := BV32_SGE(v13$1, 256);
    v14$2 := BV32_SGE(v13$2, 256);
    p6$1 := (if v14$1 then v14$1 else p6$1);
    p6$2 := (if v14$2 then v14$2 else p6$2);
    p7$1 := (if !v14$1 then !v14$1 else p7$1);
    p7$2 := (if !v14$2 then !v14$2 else p7$2);
    $3$1 := (if p6$1 then 255 else $3$1);
    $3$2 := (if p6$2 then 255 else $3$2);
    $3$1 := (if p7$1 then v13$1 else $3$1);
    $3$2 := (if p7$2 then v13$2 else $3$2);
    v15$1 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v1$1), 4613937818241073152));
    v15$2 := FP64_TO_SI32(FSUB64(SI32_TO_FP64(v1$2), 4613937818241073152));
    v16$1 := BV32_SLT(v15$1, 0);
    v16$2 := BV32_SLT(v15$2, 0);
    p8$1 := (if v16$1 then v16$1 else p8$1);
    p8$2 := (if v16$2 then v16$2 else p8$2);
    p9$1 := (if !v16$1 then !v16$1 else p9$1);
    p9$2 := (if !v16$2 then !v16$2 else p9$2);
    $4$1 := (if p8$1 then 0 else $4$1);
    $4$2 := (if p8$2 then 0 else $4$2);
    $4$1 := (if p9$1 then v15$1 else $4$1);
    $4$2 := (if p9$2 then v15$2 else $4$2);
    v17$1 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v1$1, group_size_z)), 4612811918334230528));
    v17$2 := FP64_TO_SI32(FADD64(UI32_TO_FP64(BV32_ADD(v1$2, group_size_z)), 4612811918334230528));
    v18$1 := BV32_SGE(v17$1, 256);
    v18$2 := BV32_SGE(v17$2, 256);
    p10$1 := (if v18$1 then v18$1 else p10$1);
    p10$2 := (if v18$2 then v18$2 else p10$2);
    p11$1 := (if !v18$1 then !v18$1 else p11$1);
    p11$2 := (if !v18$2 then !v18$2 else p11$2);
    $5$1 := (if p10$1 then 255 else $5$1);
    $5$2 := (if p10$2 then 255 else $5$2);
    $5$1 := (if p11$1 then v17$1 else $5$1);
    $5$2 := (if p11$2 then v17$2 else $5$2);
    v19$1 := BV32_ADD(BV32_ADD(BV32_MUL(v6$1, 65536), BV32_MUL(v5$1, 256)), v4$1);
    v19$2 := BV32_ADD(BV32_ADD(BV32_MUL(v6$2, 65536), BV32_MUL(v5$2, 256)), v4$2);
    $pt.0$1, $density.0$1, $z.0$1 := 0, 0, $4$1;
    $pt.0$2, $density.0$2, $z.0$2 := 0, 0, $4$2;
    p12$1 := true;
    p12$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $19;

  $19:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p12$1 ==> $z.0$1 mod 1 == $4$1 mod 1 )  && ( p12$2 ==> $z.0$2 mod 1 == $4$2 mod 1 ) ,  ( p12$1 ==> BV32_SLE($z.0$1, $4$1) )  && ( p12$2 ==> BV32_SLE($z.0$2, $4$2) ) ,  ( p12$1 ==> BV32_SGE($z.0$1, $4$1) )  && ( p12$2 ==> BV32_SGE($z.0$2, $4$2) ) ,  ( p12$1 ==> BV32_ULE($z.0$1, $4$1) )  && ( p12$2 ==> BV32_ULE($z.0$2, $4$2) ) ,  ( p12$1 ==> BV32_UGE($z.0$1, $4$1) )  && ( p12$2 ==> BV32_UGE($z.0$2, $4$2) ) ,  (  BV32_SLE($z.0$1, $5$1) ==> p12$1 )  && (  BV32_SLE($z.0$2, $5$2) ==> p12$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p12$1 == p12$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p12$1 == p12$2 ) ,  (  p12$1 && p12$2 ==> $pt.0$1 == $pt.0$2 ) ,  (  p12$1 && p12$2 ==> $density.0$1 == $density.0$2 ) ,  (  p12$1 && p12$2 ==> $z.0$1 == $z.0$2 ) ,  (  p12$1 && p12$2 ==> $pt.1$1 == $pt.1$2 ) ,  (  p12$1 && p12$2 ==> $density.1$1 == $density.1$2 ) ,  (  p12$1 && p12$2 ==> $y.0$1 == $y.0$2 ) ,  (  p12$1 && p12$2 ==> $pt.2$1 == $pt.2$2 ) ,  (  p12$1 && p12$2 ==> $density.2$1 == $density.2$2 ) ,  (  p12$1 && p12$2 ==> $x.0$1 == $x.0$2 ) ,  (  p12$1 && p12$2 ==> $6$1 == $6$2 ) ,  (  p12$1 && p12$2 ==> $pt.3$1 == $pt.3$2 ) ,  (  p12$1 && p12$2 ==> $density.3$1 == $density.3$2 ) ,  (  p12$1 && p12$2 ==> $j.0$1 == $j.0$2 ) ,  (  p12$1 && p12$2 ==> $pt.5$1 == $pt.5$2 ) ,  (  p12$1 && p12$2 ==> $density.5$1 == $density.5$2 ) ,  (  p12$1 && p12$2 ==> $pt.4$1 == $pt.4$2 ) ,  (  p12$1 && p12$2 ==> $density.4$1 == $density.4$2 ) ,  (  p12$1 && p12$2 ==> v20$1 == v20$2 ) ,  (  p12$1 && p12$2 ==> v21$1 == v21$2 ) ,  (  p12$1 && p12$2 ==> v22$1 == v22$2 ) ,  (  p12$1 && p12$2 ==> v23$1 == v23$2 ) ,  (  p12$1 && p12$2 ==> v24$1 == v24$2 ) ,  (  p12$1 && p12$2 ==> v25$1 == v25$2 ) ,  (  p12$1 && p12$2 ==> v26$1 == v26$2 ) ,  (  p12$1 && p12$2 ==> v27$1 == v27$2 ) ,  (  p12$1 && p12$2 ==> v28$1 == v28$2 ) ,  (  p12$1 && p12$2 ==> v29$1 == v29$2 ) ,  (  p12$1 && p12$2 ==> v30$1 == v30$2 ) ,  (  p12$1 && p12$2 ==> v31$1 == v31$2 ) ,  (  p12$1 && p12$2 ==> v32$1 == v32$2 ) ,  (  p12$1 && p12$2 ==> v33$1 == v33$2 ) ,  (  p12$1 && p12$2 ==> v34$1 == v34$2 ) ,  (  p12$1 && p12$2 ==> v35$1 == v35$2 ) ,  (  p12$1 && p12$2 ==> v36$1 == v36$2 ) ,  (  p12$1 && p12$2 ==> v37$1 == v37$2 ) ,  (  p12$1 && p12$2 ==> v38$1 == v38$2 ) ,  (  p12$1 && p12$2 ==> v39$1 == v39$2 ) ,  (  p12$1 && p12$2 ==> v40$1 == v40$2 ) ,  (  p12$1 && p12$2 ==> v41$1 == v41$2 ) ,  (  p12$1 && p12$2 ==> v42$1 == v42$2 ) ,  (  p12$1 && p12$2 ==> v43$1 == v43$2 ) ,  (  p12$1 && p12$2 ==> v44$1 == v44$2 ) ,  (  p12$1 && p12$2 ==> v45$1 == v45$2 ) ,  (  p12$1 && p12$2 ==> v46$1 == v46$2 ) ,  (  p12$1 && p12$2 ==> v47$1 == v47$2 ) ,  (  p12$1 && p12$2 ==> v48$1 == v48$2 ) ,  (  p12$1 && p12$2 ==> v49$1 == v49$2 ) ,  (  p12$1 && p12$2 ==> v50$1 == v50$2 ) ,  (  p12$1 && p12$2 ==> v51$1 == v51$2 ) ,  (  p12$1 && p12$2 ==> v52$1 == v52$2 ) ,  (  p12$1 && p12$2 ==> v53$1 == v53$2 ) ,  (  p12$1 && p12$2 ==> v54$1 == v54$2 ) ,  (  !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_MUL(0, 6) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 1) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 5) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 3) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 5) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 19} p12$1 ==> true;
    v20$1 := (if p12$1 then BV32_SLE($z.0$1, $5$1) else v20$1);
    v20$2 := (if p12$2 then BV32_SLE($z.0$2, $5$2) else v20$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p33$1 := false;
    p33$2 := false;
    p13$1 := (if p12$1 && v20$1 then v20$1 else p13$1);
    p13$2 := (if p12$2 && v20$2 then v20$2 else p13$2);
    p12$1 := (if p12$1 && !v20$1 then v20$1 else p12$1);
    p12$2 := (if p12$2 && !v20$2 then v20$2 else p12$2);
    $pt.1$1, $density.1$1, $y.0$1 := (if p13$1 then $pt.0$1 else $pt.1$1), (if p13$1 then $density.0$1 else $density.1$1), (if p13$1 then $2$1 else $y.0$1);
    $pt.1$2, $density.1$2, $y.0$2 := (if p13$2 then $pt.0$2 else $pt.1$2), (if p13$2 then $density.0$2 else $density.1$2), (if p13$2 then $2$2 else $y.0$2);
    p14$1 := (if p13$1 then true else p14$1);
    p14$2 := (if p13$2 then true else p14$2);
    _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21 := _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21 := _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p14$1 == p14$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p14$1 == p14$2 ) ,  (  p14$1 && p14$2 ==> $pt.1$1 == $pt.1$2 ) ,  (  p14$1 && p14$2 ==> $density.1$1 == $density.1$2 ) ,  (  p14$1 && p14$2 ==> $y.0$1 == $y.0$2 ) ,  (  p14$1 && p14$2 ==> $pt.2$1 == $pt.2$2 ) ,  (  p14$1 && p14$2 ==> $density.2$1 == $density.2$2 ) ,  (  p14$1 && p14$2 ==> $x.0$1 == $x.0$2 ) ,  (  p14$1 && p14$2 ==> $6$1 == $6$2 ) ,  (  p14$1 && p14$2 ==> $pt.3$1 == $pt.3$2 ) ,  (  p14$1 && p14$2 ==> $density.3$1 == $density.3$2 ) ,  (  p14$1 && p14$2 ==> $j.0$1 == $j.0$2 ) ,  (  p14$1 && p14$2 ==> $pt.5$1 == $pt.5$2 ) ,  (  p14$1 && p14$2 ==> $density.5$1 == $density.5$2 ) ,  (  p14$1 && p14$2 ==> $pt.4$1 == $pt.4$2 ) ,  (  p14$1 && p14$2 ==> $density.4$1 == $density.4$2 ) ,  (  p14$1 && p14$2 ==> v21$1 == v21$2 ) ,  (  p14$1 && p14$2 ==> v22$1 == v22$2 ) ,  (  p14$1 && p14$2 ==> v23$1 == v23$2 ) ,  (  p14$1 && p14$2 ==> v24$1 == v24$2 ) ,  (  p14$1 && p14$2 ==> v25$1 == v25$2 ) ,  (  p14$1 && p14$2 ==> v26$1 == v26$2 ) ,  (  p14$1 && p14$2 ==> v27$1 == v27$2 ) ,  (  p14$1 && p14$2 ==> v28$1 == v28$2 ) ,  (  p14$1 && p14$2 ==> v29$1 == v29$2 ) ,  (  p14$1 && p14$2 ==> v30$1 == v30$2 ) ,  (  p14$1 && p14$2 ==> v31$1 == v31$2 ) ,  (  p14$1 && p14$2 ==> v32$1 == v32$2 ) ,  (  p14$1 && p14$2 ==> v33$1 == v33$2 ) ,  (  p14$1 && p14$2 ==> v34$1 == v34$2 ) ,  (  p14$1 && p14$2 ==> v35$1 == v35$2 ) ,  (  p14$1 && p14$2 ==> v36$1 == v36$2 ) ,  (  p14$1 && p14$2 ==> v37$1 == v37$2 ) ,  (  p14$1 && p14$2 ==> v38$1 == v38$2 ) ,  (  p14$1 && p14$2 ==> v39$1 == v39$2 ) ,  (  p14$1 && p14$2 ==> v40$1 == v40$2 ) ,  (  p14$1 && p14$2 ==> v41$1 == v41$2 ) ,  (  p14$1 && p14$2 ==> v42$1 == v42$2 ) ,  (  p14$1 && p14$2 ==> v43$1 == v43$2 ) ,  (  p14$1 && p14$2 ==> v44$1 == v44$2 ) ,  (  p14$1 && p14$2 ==> v45$1 == v45$2 ) ,  (  p14$1 && p14$2 ==> v46$1 == v46$2 ) ,  (  p14$1 && p14$2 ==> v47$1 == v47$2 ) ,  (  p14$1 && p14$2 ==> v48$1 == v48$2 ) ,  (  p14$1 && p14$2 ==> v49$1 == v49$2 ) ,  (  p14$1 && p14$2 ==> v50$1 == v50$2 ) ,  (  p14$1 && p14$2 ==> v51$1 == v51$2 ) ,  (  p14$1 && p14$2 ==> v52$1 == v52$2 ) ,  (  p14$1 && p14$2 ==> v53$1 == v53$2 ) ,  (  p14$1 && p14$2 ==> v54$1 == v54$2 ) ,  (  !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_MUL(0, 6) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 1) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 5) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 3) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 5) ) ,  (  !p13$1 ==> _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21 == _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  !p13$1 ==> _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$21 == _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p14"} {:dominator_predicate "p13"} true;
    assert p14$1 ==> p12$1;
    assert p14$2 ==> p12$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p14$1 ==> $y.0$1 mod 1 == $2$1 mod 1 )  && ( p14$2 ==> $y.0$2 mod 1 == $2$2 mod 1 ) ,  ( p14$1 ==> BV32_SLE($y.0$1, $2$1) )  && ( p14$2 ==> BV32_SLE($y.0$2, $2$2) ) ,  ( p14$1 ==> BV32_SGE($y.0$1, $2$1) )  && ( p14$2 ==> BV32_SGE($y.0$2, $2$2) ) ,  ( p14$1 ==> BV32_ULE($y.0$1, $2$1) )  && ( p14$2 ==> BV32_ULE($y.0$2, $2$2) ) ,  ( p14$1 ==> BV32_UGE($y.0$1, $2$1) )  && ( p14$2 ==> BV32_UGE($y.0$2, $2$2) ) ,  ( p14$1 ==> p14$1 ==> BV32_SLE($z.0$1, $5$1) )  && ( p14$2 ==> p14$2 ==> BV32_SLE($z.0$2, $5$2) ) ,  (  BV32_SLE($z.0$1, $5$1) && BV32_SLE($y.0$1, $3$1) ==> p14$1 )  && (  BV32_SLE($z.0$2, $5$2) && BV32_SLE($y.0$2, $3$2) ==> p14$2 ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($z.0$1, $5$1) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($z.0$1, $5$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 21} p14$1 ==> true;
    v21$1 := (if p14$1 then BV32_SLE($y.0$1, $3$1) else v21$1);
    v21$2 := (if p14$2 then BV32_SLE($y.0$2, $3$2) else v21$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p15$1 := (if p14$1 && v21$1 then v21$1 else p15$1);
    p15$2 := (if p14$2 && v21$2 then v21$2 else p15$2);
    p14$1 := (if p14$1 && !v21$1 then v21$1 else p14$1);
    p14$2 := (if p14$2 && !v21$2 then v21$2 else p14$2);
    v22$1 := (if p15$1 then BV32_MUL($z.0$1, 65536) else v22$1);
    v22$2 := (if p15$2 then BV32_MUL($z.0$2, 65536) else v22$2);
    v23$1 := (if p15$1 then BV32_MUL($y.0$1, 256) else v23$1);
    v23$2 := (if p15$2 then BV32_MUL($y.0$2, 256) else v23$2);
    v24$1 := (if p15$1 then $$binStartAddr_g[BV32_ADD(BV32_ADD(v22$1, v23$1), $0$1)] else v24$1);
    v24$2 := (if p15$2 then $$binStartAddr_g[BV32_ADD(BV32_ADD(v22$2, v23$2), $0$2)] else v24$2);
    v25$1 := (if p15$1 then $$binStartAddr_g[BV32_ADD(BV32_ADD(BV32_ADD(v22$1, v23$1), $1$1), 1)] else v25$1);
    v25$2 := (if p15$2 then $$binStartAddr_g[BV32_ADD(BV32_ADD(BV32_ADD(v22$2, v23$2), $1$2), 1)] else v25$2);
    v26$1 := (if p15$1 then BV32_SUB(v25$1, v24$1) else v26$1);
    v26$2 := (if p15$2 then BV32_SUB(v25$2, v24$2) else v26$2);
    $pt.2$1, $density.2$1, $x.0$1 := (if p15$1 then $pt.1$1 else $pt.2$1), (if p15$1 then $density.1$1 else $density.2$1), (if p15$1 then 0 else $x.0$1);
    $pt.2$2, $density.2$2, $x.0$2 := (if p15$2 then $pt.1$2 else $pt.2$2), (if p15$2 then $density.1$2 else $density.2$2), (if p15$2 then 0 else $x.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0 := _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0 := _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$23_0;

  __partitioned_block_$23_0:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p16$1 == p16$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p16$1 == p16$2 ) ,  (  p16$1 && p16$2 ==> $pt.2$1 == $pt.2$2 ) ,  (  p16$1 && p16$2 ==> $density.2$1 == $density.2$2 ) ,  (  p16$1 && p16$2 ==> $x.0$1 == $x.0$2 ) ,  (  p16$1 && p16$2 ==> $6$1 == $6$2 ) ,  (  p16$1 && p16$2 ==> $pt.3$1 == $pt.3$2 ) ,  (  p16$1 && p16$2 ==> $density.3$1 == $density.3$2 ) ,  (  p16$1 && p16$2 ==> $j.0$1 == $j.0$2 ) ,  (  p16$1 && p16$2 ==> $pt.5$1 == $pt.5$2 ) ,  (  p16$1 && p16$2 ==> $density.5$1 == $density.5$2 ) ,  (  p16$1 && p16$2 ==> $pt.4$1 == $pt.4$2 ) ,  (  p16$1 && p16$2 ==> $density.4$1 == $density.4$2 ) ,  (  p16$1 && p16$2 ==> v27$1 == v27$2 ) ,  (  p16$1 && p16$2 ==> v28$1 == v28$2 ) ,  (  p16$1 && p16$2 ==> v29$1 == v29$2 ) ,  (  p16$1 && p16$2 ==> v30$1 == v30$2 ) ,  (  p16$1 && p16$2 ==> v31$1 == v31$2 ) ,  (  p16$1 && p16$2 ==> v32$1 == v32$2 ) ,  (  p16$1 && p16$2 ==> v33$1 == v33$2 ) ,  (  p16$1 && p16$2 ==> v34$1 == v34$2 ) ,  (  p16$1 && p16$2 ==> v35$1 == v35$2 ) ,  (  p16$1 && p16$2 ==> v36$1 == v36$2 ) ,  (  p16$1 && p16$2 ==> v37$1 == v37$2 ) ,  (  p16$1 && p16$2 ==> v38$1 == v38$2 ) ,  (  p16$1 && p16$2 ==> v39$1 == v39$2 ) ,  (  p16$1 && p16$2 ==> v40$1 == v40$2 ) ,  (  p16$1 && p16$2 ==> v41$1 == v41$2 ) ,  (  p16$1 && p16$2 ==> v42$1 == v42$2 ) ,  (  p16$1 && p16$2 ==> v43$1 == v43$2 ) ,  (  p16$1 && p16$2 ==> v44$1 == v44$2 ) ,  (  p16$1 && p16$2 ==> v45$1 == v45$2 ) ,  (  p16$1 && p16$2 ==> v46$1 == v46$2 ) ,  (  p16$1 && p16$2 ==> v47$1 == v47$2 ) ,  (  p16$1 && p16$2 ==> v48$1 == v48$2 ) ,  (  p16$1 && p16$2 ==> v49$1 == v49$2 ) ,  (  p16$1 && p16$2 ==> v50$1 == v50$2 ) ,  (  p16$1 && p16$2 ==> v51$1 == v51$2 ) ,  (  p16$1 && p16$2 ==> v52$1 == v52$2 ) ,  (  p16$1 && p16$2 ==> v53$1 == v53$2 ) ,  (  p16$1 && p16$2 ==> v54$1 == v54$2 ) ,  (  !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_MUL(0, 6) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 1) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 5) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 3) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, group_size_y), group_size_x), BV32_MUL(local_id_y$1, group_size_x)), local_id_x$1), 6), 5) ) ,  (  !p15$1 ==> _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0 == _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  (  !p15$1 ==> _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$__partitioned_block_$23_0 == _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ) ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p14$1;
    assert p16$2 ==> p14$2;
    assert p14$1 ==> p12$1;
    assert p14$2 ==> p12$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p16$1 ==> $x.0$1 mod 1 == 0 mod 1 )  && ( p16$2 ==> $x.0$2 mod 1 == 0 mod 1 ) ,  ( p16$1 ==> BV32_SLE($x.0$1, 0) )  && ( p16$2 ==> BV32_SLE($x.0$2, 0) ) ,  ( p16$1 ==> BV32_SGE($x.0$1, 0) )  && ( p16$2 ==> BV32_SGE($x.0$2, 0) ) ,  ( p16$1 ==> BV32_ULE($x.0$1, 0) )  && ( p16$2 ==> BV32_ULE($x.0$2, 0) ) ,  ( p16$1 ==> BV32_UGE($x.0$1, 0) )  && ( p16$2 ==> BV32_UGE($x.0$2, 0) ) ,  ( p16$1 ==> p16$1 ==> BV32_SLE($z.0$1, $5$1) && BV32_SLE($y.0$1, $3$1) )  && ( p16$2 ==> p16$2 ==> BV32_SLE($z.0$2, $5$2) && BV32_SLE($y.0$2, $3$2) ) ,  (  BV32_SLE($z.0$1, $5$1) && BV32_SLE($y.0$1, $3$1) && BV32_ULT($x.0$1, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$1, v24$1), 64), 1), 6)) ==> p16$1 )  && (  BV32_SLE($z.0$2, $5$2) && BV32_SLE($y.0$2, $3$2) && BV32_ULT($x.0$2, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$2, v24$2), 64), 1), 6)) ==> p16$2 ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($z.0$1, $5$1) ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($y.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($z.0$1, $5$1) ) ,  (  _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($y.0$1, $3$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 25} p16$1 ==> true;
    v27$1 := (if p16$1 then BV32_ULT($x.0$1, BV32_LSHR(BV32_SUB(BV32_ADD(v26$1, 64), 1), 6)) else v27$1);
    v27$2 := (if p16$2 then BV32_ULT($x.0$2, BV32_LSHR(BV32_SUB(BV32_ADD(v26$2, 64), 1), 6)) else v27$2);
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
    p17$1 := (if p16$1 && v27$1 then v27$1 else p17$1);
    p17$2 := (if p16$2 && v27$2 then v27$2 else p17$2);
    p16$1 := (if p16$1 && !v27$1 then v27$1 else p16$1);
    p16$2 := (if p16$2 && !v27$2 then v27$2 else p16$2);
    v28$1 := (if p17$1 then BV32_UGT(BV32_SUB(v26$1, BV32_SHL($x.0$1, 6)), 64) else v28$1);
    v28$2 := (if p17$2 then BV32_UGT(BV32_SUB(v26$2, BV32_SHL($x.0$2, 6)), 64) else v28$2);
    p19$1 := (if p17$1 && v28$1 then v28$1 else p19$1);
    p19$2 := (if p17$2 && v28$2 then v28$2 else p19$2);
    p18$1 := (if p17$1 && !v28$1 then !v28$1 else p18$1);
    p18$2 := (if p17$2 && !v28$2 then !v28$2 else p18$2);
    $6$1 := (if p18$1 then BV32_SUB(v26$1, BV32_SHL($x.0$1, 6)) else $6$1);
    $6$2 := (if p18$2 then BV32_SUB(v26$2, BV32_SHL($x.0$2, 6)) else $6$2);
    $6$1 := (if p19$1 then 64 else $6$1);
    $6$2 := (if p19$2 then 64 else $6$2);
    goto __partitioned_block_$23_1;

  __partitioned_block_$23_1:
    call {:sourceloc_num 30} $bugle_barrier_duplicated_0(-1, 0, p17$1, p17$2);
    v29$1 := (if p17$1 then BV32_SLT(v0$1, $6$1) else v29$1);
    v29$2 := (if p17$2 then BV32_SLT(v0$2, $6$2) else v29$2);
    p21$1 := (if p17$1 && v29$1 then v29$1 else p21$1);
    p21$2 := (if p17$2 && v29$2 then v29$2 else p21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p21$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p21$2 then _HAVOC_int$2 else v30$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_MUL(v0$1, 6), v30$1, $$gridding_GPU.sharedBin[1bv1][BV32_MUL(v0$1, 6)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_MUL(v0$2, 6));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_MUL(v0$2, 6), v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_MUL(v0$1, 6)] := (if p21$1 then v30$1 else $$gridding_GPU.sharedBin[1bv1][BV32_MUL(v0$1, 6)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 6)] := (if p21$2 then v30$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 6)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p21$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p21$2 then _HAVOC_int$2 else v31$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_ADD(BV32_MUL(v0$1, 6), 1), v31$1, $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 1), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 1)] := (if p21$1 then v31$1 else $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 1)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 1)] := (if p21$2 then v31$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p21$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p21$2 then _HAVOC_int$2 else v32$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_ADD(BV32_MUL(v0$1, 6), 2), v32$1, $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 2), v32$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 2)] := (if p21$1 then v32$1 else $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 2)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 2)] := (if p21$2 then v32$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p21$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p21$2 then _HAVOC_int$2 else v33$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_ADD(BV32_MUL(v0$1, 6), 3), v33$1, $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 3), v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 3)] := (if p21$1 then v33$1 else $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 3)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 3)] := (if p21$2 then v33$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p21$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p21$2 then _HAVOC_int$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_ADD(BV32_MUL(v0$1, 6), 4), v34$1, $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 4), v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 4)] := (if p21$1 then v34$1 else $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 4)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 4)] := (if p21$2 then v34$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 4)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p21$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p21$2 then _HAVOC_int$2 else v35$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$gridding_GPU.sharedBin(p21$1, BV32_ADD(BV32_MUL(v0$1, 6), 5), v35$1, $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 5)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 5));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$gridding_GPU.sharedBin(p21$2, BV32_ADD(BV32_MUL(v0$2, 6), 5), v35$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridding_GPU.sharedBin"} true;
    $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 5)] := (if p21$1 then v35$1 else $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL(v0$1, 6), 5)]);
    $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 5)] := (if p21$2 then v35$2 else $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 6), 5)]);
    goto __partitioned_block_$23_2;

  __partitioned_block_$23_2:
    call {:sourceloc_num 45} $bugle_barrier_duplicated_1(-1, 0, p17$1, p17$2);
    $pt.3$1, $density.3$1, $j.0$1 := (if p17$1 then $pt.2$1 else $pt.3$1), (if p17$1 then $density.2$1 else $density.3$1), (if p17$1 then 0 else $j.0$1);
    $pt.3$2, $density.3$2, $j.0$2 := (if p17$2 then $pt.2$2 else $pt.3$2), (if p17$2 then $density.2$2 else $density.3$2), (if p17$2 then 0 else $j.0$2);
    p22$1 := (if p17$1 then true else p22$1);
    p22$2 := (if p17$2 then true else p22$2);
    _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$30 := _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $30;

  $30:
    assume {:captureState "loop_head_state_3"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_MUL(0, 6) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 1) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 5) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 2) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 3) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) || _WATCHED_OFFSET mod BV32_MUL(1, 6) == BV32_ADD(BV32_MUL(0, 6), 4) mod BV32_MUL(1, 6) ) ,  (  !p17$1 ==> _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin$ghost$$30 == _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p22"} {:dominator_predicate "p17"} true;
    assert p22$1 ==> p16$1;
    assert p22$2 ==> p16$2;
    assert p16$1 ==> p14$1;
    assert p16$2 ==> p14$2;
    assert p14$1 ==> p12$1;
    assert p14$2 ==> p12$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p22$1 ==> $j.0$1 mod 1 == 0 mod 1 )  && ( p22$2 ==> $j.0$2 mod 1 == 0 mod 1 ) ,  ( p22$1 ==> BV32_SLE($j.0$1, 0) )  && ( p22$2 ==> BV32_SLE($j.0$2, 0) ) ,  ( p22$1 ==> BV32_SGE($j.0$1, 0) )  && ( p22$2 ==> BV32_SGE($j.0$2, 0) ) ,  ( p22$1 ==> BV32_ULE($j.0$1, 0) )  && ( p22$2 ==> BV32_ULE($j.0$2, 0) ) ,  ( p22$1 ==> BV32_UGE($j.0$1, 0) )  && ( p22$2 ==> BV32_UGE($j.0$2, 0) ) ,  ( p22$1 ==> p22$1 ==> BV32_SLE($z.0$1, $5$1) && BV32_SLE($y.0$1, $3$1) && BV32_ULT($x.0$1, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$1, v24$1), 64), 1), 6)) )  && ( p22$2 ==> p22$2 ==> BV32_SLE($z.0$2, $5$2) && BV32_SLE($y.0$2, $3$2) && BV32_ULT($x.0$2, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$2, v24$2), 64), 1), 6)) ) ,  (  BV32_SLE($z.0$1, $5$1) && BV32_SLE($y.0$1, $3$1) && BV32_ULT($x.0$1, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$1, v24$1), 64), 1), 6)) && BV32_SLT($j.0$1, $6$1) ==> p22$1 )  && (  BV32_SLE($z.0$2, $5$2) && BV32_SLE($y.0$2, $3$2) && BV32_ULT($x.0$2, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$2, v24$2), 64), 1), 6)) && BV32_SLT($j.0$2, $6$2) ==> p22$2 ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($z.0$1, $5$1) ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_SLE($y.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin ==> BV32_ULT($x.0$1, BV32_LSHR(BV32_SUB(BV32_ADD(BV32_SUB(v25$1, v24$1), 64), 1), 6)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 46} p22$1 ==> true;
    v36$1 := (if p22$1 then BV32_SLT($j.0$1, $6$1) else v36$1);
    v36$2 := (if p22$2 then BV32_SLT($j.0$2, $6$2) else v36$2);
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
    p23$1 := (if p22$1 && v36$1 then v36$1 else p23$1);
    p23$2 := (if p22$2 && v36$2 then v36$2 else p23$2);
    p22$1 := (if p22$1 && !v36$1 then v36$1 else p22$1);
    p22$2 := (if p22$2 && !v36$2 then v36$2 else p22$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$gridding_GPU.sharedBin(p23$1, BV32_MUL($j.0$1, 6), $$gridding_GPU.sharedBin[1bv1][BV32_MUL($j.0$1, 6)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$gridding_GPU.sharedBin(p23$2, BV32_MUL($j.0$2, 6), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0$2, 6)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v37$1 := (if p23$1 then $$gridding_GPU.sharedBin[1bv1][BV32_MUL($j.0$1, 6)] else v37$1);
    v37$2 := (if p23$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0$2, 6)] else v37$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$gridding_GPU.sharedBin(p23$1, BV32_ADD(BV32_MUL($j.0$1, 6), 1), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$gridding_GPU.sharedBin(p23$2, BV32_ADD(BV32_MUL($j.0$2, 6), 1), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v38$1 := (if p23$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 1)] else v38$1);
    v38$2 := (if p23$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 1)] else v38$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$gridding_GPU.sharedBin(p23$1, BV32_ADD(BV32_MUL($j.0$1, 6), 5), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$gridding_GPU.sharedBin(p23$2, BV32_ADD(BV32_MUL($j.0$2, 6), 5), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v39$1 := (if p23$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 5)] else v39$1);
    v39$2 := (if p23$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 5)] else v39$2);
    v40$1 := (if p23$1 then FLT32(0, v37$1) || FLT32(v37$1, 0) || FUNO32(v37$1, 0) else v40$1);
    v40$2 := (if p23$2 then FLT32(0, v37$2) || FLT32(v37$2, 0) || FUNO32(v37$2, 0) else v40$2);
    p28$1 := (if p23$1 && v40$1 then v40$1 else p28$1);
    p28$2 := (if p23$2 && v40$2 then v40$2 else p28$2);
    p25$1 := (if p23$1 && !v40$1 then !v40$1 else p25$1);
    p25$2 := (if p23$2 && !v40$2 then !v40$2 else p25$2);
    p28$1 := (if p24$1 then true else p28$1);
    p28$2 := (if p24$2 then true else p28$2);
    v41$1 := (if p25$1 then FLT32(0, v38$1) || FLT32(v38$1, 0) || FUNO32(v38$1, 0) else v41$1);
    v41$2 := (if p25$2 then FLT32(0, v38$2) || FLT32(v38$2, 0) || FUNO32(v38$2, 0) else v41$2);
    p28$1 := (if p25$1 && v41$1 then v41$1 else p28$1);
    p28$2 := (if p25$2 && v41$2 then v41$2 else p28$2);
    p26$1 := (if p25$1 && !v41$1 then !v41$1 else p26$1);
    p26$2 := (if p25$2 && !v41$2 then !v41$2 else p26$2);
    $pt.5$1, $density.5$1 := (if p26$1 then $pt.3$1 else $pt.5$1), (if p26$1 then $density.3$1 else $density.5$1);
    $pt.5$2, $density.5$2 := (if p26$2 then $pt.3$2 else $pt.5$2), (if p26$2 then $density.3$2 else $density.5$2);
    p28$1 := (if p27$1 then true else p28$1);
    p28$2 := (if p27$2 then true else p28$2);
    v42$1 := (if p28$1 then FLT32(0, v39$1) || FLT32(v39$1, 0) || FUNO32(v39$1, 0) else v42$1);
    v42$2 := (if p28$2 then FLT32(0, v39$2) || FLT32(v39$2, 0) || FUNO32(v39$2, 0) else v42$2);
    p30$1 := (if p28$1 && v42$1 then v42$1 else p30$1);
    p30$2 := (if p28$2 && v42$2 then v42$2 else p30$2);
    p29$1 := (if p28$1 && !v42$1 then !v42$1 else p29$1);
    p29$2 := (if p28$2 && !v42$2 then !v42$2 else p29$2);
    $pt.5$1, $density.5$1 := (if p29$1 then $pt.3$1 else $pt.5$1), (if p29$1 then $density.3$1 else $density.5$1);
    $pt.5$2, $density.5$2 := (if p29$2 then $pt.3$2 else $pt.5$2), (if p29$2 then $density.3$2 else $density.5$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 2), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 2), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v43$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 2)] else v43$1);
    v43$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 2)] else v43$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 2), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 2), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v44$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 2)] else v44$1);
    v44$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 2)] else v44$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 3), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 3), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v45$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 3)] else v45$1);
    v45$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 3)] else v45$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 3), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 3), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v46$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 3)] else v46$1);
    v46$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 3)] else v46$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 4), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 4), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v47$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 4)] else v47$1);
    v47$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 4)] else v47$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$gridding_GPU.sharedBin(p30$1, BV32_ADD(BV32_MUL($j.0$1, 6), 4), $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$gridding_GPU.sharedBin(p30$2, BV32_ADD(BV32_MUL($j.0$2, 6), 4), $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$gridding_GPU.sharedBin"} true;
    v48$1 := (if p30$1 then $$gridding_GPU.sharedBin[1bv1][BV32_ADD(BV32_MUL($j.0$1, 6), 4)] else v48$1);
    v48$2 := (if p30$2 then $$gridding_GPU.sharedBin[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 6), 4)] else v48$2);
    v49$1 := (if p30$1 then FADD32(FADD32(FMUL32(FSUB32(v43$1, SI32_TO_FP32(v4$1)), FSUB32(v44$1, SI32_TO_FP32(v4$1))), FMUL32(FSUB32(v45$1, SI32_TO_FP32(v5$1)), FSUB32(v46$1, SI32_TO_FP32(v5$1)))), FMUL32(FSUB32(v47$1, SI32_TO_FP32(v6$1)), FSUB32(v48$1, SI32_TO_FP32(v6$1)))) else v49$1);
    v49$2 := (if p30$2 then FADD32(FADD32(FMUL32(FSUB32(v43$2, SI32_TO_FP32(v4$2)), FSUB32(v44$2, SI32_TO_FP32(v4$2))), FMUL32(FSUB32(v45$2, SI32_TO_FP32(v5$2)), FSUB32(v46$2, SI32_TO_FP32(v5$2)))), FMUL32(FSUB32(v47$2, SI32_TO_FP32(v6$2)), FSUB32(v48$2, SI32_TO_FP32(v6$2)))) else v49$2);
    v50$1 := (if p30$1 then FLT64(FP32_CONV64(v49$1), 4618722892845154304) else v50$1);
    v50$2 := (if p30$2 then FLT64(FP32_CONV64(v49$2), 4618722892845154304) else v50$2);
    p32$1 := (if p30$1 && v50$1 then v50$1 else p32$1);
    p32$2 := (if p30$2 && v50$2 then v50$2 else p32$2);
    p31$1 := (if p30$1 && !v50$1 then !v50$1 else p31$1);
    p31$2 := (if p30$2 && !v50$2 then !v50$2 else p31$2);
    $pt.4$1, $density.4$1 := (if p31$1 then $pt.3$1 else $pt.4$1), (if p31$1 then $density.3$1 else $density.4$1);
    $pt.4$2, $density.4$2 := (if p31$2 then $pt.3$2 else $pt.4$2), (if p31$2 then $density.3$2 else $density.4$2);
    v51$1 := (if p32$1 then FP64_CONV32(FMUL64(FP32_CONV64($beta), FSQRT64(FADD64(FMUL64(FSUB64(-9223372036854775808, FP32_CONV64(v49$1)), 4594932627813569659), 4607182418800017408)))) else v51$1);
    v51$2 := (if p32$2 then FP64_CONV32(FMUL64(FP32_CONV64($beta), FSQRT64(FADD64(FMUL64(FSUB64(-9223372036854775808, FP32_CONV64(v49$2)), 4594932627813569659), 4607182418800017408)))) else v51$2);
    v52$1 := (if p32$1 then FMUL32(v51$1, v51$1) else v52$1);
    v52$2 := (if p32$2 then FMUL32(v51$2, v51$2) else v52$2);
    v53$1 := (if p32$1 then FMUL32(FDIV32(FSUB32(-2147483648, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, 432777539), 523487654)), 610081361)), 692319900)), 772037077)), 847880648)), 920370152)), 990168357)), 1055725654)), 1117183506)), 1174523828)), 1225494738)), 1269111979)), 1302990772)), 1319876621)), FADD32(FMUL32(v52$1, FADD32(FMUL32(v52$1, FSUB32(v52$1, 1161840514)), 1247030429)), -827607027)), v39$1) else v53$1);
    v53$2 := (if p32$2 then FMUL32(FDIV32(FSUB32(-2147483648, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, 432777539), 523487654)), 610081361)), 692319900)), 772037077)), 847880648)), 920370152)), 990168357)), 1055725654)), 1117183506)), 1174523828)), 1225494738)), 1269111979)), 1302990772)), 1319876621)), FADD32(FMUL32(v52$2, FADD32(FMUL32(v52$2, FSUB32(v52$2, 1161840514)), 1247030429)), -827607027)), v39$2) else v53$2);
    v54$1 := (if p32$1 then BV_EXTRACT($pt.3$1, 64, 32) else v54$1);
    v54$2 := (if p32$2 then BV_EXTRACT($pt.3$2, 64, 32) else v54$2);
    $pt.4$1, $density.4$1 := (if p32$1 then BV_CONCAT(FADD32(v54$1, FMUL32(v53$1, v38$1)), FADD32(BV_EXTRACT($pt.3$1, 32, 0), FMUL32(v53$1, v37$1))) else $pt.4$1), (if p32$1 then FADD32($density.3$1, 1065353216) else $density.4$1);
    $pt.4$2, $density.4$2 := (if p32$2 then BV_CONCAT(FADD32(v54$2, FMUL32(v53$2, v38$2)), FADD32(BV_EXTRACT($pt.3$2, 32, 0), FMUL32(v53$2, v37$2))) else $pt.4$2), (if p32$2 then FADD32($density.3$2, 1065353216) else $density.4$2);
    $pt.5$1, $density.5$1 := (if p30$1 then $pt.4$1 else $pt.5$1), (if p30$1 then $density.4$1 else $density.5$1);
    $pt.5$2, $density.5$2 := (if p30$2 then $pt.4$2 else $pt.5$2), (if p30$2 then $density.4$2 else $density.5$2);
    $pt.3$1, $density.3$1, $j.0$1 := (if p23$1 then $pt.5$1 else $pt.3$1), (if p23$1 then $density.5$1 else $density.3$1), (if p23$1 then BV32_ADD($j.0$1, 1) else $j.0$1);
    $pt.3$2, $density.3$2, $j.0$2 := (if p23$2 then $pt.5$2 else $pt.3$2), (if p23$2 then $density.5$2 else $density.3$2), (if p23$2 then BV32_ADD($j.0$2, 1) else $j.0$2);
    p22$1 := (if p23$1 then true else p22$1);
    p22$2 := (if p23$2 then true else p22$2);
    goto $30.backedge, $30.tail;

  $30.tail:
    assume !p22$1 && !p22$2;
    $pt.2$1, $density.2$1, $x.0$1 := (if p17$1 then $pt.3$1 else $pt.2$1), (if p17$1 then $density.3$1 else $density.2$1), (if p17$1 then BV32_ADD($x.0$1, 1) else $x.0$1);
    $pt.2$2, $density.2$2, $x.0$2 := (if p17$2 then $pt.3$2 else $pt.2$2), (if p17$2 then $density.3$2 else $density.2$2), (if p17$2 then BV32_ADD($x.0$2, 1) else $x.0$2);
    p16$1 := (if p17$1 then true else p16$1);
    p16$2 := (if p17$2 then true else p16$2);
    goto $23.backedge, $23.tail;

  $23.tail:
    assume !p16$1 && !p16$2;
    $pt.1$1, $density.1$1, $y.0$1 := (if p15$1 then $pt.2$1 else $pt.1$1), (if p15$1 then $density.2$1 else $density.1$1), (if p15$1 then BV32_ADD($y.0$1, 1) else $y.0$1);
    $pt.1$2, $density.1$2, $y.0$2 := (if p15$2 then $pt.2$2 else $pt.1$2), (if p15$2 then $density.2$2 else $density.1$2), (if p15$2 then BV32_ADD($y.0$2, 1) else $y.0$2);
    p14$1 := (if p15$1 then true else p14$1);
    p14$2 := (if p15$2 then true else p14$2);
    goto $21.backedge, $21.tail;

  $21.tail:
    assume !p14$1 && !p14$2;
    $pt.0$1, $density.0$1, $z.0$1 := (if p13$1 then $pt.1$1 else $pt.0$1), (if p13$1 then $density.1$1 else $density.0$1), (if p13$1 then BV32_ADD($z.0$1, 1) else $z.0$1);
    $pt.0$2, $density.0$2, $z.0$2 := (if p13$2 then $pt.1$2 else $pt.0$2), (if p13$2 then $density.1$2 else $density.0$2), (if p13$2 then BV32_ADD($z.0$2, 1) else $z.0$2);
    p12$1 := (if p13$1 then true else p12$1);
    p12$2 := (if p13$2 then true else p12$2);
    goto $19.backedge, $19.tail;

  $19.tail:
    assume !p12$1 && !p12$2;
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$gridData_g(true, BV32_MUL(v19$1, 2), BV_EXTRACT($pt.0$1, 32, 0), $$gridData_g[BV32_MUL(v19$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridData_g(true, BV32_MUL(v19$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$gridData_g(true, BV32_MUL(v19$2, 2), BV_EXTRACT($pt.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridData_g"} true;
    $$gridData_g[BV32_MUL(v19$1, 2)] := BV_EXTRACT($pt.0$1, 32, 0);
    $$gridData_g[BV32_MUL(v19$2, 2)] := BV_EXTRACT($pt.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 72} _LOG_WRITE_$$gridData_g(true, BV32_ADD(BV32_MUL(v19$1, 2), 1), BV_EXTRACT($pt.0$1, 64, 32), $$gridData_g[BV32_ADD(BV32_MUL(v19$1, 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridData_g(true, BV32_ADD(BV32_MUL(v19$2, 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 72} _CHECK_WRITE_$$gridData_g(true, BV32_ADD(BV32_MUL(v19$2, 2), 1), BV_EXTRACT($pt.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gridData_g"} true;
    $$gridData_g[BV32_ADD(BV32_MUL(v19$1, 2), 1)] := BV_EXTRACT($pt.0$1, 64, 32);
    $$gridData_g[BV32_ADD(BV32_MUL(v19$2, 2), 1)] := BV_EXTRACT($pt.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 73} _LOG_WRITE_$$sampleDensity_g(true, v19$1, $density.0$1, $$sampleDensity_g[v19$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sampleDensity_g(true, v19$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 73} _CHECK_WRITE_$$sampleDensity_g(true, v19$2, $density.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sampleDensity_g"} true;
    $$sampleDensity_g[v19$1] := $density.0$1;
    $$sampleDensity_g[v19$2] := $density.0$2;
    return;

  $19.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $19;

  $21.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $21;

  $23.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$23_0;

  $30.backedge:
    assume {:backedge} p22$1 || p22$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $30;
}



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 4 then 1 else 0) != 0;

axiom (if group_size_z == 2 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 8192 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$gridding_GPU.sharedBin, $$gridData_g, $$sampleDensity_g, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$gridding_GPU.sharedBin, $$gridData_g, $$sampleDensity_g, _TRACKING;









function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

































































const _WATCHED_VALUE_$$sample_g: int;

procedure {:inline 1} _LOG_READ_$$sample_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sample_g;



implementation {:inline 1} _LOG_READ_$$sample_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sample_g == _value then true else _READ_HAS_OCCURRED_$$sample_g);
    return;
}



procedure _CHECK_READ_$$sample_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sample_g);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sample_g: bool;

procedure {:inline 1} _LOG_WRITE_$$sample_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sample_g, _WRITE_READ_BENIGN_FLAG_$$sample_g;



implementation {:inline 1} _LOG_WRITE_$$sample_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sample_g == _value then true else _WRITE_HAS_OCCURRED_$$sample_g);
    _WRITE_READ_BENIGN_FLAG_$$sample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sample_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sample_g);
    return;
}



procedure _CHECK_WRITE_$$sample_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sample_g != _value);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sample_g != _value);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sample_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sample_g;



implementation {:inline 1} _LOG_ATOMIC_$$sample_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sample_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sample_g);
    return;
}



procedure _CHECK_ATOMIC_$$sample_g(_P: bool, _offset: int);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "sample_g"} {:array "$$sample_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sample_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sample_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sample_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sample_g := (if _P && _WRITE_HAS_OCCURRED_$$sample_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sample_g);
    return;
}



const _WATCHED_VALUE_$$binStartAddr_g: int;

procedure {:inline 1} _LOG_READ_$$binStartAddr_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$binStartAddr_g;



implementation {:inline 1} _LOG_READ_$$binStartAddr_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$binStartAddr_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binStartAddr_g == _value then true else _READ_HAS_OCCURRED_$$binStartAddr_g);
    return;
}



procedure _CHECK_READ_$$binStartAddr_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g: bool;

procedure {:inline 1} _LOG_WRITE_$$binStartAddr_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$binStartAddr_g, _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g;



implementation {:inline 1} _LOG_WRITE_$$binStartAddr_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$binStartAddr_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binStartAddr_g == _value then true else _WRITE_HAS_OCCURRED_$$binStartAddr_g);
    _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binStartAddr_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g);
    return;
}



procedure _CHECK_WRITE_$$binStartAddr_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binStartAddr_g != _value);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$binStartAddr_g != _value);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$binStartAddr_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$binStartAddr_g;



implementation {:inline 1} _LOG_ATOMIC_$$binStartAddr_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$binStartAddr_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$binStartAddr_g);
    return;
}



procedure _CHECK_ATOMIC_$$binStartAddr_g(_P: bool, _offset: int);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "binStartAddr_g"} {:array "$$binStartAddr_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binStartAddr_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$binStartAddr_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g := (if _P && _WRITE_HAS_OCCURRED_$$binStartAddr_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$binStartAddr_g);
    return;
}



const _WATCHED_VALUE_$$gridData_g: int;

procedure {:inline 1} _LOG_READ_$$gridData_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$gridData_g;



implementation {:inline 1} _LOG_READ_$$gridData_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridData_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridData_g == _value then true else _READ_HAS_OCCURRED_$$gridData_g);
    return;
}



procedure _CHECK_READ_$$gridData_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridData_g);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gridData_g: bool;

procedure {:inline 1} _LOG_WRITE_$$gridData_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$gridData_g, _WRITE_READ_BENIGN_FLAG_$$gridData_g;



implementation {:inline 1} _LOG_WRITE_$$gridData_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridData_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridData_g == _value then true else _WRITE_HAS_OCCURRED_$$gridData_g);
    _WRITE_READ_BENIGN_FLAG_$$gridData_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridData_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridData_g);
    return;
}



procedure _CHECK_WRITE_$$gridData_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridData_g != _value);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridData_g != _value);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gridData_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$gridData_g;



implementation {:inline 1} _LOG_ATOMIC_$$gridData_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridData_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridData_g);
    return;
}



procedure _CHECK_ATOMIC_$$gridData_g(_P: bool, _offset: int);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "gridData_g"} {:array "$$gridData_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridData_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridData_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridData_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridData_g := (if _P && _WRITE_HAS_OCCURRED_$$gridData_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridData_g);
    return;
}



const _WATCHED_VALUE_$$sampleDensity_g: int;

procedure {:inline 1} _LOG_READ_$$sampleDensity_g(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sampleDensity_g;



implementation {:inline 1} _LOG_READ_$$sampleDensity_g(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sampleDensity_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sampleDensity_g == _value then true else _READ_HAS_OCCURRED_$$sampleDensity_g);
    return;
}



procedure _CHECK_READ_$$sampleDensity_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g: bool;

procedure {:inline 1} _LOG_WRITE_$$sampleDensity_g(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sampleDensity_g, _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g;



implementation {:inline 1} _LOG_WRITE_$$sampleDensity_g(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sampleDensity_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sampleDensity_g == _value then true else _WRITE_HAS_OCCURRED_$$sampleDensity_g);
    _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sampleDensity_g == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g);
    return;
}



procedure _CHECK_WRITE_$$sampleDensity_g(_P: bool, _offset: int, _value: int);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sampleDensity_g != _value);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sampleDensity_g != _value);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sampleDensity_g(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sampleDensity_g;



implementation {:inline 1} _LOG_ATOMIC_$$sampleDensity_g(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sampleDensity_g := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sampleDensity_g);
    return;
}



procedure _CHECK_ATOMIC_$$sampleDensity_g(_P: bool, _offset: int);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset);
  requires {:source_name "sampleDensity_g"} {:array "$$sampleDensity_g"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sampleDensity_g(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sampleDensity_g(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g := (if _P && _WRITE_HAS_OCCURRED_$$sampleDensity_g && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sampleDensity_g);
    return;
}



const _WATCHED_VALUE_$$gridding_GPU.sharedBin: int;

procedure {:inline 1} _LOG_READ_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;



implementation {:inline 1} _LOG_READ_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridding_GPU.sharedBin == _value then true else _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin);
    return;
}



procedure _CHECK_READ_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin: bool;

procedure {:inline 1} _LOG_WRITE_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin, _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin;



implementation {:inline 1} _LOG_WRITE_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridding_GPU.sharedBin == _value then true else _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin);
    _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridding_GPU.sharedBin == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin);
    return;
}



procedure _CHECK_WRITE_$$gridding_GPU.sharedBin(_P: bool, _offset: int, _value: int);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridding_GPU.sharedBin != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gridding_GPU.sharedBin != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$gridding_GPU.sharedBin(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin;



implementation {:inline 1} _LOG_ATOMIC_$$gridding_GPU.sharedBin(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin);
    return;
}



procedure _CHECK_ATOMIC_$$gridding_GPU.sharedBin(_P: bool, _offset: int);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sharedBin"} {:array "$$gridding_GPU.sharedBin"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin := (if _P && _WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gridding_GPU.sharedBin);
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$gridData_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$gridData_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$gridData_g;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$sampleDensity_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$sampleDensity_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sampleDensity_g;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$gridData_g;
    goto anon7;

  anon7:
    havoc $$sampleDensity_g;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$gridding_GPU.sharedBin;
    goto anon3;

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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$gridding_GPU.sharedBin;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$gridData_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$gridData_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$gridData_g;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$sampleDensity_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$sampleDensity_g;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sampleDensity_g;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$gridData_g;
    goto anon7;

  anon7:
    havoc $$sampleDensity_g;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$gridding_GPU.sharedBin;
    goto anon3;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}






































































































































































































































































































































