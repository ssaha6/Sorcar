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
 b0118: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$a"} {:global} {:elem_width 64} {:source_name "a"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a: bool;

axiom {:array_info "$$b"} {:global} {:elem_width 64} {:source_name "b"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b: bool;

axiom {:array_info "$$d"} {:global} {:elem_width 64} {:source_name "d"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d: bool;

axiom {:array_info "$$f"} {:global} {:elem_width 64} {:source_name "f"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$f: bool;

axiom {:array_info "$$p"} {:global} {:elem_width 64} {:source_name "p"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "q"} {:global} $$q: [bv32]bv64;

axiom {:array_info "$$q"} {:global} {:elem_width 64} {:source_name "q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$q: bool;

axiom {:array_info "$$u"} {:global} {:elem_width 64} {:source_name "u"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$u: bool;

var {:source_name "shared_a"} {:group_shared} $$kernel19.shared_a: [bv1][bv32]bv64;

axiom {:array_info "$$kernel19.shared_a"} {:group_shared} {:elem_width 64} {:source_name "shared_a"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel19.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel19.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a: bool;

var {:source_name "shared_b"} {:group_shared} $$kernel19.shared_b: [bv1][bv32]bv64;

axiom {:array_info "$$kernel19.shared_b"} {:group_shared} {:elem_width 64} {:source_name "shared_b"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel19.shared_b: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel19.shared_b: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b: bool;

var {:source_name "shared_d"} {:group_shared} $$kernel19.shared_d: [bv1][bv32]bv64;

axiom {:array_info "$$kernel19.shared_d"} {:group_shared} {:elem_width 64} {:source_name "shared_d"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel19.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel19.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d: bool;

var {:source_name "shared_f"} {:group_shared} $$kernel19.shared_f: [bv1][bv32]bv64;

axiom {:array_info "$$kernel19.shared_f"} {:group_shared} {:elem_width 64} {:source_name "shared_f"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel19.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel19.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function FADD64(bv64, bv64) : bv64;

function FDIV64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel19"} {:kernel} $kernel19($n: bv32, $tsteps: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$a && !_WRITE_HAS_OCCURRED_$$a && !_ATOMIC_HAS_OCCURRED_$$a;
  requires !_READ_HAS_OCCURRED_$$b && !_WRITE_HAS_OCCURRED_$$b && !_ATOMIC_HAS_OCCURRED_$$b;
  requires !_READ_HAS_OCCURRED_$$d && !_WRITE_HAS_OCCURRED_$$d && !_ATOMIC_HAS_OCCURRED_$$d;
  requires !_READ_HAS_OCCURRED_$$f && !_WRITE_HAS_OCCURRED_$$f && !_ATOMIC_HAS_OCCURRED_$$f;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$q && !_WRITE_HAS_OCCURRED_$$q && !_ATOMIC_HAS_OCCURRED_$$q;
  requires !_READ_HAS_OCCURRED_$$u && !_WRITE_HAS_OCCURRED_$$u && !_ATOMIC_HAS_OCCURRED_$$u;
  requires !_READ_HAS_OCCURRED_$$kernel19.shared_a && !_WRITE_HAS_OCCURRED_$$kernel19.shared_a && !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_a;
  requires !_READ_HAS_OCCURRED_$$kernel19.shared_b && !_WRITE_HAS_OCCURRED_$$kernel19.shared_b && !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_b;
  requires !_READ_HAS_OCCURRED_$$kernel19.shared_d && !_WRITE_HAS_OCCURRED_$$kernel19.shared_d && !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_d;
  requires !_READ_HAS_OCCURRED_$$kernel19.shared_f && !_WRITE_HAS_OCCURRED_$$kernel19.shared_f && !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_f;
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
  modifies $$kernel19.shared_a, $$kernel19.shared_b, $$kernel19.shared_d, $$kernel19.shared_f, _WRITE_HAS_OCCURRED_$$kernel19.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a, _WRITE_HAS_OCCURRED_$$kernel19.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b, _WRITE_HAS_OCCURRED_$$kernel19.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d, _WRITE_HAS_OCCURRED_$$kernel19.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f, $$q, _TRACKING, _READ_HAS_OCCURRED_$$kernel19.shared_d, _READ_HAS_OCCURRED_$$kernel19.shared_f, _READ_HAS_OCCURRED_$$kernel19.shared_a, _READ_HAS_OCCURRED_$$q, _READ_HAS_OCCURRED_$$kernel19.shared_b, _WRITE_HAS_OCCURRED_$$q, _WRITE_READ_BENIGN_FLAG_$$q, _WRITE_READ_BENIGN_FLAG_$$q, _TRACKING;



implementation {:source_name "kernel19"} {:kernel} $kernel19($n: bv32, $tsteps: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v5$1: bv64;
  var v5$2: bv64;
  var v6$1: bv64;
  var v6$2: bv64;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bv64;
  var v14$2: bv64;
  var v15$1: bv64;
  var v15$2: bv64;
  var v16$1: bv64;
  var v16$2: bv64;
  var v17$1: bv64;
  var v17$2: bv64;
  var v18$1: bv64;
  var v18$2: bv64;
  var v19$1: bv64;
  var v19$2: bv64;
  var v20$1: bv64;
  var v20$2: bv64;
  var v21$1: bv64;
  var v21$2: bv64;
  var v22$1: bv64;
  var v22$2: bv64;
  var v23$1: bv64;
  var v23$2: bv64;
  var v24$1: bv64;
  var v24$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _READ_HAS_OCCURRED_$$q$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$q$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$q$ghost$$12: bool;
  var _WRITE_HAS_OCCURRED_$$q$ghost$$12: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0bv64;
    v2$2 := v1$2 == 0bv64;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v3$1 := (if p0$1 then _HAVOC_bv64$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_bv64$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel19.shared_a(p0$1, 0bv32, v3$1, $$kernel19.shared_a[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel19.shared_a(p0$2, 0bv32, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel19.shared_a"} true;
    $$kernel19.shared_a[1bv1][0bv32] := (if p0$1 then v3$1 else $$kernel19.shared_a[1bv1][0bv32]);
    $$kernel19.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v3$2 else $$kernel19.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v4$1 := (if p0$1 then _HAVOC_bv64$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_bv64$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$kernel19.shared_b(p0$1, 0bv32, v4$1, $$kernel19.shared_b[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$kernel19.shared_b(p0$2, 0bv32, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel19.shared_b"} true;
    $$kernel19.shared_b[1bv1][0bv32] := (if p0$1 then v4$1 else $$kernel19.shared_b[1bv1][0bv32]);
    $$kernel19.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v4$2 else $$kernel19.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v5$1 := (if p0$1 then _HAVOC_bv64$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_bv64$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$kernel19.shared_d(p0$1, 0bv32, v5$1, $$kernel19.shared_d[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$kernel19.shared_d(p0$2, 0bv32, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel19.shared_d"} true;
    $$kernel19.shared_d[1bv1][0bv32] := (if p0$1 then v5$1 else $$kernel19.shared_d[1bv1][0bv32]);
    $$kernel19.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v5$2 else $$kernel19.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v6$1 := (if p0$1 then _HAVOC_bv64$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_bv64$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$kernel19.shared_f(p0$1, 0bv32, v6$1, $$kernel19.shared_f[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$kernel19.shared_f(p0$2, 0bv32, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel19.shared_f"} true;
    $$kernel19.shared_f[1bv1][0bv32] := (if p0$1 then v6$1 else $$kernel19.shared_f[1bv1][0bv32]);
    $$kernel19.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v6$2 else $$kernel19.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 18} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $c1.0$1 := BV64_MUL(32bv64, v0$1);
    $c1.0$2 := BV64_MUL(32bv64, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$1)) )  && ( p2$2 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$2)) ) ,  ( p2$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p2$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p2$1 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p2$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p2$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) )  && ( p2$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) ) ,  ( p2$1 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p2$2 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p2$1 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p2$2 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p2$1 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p2$2 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  ( p2$1 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v0$1)) )  && ( p2$2 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v0$2)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p2$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p2$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p2$1 && p2$2 ==> $0$1 == $0$2 ) ,  (  p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p2$1 && p2$2 ==> $1$1 == $1$2 ) ,  (  p2$1 && p2$2 ==> v7$1 == v7$2 ) ,  (  p2$1 && p2$2 ==> v8$1 == v8$2 ) ,  (  p2$1 && p2$2 ==> v9$1 == v9$2 ) ,  (  p2$1 && p2$2 ==> v10$1 == v10$2 ) ,  (  p2$1 && p2$2 ==> v11$1 == v11$2 ) ,  (  p2$1 && p2$2 ==> v12$1 == v12$2 ) ,  (  p2$1 && p2$2 ==> v13$1 == v13$2 ) ,  (  p2$1 && p2$2 ==> v14$1 == v14$2 ) ,  (  p2$1 && p2$2 ==> v15$1 == v15$2 ) ,  (  p2$1 && p2$2 ==> v16$1 == v16$2 ) ,  (  p2$1 && p2$2 ==> v17$1 == v17$2 ) ,  (  p2$1 && p2$2 ==> v18$1 == v18$2 ) ,  (  p2$1 && p2$2 ==> v19$1 == v19$2 ) ,  (  p2$1 && p2$2 ==> v20$1 == v20$2 ) ,  (  p2$1 && p2$2 ==> v21$1 == v21$2 ) ,  (  p2$1 && p2$2 ==> v22$1 == v22$2 ) ,  (  p2$1 && p2$2 ==> v23$1 == v23$2 ) ,  (  p2$1 && p2$2 ==> v24$1 == v24$2 ) ,  (  !_READ_HAS_OCCURRED_$$q ) ,  (  !_WRITE_HAS_OCCURRED_$$q ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$u ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), 18446744073708503072bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64), 30bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048574bv64), 1048576bv64))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64) then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048575bv64), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 19} p2$1 ==> true;
    v7$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v7$1);
    v7$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v7$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p16$1 := false;
    p16$2 := false;
    p3$1 := (if p2$1 && v7$1 then v7$1 else p3$1);
    p3$2 := (if p2$2 && v7$2 then v7$2 else p3$2);
    p2$1 := (if p2$1 && !v7$1 then v7$1 else p2$1);
    p2$2 := (if p2$2 && !v7$2 then v7$2 else p2$2);
    $c2.0$1 := (if p3$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0bv64 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$q$ghost$$5 := _READ_HAS_OCCURRED_$$q;
    _WRITE_HAS_OCCURRED_$$q$ghost$$5 := _WRITE_HAS_OCCURRED_$$q;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p4$1 && p4$2 ==> $0$1 == $0$2 ) ,  (  p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p4$1 && p4$2 ==> $1$1 == $1$2 ) ,  (  p4$1 && p4$2 ==> v8$1 == v8$2 ) ,  (  p4$1 && p4$2 ==> v9$1 == v9$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  p4$1 && p4$2 ==> v15$1 == v15$2 ) ,  (  p4$1 && p4$2 ==> v16$1 == v16$2 ) ,  (  p4$1 && p4$2 ==> v17$1 == v17$2 ) ,  (  p4$1 && p4$2 ==> v18$1 == v18$2 ) ,  (  p4$1 && p4$2 ==> v19$1 == v19$2 ) ,  (  p4$1 && p4$2 ==> v20$1 == v20$2 ) ,  (  p4$1 && p4$2 ==> v21$1 == v21$2 ) ,  (  p4$1 && p4$2 ==> v22$1 == v22$2 ) ,  (  p4$1 && p4$2 ==> v23$1 == v23$2 ) ,  (  p4$1 && p4$2 ==> v24$1 == v24$2 ) ,  (  !_READ_HAS_OCCURRED_$$q ) ,  (  !_WRITE_HAS_OCCURRED_$$q ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$q$ghost$$5 == _READ_HAS_OCCURRED_$$q ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$q$ghost$$5 == _WRITE_HAS_OCCURRED_$$q ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) )  && ( p4$2 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64) ) ,  ( p4$1 ==> BV64_SLE(0bv64, $c2.0$1) )  && ( p4$2 ==> BV64_SLE(0bv64, $c2.0$2) ) ,  ( p4$1 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64) )  && ( p4$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64) ) ,  ( p4$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64) )  && ( p4$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64) ) ,  ( p4$1 ==> BV64_SLE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_SLE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_SGE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_SGE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_ULE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_ULE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> BV64_UGE($c2.0$1, 0bv64) )  && ( p4$2 ==> BV64_UGE($c2.0$2, 0bv64) ) ,  ( p4$1 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) )  && ( p4$2 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p4$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p4$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_b ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$u ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), 18446744073708503072bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64), 30bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048574bv64), 1048576bv64))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64) then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048575bv64), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 21} p4$1 ==> true;
    v8$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v8$1);
    v8$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v8$2);
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
    p5$1 := (if p4$1 && v8$1 then v8$1 else p5$1);
    p5$2 := (if p4$2 && v8$2 then v8$2 else p5$2);
    p4$1 := (if p4$1 && !v8$1 then v8$1 else p4$1);
    p4$2 := (if p4$2 && !v8$2 then v8$2 else p4$2);
    v9$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2bv64)) else v9$1);
    v9$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2bv64)) else v9$2);
    p7$1 := (if p5$1 && v9$1 then v9$1 else p7$1);
    p7$2 := (if p5$2 && v9$2 then v9$2 else p7$2);
    v10$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1bv64) else v10$1);
    v10$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1bv64) else v10$2);
    p9$1 := (if p7$1 && v10$1 then v10$1 else p9$1);
    p9$2 := (if p7$2 && v10$2 then v10$2 else p9$2);
    v11$1 := (if p9$1 then BV64_SGT(0bv64, BV64_ADD(BV64_SUB(0bv64, $c2.0$1), 1bv64)) else v11$1);
    v11$2 := (if p9$2 then BV64_SGT(0bv64, BV64_ADD(BV64_SUB(0bv64, $c2.0$2), 1bv64)) else v11$2);
    p11$1 := (if p9$1 && v11$1 then v11$1 else p11$1);
    p11$2 := (if p9$2 && v11$2 then v11$2 else p11$2);
    p10$1 := (if p9$1 && !v11$1 then !v11$1 else p10$1);
    p10$2 := (if p9$2 && !v11$2 then !v11$2 else p10$2);
    $0$1 := (if p10$1 then BV64_ADD(BV64_SUB(0bv64, $c2.0$1), 1bv64) else $0$1);
    $0$2 := (if p10$2 then BV64_ADD(BV64_SUB(0bv64, $c2.0$2), 1bv64) else $0$2);
    $0$1 := (if p11$1 then 0bv64 else $0$1);
    $0$2 := (if p11$2 then 0bv64 else $0$2);
    $c4.0$1 := (if p9$1 then $0$1 else $c4.0$1);
    $c4.0$2 := (if p9$2 then $0$2 else $c4.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$q$ghost$$12 := _READ_HAS_OCCURRED_$$q;
    _WRITE_HAS_OCCURRED_$$q$ghost$$12 := _WRITE_HAS_OCCURRED_$$q;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$q$ghost$$12 == _READ_HAS_OCCURRED_$$q ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$q$ghost$$12 == _WRITE_HAS_OCCURRED_$$q )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel19.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p4$1;
    assert p12$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p12$1 ==> BV64_SLE(0bv64, $c4.0$1) )  && ( p12$2 ==> BV64_SLE(0bv64, $c4.0$2) ) ,  ( p12$1 ==> BV64_SLE(0bv64, $1$1) )  && ( p12$2 ==> BV64_SLE(0bv64, $1$2) ) ,  ( p12$1 ==> BV64_SLE($c4.0$1, $0$1) )  && ( p12$2 ==> BV64_SLE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV64_SGE($c4.0$1, $0$1) )  && ( p12$2 ==> BV64_SGE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV64_ULE($c4.0$1, $0$1) )  && ( p12$2 ==> BV64_ULE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV64_UGE($c4.0$1, $0$1) )  && ( p12$2 ==> BV64_UGE($c4.0$2, $0$2) ) ,  ( p12$1 ==> p12$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) )  && ( p12$2 ==> p12$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SLE($c4.0$1, $1$1) ==> p12$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SLE($c4.0$2, $1$2) ==> p12$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_d ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_d ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_d ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_f ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_f ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_f ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_a ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_a ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_a ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _READ_HAS_OCCURRED_$$q ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_b ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_b ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_b ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _READ_HAS_OCCURRED_$$kernel19.shared_b ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) ) ,  (  _WRITE_HAS_OCCURRED_$$q ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$u ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), 18446744073708503072bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32bv64, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 0bv64) then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64)), 32bv64), 1bv64), 32bv64)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)))), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64), 30bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(32768bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048574bv64), 1048576bv64))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0bv64, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 30bv64), 32bv64) then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048575bv64), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 28} p12$1 ==> true;
    v12$1 := (if p12$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2bv64)) else v12$1);
    v12$2 := (if p12$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2bv64)) else v12$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p14$1 := (if p12$1 && v12$1 then v12$1 else p14$1);
    p14$2 := (if p12$2 && v12$2 then v12$2 else p14$2);
    p13$1 := (if p12$1 && !v12$1 then !v12$1 else p13$1);
    p13$2 := (if p12$2 && !v12$2 then !v12$2 else p13$2);
    $1$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2bv64) else $1$1);
    $1$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2bv64) else $1$2);
    $1$1 := (if p14$1 then 31bv64 else $1$1);
    $1$2 := (if p14$2 then 31bv64 else $1$2);
    v13$1 := (if p12$1 then BV64_SLE($c4.0$1, $1$1) else v13$1);
    v13$2 := (if p12$2 then BV64_SLE($c4.0$2, $1$2) else v13$2);
    p15$1 := (if p12$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p12$2 && v13$2 then v13$2 else p15$2);
    p12$1 := (if p12$1 && !v13$1 then v13$1 else p12$1);
    p12$2 := (if p12$2 && !v13$2 then v13$2 else p12$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 33} true;
    v14$1 := (if p15$1 then $$kernel19.shared_d[1bv1][0bv32] else v14$1);
    v14$2 := (if p15$2 then $$kernel19.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v14$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v15$1 := (if p15$1 then _HAVOC_bv64$1 else v15$1);
    v15$2 := (if p15$2 then _HAVOC_bv64$2 else v15$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 35} true;
    v16$1 := (if p15$1 then $$kernel19.shared_d[1bv1][0bv32] else v16$1);
    v16$2 := (if p15$2 then $$kernel19.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v16$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v17$1 := (if p15$1 then _HAVOC_bv64$1 else v17$1);
    v17$2 := (if p15$2 then _HAVOC_bv64$2 else v17$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    v18$1 := (if p15$1 then $$kernel19.shared_f[1bv1][0bv32] else v18$1);
    v18$2 := (if p15$2 then $$kernel19.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v18$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v19$1 := (if p15$1 then _HAVOC_bv64$1 else v19$1);
    v19$2 := (if p15$2 then _HAVOC_bv64$2 else v19$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 39} true;
    v20$1 := (if p15$1 then $$kernel19.shared_a[1bv1][0bv32] else v20$1);
    v20$2 := (if p15$2 then $$kernel19.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v20$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$q(p15$1, BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0], $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$q(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0], $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$q"} true;
    v21$1 := (if p15$1 then $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0]] else v21$1);
    v21$2 := (if p15$2 then $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0]] else v21$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    v22$1 := (if p15$1 then $$kernel19.shared_a[1bv1][0bv32] else v22$1);
    v22$2 := (if p15$2 then $$kernel19.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v22$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v23$1 := (if p15$1 then _HAVOC_bv64$1 else v23$1);
    v23$2 := (if p15$2 then _HAVOC_bv64$2 else v23$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 43} true;
    v24$1 := (if p15$1 then $$kernel19.shared_b[1bv1][0bv32] else v24$1);
    v24$2 := (if p15$2 then $$kernel19.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v24$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$q(p15$1, BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], FDIV64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v20$1), v21$1), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v18$1), v19$1), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v14$1), v15$1), FMUL64(FADD64(FMUL64(4611686018427387904bv64, v16$1), 4607182418800017408bv64), v17$1)))), FADD64(FMUL64(v22$1, v23$1), v24$1)), $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$q(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], FDIV64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v20$2), v21$2), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v18$2), v19$2), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v14$2), v15$2), FMUL64(FADD64(FMUL64(4611686018427387904bv64, v16$2), 4607182418800017408bv64), v17$2)))), FADD64(FMUL64(v22$2, v23$2), v24$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$q"} true;
    $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] := (if p15$1 then FDIV64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v20$1), v21$1), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v18$1), v19$1), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v14$1), v15$1), FMUL64(FADD64(FMUL64(4611686018427387904bv64, v16$1), 4607182418800017408bv64), v17$1)))), FADD64(FMUL64(v22$1, v23$1), v24$1)) else $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] := (if p15$2 then FDIV64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v20$2), v21$2), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v18$2), v19$2), FADD64(FMUL64(FSUB64(9223372036854775808bv64, v14$2), v15$2), FMUL64(FADD64(FMUL64(4611686018427387904bv64, v16$2), 4607182418800017408bv64), v17$2)))), FADD64(FMUL64(v22$2, v23$2), v24$2)) else $$q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    $c4.0$1 := (if p15$1 then BV64_ADD($c4.0$1, 1bv64) else $c4.0$1);
    $c4.0$2 := (if p15$2 then BV64_ADD($c4.0$2, 1bv64) else $c4.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 48} $bugle_barrier_duplicated_1(1bv1, 1bv1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $12;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$kernel19.shared_a, $$kernel19.shared_b, $$kernel19.shared_d, $$kernel19.shared_f, $$q, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel19.shared_a, $$kernel19.shared_b, $$kernel19.shared_d, $$kernel19.shared_f, $$q, _TRACKING;



function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;













function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;



function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;





































































































const _WATCHED_VALUE_$$a: bv64;

procedure {:inline 1} _LOG_READ_$$a(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_READ_$$a(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _READ_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_READ_$$a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a: bool;

procedure {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$a, _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _WRITE_HAS_OCCURRED_$$a);
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



procedure _CHECK_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_ATOMIC_$$a(_P: bool, _offset: bv32);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



const _WATCHED_VALUE_$$b: bv64;

procedure {:inline 1} _LOG_READ_$$b(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$b;



implementation {:inline 1} _LOG_READ_$$b(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then true else _READ_HAS_OCCURRED_$$b);
    return;
}



procedure _CHECK_READ_$$b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b);
  requires {:source_name "b"} {:array "$$b"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$b: bool;

procedure {:inline 1} _LOG_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$b, _WRITE_READ_BENIGN_FLAG_$$b;



implementation {:inline 1} _LOG_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then true else _WRITE_HAS_OCCURRED_$$b);
    _WRITE_READ_BENIGN_FLAG_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b);
    return;
}



