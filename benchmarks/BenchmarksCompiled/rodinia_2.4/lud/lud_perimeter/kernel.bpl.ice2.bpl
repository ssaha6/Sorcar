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
 b0134: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "m"} {:global} $$m: [bv32]bv32;

axiom {:array_info "$$m"} {:global} {:elem_width 32} {:source_name "m"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$m: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$m: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$m: bool;

var {:source_name "dia"} {:group_shared} $$dia: [bv1][bv32]bv32;

axiom {:array_info "$$dia"} {:group_shared} {:elem_width 32} {:source_name "dia"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dia: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dia: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dia: bool;

var {:source_name "peri_row"} {:group_shared} $$peri_row: [bv1][bv32]bv32;

axiom {:array_info "$$peri_row"} {:group_shared} {:elem_width 32} {:source_name "peri_row"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$peri_row: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$peri_row: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$peri_row: bool;

var {:source_name "peri_col"} {:group_shared} $$peri_col: [bv1][bv32]bv32;

axiom {:array_info "$$peri_col"} {:group_shared} {:elem_width 32} {:source_name "peri_col"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$peri_col: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$peri_col: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$peri_col: bool;

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

function FADD32(bv32, bv32) : bv32;

function FDIV32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

procedure {:source_name "lud_perimeter"} {:kernel} $lud_perimeter($matrix_dim: bv32, $offset: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $matrix_dim == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $offset == 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$m && !_WRITE_HAS_OCCURRED_$$m && !_ATOMIC_HAS_OCCURRED_$$m;
  requires !_READ_HAS_OCCURRED_$$dia && !_WRITE_HAS_OCCURRED_$$dia && !_ATOMIC_HAS_OCCURRED_$$dia;
  requires !_READ_HAS_OCCURRED_$$peri_row && !_WRITE_HAS_OCCURRED_$$peri_row && !_ATOMIC_HAS_OCCURRED_$$peri_row;
  requires !_READ_HAS_OCCURRED_$$peri_col && !_WRITE_HAS_OCCURRED_$$peri_col && !_ATOMIC_HAS_OCCURRED_$$peri_col;
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
  modifies $$dia, $$peri_row, $$peri_col, _READ_HAS_OCCURRED_$$m, _WRITE_HAS_OCCURRED_$$dia, _WRITE_READ_BENIGN_FLAG_$$dia, _WRITE_READ_BENIGN_FLAG_$$dia, _WRITE_HAS_OCCURRED_$$peri_row, _WRITE_READ_BENIGN_FLAG_$$peri_row, _WRITE_READ_BENIGN_FLAG_$$peri_row, _WRITE_HAS_OCCURRED_$$peri_col, _WRITE_READ_BENIGN_FLAG_$$peri_col, _WRITE_READ_BENIGN_FLAG_$$peri_col, $$m, _TRACKING, _READ_HAS_OCCURRED_$$dia, _READ_HAS_OCCURRED_$$peri_row, _READ_HAS_OCCURRED_$$peri_col, _TRACKING, _WRITE_HAS_OCCURRED_$$m, _WRITE_READ_BENIGN_FLAG_$$m, _WRITE_READ_BENIGN_FLAG_$$m;



implementation {:source_name "lud_perimeter"} {:kernel} $lud_perimeter($matrix_dim: bv32, $offset: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $array_offset.0$1: bv32;
  var $array_offset.0$2: bv32;
  var $i.1$1: bv32;
  var $i.1$2: bv32;
  var $array_offset.1$1: bv32;
  var $array_offset.1$2: bv32;
  var $i.2$1: bv32;
  var $i.2$2: bv32;
  var $array_offset.2$1: bv32;
  var $array_offset.2$2: bv32;
  var $i.3$1: bv32;
  var $i.3$2: bv32;
  var $array_offset.3$1: bv32;
  var $array_offset.3$2: bv32;
  var $i.4$1: bv32;
  var $i.4$2: bv32;
  var $j.0$1: bv32;
  var $j.0$2: bv32;
  var $i.5$1: bv32;
  var $i.5$2: bv32;
  var $j.1$1: bv32;
  var $j.1$2: bv32;
  var $i.6$1: bv32;
  var $i.6$2: bv32;
  var $array_offset.4$1: bv32;
  var $array_offset.4$2: bv32;
  var $i.7$1: bv32;
  var $i.7$2: bv32;
  var $array_offset.5$1: bv32;
  var $array_offset.5$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
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
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bool;
  var v21$2: bool;
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
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bv32;
  var v31$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: bv32;
  var v34$2: bv32;
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
  var _READ_HAS_OCCURRED_$$m$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$dia$ghost$$2: bool;
  var _READ_HAS_OCCURRED_$$m$ghost$$6: bool;
  var _WRITE_HAS_OCCURRED_$$peri_row$ghost$$6: bool;
  var _READ_HAS_OCCURRED_$$m$ghost$$11: bool;
  var _WRITE_HAS_OCCURRED_$$dia$ghost$$11: bool;
  var _READ_HAS_OCCURRED_$$m$ghost$$15: bool;
  var _WRITE_HAS_OCCURRED_$$peri_col$ghost$$15: bool;
  var _READ_HAS_OCCURRED_$$peri_row$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$peri_row$ghost$$21: bool;
  var _READ_HAS_OCCURRED_$$peri_row$ghost$$23: bool;
  var _WRITE_HAS_OCCURRED_$$peri_row$ghost$$23: bool;
  var _READ_HAS_OCCURRED_$$peri_col$ghost$$30: bool;
  var _WRITE_HAS_OCCURRED_$$peri_col$ghost$$30: bool;
  var _READ_HAS_OCCURRED_$$peri_col$ghost$$32: bool;
  var _WRITE_HAS_OCCURRED_$$peri_col$ghost$$32: bool;
  var _WRITE_HAS_OCCURRED_$$m$ghost$$40: bool;
  var _WRITE_HAS_OCCURRED_$$m$ghost$$45: bool;


  $0:
    v0$1 := group_id_x$1;
    v0$2 := group_id_x$2;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_SLT(v1$1, 16bv32);
    v2$2 := BV32_SLT(v1$2, 16bv32);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p8$1 := false;
    p8$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p5$1 := (if !v2$1 then !v2$1 else p5$1);
    p5$2 := (if !v2$2 then !v2$2 else p5$2);
    $i.0$1, $array_offset.0$1 := (if p0$1 then 0bv32 else $i.0$1), (if p0$1 then BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset) else $array_offset.0$1);
    $i.0$2, $array_offset.0$2 := (if p0$2 then 0bv32 else $i.0$2), (if p0$2 then BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset) else $array_offset.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _READ_HAS_OCCURRED_$$m$ghost$$2 := _READ_HAS_OCCURRED_$$m;
    _WRITE_HAS_OCCURRED_$$dia$ghost$$2 := _WRITE_HAS_OCCURRED_$$dia;
    assume {:captureState "loop_entry_state_9_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_9"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$m ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset), local_id_x$1)) ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$m$ghost$$2 == _READ_HAS_OCCURRED_$$m ) ,  (  _WRITE_HAS_OCCURRED_$$dia ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$dia$ghost$$2 == _WRITE_HAS_OCCURRED_$$dia ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p1$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.0$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset)) )  && ( p1$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.0$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset)) ) ,  ( p1$1 ==> BV32_SLE(0bv32, $i.0$1) )  && ( p1$2 ==> BV32_SLE(0bv32, $i.0$2) ) ,  ( p1$1 ==> BV32_SLE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_SLE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_SGE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_SGE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_ULE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_ULE($i.0$2, 0bv32) ) ,  ( p1$1 ==> BV32_UGE($i.0$1, 0bv32) )  && ( p1$2 ==> BV32_UGE($i.0$2, 0bv32) ) ,  ( p1$1 ==> p1$1 ==> BV32_SLT(local_id_x$1, 16bv32) )  && ( p1$2 ==> p1$2 ==> BV32_SLT(local_id_x$2, 16bv32) ) ,  (  BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.0$1, 8bv32) ==> p1$1 )  && (  BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.0$2, 8bv32) ==> p1$2 ) ,  (  _READ_HAS_OCCURRED_$$m ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$dia ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 4} p1$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$m ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), v1$1), $matrix_dim), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$dia ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), v1$1), 16bv32), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} p1$1 ==> (if $array_offset.0$1 == BV32_MUL($matrix_dim, $i.0$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 7} {:thread 2} p1$2 ==> (if $array_offset.0$2 == BV32_MUL($matrix_dim, $i.0$2) then 1bv1 else 0bv1) != 0bv1;
    v3$1 := (if p1$1 then BV32_SLT($i.0$1, 8bv32) else v3$1);
    v3$2 := (if p1$2 then BV32_SLT($i.0$2, 8bv32) else v3$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v3$1 then v3$1 else p2$1);
    p2$2 := (if p1$2 && v3$2 then v3$2 else p2$2);
    p1$1 := (if p1$1 && !v3$1 then v3$1 else p1$1);
    p1$2 := (if p1$2 && !v3$2 then v3$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$m(p2$1, BV32_ADD($array_offset.0$1, v1$1), $$m[BV32_ADD($array_offset.0$1, v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$m(p2$2, BV32_ADD($array_offset.0$2, v1$2), $$m[BV32_ADD($array_offset.0$2, v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$m"} true;
    v4$1 := (if p2$1 then $$m[BV32_ADD($array_offset.0$1, v1$1)] else v4$1);
    v4$2 := (if p2$2 then $$m[BV32_ADD($array_offset.0$2, v1$2)] else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$dia(p2$1, BV32_ADD(BV32_MUL($i.0$1, 16bv32), v1$1), v4$1, $$dia[1bv1][BV32_ADD(BV32_MUL($i.0$1, 16bv32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dia(p2$2, BV32_ADD(BV32_MUL($i.0$2, 16bv32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$dia(p2$2, BV32_ADD(BV32_MUL($i.0$2, 16bv32), v1$2), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dia"} true;
    $$dia[1bv1][BV32_ADD(BV32_MUL($i.0$1, 16bv32), v1$1)] := (if p2$1 then v4$1 else $$dia[1bv1][BV32_ADD(BV32_MUL($i.0$1, 16bv32), v1$1)]);
    $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 16bv32), v1$2)] := (if p2$2 then v4$2 else $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 16bv32), v1$2)]);
    $i.0$1, $array_offset.0$1 := (if p2$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1), (if p2$1 then BV32_ADD($array_offset.0$1, $matrix_dim) else $array_offset.0$1);
    $i.0$2, $array_offset.0$2 := (if p2$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2), (if p2$2 then BV32_ADD($array_offset.0$2, $matrix_dim) else $array_offset.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    $i.1$1, $array_offset.1$1 := (if p0$1 then 0bv32 else $i.1$1), (if p0$1 then BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset) else $array_offset.1$1);
    $i.1$2, $array_offset.1$2 := (if p0$2 then 0bv32 else $i.1$2), (if p0$2 then BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset) else $array_offset.1$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    _READ_HAS_OCCURRED_$$m$ghost$$6 := _READ_HAS_OCCURRED_$$m;
    _WRITE_HAS_OCCURRED_$$peri_row$ghost$$6 := _WRITE_HAS_OCCURRED_$$peri_row;
    assume {:captureState "loop_entry_state_8_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_8"} true;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$m ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset), BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), 16bv32)), local_id_x$1)) ) ,  (  _READ_HAS_OCCURRED_$$m ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 16bv32) ) ,  (  !p0$1 ==> _READ_HAS_OCCURRED_$$m$ghost$$6 == _READ_HAS_OCCURRED_$$m ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$peri_row$ghost$$6 == _WRITE_HAS_OCCURRED_$$peri_row ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p3"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p3$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.1$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset)) )  && ( p3$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.1$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL($offset, $matrix_dim), $offset)) ) ,  ( p3$1 ==> BV32_SLE(0bv32, $i.1$1) )  && ( p3$2 ==> BV32_SLE(0bv32, $i.1$2) ) ,  ( p3$1 ==> BV32_SLE($i.1$1, 0bv32) )  && ( p3$2 ==> BV32_SLE($i.1$2, 0bv32) ) ,  ( p3$1 ==> BV32_SGE($i.1$1, 0bv32) )  && ( p3$2 ==> BV32_SGE($i.1$2, 0bv32) ) ,  ( p3$1 ==> BV32_ULE($i.1$1, 0bv32) )  && ( p3$2 ==> BV32_ULE($i.1$2, 0bv32) ) ,  ( p3$1 ==> BV32_UGE($i.1$1, 0bv32) )  && ( p3$2 ==> BV32_UGE($i.1$2, 0bv32) ) ,  ( p3$1 ==> p3$1 ==> BV32_SLT(local_id_x$1, 16bv32) )  && ( p3$2 ==> p3$2 ==> BV32_SLT(local_id_x$2, 16bv32) ) ,  (  BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.1$1, 16bv32) ==> p3$1 )  && (  BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.1$2, 16bv32) ==> p3$2 ) ,  (  _READ_HAS_OCCURRED_$$m ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 13} p3$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 14} {:thread 1} (if _READ_HAS_OCCURRED_$$m ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(v1$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32))), $matrix_dim) == 0bv32 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), v1$1), $matrix_dim) == 0bv32 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 15} {:thread 1} (if _READ_HAS_OCCURRED_$$m ==> BV32_OR(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(v1$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32))), $matrix_dim), 8bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), v1$1), $matrix_dim), 16bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 16} {:thread 1} p3$1 ==> (if $array_offset.1$1 == BV32_MUL($matrix_dim, $i.1$1) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 16} {:thread 2} p3$2 ==> (if $array_offset.1$2 == BV32_MUL($matrix_dim, $i.1$2) then 1bv1 else 0bv1) != 0bv1;
    v5$1 := (if p3$1 then BV32_SLT($i.1$1, 16bv32) else v5$1);
    v5$2 := (if p3$2 then BV32_SLT($i.1$2, 16bv32) else v5$2);
    p4$1 := false;
    p4$2 := false;
    p4$1 := (if p3$1 && v5$1 then v5$1 else p4$1);
    p4$2 := (if p3$2 && v5$2 then v5$2 else p4$2);
    p3$1 := (if p3$1 && !v5$1 then v5$1 else p3$1);
    p3$2 := (if p3$2 && !v5$2 then v5$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$m(p4$1, BV32_ADD(BV32_ADD($array_offset.1$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1), $$m[BV32_ADD(BV32_ADD($array_offset.1$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$m(p4$2, BV32_ADD(BV32_ADD($array_offset.1$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2), $$m[BV32_ADD(BV32_ADD($array_offset.1$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$m"} true;
    v6$1 := (if p4$1 then $$m[BV32_ADD(BV32_ADD($array_offset.1$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1)] else v6$1);
    v6$2 := (if p4$2 then $$m[BV32_ADD(BV32_ADD($array_offset.1$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2)] else v6$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$peri_row(p4$1, BV32_ADD(BV32_MUL($i.1$1, 16bv32), v1$1), v6$1, $$peri_row[1bv1][BV32_ADD(BV32_MUL($i.1$1, 16bv32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_row(p4$2, BV32_ADD(BV32_MUL($i.1$2, 16bv32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$peri_row(p4$2, BV32_ADD(BV32_MUL($i.1$2, 16bv32), v1$2), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$peri_row"} true;
    $$peri_row[1bv1][BV32_ADD(BV32_MUL($i.1$1, 16bv32), v1$1)] := (if p4$1 then v6$1 else $$peri_row[1bv1][BV32_ADD(BV32_MUL($i.1$1, 16bv32), v1$1)]);
    $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.1$2, 16bv32), v1$2)] := (if p4$2 then v6$2 else $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.1$2, 16bv32), v1$2)]);
    $i.1$1, $array_offset.1$1 := (if p4$1 then BV32_ADD($i.1$1, 1bv32) else $i.1$1), (if p4$1 then BV32_ADD($array_offset.1$1, $matrix_dim) else $array_offset.1$1);
    $i.1$2, $array_offset.1$2 := (if p4$2 then BV32_ADD($i.1$2, 1bv32) else $i.1$2), (if p4$2 then BV32_ADD($array_offset.1$2, $matrix_dim) else $array_offset.1$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p3$1 && !p3$2;
    v7$1 := (if p5$1 then BV32_SUB(v1$1, 16bv32) else v7$1);
    v7$2 := (if p5$2 then BV32_SUB(v1$2, 16bv32) else v7$2);
    $i.2$1, $array_offset.2$1 := (if p5$1 then 8bv32 else $i.2$1), (if p5$1 then BV32_ADD(BV32_MUL(BV32_ADD($offset, 8bv32), $matrix_dim), $offset) else $array_offset.2$1);
    $i.2$2, $array_offset.2$2 := (if p5$2 then 8bv32 else $i.2$2), (if p5$2 then BV32_ADD(BV32_MUL(BV32_ADD($offset, 8bv32), $matrix_dim), $offset) else $array_offset.2$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$m$ghost$$11 := _READ_HAS_OCCURRED_$$m;
    _WRITE_HAS_OCCURRED_$$dia$ghost$$11 := _WRITE_HAS_OCCURRED_$$dia;
    assume {:captureState "loop_entry_state_7_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_7"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p5$1 ==> _READ_HAS_OCCURRED_$$m$ghost$$11 == _READ_HAS_OCCURRED_$$m ) ,  (  !p5$1 ==> _WRITE_HAS_OCCURRED_$$dia$ghost$$11 == _WRITE_HAS_OCCURRED_$$dia ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p6$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.2$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, 8bv32), $matrix_dim), $offset)) )  && ( p6$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.2$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, 8bv32), $matrix_dim), $offset)) ) ,  ( p6$1 ==> BV32_SLE(0bv32, $i.2$1) )  && ( p6$2 ==> BV32_SLE(0bv32, $i.2$2) ) ,  ( p6$1 ==> BV32_SLE($i.2$1, 8bv32) )  && ( p6$2 ==> BV32_SLE($i.2$2, 8bv32) ) ,  ( p6$1 ==> BV32_SGE($i.2$1, 8bv32) )  && ( p6$2 ==> BV32_SGE($i.2$2, 8bv32) ) ,  ( p6$1 ==> BV32_ULE($i.2$1, 8bv32) )  && ( p6$2 ==> BV32_ULE($i.2$2, 8bv32) ) ,  ( p6$1 ==> BV32_UGE($i.2$1, 8bv32) )  && ( p6$2 ==> BV32_UGE($i.2$2, 8bv32) ) ,  ( p6$1 ==> p6$1 ==> !BV32_SLT(local_id_x$1, 16bv32) )  && ( p6$2 ==> p6$2 ==> !BV32_SLT(local_id_x$2, 16bv32) ) ,  (  !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.2$1, 16bv32) ==> p6$1 )  && (  !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.2$2, 16bv32) ==> p6$2 ) ,  (  _READ_HAS_OCCURRED_$$m ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$dia ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 23} p6$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 24} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _READ_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(8bv32, $matrix_dim))), $matrix_dim) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 25} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _READ_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(8bv32, $matrix_dim))), $matrix_dim), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 26} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _WRITE_HAS_OCCURRED_$$dia then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_SUB(v1$1, 16bv32)), 16bv32) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 27} {:thread 1} p6$1 ==> (if $array_offset.2$1 == BV32_ADD(BV32_MUL($matrix_dim, BV32_SUB($i.2$1, 8bv32)), BV32_MUL(8bv32, $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 27} {:thread 2} p6$2 ==> (if $array_offset.2$2 == BV32_ADD(BV32_MUL($matrix_dim, BV32_SUB($i.2$2, 8bv32)), BV32_MUL(8bv32, $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    v8$1 := (if p6$1 then BV32_SLT($i.2$1, 16bv32) else v8$1);
    v8$2 := (if p6$2 then BV32_SLT($i.2$2, 16bv32) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$m(p7$1, BV32_ADD($array_offset.2$1, v7$1), $$m[BV32_ADD($array_offset.2$1, v7$1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$m(p7$2, BV32_ADD($array_offset.2$2, v7$2), $$m[BV32_ADD($array_offset.2$2, v7$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$m"} true;
    v9$1 := (if p7$1 then $$m[BV32_ADD($array_offset.2$1, v7$1)] else v9$1);
    v9$2 := (if p7$2 then $$m[BV32_ADD($array_offset.2$2, v7$2)] else v9$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$dia(p7$1, BV32_ADD(BV32_MUL($i.2$1, 16bv32), v7$1), v9$1, $$dia[1bv1][BV32_ADD(BV32_MUL($i.2$1, 16bv32), v7$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dia(p7$2, BV32_ADD(BV32_MUL($i.2$2, 16bv32), v7$2));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$dia(p7$2, BV32_ADD(BV32_MUL($i.2$2, 16bv32), v7$2), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dia"} true;
    $$dia[1bv1][BV32_ADD(BV32_MUL($i.2$1, 16bv32), v7$1)] := (if p7$1 then v9$1 else $$dia[1bv1][BV32_ADD(BV32_MUL($i.2$1, 16bv32), v7$1)]);
    $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, 16bv32), v7$2)] := (if p7$2 then v9$2 else $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, 16bv32), v7$2)]);
    $i.2$1, $array_offset.2$1 := (if p7$1 then BV32_ADD($i.2$1, 1bv32) else $i.2$1), (if p7$1 then BV32_ADD($array_offset.2$1, $matrix_dim) else $array_offset.2$1);
    $i.2$2, $array_offset.2$2 := (if p7$2 then BV32_ADD($i.2$2, 1bv32) else $i.2$2), (if p7$2 then BV32_ADD($array_offset.2$2, $matrix_dim) else $array_offset.2$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $11.backedge, $11.tail;

  $11.tail:
    assume !p6$1 && !p6$2;
    $i.3$1, $array_offset.3$1 := (if p5$1 then 0bv32 else $i.3$1), (if p5$1 then BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), $matrix_dim), $offset) else $array_offset.3$1);
    $i.3$2, $array_offset.3$2 := (if p5$2 then 0bv32 else $i.3$2), (if p5$2 then BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), $matrix_dim), $offset) else $array_offset.3$2);
    p8$1 := (if p5$1 then true else p8$1);
    p8$2 := (if p5$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$m$ghost$$15 := _READ_HAS_OCCURRED_$$m;
    _WRITE_HAS_OCCURRED_$$peri_col$ghost$$15 := _WRITE_HAS_OCCURRED_$$peri_col;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_6"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p5$1 ==> _READ_HAS_OCCURRED_$$m$ghost$$15 == _READ_HAS_OCCURRED_$$m ) ,  (  !p5$1 ==> _WRITE_HAS_OCCURRED_$$peri_col$ghost$$15 == _WRITE_HAS_OCCURRED_$$peri_col ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p5"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p8$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.3$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), $matrix_dim), $offset)) )  && ( p8$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.3$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), $matrix_dim), $offset)) ) ,  ( p8$1 ==> BV32_SLE(0bv32, $i.3$1) )  && ( p8$2 ==> BV32_SLE(0bv32, $i.3$2) ) ,  ( p8$1 ==> BV32_SLE($i.3$1, 0bv32) )  && ( p8$2 ==> BV32_SLE($i.3$2, 0bv32) ) ,  ( p8$1 ==> BV32_SGE($i.3$1, 0bv32) )  && ( p8$2 ==> BV32_SGE($i.3$2, 0bv32) ) ,  ( p8$1 ==> BV32_ULE($i.3$1, 0bv32) )  && ( p8$2 ==> BV32_ULE($i.3$2, 0bv32) ) ,  ( p8$1 ==> BV32_UGE($i.3$1, 0bv32) )  && ( p8$2 ==> BV32_UGE($i.3$2, 0bv32) ) ,  ( p8$1 ==> p8$1 ==> !BV32_SLT(local_id_x$1, 16bv32) )  && ( p8$2 ==> p8$2 ==> !BV32_SLT(local_id_x$2, 16bv32) ) ,  (  !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.3$1, 16bv32) ==> p8$1 )  && (  !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.3$2, 16bv32) ==> p8$2 ) ,  (  _READ_HAS_OCCURRED_$$m ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 33} p8$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 34} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _READ_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(8bv32, $matrix_dim))), $matrix_dim) == 0bv32 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim))), $matrix_dim) == 0bv32 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 35} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _READ_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_OR(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(8bv32, $matrix_dim))), $matrix_dim), 8bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim))), $matrix_dim), 16bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 36} {:thread 1} (if _WRITE_HAS_OCCURRED_$$peri_col ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_SUB(v1$1, 16bv32)), 16bv32) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 37} {:thread 1} p8$1 ==> (if $array_offset.3$1 == BV32_ADD(BV32_MUL($matrix_dim, $i.3$1), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 37} {:thread 2} p8$2 ==> (if $array_offset.3$2 == BV32_ADD(BV32_MUL($matrix_dim, $i.3$2), BV32_MUL(BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32), $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    v10$1 := (if p8$1 then BV32_SLT($i.3$1, 16bv32) else v10$1);
    v10$2 := (if p8$2 then BV32_SLT($i.3$2, 16bv32) else v10$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v10$1 then v10$1 else p9$1);
    p9$2 := (if p8$2 && v10$2 then v10$2 else p9$2);
    p8$1 := (if p8$1 && !v10$1 then v10$1 else p8$1);
    p8$2 := (if p8$2 && !v10$2 then v10$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$m(p9$1, BV32_ADD($array_offset.3$1, v7$1), $$m[BV32_ADD($array_offset.3$1, v7$1)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$m(p9$2, BV32_ADD($array_offset.3$2, v7$2), $$m[BV32_ADD($array_offset.3$2, v7$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$m"} true;
    v11$1 := (if p9$1 then $$m[BV32_ADD($array_offset.3$1, v7$1)] else v11$1);
    v11$2 := (if p9$2 then $$m[BV32_ADD($array_offset.3$2, v7$2)] else v11$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$peri_col(p9$1, BV32_ADD(BV32_MUL($i.3$1, 16bv32), v7$1), v11$1, $$peri_col[1bv1][BV32_ADD(BV32_MUL($i.3$1, 16bv32), v7$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_col(p9$2, BV32_ADD(BV32_MUL($i.3$2, 16bv32), v7$2));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$peri_col(p9$2, BV32_ADD(BV32_MUL($i.3$2, 16bv32), v7$2), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$peri_col"} true;
    $$peri_col[1bv1][BV32_ADD(BV32_MUL($i.3$1, 16bv32), v7$1)] := (if p9$1 then v11$1 else $$peri_col[1bv1][BV32_ADD(BV32_MUL($i.3$1, 16bv32), v7$1)]);
    $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.3$2, 16bv32), v7$2)] := (if p9$2 then v11$2 else $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.3$2, 16bv32), v7$2)]);
    $i.3$1, $array_offset.3$1 := (if p9$1 then BV32_ADD($i.3$1, 1bv32) else $i.3$1), (if p9$1 then BV32_ADD($array_offset.3$1, $matrix_dim) else $array_offset.3$1);
    $i.3$2, $array_offset.3$2 := (if p9$2 then BV32_ADD($i.3$2, 1bv32) else $i.3$2), (if p9$2 then BV32_ADD($array_offset.3$2, $matrix_dim) else $array_offset.3$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $15.backedge, __partitioned_block_$15.tail_0;

  __partitioned_block_$15.tail_0:
    assume !p8$1 && !p8$2;
    goto __partitioned_block_$15.tail_1;

  __partitioned_block_$15.tail_1:
    call {:sourceloc_num 43} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    v12$1 := BV32_SLT(v1$1, 16bv32);
    v12$2 := BV32_SLT(v1$2, 16bv32);
    p10$1 := (if v12$1 then v12$1 else p10$1);
    p10$2 := (if v12$2 then v12$2 else p10$2);
    p15$1 := (if !v12$1 then !v12$1 else p15$1);
    p15$2 := (if !v12$2 then !v12$2 else p15$2);
    $i.4$1 := (if p10$1 then 1bv32 else $i.4$1);
    $i.4$2 := (if p10$2 then 1bv32 else $i.4$2);
    p11$1 := (if p10$1 then true else p11$1);
    p11$2 := (if p10$2 then true else p11$2);
    _READ_HAS_OCCURRED_$$peri_row$ghost$$21 := _READ_HAS_OCCURRED_$$peri_row;
    _WRITE_HAS_OCCURRED_$$peri_row$ghost$$21 := _WRITE_HAS_OCCURRED_$$peri_row;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_4"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  !p10$1 ==> _READ_HAS_OCCURRED_$$peri_row$ghost$$21 == _READ_HAS_OCCURRED_$$peri_row ) ,  (  !p10$1 ==> _WRITE_HAS_OCCURRED_$$peri_row$ghost$$21 == _WRITE_HAS_OCCURRED_$$peri_row ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p10"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p11$1 ==> BV32_SLE(0bv32, $i.4$1) )  && ( p11$2 ==> BV32_SLE(0bv32, $i.4$2) ) ,  ( p11$1 ==> BV32_SLE($i.4$1, 1bv32) )  && ( p11$2 ==> BV32_SLE($i.4$2, 1bv32) ) ,  ( p11$1 ==> BV32_SGE($i.4$1, 1bv32) )  && ( p11$2 ==> BV32_SGE($i.4$2, 1bv32) ) ,  ( p11$1 ==> BV32_ULE($i.4$1, 1bv32) )  && ( p11$2 ==> BV32_ULE($i.4$2, 1bv32) ) ,  ( p11$1 ==> BV32_UGE($i.4$1, 1bv32) )  && ( p11$2 ==> BV32_UGE($i.4$2, 1bv32) ) ,  ( p11$1 ==> p11$1 ==> BV32_SLT(local_id_x$1, 16bv32) )  && ( p11$2 ==> p11$2 ==> BV32_SLT(local_id_x$2, 16bv32) ) ,  (  BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.4$1, 16bv32) ==> p11$1 )  && (  BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.4$2, 16bv32) ==> p11$2 ) ,  (  _READ_HAS_OCCURRED_$$dia ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 45} p11$1 ==> true;
    v13$1 := (if p11$1 then BV32_SLT($i.4$1, 16bv32) else v13$1);
    v13$2 := (if p11$2 then BV32_SLT($i.4$2, 16bv32) else v13$2);
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p12$1 := (if p11$1 && v13$1 then v13$1 else p12$1);
    p12$2 := (if p11$2 && v13$2 then v13$2 else p12$2);
    p11$1 := (if p11$1 && !v13$1 then v13$1 else p11$1);
    p11$2 := (if p11$2 && !v13$2 then v13$2 else p11$2);
    $j.0$1 := (if p12$1 then 0bv32 else $j.0$1);
    $j.0$2 := (if p12$2 then 0bv32 else $j.0$2);
    p13$1 := (if p12$1 then true else p13$1);
    p13$2 := (if p12$2 then true else p13$2);
    _READ_HAS_OCCURRED_$$peri_row$ghost$$23 := _READ_HAS_OCCURRED_$$peri_row;
    _WRITE_HAS_OCCURRED_$$peri_row$ghost$$23 := _WRITE_HAS_OCCURRED_$$peri_row;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $23;

  $23:
    assume {:captureState "loop_head_state_5"} true;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 16bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 16bv32), local_id_x$1)) ) ,  (  !p12$1 ==> _READ_HAS_OCCURRED_$$peri_row$ghost$$23 == _READ_HAS_OCCURRED_$$peri_row ) ,  (  !p12$1 ==> _WRITE_HAS_OCCURRED_$$peri_row$ghost$$23 == _WRITE_HAS_OCCURRED_$$peri_row ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p13"} {:dominator_predicate "p12"} true;
    assert p13$1 ==> p11$1;
    assert p13$2 ==> p11$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p13$1 ==> BV32_SLE(0bv32, $j.0$1) )  && ( p13$2 ==> BV32_SLE(0bv32, $j.0$2) ) ,  ( p13$1 ==> BV32_SLE($j.0$1, 0bv32) )  && ( p13$2 ==> BV32_SLE($j.0$2, 0bv32) ) ,  ( p13$1 ==> BV32_SGE($j.0$1, 0bv32) )  && ( p13$2 ==> BV32_SGE($j.0$2, 0bv32) ) ,  ( p13$1 ==> BV32_ULE($j.0$1, 0bv32) )  && ( p13$2 ==> BV32_ULE($j.0$2, 0bv32) ) ,  ( p13$1 ==> BV32_UGE($j.0$1, 0bv32) )  && ( p13$2 ==> BV32_UGE($j.0$2, 0bv32) ) ,  ( p13$1 ==> p13$1 ==> BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.4$1, 16bv32) )  && ( p13$2 ==> p13$2 ==> BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.4$2, 16bv32) ) ,  (  BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.4$1, 16bv32) && BV32_SLT($j.0$1, $i.4$1) ==> p13$1 )  && (  BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.4$2, 16bv32) && BV32_SLT($j.0$2, $i.4$2) ==> p13$2 ) ,  (  _READ_HAS_OCCURRED_$$dia ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$dia ==> BV32_SLT($i.4$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_SLT($i.4$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_row ==> BV32_SLT($i.4$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 47} p13$1 ==> true;
    v14$1 := (if p13$1 then BV32_SLT($j.0$1, $i.4$1) else v14$1);
    v14$2 := (if p13$2 then BV32_SLT($j.0$2, $i.4$2) else v14$2);
    p14$1 := false;
    p14$2 := false;
    p14$1 := (if p13$1 && v14$1 then v14$1 else p14$1);
    p14$2 := (if p13$2 && v14$2 then v14$2 else p14$2);
    p13$1 := (if p13$1 && !v14$1 then v14$1 else p13$1);
    p13$2 := (if p13$2 && !v14$2 then v14$2 else p13$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 49} true;
    v15$1 := (if p14$1 then $$dia[1bv1][BV32_ADD(BV32_MUL($i.4$1, 16bv32), $j.0$1)] else v15$1);
    v15$2 := (if p14$2 then $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.4$2, 16bv32), $j.0$2)] else v15$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$peri_row(p14$1, BV32_ADD(BV32_MUL($j.0$1, 16bv32), v1$1), $$peri_row[1bv1][BV32_ADD(BV32_MUL($j.0$1, 16bv32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$peri_row(p14$2, BV32_ADD(BV32_MUL($j.0$2, 16bv32), v1$2), $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 16bv32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$peri_row"} true;
    v16$1 := (if p14$1 then $$peri_row[1bv1][BV32_ADD(BV32_MUL($j.0$1, 16bv32), v1$1)] else v16$1);
    v16$2 := (if p14$2 then $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0$2, 16bv32), v1$2)] else v16$2);
    v17$1 := (if p14$1 then BV32_ADD(BV32_MUL($i.4$1, 16bv32), v1$1) else v17$1);
    v17$2 := (if p14$2 then BV32_ADD(BV32_MUL($i.4$2, 16bv32), v1$2) else v17$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$peri_row(p14$1, v17$1, $$peri_row[1bv1][v17$1]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$peri_row(p14$2, v17$2, $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$peri_row"} true;
    v18$1 := (if p14$1 then $$peri_row[1bv1][v17$1] else v18$1);
    v18$2 := (if p14$2 then $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2] else v18$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$peri_row(p14$1, v17$1, FADD32(FMUL32(FSUB32(2147483648bv32, v15$1), v16$1), v18$1), $$peri_row[1bv1][v17$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_row(p14$2, v17$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$peri_row(p14$2, v17$2, FADD32(FMUL32(FSUB32(2147483648bv32, v15$2), v16$2), v18$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$peri_row"} true;
    $$peri_row[1bv1][v17$1] := (if p14$1 then FADD32(FMUL32(FSUB32(2147483648bv32, v15$1), v16$1), v18$1) else $$peri_row[1bv1][v17$1]);
    $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2] := (if p14$2 then FADD32(FMUL32(FSUB32(2147483648bv32, v15$2), v16$2), v18$2) else $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2]);
    $j.0$1 := (if p14$1 then BV32_ADD($j.0$1, 1bv32) else $j.0$1);
    $j.0$2 := (if p14$2 then BV32_ADD($j.0$2, 1bv32) else $j.0$2);
    p13$1 := (if p14$1 then true else p13$1);
    p13$2 := (if p14$2 then true else p13$2);
    goto $23.backedge, $23.tail;

  $23.tail:
    assume !p13$1 && !p13$2;
    $i.4$1 := (if p12$1 then BV32_ADD($i.4$1, 1bv32) else $i.4$1);
    $i.4$2 := (if p12$2 then BV32_ADD($i.4$2, 1bv32) else $i.4$2);
    p11$1 := (if p12$1 then true else p11$1);
    p11$2 := (if p12$2 then true else p11$2);
    goto $21.backedge, $21.tail;

  $21.tail:
    assume !p11$1 && !p11$2;
    v19$1 := (if p15$1 then BV32_SUB(v1$1, 16bv32) else v19$1);
    v19$2 := (if p15$2 then BV32_SUB(v1$2, 16bv32) else v19$2);
    $i.5$1 := (if p15$1 then 0bv32 else $i.5$1);
    $i.5$2 := (if p15$2 then 0bv32 else $i.5$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$peri_col$ghost$$30 := _READ_HAS_OCCURRED_$$peri_col;
    _WRITE_HAS_OCCURRED_$$peri_col$ghost$$30 := _WRITE_HAS_OCCURRED_$$peri_col;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $30;

  $30:
    assume {:captureState "loop_head_state_2"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p15$1 ==> _READ_HAS_OCCURRED_$$peri_col$ghost$$30 == _READ_HAS_OCCURRED_$$peri_col ) ,  (  !p15$1 ==> _WRITE_HAS_OCCURRED_$$peri_col$ghost$$30 == _WRITE_HAS_OCCURRED_$$peri_col ) ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p16$1 ==> BV32_SLE(0bv32, $i.5$1) )  && ( p16$2 ==> BV32_SLE(0bv32, $i.5$2) ) ,  ( p16$1 ==> BV32_SLE($i.5$1, 0bv32) )  && ( p16$2 ==> BV32_SLE($i.5$2, 0bv32) ) ,  ( p16$1 ==> BV32_SGE($i.5$1, 0bv32) )  && ( p16$2 ==> BV32_SGE($i.5$2, 0bv32) ) ,  ( p16$1 ==> BV32_ULE($i.5$1, 0bv32) )  && ( p16$2 ==> BV32_ULE($i.5$2, 0bv32) ) ,  ( p16$1 ==> BV32_UGE($i.5$1, 0bv32) )  && ( p16$2 ==> BV32_UGE($i.5$2, 0bv32) ) ,  ( p16$1 ==> p16$1 ==> !BV32_SLT(local_id_x$1, 16bv32) )  && ( p16$2 ==> p16$2 ==> !BV32_SLT(local_id_x$2, 16bv32) ) ,  (  !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.5$1, 16bv32) ==> p16$1 )  && (  !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.5$2, 16bv32) ==> p16$2 ) ,  (  _READ_HAS_OCCURRED_$$dia ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 58} p16$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 59} {:thread 1} (if _WRITE_HAS_OCCURRED_$$peri_col ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_MUL(v19$1, 16bv32)), 16bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 60} {:thread 1} (if _READ_HAS_OCCURRED_$$peri_col ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_MUL(v19$1, 16bv32)), 16bv32) then 1bv1 else 0bv1) != 0bv1;
    v20$1 := (if p16$1 then BV32_SLT($i.5$1, 16bv32) else v20$1);
    v20$2 := (if p16$2 then BV32_SLT($i.5$2, 16bv32) else v20$2);
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p17$1 := (if p16$1 && v20$1 then v20$1 else p17$1);
    p17$2 := (if p16$2 && v20$2 then v20$2 else p17$2);
    p16$1 := (if p16$1 && !v20$1 then v20$1 else p16$1);
    p16$2 := (if p16$2 && !v20$2 then v20$2 else p16$2);
    $j.1$1 := (if p17$1 then 0bv32 else $j.1$1);
    $j.1$2 := (if p17$2 then 0bv32 else $j.1$2);
    p18$1 := (if p17$1 then true else p18$1);
    p18$2 := (if p17$2 then true else p18$2);
    _READ_HAS_OCCURRED_$$peri_col$ghost$$32 := _READ_HAS_OCCURRED_$$peri_col;
    _WRITE_HAS_OCCURRED_$$peri_col$ghost$$32 := _WRITE_HAS_OCCURRED_$$peri_col;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $32;

  $32:
    assume {:captureState "loop_head_state_3"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p17$1 ==> _READ_HAS_OCCURRED_$$peri_col$ghost$$32 == _READ_HAS_OCCURRED_$$peri_col ) ,  (  !p17$1 ==> _WRITE_HAS_OCCURRED_$$peri_col$ghost$$32 == _WRITE_HAS_OCCURRED_$$peri_col ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p17"} true;
    assert p18$1 ==> p16$1;
    assert p18$2 ==> p16$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p18$1 ==> BV32_SLE(0bv32, $j.1$1) )  && ( p18$2 ==> BV32_SLE(0bv32, $j.1$2) ) ,  ( p18$1 ==> BV32_SLE($j.1$1, 0bv32) )  && ( p18$2 ==> BV32_SLE($j.1$2, 0bv32) ) ,  ( p18$1 ==> BV32_SGE($j.1$1, 0bv32) )  && ( p18$2 ==> BV32_SGE($j.1$2, 0bv32) ) ,  ( p18$1 ==> BV32_ULE($j.1$1, 0bv32) )  && ( p18$2 ==> BV32_ULE($j.1$2, 0bv32) ) ,  ( p18$1 ==> BV32_UGE($j.1$1, 0bv32) )  && ( p18$2 ==> BV32_UGE($j.1$2, 0bv32) ) ,  ( p18$1 ==> p18$1 ==> !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.5$1, 16bv32) )  && ( p18$2 ==> p18$2 ==> !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.5$2, 16bv32) ) ,  (  !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.5$1, 16bv32) && BV32_SLT($j.1$1, $i.5$1) ==> p18$1 )  && (  !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.5$2, 16bv32) && BV32_SLT($j.1$2, $i.5$2) ==> p18$2 ) ,  (  _READ_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$peri_col ==> BV32_SLT($i.5$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$dia ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _READ_HAS_OCCURRED_$$dia ==> BV32_SLT($i.5$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$peri_col ==> BV32_SLT($i.5$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 62} p18$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 63} {:thread 1} (if _WRITE_HAS_OCCURRED_$$peri_col ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_MUL(v19$1, 16bv32)), 16bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 64} {:thread 1} (if _READ_HAS_OCCURRED_$$peri_col ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_MUL(v19$1, 16bv32)), 16bv32) then 1bv1 else 0bv1) != 0bv1;
    v21$1 := (if p18$1 then BV32_SLT($j.1$1, $i.5$1) else v21$1);
    v21$2 := (if p18$2 then BV32_SLT($j.1$2, $i.5$2) else v21$2);
    p19$1 := false;
    p19$2 := false;
    p19$1 := (if p18$1 && v21$1 then v21$1 else p19$1);
    p19$2 := (if p18$2 && v21$2 then v21$2 else p19$2);
    p18$1 := (if p18$1 && !v21$1 then v21$1 else p18$1);
    p18$2 := (if p18$2 && !v21$2 then v21$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$peri_col(p19$1, BV32_ADD(BV32_MUL(v19$1, 16bv32), $j.1$1), $$peri_col[1bv1][BV32_ADD(BV32_MUL(v19$1, 16bv32), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$peri_col(p19$2, BV32_ADD(BV32_MUL(v19$2, 16bv32), $j.1$2), $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v19$2, 16bv32), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$peri_col"} true;
    v22$1 := (if p19$1 then $$peri_col[1bv1][BV32_ADD(BV32_MUL(v19$1, 16bv32), $j.1$1)] else v22$1);
    v22$2 := (if p19$2 then $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v19$2, 16bv32), $j.1$2)] else v22$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 67} true;
    v23$1 := (if p19$1 then $$dia[1bv1][BV32_ADD(BV32_MUL($j.1$1, 16bv32), $i.5$1)] else v23$1);
    v23$2 := (if p19$2 then $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.1$2, 16bv32), $i.5$2)] else v23$2);
    v24$1 := (if p19$1 then BV32_ADD(BV32_MUL(v19$1, 16bv32), $i.5$1) else v24$1);
    v24$2 := (if p19$2 then BV32_ADD(BV32_MUL(v19$2, 16bv32), $i.5$2) else v24$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$peri_col(p19$1, v24$1, $$peri_col[1bv1][v24$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$peri_col(p19$2, v24$2, $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v24$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$peri_col"} true;
    v25$1 := (if p19$1 then $$peri_col[1bv1][v24$1] else v25$1);
    v25$2 := (if p19$2 then $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v24$2] else v25$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_WRITE_$$peri_col(p19$1, v24$1, FADD32(FMUL32(FSUB32(2147483648bv32, v22$1), v23$1), v25$1), $$peri_col[1bv1][v24$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_col(p19$2, v24$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 69} _CHECK_WRITE_$$peri_col(p19$2, v24$2, FADD32(FMUL32(FSUB32(2147483648bv32, v22$2), v23$2), v25$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$peri_col"} true;
    $$peri_col[1bv1][v24$1] := (if p19$1 then FADD32(FMUL32(FSUB32(2147483648bv32, v22$1), v23$1), v25$1) else $$peri_col[1bv1][v24$1]);
    $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v24$2] := (if p19$2 then FADD32(FMUL32(FSUB32(2147483648bv32, v22$2), v23$2), v25$2) else $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v24$2]);
    $j.1$1 := (if p19$1 then BV32_ADD($j.1$1, 1bv32) else $j.1$1);
    $j.1$2 := (if p19$2 then BV32_ADD($j.1$2, 1bv32) else $j.1$2);
    p18$1 := (if p19$1 then true else p18$1);
    p18$2 := (if p19$2 then true else p18$2);
    goto $32.backedge, $32.tail;

  $32.tail:
    assume !p18$1 && !p18$2;
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 72} true;
    v26$1 := (if p17$1 then $$dia[1bv1][BV32_ADD(BV32_MUL($i.5$1, 16bv32), $i.5$1)] else v26$1);
    v26$2 := (if p17$2 then $$dia[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.5$2, 16bv32), $i.5$2)] else v26$2);
    v27$1 := (if p17$1 then BV32_ADD(BV32_MUL(v19$1, 16bv32), $i.5$1) else v27$1);
    v27$2 := (if p17$2 then BV32_ADD(BV32_MUL(v19$2, 16bv32), $i.5$2) else v27$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$peri_col(p17$1, v27$1, $$peri_col[1bv1][v27$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$peri_col(p17$2, v27$2, $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v27$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$peri_col"} true;
    v28$1 := (if p17$1 then $$peri_col[1bv1][v27$1] else v28$1);
    v28$2 := (if p17$2 then $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v27$2] else v28$2);
    call {:sourceloc} {:sourceloc_num 74} _LOG_WRITE_$$peri_col(p17$1, v27$1, FDIV32(v28$1, v26$1), $$peri_col[1bv1][v27$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_col(p17$2, v27$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 74} _CHECK_WRITE_$$peri_col(p17$2, v27$2, FDIV32(v28$2, v26$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$peri_col"} true;
    $$peri_col[1bv1][v27$1] := (if p17$1 then FDIV32(v28$1, v26$1) else $$peri_col[1bv1][v27$1]);
    $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v27$2] := (if p17$2 then FDIV32(v28$2, v26$2) else $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v27$2]);
    $i.5$1 := (if p17$1 then BV32_ADD($i.5$1, 1bv32) else $i.5$1);
    $i.5$2 := (if p17$2 then BV32_ADD($i.5$2, 1bv32) else $i.5$2);
    p16$1 := (if p17$1 then true else p16$1);
    p16$2 := (if p17$2 then true else p16$2);
    goto $30.backedge, __partitioned_block_$30.tail_0;

  __partitioned_block_$30.tail_0:
    assume !p16$1 && !p16$2;
    goto __partitioned_block_$30.tail_1;

  __partitioned_block_$30.tail_1:
    call {:sourceloc_num 77} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v29$1 := BV32_SLT(v1$1, 16bv32);
    v29$2 := BV32_SLT(v1$2, 16bv32);
    p20$1 := (if v29$1 then v29$1 else p20$1);
    p20$2 := (if v29$2 then v29$2 else p20$2);
    p23$1 := (if !v29$1 then !v29$1 else p23$1);
    p23$2 := (if !v29$2 then !v29$2 else p23$2);
    $i.6$1, $array_offset.4$1 := (if p20$1 then 1bv32 else $i.6$1), (if p20$1 then BV32_ADD(BV32_MUL(BV32_ADD($offset, 1bv32), $matrix_dim), $offset) else $array_offset.4$1);
    $i.6$2, $array_offset.4$2 := (if p20$2 then 1bv32 else $i.6$2), (if p20$2 then BV32_ADD(BV32_MUL(BV32_ADD($offset, 1bv32), $matrix_dim), $offset) else $array_offset.4$2);
    p21$1 := (if p20$1 then true else p21$1);
    p21$2 := (if p20$2 then true else p21$2);
    _WRITE_HAS_OCCURRED_$$m$ghost$$40 := _WRITE_HAS_OCCURRED_$$m;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $40;

  $40:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$m ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD($offset, 1bv32), $matrix_dim), $offset), BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), 16bv32)), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$m ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 16bv32) ) ,  (  !p20$1 ==> _WRITE_HAS_OCCURRED_$$m$ghost$$40 == _WRITE_HAS_OCCURRED_$$m ) ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p21"} {:dominator_predicate "p20"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p21$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.4$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, 1bv32), $matrix_dim), $offset)) )  && ( p21$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.4$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, 1bv32), $matrix_dim), $offset)) ) ,  ( p21$1 ==> BV32_SLE(0bv32, $i.6$1) )  && ( p21$2 ==> BV32_SLE(0bv32, $i.6$2) ) ,  ( p21$1 ==> BV32_SLE($i.6$1, 1bv32) )  && ( p21$2 ==> BV32_SLE($i.6$2, 1bv32) ) ,  ( p21$1 ==> BV32_SGE($i.6$1, 1bv32) )  && ( p21$2 ==> BV32_SGE($i.6$2, 1bv32) ) ,  ( p21$1 ==> BV32_ULE($i.6$1, 1bv32) )  && ( p21$2 ==> BV32_ULE($i.6$2, 1bv32) ) ,  ( p21$1 ==> BV32_UGE($i.6$1, 1bv32) )  && ( p21$2 ==> BV32_UGE($i.6$2, 1bv32) ) ,  ( p21$1 ==> p21$1 ==> BV32_SLT(local_id_x$1, 16bv32) )  && ( p21$2 ==> p21$2 ==> BV32_SLT(local_id_x$2, 16bv32) ) ,  (  BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.6$1, 16bv32) ==> p21$1 )  && (  BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.6$2, 16bv32) ==> p21$2 ) ,  (  _READ_HAS_OCCURRED_$$peri_row ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$m ==> BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 79} p21$1 ==> true;
    v30$1 := (if p21$1 then BV32_SLT($i.6$1, 16bv32) else v30$1);
    v30$2 := (if p21$2 then BV32_SLT($i.6$2, 16bv32) else v30$2);
    p22$1 := false;
    p22$2 := false;
    p22$1 := (if p21$1 && v30$1 then v30$1 else p22$1);
    p22$2 := (if p21$2 && v30$2 then v30$2 else p22$2);
    p21$1 := (if p21$1 && !v30$1 then v30$1 else p21$1);
    p21$2 := (if p21$2 && !v30$2 then v30$2 else p21$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 81} true;
    v31$1 := (if p22$1 then $$peri_row[1bv1][BV32_ADD(BV32_MUL($i.6$1, 16bv32), v1$1)] else v31$1);
    v31$2 := (if p22$2 then $$peri_row[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.6$2, 16bv32), v1$2)] else v31$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_WRITE_$$m(p22$1, BV32_ADD(BV32_ADD($array_offset.4$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1), v31$1, $$m[BV32_ADD(BV32_ADD($array_offset.4$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$m(p22$2, BV32_ADD(BV32_ADD($array_offset.4$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 82} _CHECK_WRITE_$$m(p22$2, BV32_ADD(BV32_ADD($array_offset.4$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$m"} true;
    $$m[BV32_ADD(BV32_ADD($array_offset.4$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1)] := (if p22$1 then v31$1 else $$m[BV32_ADD(BV32_ADD($array_offset.4$1, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), v1$1)]);
    $$m[BV32_ADD(BV32_ADD($array_offset.4$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2)] := (if p22$2 then v31$2 else $$m[BV32_ADD(BV32_ADD($array_offset.4$2, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), v1$2)]);
    $i.6$1, $array_offset.4$1 := (if p22$1 then BV32_ADD($i.6$1, 1bv32) else $i.6$1), (if p22$1 then BV32_ADD($array_offset.4$1, $matrix_dim) else $array_offset.4$1);
    $i.6$2, $array_offset.4$2 := (if p22$2 then BV32_ADD($i.6$2, 1bv32) else $i.6$2), (if p22$2 then BV32_ADD($array_offset.4$2, $matrix_dim) else $array_offset.4$2);
    p21$1 := (if p22$1 then true else p21$1);
    p21$2 := (if p22$2 then true else p21$2);
    goto $40.backedge, $40.tail;

  $40.tail:
    assume !p21$1 && !p21$2;
    v32$1 := (if p23$1 then BV32_SUB(v1$1, 16bv32) else v32$1);
    v32$2 := (if p23$2 then BV32_SUB(v1$2, 16bv32) else v32$2);
    $i.7$1, $array_offset.5$1 := (if p23$1 then 0bv32 else $i.7$1), (if p23$1 then BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), $matrix_dim), $offset) else $array_offset.5$1);
    $i.7$2, $array_offset.5$2 := (if p23$2 then 0bv32 else $i.7$2), (if p23$2 then BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), $matrix_dim), $offset) else $array_offset.5$2);
    p24$1 := (if p23$1 then true else p24$1);
    p24$2 := (if p23$2 then true else p24$2);
    _WRITE_HAS_OCCURRED_$$m$ghost$$45 := _WRITE_HAS_OCCURRED_$$m;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $45;

  $45:
    assume {:captureState "loop_head_state_0"} true;
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p23$1 ==> _WRITE_HAS_OCCURRED_$$m$ghost$$45 == _WRITE_HAS_OCCURRED_$$m )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_col ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$peri_row ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$dia ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p24"} {:dominator_predicate "p23"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p24$1 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.5$1) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32)), $matrix_dim), $offset)) )  && ( p24$2 ==> BV32_AND(BV32_SUB($matrix_dim, 1bv32), $array_offset.5$2) == BV32_AND(BV32_SUB($matrix_dim, 1bv32), BV32_ADD(BV32_MUL(BV32_ADD($offset, BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32)), $matrix_dim), $offset)) ) ,  ( p24$1 ==> BV32_SLE(0bv32, $i.7$1) )  && ( p24$2 ==> BV32_SLE(0bv32, $i.7$2) ) ,  ( p24$1 ==> BV32_SLE($i.7$1, 0bv32) )  && ( p24$2 ==> BV32_SLE($i.7$2, 0bv32) ) ,  ( p24$1 ==> BV32_SGE($i.7$1, 0bv32) )  && ( p24$2 ==> BV32_SGE($i.7$2, 0bv32) ) ,  ( p24$1 ==> BV32_ULE($i.7$1, 0bv32) )  && ( p24$2 ==> BV32_ULE($i.7$2, 0bv32) ) ,  ( p24$1 ==> BV32_UGE($i.7$1, 0bv32) )  && ( p24$2 ==> BV32_UGE($i.7$2, 0bv32) ) ,  ( p24$1 ==> p24$1 ==> !BV32_SLT(local_id_x$1, 16bv32) )  && ( p24$2 ==> p24$2 ==> !BV32_SLT(local_id_x$2, 16bv32) ) ,  (  !BV32_SLT(local_id_x$1, 16bv32) && BV32_SLT($i.7$1, 16bv32) ==> p24$1 )  && (  !BV32_SLT(local_id_x$2, 16bv32) && BV32_SLT($i.7$2, 16bv32) ==> p24$2 ) ,  (  _READ_HAS_OCCURRED_$$peri_col ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$m ==> !BV32_SLT(local_id_x$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 86} p24$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 87} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _WRITE_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim))), $matrix_dim) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 88} {:thread 1} (if BV32_AND(BV1_ZEXT32((if _WRITE_HAS_OCCURRED_$$m then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE(v1$1, 16bv32) then 1bv1 else 0bv1))) != 0bv32 ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), BV32_ADD(BV32_SUB(v1$1, 16bv32), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim))), $matrix_dim), 16bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 89} {:thread 1} p24$1 ==> (if $array_offset.5$1 == BV32_ADD(BV32_MUL($matrix_dim, $i.7$1), BV32_MUL(BV32_MUL(BV32_ADD(v0$1, 1bv32), 16bv32), $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 89} {:thread 2} p24$2 ==> (if $array_offset.5$2 == BV32_ADD(BV32_MUL($matrix_dim, $i.7$2), BV32_MUL(BV32_MUL(BV32_ADD(v0$2, 1bv32), 16bv32), $matrix_dim)) then 1bv1 else 0bv1) != 0bv1;
    v33$1 := (if p24$1 then BV32_SLT($i.7$1, 16bv32) else v33$1);
    v33$2 := (if p24$2 then BV32_SLT($i.7$2, 16bv32) else v33$2);
    p25$1 := false;
    p25$2 := false;
    p25$1 := (if p24$1 && v33$1 then v33$1 else p25$1);
    p25$2 := (if p24$2 && v33$2 then v33$2 else p25$2);
    p24$1 := (if p24$1 && !v33$1 then v33$1 else p24$1);
    p24$2 := (if p24$2 && !v33$2 then v33$2 else p24$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 91} true;
    v34$1 := (if p25$1 then $$peri_col[1bv1][BV32_ADD(BV32_MUL($i.7$1, 16bv32), v32$1)] else v34$1);
    v34$2 := (if p25$2 then $$peri_col[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.7$2, 16bv32), v32$2)] else v34$2);
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$m(p25$1, BV32_ADD($array_offset.5$1, v32$1), v34$1, $$m[BV32_ADD($array_offset.5$1, v32$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$m(p25$2, BV32_ADD($array_offset.5$2, v32$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$m(p25$2, BV32_ADD($array_offset.5$2, v32$2), v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$m"} true;
    $$m[BV32_ADD($array_offset.5$1, v32$1)] := (if p25$1 then v34$1 else $$m[BV32_ADD($array_offset.5$1, v32$1)]);
    $$m[BV32_ADD($array_offset.5$2, v32$2)] := (if p25$2 then v34$2 else $$m[BV32_ADD($array_offset.5$2, v32$2)]);
    $i.7$1, $array_offset.5$1 := (if p25$1 then BV32_ADD($i.7$1, 1bv32) else $i.7$1), (if p25$1 then BV32_ADD($array_offset.5$1, $matrix_dim) else $array_offset.5$1);
    $i.7$2, $array_offset.5$2 := (if p25$2 then BV32_ADD($i.7$2, 1bv32) else $i.7$2), (if p25$2 then BV32_ADD($array_offset.5$2, $matrix_dim) else $array_offset.5$2);
    p24$1 := (if p25$1 then true else p24$1);
    p24$2 := (if p25$2 then true else p24$2);
    goto $45.backedge, $45.tail;

  $45.tail:
    assume !p24$1 && !p24$2;
    return;

  $45.backedge:
    assume {:backedge} p24$1 || p24$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $45;

  $40.backedge:
    assume {:backedge} p21$1 || p21$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $40;

  $30.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $30;

  $32.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $32;

  $21.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $21;

  $23.backedge:
    assume {:backedge} p13$1 || p13$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $23;

  $15.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $15;

  $11.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_7_0"} true;
    goto $11;

  $6.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_8_0"} true;
    goto $6;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_9_0"} true;
    goto $2;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 63bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

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
  requires $1 == 0bv1;
  modifies $$dia, $$peri_row, $$peri_col, $$m, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$dia, $$peri_row, $$peri_col, $$m, _TRACKING;





function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;







function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;











































































































































































































const _WATCHED_VALUE_$$m: bv32;

procedure {:inline 1} _LOG_READ_$$m(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$m;



implementation {:inline 1} _LOG_READ_$$m(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$m := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$m == _value then true else _READ_HAS_OCCURRED_$$m);
    return;
}



procedure _CHECK_READ_$$m(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "m"} {:array "$$m"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$m);
  requires {:source_name "m"} {:array "$$m"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$m: bool;

procedure {:inline 1} _LOG_WRITE_$$m(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$m, _WRITE_READ_BENIGN_FLAG_$$m;



implementation {:inline 1} _LOG_WRITE_$$m(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$m := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$m == _value then true else _WRITE_HAS_OCCURRED_$$m);
    _WRITE_READ_BENIGN_FLAG_$$m := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$m == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$m);
    return;
}



procedure _CHECK_WRITE_$$m(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "m"} {:array "$$m"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$m != _value);
  requires {:source_name "m"} {:array "$$m"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$m != _value);
  requires {:source_name "m"} {:array "$$m"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$m(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$m;



implementation {:inline 1} _LOG_ATOMIC_$$m(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$m := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$m);
    return;
}



procedure _CHECK_ATOMIC_$$m(_P: bool, _offset: bv32);
  requires {:source_name "m"} {:array "$$m"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset);
  requires {:source_name "m"} {:array "$$m"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$m(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$m;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$m(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$m := (if _P && _WRITE_HAS_OCCURRED_$$m && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$m);
    return;
}



const _WATCHED_VALUE_$$dia: bv32;

procedure {:inline 1} _LOG_READ_$$dia(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$dia;



implementation {:inline 1} _LOG_READ_$$dia(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dia := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dia == _value then true else _READ_HAS_OCCURRED_$$dia);
    return;
}



procedure _CHECK_READ_$$dia(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dia && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$dia: bool;

procedure {:inline 1} _LOG_WRITE_$$dia(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$dia, _WRITE_READ_BENIGN_FLAG_$$dia;



implementation {:inline 1} _LOG_WRITE_$$dia(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dia := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dia == _value then true else _WRITE_HAS_OCCURRED_$$dia);
    _WRITE_READ_BENIGN_FLAG_$$dia := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dia == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dia);
    return;
}



procedure _CHECK_WRITE_$$dia(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dia != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dia != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$dia(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$dia;



implementation {:inline 1} _LOG_ATOMIC_$$dia(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dia := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dia);
    return;
}



procedure _CHECK_ATOMIC_$$dia(_P: bool, _offset: bv32);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "dia"} {:array "$$dia"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dia(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$dia;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dia(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dia := (if _P && _WRITE_HAS_OCCURRED_$$dia && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dia);
    return;
}



const _WATCHED_VALUE_$$peri_row: bv32;

procedure {:inline 1} _LOG_READ_$$peri_row(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$peri_row;



implementation {:inline 1} _LOG_READ_$$peri_row(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$peri_row := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_row == _value then true else _READ_HAS_OCCURRED_$$peri_row);
    return;
}



procedure _CHECK_READ_$$peri_row(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$peri_row && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$peri_row: bool;

procedure {:inline 1} _LOG_WRITE_$$peri_row(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$peri_row, _WRITE_READ_BENIGN_FLAG_$$peri_row;



implementation {:inline 1} _LOG_WRITE_$$peri_row(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$peri_row := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_row == _value then true else _WRITE_HAS_OCCURRED_$$peri_row);
    _WRITE_READ_BENIGN_FLAG_$$peri_row := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_row == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$peri_row);
    return;
}



procedure _CHECK_WRITE_$$peri_row(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_row != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_row != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$peri_row(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$peri_row;



implementation {:inline 1} _LOG_ATOMIC_$$peri_row(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$peri_row := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$peri_row);
    return;
}



procedure _CHECK_ATOMIC_$$peri_row(_P: bool, _offset: bv32);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_row"} {:array "$$peri_row"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_row(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$peri_row;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_row(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$peri_row := (if _P && _WRITE_HAS_OCCURRED_$$peri_row && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$peri_row);
    return;
}



const _WATCHED_VALUE_$$peri_col: bv32;

procedure {:inline 1} _LOG_READ_$$peri_col(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$peri_col;



implementation {:inline 1} _LOG_READ_$$peri_col(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$peri_col := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_col == _value then true else _READ_HAS_OCCURRED_$$peri_col);
    return;
}



procedure _CHECK_READ_$$peri_col(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$peri_col && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$peri_col: bool;

procedure {:inline 1} _LOG_WRITE_$$peri_col(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$peri_col, _WRITE_READ_BENIGN_FLAG_$$peri_col;



implementation {:inline 1} _LOG_WRITE_$$peri_col(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$peri_col := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_col == _value then true else _WRITE_HAS_OCCURRED_$$peri_col);
    _WRITE_READ_BENIGN_FLAG_$$peri_col := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_col == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$peri_col);
    return;
}



procedure _CHECK_WRITE_$$peri_col(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_col != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$peri_col != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$peri_col(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$peri_col;



implementation {:inline 1} _LOG_ATOMIC_$$peri_col(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$peri_col := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$peri_col);
    return;
}



procedure _CHECK_ATOMIC_$$peri_col(_P: bool, _offset: bv32);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "peri_col"} {:array "$$peri_col"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_col(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$peri_col;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$peri_col(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$peri_col := (if _P && _WRITE_HAS_OCCURRED_$$peri_col && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$peri_col);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$dia;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$dia;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$dia;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$peri_row;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$peri_row;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$peri_row;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$peri_col;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$peri_col;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$peri_col;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$m;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$m;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$m;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$m;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$dia;
    goto anon5;

  anon5:
    havoc $$peri_row;
    goto anon6;

  anon6:
    havoc $$peri_col;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$dia;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$dia;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$dia;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$peri_row;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$peri_row;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$peri_row;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$peri_col;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$peri_col;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$peri_col;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$m;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$m;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$m;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$m;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$dia;
    goto anon5;

  anon5:
    havoc $$peri_row;
    goto anon6;

  anon6:
    havoc $$peri_col;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;











function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;
















































