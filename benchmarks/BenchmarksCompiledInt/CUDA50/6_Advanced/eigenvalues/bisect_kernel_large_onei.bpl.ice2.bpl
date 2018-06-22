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
 b0128: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$g_d"} {:global} {:elem_width 32} {:source_name "g_d"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_d: bool;

axiom {:array_info "$$g_s"} {:global} {:elem_width 32} {:source_name "g_s"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_s: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_s: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_s: bool;

var {:source_name "g_left"} {:global} $$g_left: [int]int;

axiom {:array_info "$$g_left"} {:global} {:elem_width 32} {:source_name "g_left"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_left: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_left: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_left: bool;

var {:source_name "g_right"} {:global} $$g_right: [int]int;

axiom {:array_info "$$g_right"} {:global} {:elem_width 32} {:source_name "g_right"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_right: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_right: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_right: bool;

var {:source_name "g_pos"} {:global} $$g_pos: [int]int;

axiom {:array_info "$$g_pos"} {:global} {:elem_width 32} {:source_name "g_pos"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_pos: bool;

var {:source_name "converged_all_threads"} {:group_shared} $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: [bv1][int]int;

axiom {:array_info "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:group_shared} {:elem_width 32} {:source_name "converged_all_threads"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: bool;

var {:source_name "s_left_scratch"} {:group_shared} $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: [bv1][int]int;

axiom {:array_info "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:group_shared} {:elem_width 32} {:source_name "s_left_scratch"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: bool;

var {:source_name "s_right_scratch"} {:group_shared} $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: [bv1][int]int;

axiom {:array_info "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:group_shared} {:elem_width 32} {:source_name "s_right_scratch"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: bool;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FLT32(int, int) : bool;

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

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "bisectKernelLarge_OneIntervals"} {:kernel} $_Z30bisectKernelLarge_OneIntervalsPfS_jjS_S_Pjf($n: int, $num_intervals: int, $precision: int);
  requires !_READ_HAS_OCCURRED_$$g_d && !_WRITE_HAS_OCCURRED_$$g_d && !_ATOMIC_HAS_OCCURRED_$$g_d;
  requires !_READ_HAS_OCCURRED_$$g_s && !_WRITE_HAS_OCCURRED_$$g_s && !_ATOMIC_HAS_OCCURRED_$$g_s;
  requires !_READ_HAS_OCCURRED_$$g_left && !_WRITE_HAS_OCCURRED_$$g_left && !_ATOMIC_HAS_OCCURRED_$$g_left;
  requires !_READ_HAS_OCCURRED_$$g_right && !_WRITE_HAS_OCCURRED_$$g_right && !_ATOMIC_HAS_OCCURRED_$$g_right;
  requires !_READ_HAS_OCCURRED_$$g_pos && !_WRITE_HAS_OCCURRED_$$g_pos && !_ATOMIC_HAS_OCCURRED_$$g_pos;
  requires !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
  requires !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
  requires !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
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
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _READ_HAS_OCCURRED_$$g_left, _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$g_left, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$g_left, _WRITE_READ_BENIGN_FLAG_$$g_left, _WRITE_READ_BENIGN_FLAG_$$g_left;



implementation {:source_name "bisectKernelLarge_OneIntervals"} {:kernel} $_Z30bisectKernelLarge_OneIntervalsPfS_jjS_S_Pjf($n: int, $num_intervals: int, $precision: int)
{
  var $left.0$1: int;
  var $left.0$2: int;
  var $right.0$1: int;
  var $right.0$2: int;
  var $right_count.0$1: int;
  var $right_count.0$2: int;
  var $left.1$1: int;
  var $left.1$2: int;
  var $right.1$1: int;
  var $right.1$2: int;
  var $converged.0$1: int;
  var $converged.0$2: int;
  var $mid.0$1: int;
  var $mid.0$2: int;
  var $mid.1$1: int;
  var $mid.1$2: int;
  var $mid.i.0$1: int;
  var $mid.i.0$2: int;
  var $delta.i.0$1: int;
  var $delta.i.0$2: int;
  var $count.i.0$1: int;
  var $count.i.0$2: int;
  var $rem.i.0$1: int;
  var $rem.i.0$2: int;
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $delta.i.2$1: int;
  var $delta.i.2$2: int;
  var $count.i.2$1: int;
  var $count.i.2$2: int;
  var $delta.i.1$1: int;
  var $delta.i.1$2: int;
  var $count.i.1$1: int;
  var $count.i.1$2: int;
  var $k.i.0$1: int;
  var $k.i.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $left.4$1: int;
  var $left.4$2: int;
  var $right.4$1: int;
  var $right.4$2: int;
  var $converged.2$1: int;
  var $converged.2$2: int;
  var $left.2$1: int;
  var $left.2$2: int;
  var $right.2$1: int;
  var $right.2$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $mid.i1.0$1: int;
  var $mid.i1.0$2: int;
  var $left.3$1: int;
  var $left.3$2: int;
  var $right.3$1: int;
  var $right.3$2: int;
  var $converged.1$1: int;
  var $converged.1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v41$1: int;
  var v41$2: int;
  var v40$1: int;
  var v40$2: int;
  var v39$1: int;
  var v39$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
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
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: bool;
  var v27$2: bool;
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
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: int;
  var v36$2: int;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bool;
  var v38$2: bool;
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
  var _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$$16: bool;
  var _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$$16: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $num_intervals);
    v1$2 := BV32_ULT(v0$2, $num_intervals);
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
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$g_left(p0$1, v0$1, $$g_left[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$g_left(p0$2, v0$2, $$g_left[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_left"} true;
    v2$1 := (if p0$1 then $$g_left[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$g_left[v0$2] else v2$2);
    v3$1 := (if p0$1 then $$g_right[v0$1] else v3$1);
    v3$2 := (if p0$2 then $$g_right[v0$2] else v3$2);
    v4$1 := (if p0$1 then $$g_pos[v0$1] else v4$1);
    v4$2 := (if p0$2 then $$g_pos[v0$2] else v4$2);
    $left.0$1, $right.0$1, $right_count.0$1 := (if p0$1 then v2$1 else $left.0$1), (if p0$1 then v3$1 else $right.0$1), (if p0$1 then v4$1 else $right_count.0$1);
    $left.0$2, $right.0$2, $right_count.0$2 := (if p0$2 then v2$2 else $left.0$2), (if p0$2 then v3$2 else $right.0$2), (if p0$2 then v4$2 else $right_count.0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p1$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p1$2 then _HAVOC_int$2 else v39$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p1$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p1$2 then _HAVOC_int$2 else v40$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p1$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p1$2 then _HAVOC_int$2 else v41$2);
    $left.0$1, $right.0$1, $right_count.0$1 := (if p1$1 then v39$1 else $left.0$1), (if p1$1 then v40$1 else $right.0$1), (if p1$1 then v41$1 else $right_count.0$1);
    $left.0$2, $right.0$2, $right_count.0$2 := (if p1$2 then v39$2 else $left.0$2), (if p1$2 then v40$2 else $right.0$2), (if p1$2 then v41$2 else $right_count.0$2);
    v5$1 := 0 == local_id_x$1;
    v5$2 := 0 == local_id_x$2;
    p2$1 := (if v5$1 then v5$1 else p2$1);
    p2$2 := (if v5$2 then v5$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p2$1, 0, 0, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p2$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p2$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} true;
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0] := (if p2$1 then 0 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p2$2 then 0 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_0(-1, -1);
    $left.1$1, $right.1$1, $converged.0$1, $mid.0$1 := $left.0$1, $right.0$1, 0, 0;
    $left.1$2, $right.1$2, $converged.0$2, $mid.0$2 := $left.0$2, $right.0$2, 0, 0;
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
assert  my_inv (  ( p4$1 ==> BV32_SLE($converged.0$1, 0) )  && ( p4$2 ==> BV32_SLE($converged.0$2, 0) ) ,  ( p4$1 ==> BV32_SGE($converged.0$1, 0) )  && ( p4$2 ==> BV32_SGE($converged.0$2, 0) ) ,  ( p4$1 ==> BV32_ULE($converged.0$1, 0) )  && ( p4$2 ==> BV32_ULE($converged.0$2, 0) ) ,  ( p4$1 ==> BV32_UGE($converged.0$1, 0) )  && ( p4$2 ==> BV32_UGE($converged.0$2, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $left.1$1 == $left.1$2 ) ,  (  p4$1 && p4$2 ==> $right.1$1 == $right.1$2 ) ,  (  p4$1 && p4$2 ==> $converged.0$1 == $converged.0$2 ) ,  (  p4$1 && p4$2 ==> $mid.0$1 == $mid.0$2 ) ,  (  p4$1 && p4$2 ==> $mid.1$1 == $mid.1$2 ) ,  (  p4$1 && p4$2 ==> $mid.i.0$1 == $mid.i.0$2 ) ,  (  p4$1 && p4$2 ==> $delta.i.0$1 == $delta.i.0$2 ) ,  (  p4$1 && p4$2 ==> $count.i.0$1 == $count.i.0$2 ) ,  (  p4$1 && p4$2 ==> $rem.i.0$1 == $rem.i.0$2 ) ,  (  p4$1 && p4$2 ==> $i.i.0$1 == $i.i.0$2 ) ,  (  p4$1 && p4$2 ==> $delta.i.2$1 == $delta.i.2$2 ) ,  (  p4$1 && p4$2 ==> $count.i.2$1 == $count.i.2$2 ) ,  (  p4$1 && p4$2 ==> $delta.i.1$1 == $delta.i.1$2 ) ,  (  p4$1 && p4$2 ==> $count.i.1$1 == $count.i.1$2 ) ,  (  p4$1 && p4$2 ==> $k.i.0$1 == $k.i.0$2 ) ,  (  p4$1 && p4$2 ==> $0$1 == $0$2 ) ,  (  p4$1 && p4$2 ==> $left.4$1 == $left.4$2 ) ,  (  p4$1 && p4$2 ==> $right.4$1 == $right.4$2 ) ,  (  p4$1 && p4$2 ==> $converged.2$1 == $converged.2$2 ) ,  (  p4$1 && p4$2 ==> $left.2$1 == $left.2$2 ) ,  (  p4$1 && p4$2 ==> $right.2$1 == $right.2$2 ) ,  (  p4$1 && p4$2 ==> $1$1 == $1$2 ) ,  (  p4$1 && p4$2 ==> $2$1 == $2$2 ) ,  (  p4$1 && p4$2 ==> $mid.i1.0$1 == $mid.i1.0$2 ) ,  (  p4$1 && p4$2 ==> $left.3$1 == $left.3$2 ) ,  (  p4$1 && p4$2 ==> $right.3$1 == $right.3$2 ) ,  (  p4$1 && p4$2 ==> $converged.1$1 == $converged.1$2 ) ,  (  p4$1 && p4$2 ==> v6$1 == v6$2 ) ,  (  p4$1 && p4$2 ==> v7$1 == v7$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  p4$1 && p4$2 ==> v15$1 == v15$2 ) ,  (  p4$1 && p4$2 ==> v16$1 == v16$2 ) ,  (  p4$1 && p4$2 ==> v17$1 == v17$2 ) ,  (  p4$1 && p4$2 ==> v18$1 == v18$2 ) ,  (  p4$1 && p4$2 ==> v19$1 == v19$2 ) ,  (  p4$1 && p4$2 ==> v20$1 == v20$2 ) ,  (  p4$1 && p4$2 ==> v21$1 == v21$2 ) ,  (  p4$1 && p4$2 ==> v22$1 == v22$2 ) ,  (  p4$1 && p4$2 ==> v23$1 == v23$2 ) ,  (  p4$1 && p4$2 ==> v24$1 == v24$2 ) ,  (  p4$1 && p4$2 ==> v27$1 == v27$2 ) ,  (  p4$1 && p4$2 ==> v30$1 == v30$2 ) ,  (  p4$1 && p4$2 ==> v31$1 == v31$2 ) ,  (  p4$1 && p4$2 ==> v32$1 == v32$2 ) ,  (  p4$1 && p4$2 ==> v35$1 == v35$2 ) ,  (  p4$1 && p4$2 ==> v36$1 == v36$2 ) ,  (  p4$1 && p4$2 ==> v37$1 == v37$2 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> _WATCHED_OFFSET == 0 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> _WATCHED_OFFSET == 0 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> _WATCHED_OFFSET == local_id_x$1 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 10} p4$1 ==> true;
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p4$1, 0, 1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p4$2, 0, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} true;
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0] := (if p4$1 then 1 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p4$2 then 1 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    v6$1 := (if p4$1 then BV32_ULT(v0$1, $num_intervals) else v6$1);
    v6$2 := (if p4$2 then BV32_ULT(v0$2, $num_intervals) else v6$2);
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
    p6$1 := (if p4$1 && v6$1 then v6$1 else p6$1);
    p6$2 := (if p4$2 && v6$2 then v6$2 else p6$2);
    p5$1 := (if p4$1 && !v6$1 then !v6$1 else p5$1);
    p5$2 := (if p4$2 && !v6$2 then !v6$2 else p5$2);
    $mid.1$1 := (if p5$1 then $mid.0$1 else $mid.1$1);
    $mid.1$2 := (if p5$2 then $mid.0$2 else $mid.1$2);
    v7$1 := (if p6$1 then 0 == $converged.0$1 else v7$1);
    v7$2 := (if p6$2 then 0 == $converged.0$2 else v7$2);
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $mid.1$1 := (if p7$1 then $mid.0$1 else $mid.1$1);
    $mid.1$2 := (if p7$2 then $mid.0$2 else $mid.1$2);
    call {:sourceloc_num 14} v8$1, v8$2 := $_Z6sign_ff(p8$1, $left.1$1, p8$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 15} v9$1, v9$2 := $_Z6sign_ff(p8$1, $right.1$1, p8$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v10$1 := (if p8$1 then v8$1 == v9$1 else v10$1);
    v10$2 := (if p8$2 then v8$2 == v9$2 else v10$2);
    p10$1 := (if p8$1 && v10$1 then v10$1 else p10$1);
    p10$2 := (if p8$2 && v10$2 then v10$2 else p10$2);
    p9$1 := (if p8$1 && !v10$1 then !v10$1 else p9$1);
    p9$2 := (if p8$2 && !v10$2 then !v10$2 else p9$2);
    $mid.i.0$1 := (if p9$1 then FMUL32(FADD32($left.1$1, $right.1$1), 1056964608) else $mid.i.0$1);
    $mid.i.0$2 := (if p9$2 then FMUL32(FADD32($left.1$2, $right.1$2), 1056964608) else $mid.i.0$2);
    $mid.i.0$1 := (if p10$1 then FADD32($left.1$1, FMUL32(FSUB32($right.1$1, $left.1$1), 1056964608)) else $mid.i.0$1);
    $mid.i.0$2 := (if p10$2 then FADD32($left.1$2, FMUL32(FSUB32($right.1$2, $left.1$2), 1056964608)) else $mid.i.0$2);
    $mid.1$1 := (if p8$1 then $mid.i.0$1 else $mid.1$1);
    $mid.1$2 := (if p8$2 then $mid.i.0$2 else $mid.1$2);
    $delta.i.0$1, $count.i.0$1, $rem.i.0$1, $i.i.0$1 := (if p4$1 then 1065353216 else $delta.i.0$1), (if p4$1 then 0 else $count.i.0$1), (if p4$1 then $n else $rem.i.0$1), (if p4$1 then 0 else $i.i.0$1);
    $delta.i.0$2, $count.i.0$2, $rem.i.0$2, $i.i.0$2 := (if p4$2 then 1065353216 else $delta.i.0$2), (if p4$2 then 0 else $count.i.0$2), (if p4$2 then $n else $rem.i.0$2), (if p4$2 then 0 else $i.i.0$2);
    p11$1 := (if p4$1 then true else p11$1);
    p11$2 := (if p4$2 then true else p11$2);
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0 := _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0 := _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0 := _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0 := _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$11_0;

  __partitioned_block_$11_0:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p11$1 == p11$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p11$1 == p11$2 ) ,  (  p11$1 && p11$2 ==> $delta.i.0$1 == $delta.i.0$2 ) ,  (  p11$1 && p11$2 ==> $count.i.0$1 == $count.i.0$2 ) ,  (  p11$1 && p11$2 ==> $rem.i.0$1 == $rem.i.0$2 ) ,  (  p11$1 && p11$2 ==> $i.i.0$1 == $i.i.0$2 ) ,  (  p11$1 && p11$2 ==> $delta.i.2$1 == $delta.i.2$2 ) ,  (  p11$1 && p11$2 ==> $count.i.2$1 == $count.i.2$2 ) ,  (  p11$1 && p11$2 ==> $delta.i.1$1 == $delta.i.1$2 ) ,  (  p11$1 && p11$2 ==> $count.i.1$1 == $count.i.1$2 ) ,  (  p11$1 && p11$2 ==> $k.i.0$1 == $k.i.0$2 ) ,  (  p11$1 && p11$2 ==> $0$1 == $0$2 ) ,  (  p11$1 && p11$2 ==> v11$1 == v11$2 ) ,  (  p11$1 && p11$2 ==> v12$1 == v12$2 ) ,  (  p11$1 && p11$2 ==> v13$1 == v13$2 ) ,  (  p11$1 && p11$2 ==> v14$1 == v14$2 ) ,  (  p11$1 && p11$2 ==> v15$1 == v15$2 ) ,  (  p11$1 && p11$2 ==> v16$1 == v16$2 ) ,  (  p11$1 && p11$2 ==> v17$1 == v17$2 ) ,  (  p11$1 && p11$2 ==> v18$1 == v18$2 ) ,  (  p11$1 && p11$2 ==> v19$1 == v19$2 ) ,  (  p11$1 && p11$2 ==> v20$1 == v20$2 ) ,  (  p11$1 && p11$2 ==> v21$1 == v21$2 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0 == _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  !p4$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$__partitioned_block_$11_0 == _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !p4$1 ==> _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0 == _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  (  !p4$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$__partitioned_block_$11_0 == _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p4"} true;
    assert p11$1 ==> p4$1;
    assert p11$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  ( p11$1 ==> $i.i.0$1 mod group_size_x == 0 mod group_size_x )  && ( p11$2 ==> $i.i.0$2 mod group_size_x == 0 mod group_size_x ) ,  ( p11$1 ==> BV32_SLE($i.i.0$1, 0) )  && ( p11$2 ==> BV32_SLE($i.i.0$2, 0) ) ,  ( p11$1 ==> BV32_SGE($i.i.0$1, 0) )  && ( p11$2 ==> BV32_SGE($i.i.0$2, 0) ) ,  ( p11$1 ==> BV32_ULE($i.i.0$1, 0) )  && ( p11$2 ==> BV32_ULE($i.i.0$2, 0) ) ,  ( p11$1 ==> BV32_UGE($i.i.0$1, 0) )  && ( p11$2 ==> BV32_UGE($i.i.0$2, 0) ) ,  ( p11$1 ==> BV32_SLE($rem.i.0$1, $n) )  && ( p11$2 ==> BV32_SLE($rem.i.0$2, $n) ) ,  ( p11$1 ==> BV32_SGE($rem.i.0$1, $n) )  && ( p11$2 ==> BV32_SGE($rem.i.0$2, $n) ) ,  ( p11$1 ==> BV32_ULE($rem.i.0$1, $n) )  && ( p11$2 ==> BV32_ULE($rem.i.0$2, $n) ) ,  ( p11$1 ==> BV32_UGE($rem.i.0$1, $n) )  && ( p11$2 ==> BV32_UGE($rem.i.0$2, $n) ) ,  (  BV32_ULT($i.i.0$1, $n) ==> p11$1 )  && (  BV32_ULT($i.i.0$2, $n) ==> p11$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 20} p11$1 ==> true;
    v11$1 := (if p11$1 then BV32_ULT($i.i.0$1, $n) else v11$1);
    v11$2 := (if p11$2 then BV32_ULT($i.i.0$2, $n) else v11$2);
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
    p12$1 := (if p11$1 && v11$1 then v11$1 else p12$1);
    p12$2 := (if p11$2 && v11$2 then v11$2 else p12$2);
    p11$1 := (if p11$1 && !v11$1 then v11$1 else p11$1);
    p11$2 := (if p11$2 && !v11$2 then v11$2 else p11$2);
    goto __partitioned_block_$11_1;

  __partitioned_block_$11_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_5(-1, -1, p12$1, p12$2);
    v12$1 := (if p12$1 then BV32_ULT(BV32_ADD($i.i.0$1, local_id_x$1), $n) else v12$1);
    v12$2 := (if p12$2 then BV32_ULT(BV32_ADD($i.i.0$2, local_id_x$2), $n) else v12$2);
    p14$1 := (if p12$1 && v12$1 then v12$1 else p14$1);
    p14$2 := (if p12$2 && v12$2 then v12$2 else p14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p14$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p14$2 then _HAVOC_int$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(p14$1, local_id_x$1, v13$1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(p14$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(p14$2, local_id_x$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} true;
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[1bv1][local_id_x$1] := (if p14$1 then v13$1 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[1bv1][local_id_x$1]);
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p14$2 then v13$2 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p14$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p14$2 then _HAVOC_int$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p14$1, local_id_x$1, v14$1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p14$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p14$2, local_id_x$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} true;
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][local_id_x$1] := (if p14$1 then v14$1 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][local_id_x$1]);
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p14$2 then v14$2 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$11_2;

  __partitioned_block_$11_2:
    call {:sourceloc_num 29} $bugle_barrier_duplicated_6(-1, -1, p12$1, p12$2);
    v15$1 := (if p12$1 then BV32_ULT(v0$1, $num_intervals) else v15$1);
    v15$2 := (if p12$2 then BV32_ULT(v0$2, $num_intervals) else v15$2);
    p16$1 := (if p12$1 && v15$1 then v15$1 else p16$1);
    p16$2 := (if p12$2 && v15$2 then v15$2 else p16$2);
    p15$1 := (if p12$1 && !v15$1 then !v15$1 else p15$1);
    p15$2 := (if p12$2 && !v15$2 then !v15$2 else p15$2);
    $delta.i.2$1, $count.i.2$1 := (if p15$1 then $delta.i.0$1 else $delta.i.2$1), (if p15$1 then $count.i.0$1 else $count.i.2$1);
    $delta.i.2$2, $count.i.2$2 := (if p15$2 then $delta.i.0$2 else $delta.i.2$2), (if p15$2 then $count.i.0$2 else $count.i.2$2);
    $delta.i.1$1, $count.i.1$1, $k.i.0$1 := (if p16$1 then $delta.i.0$1 else $delta.i.1$1), (if p16$1 then $count.i.0$1 else $count.i.1$1), (if p16$1 then 0 else $k.i.0$1);
    $delta.i.1$2, $count.i.1$2, $k.i.0$2 := (if p16$2 then $delta.i.0$2 else $delta.i.1$2), (if p16$2 then $count.i.0$2 else $count.i.1$2), (if p16$2 then 0 else $k.i.0$2);
    p17$1 := (if p16$1 then true else p17$1);
    p17$2 := (if p16$2 then true else p17$2);
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$$16 := _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$$16 := _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $16;

  $16:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p16$1 ==> _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch$ghost$$16 == _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p16$1 ==> _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch$ghost$$16 == _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p17"} {:dominator_predicate "p16"} true;
    assert p17$1 ==> p11$1;
    assert p17$2 ==> p11$2;
    assert p11$1 ==> p4$1;
    assert p11$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p17$1 ==> $k.i.0$1 mod 1 == 0 mod 1 )  && ( p17$2 ==> $k.i.0$2 mod 1 == 0 mod 1 ) ,  ( p17$1 ==> BV32_SLE($k.i.0$1, 0) )  && ( p17$2 ==> BV32_SLE($k.i.0$2, 0) ) ,  ( p17$1 ==> BV32_SGE($k.i.0$1, 0) )  && ( p17$2 ==> BV32_SGE($k.i.0$2, 0) ) ,  ( p17$1 ==> BV32_ULE($k.i.0$1, 0) )  && ( p17$2 ==> BV32_ULE($k.i.0$2, 0) ) ,  ( p17$1 ==> BV32_UGE($k.i.0$1, 0) )  && ( p17$2 ==> BV32_UGE($k.i.0$2, 0) ) ,  ( p17$1 ==> p17$1 ==> BV32_ULT($i.i.0$1, $n) && BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $num_intervals) )  && ( p17$2 ==> p17$2 ==> BV32_ULT($i.i.0$2, $n) && BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $num_intervals) ) ,  (  BV32_ULT($i.i.0$1, $n) && BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $num_intervals) && BV32_ULT($k.i.0$1, $0$1) ==> p17$1 )  && (  BV32_ULT($i.i.0$2, $n) && BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2), $num_intervals) && BV32_ULT($k.i.0$2, $0$2) ==> p17$2 ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> BV32_ULT($i.i.0$1, $n) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch ==> BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $num_intervals) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> BV32_ULT($i.i.0$1, $n) ) ,  (  _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch ==> BV32_ULT(BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1), $num_intervals) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 31} p17$1 ==> true;
    v16$1 := (if p17$1 then BV32_ULT($rem.i.0$1, group_size_x) else v16$1);
    v16$2 := (if p17$2 then BV32_ULT($rem.i.0$2, group_size_x) else v16$2);
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p19$1 := (if p17$1 && v16$1 then v16$1 else p19$1);
    p19$2 := (if p17$2 && v16$2 then v16$2 else p19$2);
    p18$1 := (if p17$1 && !v16$1 then !v16$1 else p18$1);
    p18$2 := (if p17$2 && !v16$2 then !v16$2 else p18$2);
    $0$1 := (if p18$1 then group_size_x else $0$1);
    $0$2 := (if p18$2 then group_size_x else $0$2);
    $0$1 := (if p19$1 then $rem.i.0$1 else $0$1);
    $0$2 := (if p19$2 then $rem.i.0$2 else $0$2);
    v17$1 := (if p17$1 then BV32_ULT($k.i.0$1, $0$1) else v17$1);
    v17$2 := (if p17$2 then BV32_ULT($k.i.0$2, $0$2) else v17$2);
    p20$1 := (if p17$1 && v17$1 then v17$1 else p20$1);
    p20$2 := (if p17$2 && v17$2 then v17$2 else p20$2);
    p17$1 := (if p17$1 && !v17$1 then v17$1 else p17$1);
    p17$2 := (if p17$2 && !v17$2 then v17$2 else p17$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(p20$1, $k.i.0$1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(p20$2, $k.i.0$2, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} true;
    v18$1 := (if p20$1 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[1bv1][$k.i.0$1] else v18$1);
    v18$2 := (if p20$2 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v18$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p20$1, $k.i.0$1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p20$2, $k.i.0$2, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} true;
    v19$1 := (if p20$1 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][$k.i.0$1] else v19$1);
    v19$2 := (if p20$2 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v19$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p20$1, $k.i.0$1, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(p20$2, $k.i.0$2, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} true;
    v20$1 := (if p20$1 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[1bv1][$k.i.0$1] else v20$1);
    v20$2 := (if p20$2 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v20$2);
    v21$1 := (if p20$1 then FSUB32(FSUB32(v18$1, $mid.1$1), FDIV32(FMUL32(v19$1, v20$1), $delta.i.1$1)) else v21$1);
    v21$2 := (if p20$2 then FSUB32(FSUB32(v18$2, $mid.1$2), FDIV32(FMUL32(v19$2, v20$2), $delta.i.1$2)) else v21$2);
    $delta.i.1$1, $count.i.1$1, $k.i.0$1 := (if p20$1 then v21$1 else $delta.i.1$1), (if p20$1 then BV32_ADD($count.i.1$1, (if FLT32(v21$1, 0) then 1 else 0)) else $count.i.1$1), (if p20$1 then BV32_ADD($k.i.0$1, 1) else $k.i.0$1);
    $delta.i.1$2, $count.i.1$2, $k.i.0$2 := (if p20$2 then v21$2 else $delta.i.1$2), (if p20$2 then BV32_ADD($count.i.1$2, (if FLT32(v21$2, 0) then 1 else 0)) else $count.i.1$2), (if p20$2 then BV32_ADD($k.i.0$2, 1) else $k.i.0$2);
    p17$1 := (if p20$1 then true else p17$1);
    p17$2 := (if p20$2 then true else p17$2);
    goto $16.backedge, $16.tail;

  $16.tail:
    assume !p17$1 && !p17$2;
    $delta.i.2$1, $count.i.2$1 := (if p16$1 then $delta.i.1$1 else $delta.i.2$1), (if p16$1 then $count.i.1$1 else $count.i.2$1);
    $delta.i.2$2, $count.i.2$2 := (if p16$2 then $delta.i.1$2 else $delta.i.2$2), (if p16$2 then $count.i.1$2 else $count.i.2$2);
    $delta.i.0$1, $count.i.0$1, $rem.i.0$1, $i.i.0$1 := (if p12$1 then $delta.i.2$1 else $delta.i.0$1), (if p12$1 then $count.i.2$1 else $count.i.0$1), (if p12$1 then BV32_SUB($rem.i.0$1, group_size_x) else $rem.i.0$1), (if p12$1 then BV32_ADD($i.i.0$1, group_size_x) else $i.i.0$1);
    $delta.i.0$2, $count.i.0$2, $rem.i.0$2, $i.i.0$2 := (if p12$2 then $delta.i.2$2 else $delta.i.0$2), (if p12$2 then $count.i.2$2 else $count.i.0$2), (if p12$2 then BV32_SUB($rem.i.0$2, group_size_x) else $rem.i.0$2), (if p12$2 then BV32_ADD($i.i.0$2, group_size_x) else $i.i.0$2);
    p11$1 := (if p12$1 then true else p11$1);
    p11$2 := (if p12$2 then true else p11$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p11$1 && !p11$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 42} $bugle_barrier_duplicated_1(-1, -1, p4$1, p4$2);
    v22$1 := (if p4$1 then BV32_ULT(v0$1, $num_intervals) else v22$1);
    v22$2 := (if p4$2 then BV32_ULT(v0$2, $num_intervals) else v22$2);
    p22$1 := (if p4$1 && v22$1 then v22$1 else p22$1);
    p22$2 := (if p4$2 && v22$2 then v22$2 else p22$2);
    p21$1 := (if p4$1 && !v22$1 then !v22$1 else p21$1);
    p21$2 := (if p4$2 && !v22$2 then !v22$2 else p21$2);
    $left.4$1, $right.4$1, $converged.2$1 := (if p21$1 then $left.1$1 else $left.4$1), (if p21$1 then $right.1$1 else $right.4$1), (if p21$1 then $converged.0$1 else $converged.2$1);
    $left.4$2, $right.4$2, $converged.2$2 := (if p21$2 then $left.1$2 else $left.4$2), (if p21$2 then $right.1$2 else $right.4$2), (if p21$2 then $converged.0$2 else $converged.2$2);
    v23$1 := (if p22$1 then 0 == $converged.0$1 else v23$1);
    v23$2 := (if p22$2 then 0 == $converged.0$2 else v23$2);
    p24$1 := (if p22$1 && v23$1 then v23$1 else p24$1);
    p24$2 := (if p22$2 && v23$2 then v23$2 else p24$2);
    p23$1 := (if p22$1 && !v23$1 then !v23$1 else p23$1);
    p23$2 := (if p22$2 && !v23$2 then !v23$2 else p23$2);
    $left.4$1, $right.4$1, $converged.2$1 := (if p23$1 then $left.1$1 else $left.4$1), (if p23$1 then $right.1$1 else $right.4$1), (if p23$1 then $converged.0$1 else $converged.2$1);
    $left.4$2, $right.4$2, $converged.2$2 := (if p23$2 then $left.1$2 else $left.4$2), (if p23$2 then $right.1$2 else $right.4$2), (if p23$2 then $converged.0$2 else $converged.2$2);
    v24$1 := (if p24$1 then $right_count.0$1 == $count.i.0$1 else v24$1);
    v24$2 := (if p24$2 then $right_count.0$2 == $count.i.0$2 else v24$2);
    p26$1 := (if p24$1 && v24$1 then v24$1 else p26$1);
    p26$2 := (if p24$2 && v24$2 then v24$2 else p26$2);
    p25$1 := (if p24$1 && !v24$1 then !v24$1 else p25$1);
    p25$2 := (if p24$2 && !v24$2 then !v24$2 else p25$2);
    $left.2$1, $right.2$1 := (if p25$1 then $mid.1$1 else $left.2$1), (if p25$1 then $right.1$1 else $right.2$1);
    $left.2$2, $right.2$2 := (if p25$2 then $mid.1$2 else $left.2$2), (if p25$2 then $right.1$2 else $right.2$2);
    $left.2$1, $right.2$1 := (if p26$1 then $left.1$1 else $left.2$1), (if p26$1 then $mid.1$1 else $right.2$1);
    $left.2$2, $right.2$2 := (if p26$2 then $left.1$2 else $left.2$2), (if p26$2 then $mid.1$2 else $right.2$2);
    call {:sourceloc_num 48} v25$1, v25$2 := $abs(p24$1, $right.2$1, p24$2, $right.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 49} v26$1, v26$2 := $abs(p24$1, $left.2$1, p24$2, $left.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v27$1 := (if p24$1 then FLT32(v25$1, v26$1) else v27$1);
    v27$2 := (if p24$2 then FLT32(v25$2, v26$2) else v27$2);
    p28$1 := (if p24$1 && v27$1 then v27$1 else p28$1);
    p28$2 := (if p24$2 && v27$2 then v27$2 else p28$2);
    p27$1 := (if p24$1 && !v27$1 then !v27$1 else p27$1);
    p27$2 := (if p24$2 && !v27$2 then !v27$2 else p27$2);
    call {:sourceloc_num 53} v29$1, v29$2 := $abs(p27$1, $right.2$1, p27$2, $right.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $1$1 := (if p27$1 then v29$1 else $1$1);
    $1$2 := (if p27$2 then v29$2 else $1$2);
    call {:sourceloc_num 51} v28$1, v28$2 := $abs(p28$1, $left.2$1, p28$2, $left.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $1$1 := (if p28$1 then v28$1 else $1$1);
    $1$2 := (if p28$2 then v28$2 else $1$2);
    v30$1 := (if p24$1 then FMUL32($1$1, $precision) else v30$1);
    v30$2 := (if p24$2 then FMUL32($1$2, $precision) else v30$2);
    v31$1 := (if p24$1 then FLT32($precision, v30$1) else v31$1);
    v31$2 := (if p24$2 then FLT32($precision, v30$2) else v31$2);
    p30$1 := (if p24$1 && v31$1 then v31$1 else p30$1);
    p30$2 := (if p24$2 && v31$2 then v31$2 else p30$2);
    p29$1 := (if p24$1 && !v31$1 then !v31$1 else p29$1);
    p29$2 := (if p24$2 && !v31$2 then !v31$2 else p29$2);
    $2$1 := (if p29$1 then v30$1 else $2$1);
    $2$2 := (if p29$2 then v30$2 else $2$2);
    $2$1 := (if p30$1 then $precision else $2$1);
    $2$2 := (if p30$2 then $precision else $2$2);
    v32$1 := (if p24$1 then FLT32(FSUB32($right.2$1, $left.2$1), $2$1) else v32$1);
    v32$2 := (if p24$2 then FLT32(FSUB32($right.2$2, $left.2$2), $2$2) else v32$2);
    p32$1 := (if p24$1 && v32$1 then v32$1 else p32$1);
    p32$2 := (if p24$2 && v32$2 then v32$2 else p32$2);
    p31$1 := (if p24$1 && !v32$1 then !v32$1 else p31$1);
    p31$2 := (if p24$2 && !v32$2 then !v32$2 else p31$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p31$1, 0, 0, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p31$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p31$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} true;
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0] := (if p31$1 then 0 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p31$2 then 0 else $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    $left.3$1, $right.3$1, $converged.1$1 := (if p31$1 then $left.2$1 else $left.3$1), (if p31$1 then $right.2$1 else $right.3$1), (if p31$1 then $converged.0$1 else $converged.1$1);
    $left.3$2, $right.3$2, $converged.1$2 := (if p31$2 then $left.2$2 else $left.3$2), (if p31$2 then $right.2$2 else $right.3$2), (if p31$2 then $converged.0$2 else $converged.1$2);
    call {:sourceloc_num 59} v33$1, v33$2 := $_Z6sign_ff(p32$1, $left.2$1, p32$2, $left.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 60} v34$1, v34$2 := $_Z6sign_ff(p32$1, $right.2$1, p32$2, $right.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v35$1 := (if p32$1 then v33$1 == v34$1 else v35$1);
    v35$2 := (if p32$2 then v33$2 == v34$2 else v35$2);
    p34$1 := (if p32$1 && v35$1 then v35$1 else p34$1);
    p34$2 := (if p32$2 && v35$2 then v35$2 else p34$2);
    p33$1 := (if p32$1 && !v35$1 then !v35$1 else p33$1);
    p33$2 := (if p32$2 && !v35$2 then !v35$2 else p33$2);
    $mid.i1.0$1 := (if p33$1 then FMUL32(FADD32($left.2$1, $right.2$1), 1056964608) else $mid.i1.0$1);
    $mid.i1.0$2 := (if p33$2 then FMUL32(FADD32($left.2$2, $right.2$2), 1056964608) else $mid.i1.0$2);
    $mid.i1.0$1 := (if p34$1 then FADD32($left.2$1, FMUL32(FSUB32($right.2$1, $left.2$1), 1056964608)) else $mid.i1.0$1);
    $mid.i1.0$2 := (if p34$2 then FADD32($left.2$2, FMUL32(FSUB32($right.2$2, $left.2$2), 1056964608)) else $mid.i1.0$2);
    $left.3$1, $right.3$1, $converged.1$1 := (if p32$1 then $mid.i1.0$1 else $left.3$1), (if p32$1 then $mid.i1.0$1 else $right.3$1), (if p32$1 then 1 else $converged.1$1);
    $left.3$2, $right.3$2, $converged.1$2 := (if p32$2 then $mid.i1.0$2 else $left.3$2), (if p32$2 then $mid.i1.0$2 else $right.3$2), (if p32$2 then 1 else $converged.1$2);
    $left.4$1, $right.4$1, $converged.2$1 := (if p24$1 then $left.3$1 else $left.4$1), (if p24$1 then $right.3$1 else $right.4$1), (if p24$1 then $converged.1$1 else $converged.2$1);
    $left.4$2, $right.4$2, $converged.2$2 := (if p24$2 then $left.3$2 else $left.4$2), (if p24$2 then $right.3$2 else $right.4$2), (if p24$2 then $converged.1$2 else $converged.2$2);
    goto __partitioned_block_$11.tail_2;

  __partitioned_block_$11.tail_2:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_2(-1, -1, p4$1, p4$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p4$1, 0, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(p4$2, 0, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} true;
    v36$1 := (if p4$1 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[1bv1][0] else v36$1);
    v36$2 := (if p4$2 then $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v36$2);
    v37$1 := (if p4$1 then 1 == v36$1 else v37$1);
    v37$2 := (if p4$2 then 1 == v36$2 else v37$2);
    p4$1 := (if p4$1 && v37$1 then !v37$1 else p4$1);
    p4$2 := (if p4$2 && v37$2 then !v37$2 else p4$2);
    p35$1 := (if p4$1 && !v37$1 then !v37$1 else p35$1);
    p35$2 := (if p4$2 && !v37$2 then !v37$2 else p35$2);
    goto __partitioned_block_$11.tail_3;

  __partitioned_block_$11.tail_3:
    call {:sourceloc_num 72} $bugle_barrier_duplicated_3(-1, -1, p35$1, p35$2);
    $left.1$1, $right.1$1, $converged.0$1, $mid.0$1 := (if p35$1 then $left.4$1 else $left.1$1), (if p35$1 then $right.4$1 else $right.1$1), (if p35$1 then $converged.2$1 else $converged.0$1), (if p35$1 then $mid.1$1 else $mid.0$1);
    $left.1$2, $right.1$2, $converged.0$2, $mid.0$2 := (if p35$2 then $left.4$2 else $left.1$2), (if p35$2 then $right.4$2 else $right.1$2), (if p35$2 then $converged.2$2 else $converged.0$2), (if p35$2 then $mid.1$2 else $mid.0$2);
    p4$1 := (if p35$1 then true else p4$1);
    p4$2 := (if p35$2 then true else p4$2);
    goto $5.backedge, __partitioned_block_$5.tail_0;

  __partitioned_block_$5.tail_0:
    assume !p4$1 && !p4$2;
    goto __partitioned_block_$5.tail_1;

  __partitioned_block_$5.tail_1:
    call {:sourceloc_num 74} $bugle_barrier_duplicated_4(-1, -1);
    v38$1 := BV32_ULT(v0$1, $num_intervals);
    v38$2 := BV32_ULT(v0$2, $num_intervals);
    p37$1 := (if v38$1 then v38$1 else p37$1);
    p37$2 := (if v38$2 then v38$2 else p37$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$g_left(p37$1, v0$1, $left.4$1, $$g_left[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left(p37$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$g_left(p37$2, v0$2, $left.4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_left"} true;
    $$g_left[v0$1] := (if p37$1 then $left.4$1 else $$g_left[v0$1]);
    $$g_left[v0$2] := (if p37$2 then $left.4$2 else $$g_left[v0$2]);
    return;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $11.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$11_0;

  $16.backedge:
    assume {:backedge} p17$1 || p17$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $16;
}



procedure {:source_name "abs"} $abs(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z6sign_ff"} $_Z6sign_ff(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, $$g_left, _TRACKING;



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













































const _WATCHED_VALUE_$$g_d: int;

procedure {:inline 1} _LOG_READ_$$g_d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_d;



implementation {:inline 1} _LOG_READ_$$g_d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then true else _READ_HAS_OCCURRED_$$g_d);
    return;
}



procedure _CHECK_READ_$$g_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_d);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_d: bool;

procedure {:inline 1} _LOG_WRITE_$$g_d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_d, _WRITE_READ_BENIGN_FLAG_$$g_d;



implementation {:inline 1} _LOG_WRITE_$$g_d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then true else _WRITE_HAS_OCCURRED_$$g_d);
    _WRITE_READ_BENIGN_FLAG_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_d);
    return;
}



procedure _CHECK_WRITE_$$g_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d != _value);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d != _value);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_d;



implementation {:inline 1} _LOG_ATOMIC_$$g_d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_d);
    return;
}



procedure _CHECK_ATOMIC_$$g_d(_P: bool, _offset: int);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_d := (if _P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_d);
    return;
}



const _WATCHED_VALUE_$$g_s: int;

procedure {:inline 1} _LOG_READ_$$g_s(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_s;



implementation {:inline 1} _LOG_READ_$$g_s(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then true else _READ_HAS_OCCURRED_$$g_s);
    return;
}



procedure _CHECK_READ_$$g_s(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_s);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_s: bool;

procedure {:inline 1} _LOG_WRITE_$$g_s(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_s, _WRITE_READ_BENIGN_FLAG_$$g_s;



implementation {:inline 1} _LOG_WRITE_$$g_s(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then true else _WRITE_HAS_OCCURRED_$$g_s);
    _WRITE_READ_BENIGN_FLAG_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_s);
    return;
}



procedure _CHECK_WRITE_$$g_s(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s != _value);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s != _value);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_s(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_s;



implementation {:inline 1} _LOG_ATOMIC_$$g_s(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_s);
    return;
}



procedure _CHECK_ATOMIC_$$g_s(_P: bool, _offset: int);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_s(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_s(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_s := (if _P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_s);
    return;
}



const _WATCHED_VALUE_$$g_left: int;

procedure {:inline 1} _LOG_READ_$$g_left(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_left;



implementation {:inline 1} _LOG_READ_$$g_left(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then true else _READ_HAS_OCCURRED_$$g_left);
    return;
}



procedure _CHECK_READ_$$g_left(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_left);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_left: bool;

procedure {:inline 1} _LOG_WRITE_$$g_left(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_left, _WRITE_READ_BENIGN_FLAG_$$g_left;



implementation {:inline 1} _LOG_WRITE_$$g_left(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then true else _WRITE_HAS_OCCURRED_$$g_left);
    _WRITE_READ_BENIGN_FLAG_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_left);
    return;
}



procedure _CHECK_WRITE_$$g_left(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left != _value);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left != _value);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_left(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_left;



implementation {:inline 1} _LOG_ATOMIC_$$g_left(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_left);
    return;
}



procedure _CHECK_ATOMIC_$$g_left(_P: bool, _offset: int);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_left;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_left := (if _P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_left);
    return;
}



const _WATCHED_VALUE_$$g_right: int;

procedure {:inline 1} _LOG_READ_$$g_right(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_right;



implementation {:inline 1} _LOG_READ_$$g_right(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then true else _READ_HAS_OCCURRED_$$g_right);
    return;
}



procedure _CHECK_READ_$$g_right(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_right);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_right: bool;

procedure {:inline 1} _LOG_WRITE_$$g_right(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_right, _WRITE_READ_BENIGN_FLAG_$$g_right;



implementation {:inline 1} _LOG_WRITE_$$g_right(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then true else _WRITE_HAS_OCCURRED_$$g_right);
    _WRITE_READ_BENIGN_FLAG_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_right);
    return;
}



procedure _CHECK_WRITE_$$g_right(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right != _value);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right != _value);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_right(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_right;



implementation {:inline 1} _LOG_ATOMIC_$$g_right(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_right);
    return;
}



procedure _CHECK_ATOMIC_$$g_right(_P: bool, _offset: int);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_right;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_right := (if _P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_right);
    return;
}