procedure _CHECK_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b != _value);
  requires {:source_name "b"} {:array "$$b"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b != _value);
  requires {:source_name "b"} {:array "$$b"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$b(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b;



implementation {:inline 1} _LOG_ATOMIC_$$b(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b);
    return;
}



procedure _CHECK_ATOMIC_$$b(_P: bool, _offset: bv32);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);
  requires {:source_name "b"} {:array "$$b"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b := (if _P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b);
    return;
}



const _WATCHED_VALUE_$$d: bv64;

procedure {:inline 1} _LOG_READ_$$d(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_READ_$$d(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _READ_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_READ_$$d(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d: bool;

procedure {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _WRITE_HAS_OCCURRED_$$d);
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



procedure _CHECK_WRITE_$$d(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_ATOMIC_$$d(_P: bool, _offset: bv32);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



const _WATCHED_VALUE_$$f: bv64;

procedure {:inline 1} _LOG_READ_$$f(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_READ_$$f(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _READ_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_READ_$$f(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$f);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$f: bool;

procedure {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$f, _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _WRITE_HAS_OCCURRED_$$f);
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



procedure _CHECK_WRITE_$$f(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_ATOMIC_$$f(_P: bool, _offset: bv32);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



const _WATCHED_VALUE_$$p: bv64;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_ATOMIC_$$p(_P: bool, _offset: bv32);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



const _WATCHED_VALUE_$$q: bv64;

procedure {:inline 1} _LOG_READ_$$q(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$q;



implementation {:inline 1} _LOG_READ_$$q(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then true else _READ_HAS_OCCURRED_$$q);
    return;
}



procedure _CHECK_READ_$$q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$q);
  requires {:source_name "q"} {:array "$$q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$q: bool;

procedure {:inline 1} _LOG_WRITE_$$q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$q, _WRITE_READ_BENIGN_FLAG_$$q;



implementation {:inline 1} _LOG_WRITE_$$q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then true else _WRITE_HAS_OCCURRED_$$q);
    _WRITE_READ_BENIGN_FLAG_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$q);
    return;
}



procedure _CHECK_WRITE_$$q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q != _value);
  requires {:source_name "q"} {:array "$$q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q != _value);
  requires {:source_name "q"} {:array "$$q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$q;



implementation {:inline 1} _LOG_ATOMIC_$$q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$q);
    return;
}



procedure _CHECK_ATOMIC_$$q(_P: bool, _offset: bv32);
  requires {:source_name "q"} {:array "$$q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);
  requires {:source_name "q"} {:array "$$q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$q := (if _P && _WRITE_HAS_OCCURRED_$$q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$q);
    return;
}



const _WATCHED_VALUE_$$u: bv64;

procedure {:inline 1} _LOG_READ_$$u(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_READ_$$u(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _READ_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_READ_$$u(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$u);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$u: bool;

procedure {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$u, _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _WRITE_HAS_OCCURRED_$$u);
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$u);
    return;
}



procedure _CHECK_WRITE_$$u(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_ATOMIC_$$u(_P: bool, _offset: bv32);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$u);
    return;
}



const _WATCHED_VALUE_$$kernel19.shared_a: bv64;

procedure {:inline 1} _LOG_READ_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel19.shared_a;



implementation {:inline 1} _LOG_READ_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel19.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_a == _value then true else _READ_HAS_OCCURRED_$$kernel19.shared_a);
    return;
}



procedure _CHECK_READ_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel19.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a;



implementation {:inline 1} _LOG_WRITE_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel19.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_a == _value then true else _WRITE_HAS_OCCURRED_$$kernel19.shared_a);
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a);
    return;
}



procedure _CHECK_WRITE_$$kernel19.shared_a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel19.shared_a(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a;



implementation {:inline 1} _LOG_ATOMIC_$$kernel19.shared_a(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel19.shared_a);
    return;
}



procedure _CHECK_ATOMIC_$$kernel19.shared_a(_P: bool, _offset: bv32);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel19.shared_a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a := (if _P && _WRITE_HAS_OCCURRED_$$kernel19.shared_a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_a);
    return;
}



const _WATCHED_VALUE_$$kernel19.shared_b: bv64;

procedure {:inline 1} _LOG_READ_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel19.shared_b;



implementation {:inline 1} _LOG_READ_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel19.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_b == _value then true else _READ_HAS_OCCURRED_$$kernel19.shared_b);
    return;
}



procedure _CHECK_READ_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel19.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b;



implementation {:inline 1} _LOG_WRITE_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel19.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_b == _value then true else _WRITE_HAS_OCCURRED_$$kernel19.shared_b);
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_b == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b);
    return;
}



procedure _CHECK_WRITE_$$kernel19.shared_b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_b != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_b != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel19.shared_b(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b;



implementation {:inline 1} _LOG_ATOMIC_$$kernel19.shared_b(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel19.shared_b);
    return;
}



procedure _CHECK_ATOMIC_$$kernel19.shared_b(_P: bool, _offset: bv32);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel19.shared_b"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b := (if _P && _WRITE_HAS_OCCURRED_$$kernel19.shared_b && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_b);
    return;
}