const _WATCHED_VALUE_$$g_pos: int;

procedure {:inline 1} _LOG_READ_$$g_pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_pos;



implementation {:inline 1} _LOG_READ_$$g_pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then true else _READ_HAS_OCCURRED_$$g_pos);
    return;
}



procedure _CHECK_READ_$$g_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_pos);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_pos: bool;

procedure {:inline 1} _LOG_WRITE_$$g_pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_pos, _WRITE_READ_BENIGN_FLAG_$$g_pos;



implementation {:inline 1} _LOG_WRITE_$$g_pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then true else _WRITE_HAS_OCCURRED_$$g_pos);
    _WRITE_READ_BENIGN_FLAG_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_pos);
    return;
}



procedure _CHECK_WRITE_$$g_pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos != _value);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos != _value);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_pos;



implementation {:inline 1} _LOG_ATOMIC_$$g_pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_pos);
    return;
}



procedure _CHECK_ATOMIC_$$g_pos(_P: bool, _offset: int);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_pos := (if _P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_pos);
    return;
}



const _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: int;

procedure {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;



implementation {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads == _value then true else _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads);
    return;
}



procedure _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;



implementation {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads);
    return;
}



procedure _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int, _value: int);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "converged_all_threads"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads);
    return;
}



const _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: int;

procedure {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;



implementation {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch == _value then true else _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch);
    return;
}



procedure _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;



implementation {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch);
    return;
}



procedure _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch);
    return;
}



const _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: int;

procedure {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;



implementation {:inline 1} _LOG_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch == _value then true else _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch);
    return;
}



procedure _CHECK_READ_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch, _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;



implementation {:inline 1} _LOG_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch);
    return;
}



procedure _CHECK_WRITE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_scratch"} {:array "$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_left;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_left;
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
    havoc $$g_left;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE21converged_all_threads;
    goto anon5;

  anon5:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE14s_left_scratch;
    goto anon6;

  anon6:
    havoc $$_ZZ30bisectKernelLarge_OneIntervalsPfS_jjS_S_PjfE15s_right_scratch;
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

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}
















































































































































































