const _WATCHED_VALUE_$$kernel19.shared_d: bv64;

procedure {:inline 1} _LOG_READ_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel19.shared_d;



implementation {:inline 1} _LOG_READ_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel19.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_d == _value then true else _READ_HAS_OCCURRED_$$kernel19.shared_d);
    return;
}



procedure _CHECK_READ_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel19.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d;



implementation {:inline 1} _LOG_WRITE_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel19.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_d == _value then true else _WRITE_HAS_OCCURRED_$$kernel19.shared_d);
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d);
    return;
}



procedure _CHECK_WRITE_$$kernel19.shared_d(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel19.shared_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d;



implementation {:inline 1} _LOG_ATOMIC_$$kernel19.shared_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel19.shared_d);
    return;
}



procedure _CHECK_ATOMIC_$$kernel19.shared_d(_P: bool, _offset: bv32);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel19.shared_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d := (if _P && _WRITE_HAS_OCCURRED_$$kernel19.shared_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_d);
    return;
}



const _WATCHED_VALUE_$$kernel19.shared_f: bv64;

procedure {:inline 1} _LOG_READ_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel19.shared_f;



implementation {:inline 1} _LOG_READ_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel19.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_f == _value then true else _READ_HAS_OCCURRED_$$kernel19.shared_f);
    return;
}



procedure _CHECK_READ_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel19.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f;



implementation {:inline 1} _LOG_WRITE_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel19.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_f == _value then true else _WRITE_HAS_OCCURRED_$$kernel19.shared_f);
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f);
    return;
}



procedure _CHECK_WRITE_$$kernel19.shared_f(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel19.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel19.shared_f(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f;



implementation {:inline 1} _LOG_ATOMIC_$$kernel19.shared_f(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel19.shared_f);
    return;
}



procedure _CHECK_ATOMIC_$$kernel19.shared_f(_P: bool, _offset: bv32);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel19.shared_f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f := (if _P && _WRITE_HAS_OCCURRED_$$kernel19.shared_f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel19.shared_f);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_a;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_a;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_a;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_b;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_b;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_b;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_d;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_d;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_d;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_f;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_f;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_f;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$q;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$q;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$kernel19.shared_a;
    goto anon6;

  anon6:
    havoc $$kernel19.shared_b;
    goto anon7;

  anon7:
    havoc $$kernel19.shared_d;
    goto anon8;

  anon8:
    havoc $$kernel19.shared_f;
    goto anon9;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_a;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_a;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_a;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_b;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_b;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_b;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_d;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_d;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_d;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel19.shared_f;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel19.shared_f;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel19.shared_f;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$q;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$q;
    goto anon12;

  anon14_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel19.shared_a;
    goto anon6;

  anon6:
    havoc $$kernel19.shared_b;
    goto anon7;

  anon7:
    havoc $$kernel19.shared_d;
    goto anon8;

  anon8:
    havoc $$kernel19.shared_f;
    goto anon9;

  anon13_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;




























































































































