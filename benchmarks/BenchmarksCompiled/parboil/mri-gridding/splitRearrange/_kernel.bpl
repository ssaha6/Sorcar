type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "keys_i"} {:global} $$keys_i: [bv32]bv32;

axiom {:array_info "$$keys_i"} {:global} {:elem_width 32} {:source_name "keys_i"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keys_i: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keys_i: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keys_i: bool;

var {:source_name "keys_o"} {:global} $$keys_o: [bv32]bv32;

axiom {:array_info "$$keys_o"} {:global} {:elem_width 32} {:source_name "keys_o"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keys_o: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keys_o: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keys_o: bool;

axiom {:array_info "$$values_i"} {:global} {:elem_width 32} {:source_name "values_i"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$values_i: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$values_i: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$values_i: bool;

var {:source_name "values_o"} {:global} $$values_o: [bv32]bv32;

axiom {:array_info "$$values_o"} {:global} {:elem_width 32} {:source_name "values_o"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$values_o: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$values_o: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$values_o: bool;

axiom {:array_info "$$histo"} {:global} {:elem_width 32} {:source_name "histo"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$histo: bool;

var {:source_name "histo_s"} {:group_shared} $$splitRearrange.histo_s: [bv1][bv32]bv32;

axiom {:array_info "$$splitRearrange.histo_s"} {:group_shared} {:elem_width 32} {:source_name "histo_s"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$splitRearrange.histo_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s: bool;

var {:source_name "array_s"} {:group_shared} $$splitRearrange.array_s: [bv1][bv32]bv32;

axiom {:array_info "$$splitRearrange.array_s"} {:group_shared} {:elem_width 32} {:source_name "array_s"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$splitRearrange.array_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$splitRearrange.array_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s: bool;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "splitRearrange"} {:kernel} $splitRearrange($numElems: bv32, $iter: bv32);
  requires !_READ_HAS_OCCURRED_$$keys_i && !_WRITE_HAS_OCCURRED_$$keys_i && !_ATOMIC_HAS_OCCURRED_$$keys_i;
  requires !_READ_HAS_OCCURRED_$$keys_o && !_WRITE_HAS_OCCURRED_$$keys_o && !_ATOMIC_HAS_OCCURRED_$$keys_o;
  requires !_READ_HAS_OCCURRED_$$values_i && !_WRITE_HAS_OCCURRED_$$values_i && !_ATOMIC_HAS_OCCURRED_$$values_i;
  requires !_READ_HAS_OCCURRED_$$values_o && !_WRITE_HAS_OCCURRED_$$values_o && !_ATOMIC_HAS_OCCURRED_$$values_o;
  requires !_READ_HAS_OCCURRED_$$histo && !_WRITE_HAS_OCCURRED_$$histo && !_ATOMIC_HAS_OCCURRED_$$histo;
  requires !_READ_HAS_OCCURRED_$$splitRearrange.histo_s && !_WRITE_HAS_OCCURRED_$$splitRearrange.histo_s && !_ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s;
  requires !_READ_HAS_OCCURRED_$$splitRearrange.array_s && !_WRITE_HAS_OCCURRED_$$splitRearrange.array_s && !_ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s;
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
  modifies $$splitRearrange.histo_s, $$splitRearrange.array_s, _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s, _WRITE_HAS_OCCURRED_$$splitRearrange.array_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s, $$keys_o, $$values_o, _TRACKING, _READ_HAS_OCCURRED_$$splitRearrange.histo_s, _READ_HAS_OCCURRED_$$splitRearrange.array_s, _WRITE_HAS_OCCURRED_$$keys_o, _WRITE_READ_BENIGN_FLAG_$$keys_o, _WRITE_READ_BENIGN_FLAG_$$keys_o, _WRITE_HAS_OCCURRED_$$values_o, _WRITE_READ_BENIGN_FLAG_$$values_o, _WRITE_READ_BENIGN_FLAG_$$values_o;



implementation {:source_name "splitRearrange"} {:kernel} $splitRearrange($numElems: bv32, $iter: bv32)
{
  var $mine.0$1: bv128;
  var $mine.0$2: bv128;
  var $value.0$1: bv128;
  var $value.0$2: bv128;
  var $new_index.0$1: bv128;
  var $new_index.0$2: bv128;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $0$1: bv32;
  var $0$2: bv32;
  var $1$1: bv32;
  var $1$2: bv32;
  var $2$1: bv32;
  var $2$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv128;
  var v12$2: bv128;
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
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bv32;
  var v23$2: bv32;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v29$1: bv32;
  var v29$2: bv32;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _HAVOC_bv128$1: bv128;
  var _HAVOC_bv128$2: bv128;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), BV32_MUL(4bv32, local_id_x$1));
    v0$2 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), BV32_MUL(4bv32, local_id_x$2));
    v1$1 := BV32_ULT(local_id_x$1, 16bv32);
    v1$2 := BV32_ULT(local_id_x$2, 16bv32);
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
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p0$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_bv32$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$splitRearrange.histo_s(p0$1, local_id_x$1, v2$1, $$splitRearrange.histo_s[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s(p0$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$splitRearrange.histo_s(p0$2, local_id_x$2, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitRearrange.histo_s"} true;
    $$splitRearrange.histo_s[1bv1][local_id_x$1] := (if p0$1 then v2$1 else $$splitRearrange.histo_s[1bv1][local_id_x$1]);
    $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p0$2 then v2$2 else $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    v3$1 := BV32_SLT(v0$1, $numElems);
    v3$2 := BV32_SLT(v0$2, $numElems);
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    p3$1 := (if !v3$1 then !v3$1 else p3$1);
    p3$2 := (if !v3$2 then !v3$2 else p3$2);
    v4$1 := (if p2$1 then $$keys_i[v0$1] else v4$1);
    v4$2 := (if p2$2 then $$keys_i[v0$2] else v4$2);
    v5$1 := (if p2$1 then $$keys_i[BV32_ADD(v0$1, 1bv32)] else v5$1);
    v5$2 := (if p2$2 then $$keys_i[BV32_ADD(v0$2, 1bv32)] else v5$2);
    v6$1 := (if p2$1 then $$keys_i[BV32_ADD(v0$1, 2bv32)] else v6$1);
    v6$2 := (if p2$2 then $$keys_i[BV32_ADD(v0$2, 2bv32)] else v6$2);
    v7$1 := (if p2$1 then $$keys_i[BV32_ADD(v0$1, 3bv32)] else v7$1);
    v7$2 := (if p2$2 then $$keys_i[BV32_ADD(v0$2, 3bv32)] else v7$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v8$1 := (if p2$1 then _HAVOC_bv32$1 else v8$1);
    v8$2 := (if p2$2 then _HAVOC_bv32$2 else v8$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v9$1 := (if p2$1 then _HAVOC_bv32$1 else v9$1);
    v9$2 := (if p2$2 then _HAVOC_bv32$2 else v9$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v10$1 := (if p2$1 then _HAVOC_bv32$1 else v10$1);
    v10$2 := (if p2$2 then _HAVOC_bv32$2 else v10$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p2$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p2$2 then _HAVOC_bv32$2 else v11$2);
    $mine.0$1, $value.0$1 := (if p2$1 then v7$1 ++ v6$1 ++ v5$1 ++ v4$1 else $mine.0$1), (if p2$1 then v11$1 ++ v10$1 ++ v9$1 ++ v8$1 else $value.0$1);
    $mine.0$2, $value.0$2 := (if p2$2 then v7$2 ++ v6$2 ++ v5$2 ++ v4$2 else $mine.0$2), (if p2$2 then v11$2 ++ v10$2 ++ v9$2 ++ v8$2 else $value.0$2);
    havoc _HAVOC_bv128$1, _HAVOC_bv128$2;
    v12$1 := (if p3$1 then _HAVOC_bv128$1 else v12$1);
    v12$2 := (if p3$2 then _HAVOC_bv128$2 else v12$2);
    $mine.0$1, $value.0$1 := (if p3$1 then 340282366920938463463374607431768211455bv128 else $mine.0$1), (if p3$1 then v12$1 else $value.0$1);
    $mine.0$2, $value.0$2 := (if p3$2 then 340282366920938463463374607431768211455bv128 else $mine.0$2), (if p3$2 then v12$2 else $value.0$2);
    v13$1 := BV32_LSHR(BV32_AND($mine.0$1[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v13$2 := BV32_LSHR(BV32_AND($mine.0$2[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v14$1 := BV32_LSHR(BV32_AND($mine.0$1[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v14$2 := BV32_LSHR(BV32_AND($mine.0$2[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v15$1 := BV32_LSHR(BV32_AND($mine.0$1[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v15$2 := BV32_LSHR(BV32_AND($mine.0$2[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v16$1 := BV32_LSHR(BV32_AND($mine.0$1[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v16$2 := BV32_LSHR(BV32_AND($mine.0$2[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32));
    v17$1 := BV32_SHL(local_id_x$1, 2bv32);
    v17$2 := BV32_SHL(local_id_x$2, 2bv32);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$splitRearrange.array_s(true, v17$1, v13$1, $$splitRearrange.array_s[1bv1][v17$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(true, v17$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$splitRearrange.array_s(true, v17$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitRearrange.array_s"} true;
    $$splitRearrange.array_s[1bv1][v17$1] := v13$1;
    $$splitRearrange.array_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2] := v13$2;
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$1, 1bv32), v14$1, $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 1bv32), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitRearrange.array_s"} true;
    $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 1bv32)] := v14$1;
    $$splitRearrange.array_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v17$2, 1bv32)] := v14$2;
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$1, 2bv32), v15$1, $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 2bv32), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitRearrange.array_s"} true;
    $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 2bv32)] := v15$1;
    $$splitRearrange.array_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v17$2, 2bv32)] := v15$2;
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$1, 3bv32), v16$1, $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$splitRearrange.array_s(true, BV32_ADD(v17$2, 3bv32), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitRearrange.array_s"} true;
    $$splitRearrange.array_s[1bv1][BV32_ADD(v17$1, 3bv32)] := v16$1;
    $$splitRearrange.array_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v17$2, 3bv32)] := v16$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 20} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 21} true;
    v18$1 := $$splitRearrange.histo_s[1bv1][v13$1];
    v18$2 := $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2];
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 22} true;
    v19$1 := $$splitRearrange.histo_s[1bv1][v14$1];
    v19$2 := $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v14$2];
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 23} true;
    v20$1 := $$splitRearrange.histo_s[1bv1][v15$1];
    v20$2 := $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v15$2];
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 24} true;
    v21$1 := $$splitRearrange.histo_s[1bv1][v16$1];
    v21$2 := $$splitRearrange.histo_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v16$2];
    $new_index.0$1, $i.0$1 := v21$1 ++ v20$1 ++ v19$1 ++ v18$1, BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32);
    $new_index.0$2, $i.0$2 := v21$2 ++ v20$2 ++ v19$2 ++ v18$2, BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32);
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitRearrange.array_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitRearrange.array_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitRearrange.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_SGE($i.0$1, 0bv32) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_SGE($i.0$2, 0bv32) ==> p4$2;
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b5 ==> BV32_UGE($i.0$1, BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b5 ==> BV32_UGE($i.0$2, BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b4 ==> BV32_ULE($i.0$1, BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b4 ==> BV32_ULE($i.0$2, BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b3 ==> BV32_SGE($i.0$1, BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b3 ==> BV32_SGE($i.0$2, BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b2 ==> BV32_SLE($i.0$1, BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b2 ==> BV32_SLE($i.0$2, BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32));
    assert {:tag "guardNonNeg"} {:thread 1} p4$1 ==> _b1 ==> BV32_SLE(0bv32, $i.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p4$2 ==> _b1 ==> BV32_SLE(0bv32, $i.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b0 ==> BV32_AND(BV32_SUB(4294967295bv32, 1bv32), $i.0$1) == BV32_AND(BV32_SUB(4294967295bv32, 1bv32), BV32_SUB(BV32_MUL(4bv32, local_id_x$1), 1bv32));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b0 ==> BV32_AND(BV32_SUB(4294967295bv32, 1bv32), $i.0$2) == BV32_AND(BV32_SUB(4294967295bv32, 1bv32), BV32_SUB(BV32_MUL(4bv32, local_id_x$2), 1bv32));
    assert {:block_sourceloc} {:sourceloc_num 25} p4$1 ==> true;
    v22$1 := (if p4$1 then BV32_SGE($i.0$1, 0bv32) else v22$1);
    v22$2 := (if p4$2 then BV32_SGE($i.0$2, 0bv32) else v22$2);
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
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p5$1 := (if p4$1 && v22$1 then v22$1 else p5$1);
    p5$2 := (if p4$2 && v22$2 then v22$2 else p5$2);
    p4$1 := (if p4$1 && !v22$1 then v22$1 else p4$1);
    p4$2 := (if p4$2 && !v22$2 then v22$2 else p4$2);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 27} true;
    v23$1 := (if p5$1 then $$splitRearrange.array_s[1bv1][$i.0$1] else v23$1);
    v23$2 := (if p5$2 then $$splitRearrange.array_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2] else v23$2);
    v24$1 := (if p5$1 then v23$1 == v13$1 else v24$1);
    v24$2 := (if p5$2 then v23$2 == v13$2 else v24$2);
    p6$1 := (if p5$1 && v24$1 then v24$1 else p6$1);
    p6$2 := (if p5$2 && v24$2 then v24$2 else p6$2);
    p4$1 := (if p5$1 && !v24$1 then v24$1 else p4$1);
    p4$2 := (if p5$2 && !v24$2 then v24$2 else p4$2);
    $new_index.0$1, $i.0$1 := (if p6$1 then $new_index.0$1[128:96] ++ $new_index.0$1[96:64] ++ $new_index.0$1[64:32] ++ BV32_ADD($new_index.0$1[32:0], 1bv32) else $new_index.0$1), (if p6$1 then BV32_ADD($i.0$1, 4294967295bv32) else $i.0$1);
    $new_index.0$2, $i.0$2 := (if p6$2 then $new_index.0$2[128:96] ++ $new_index.0$2[96:64] ++ $new_index.0$2[64:32] ++ BV32_ADD($new_index.0$2[32:0], 1bv32) else $new_index.0$2), (if p6$2 then BV32_ADD($i.0$2, 4294967295bv32) else $i.0$2);
    p4$1 := (if p6$1 then true else p4$1);
    p4$2 := (if p6$2 then true else p4$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p4$1 && !p4$2;
    v25$1 := v14$1 == v13$1;
    v25$2 := v14$2 == v13$2;
    p9$1 := (if v25$1 then v25$1 else p9$1);
    p9$2 := (if v25$2 then v25$2 else p9$2);
    p10$1 := (if !v25$1 then !v25$1 else p10$1);
    p10$2 := (if !v25$2 then !v25$2 else p10$2);
    $0$1 := (if p9$1 then BV32_ADD($new_index.0$1[32:0], 1bv32) else $0$1);
    $0$2 := (if p9$2 then BV32_ADD($new_index.0$2[32:0], 1bv32) else $0$2);
    $0$1 := (if p10$1 then $new_index.0$1[64:32] else $0$1);
    $0$2 := (if p10$2 then $new_index.0$2[64:32] else $0$2);
    v26$1 := v15$1 == v14$1;
    v26$2 := v15$2 == v14$2;
    p11$1 := (if v26$1 then v26$1 else p11$1);
    p11$2 := (if v26$2 then v26$2 else p11$2);
    p12$1 := (if !v26$1 then !v26$1 else p12$1);
    p12$2 := (if !v26$2 then !v26$2 else p12$2);
    $1$1 := (if p11$1 then BV32_ADD($0$1, 1bv32) else $1$1);
    $1$2 := (if p11$2 then BV32_ADD($0$2, 1bv32) else $1$2);
    $1$1 := (if p12$1 then $new_index.0$1[96:64] else $1$1);
    $1$2 := (if p12$2 then $new_index.0$2[96:64] else $1$2);
    v27$1 := v16$1 == v15$1;
    v27$2 := v16$2 == v15$2;
    p13$1 := (if v27$1 then v27$1 else p13$1);
    p13$2 := (if v27$2 then v27$2 else p13$2);
    p14$1 := (if !v27$1 then !v27$1 else p14$1);
    p14$2 := (if !v27$2 then !v27$2 else p14$2);
    $2$1 := (if p13$1 then BV32_ADD($1$1, 1bv32) else $2$1);
    $2$2 := (if p13$2 then BV32_ADD($1$2, 1bv32) else $2$2);
    $2$1 := (if p14$1 then $new_index.0$1[128:96] else $2$1);
    $2$2 := (if p14$2 then $new_index.0$2[128:96] else $2$2);
    v28$1 := BV32_SLT(v0$1, $numElems);
    v28$2 := BV32_SLT(v0$2, $numElems);
    p15$1 := (if v28$1 then v28$1 else p15$1);
    p15$2 := (if v28$2 then v28$2 else p15$2);
    v29$1 := (if p15$1 then $new_index.0$1[32:0] else v29$1);
    v29$2 := (if p15$2 then $new_index.0$2[32:0] else v29$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$keys_o(p15$1, v29$1, $mine.0$1[32:0], $$keys_o[v29$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(p15$2, v29$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$keys_o(p15$2, v29$2, $mine.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys_o"} true;
    $$keys_o[v29$1] := (if p15$1 then $mine.0$1[32:0] else $$keys_o[v29$1]);
    $$keys_o[v29$2] := (if p15$2 then $mine.0$2[32:0] else $$keys_o[v29$2]);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$values_o(p15$1, v29$1, $value.0$1[32:0], $$values_o[v29$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(p15$2, v29$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$values_o(p15$2, v29$2, $value.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values_o"} true;
    $$values_o[v29$1] := (if p15$1 then $value.0$1[32:0] else $$values_o[v29$1]);
    $$values_o[v29$2] := (if p15$2 then $value.0$2[32:0] else $$values_o[v29$2]);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$keys_o(p15$1, $0$1, $mine.0$1[64:32], $$keys_o[$0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(p15$2, $0$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$keys_o(p15$2, $0$2, $mine.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys_o"} true;
    $$keys_o[$0$1] := (if p15$1 then $mine.0$1[64:32] else $$keys_o[$0$1]);
    $$keys_o[$0$2] := (if p15$2 then $mine.0$2[64:32] else $$keys_o[$0$2]);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$values_o(p15$1, $0$1, $value.0$1[64:32], $$values_o[$0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(p15$2, $0$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$values_o(p15$2, $0$2, $value.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values_o"} true;
    $$values_o[$0$1] := (if p15$1 then $value.0$1[64:32] else $$values_o[$0$1]);
    $$values_o[$0$2] := (if p15$2 then $value.0$2[64:32] else $$values_o[$0$2]);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$keys_o(p15$1, $1$1, $mine.0$1[96:64], $$keys_o[$1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(p15$2, $1$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$keys_o(p15$2, $1$2, $mine.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys_o"} true;
    $$keys_o[$1$1] := (if p15$1 then $mine.0$1[96:64] else $$keys_o[$1$1]);
    $$keys_o[$1$2] := (if p15$2 then $mine.0$2[96:64] else $$keys_o[$1$2]);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$values_o(p15$1, $1$1, $value.0$1[96:64], $$values_o[$1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(p15$2, $1$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$values_o(p15$2, $1$2, $value.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values_o"} true;
    $$values_o[$1$1] := (if p15$1 then $value.0$1[96:64] else $$values_o[$1$1]);
    $$values_o[$1$2] := (if p15$2 then $value.0$2[96:64] else $$values_o[$1$2]);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$keys_o(p15$1, $2$1, $mine.0$1[128:96], $$keys_o[$2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(p15$2, $2$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$keys_o(p15$2, $2$2, $mine.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys_o"} true;
    $$keys_o[$2$1] := (if p15$1 then $mine.0$1[128:96] else $$keys_o[$2$1]);
    $$keys_o[$2$2] := (if p15$2 then $mine.0$2[128:96] else $$keys_o[$2$2]);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$values_o(p15$1, $2$1, $value.0$1[128:96], $$values_o[$2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(p15$2, $2$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$values_o(p15$2, $2$2, $value.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values_o"} true;
    $$values_o[$2$1] := (if p15$1 then $value.0$1[128:96] else $$values_o[$2$1]);
    $$values_o[$2$2] := (if p15$2 then $value.0$2[128:96] else $$values_o[$2$2]);
    return;

  $6.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $6;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 2594bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$splitRearrange.histo_s, $$splitRearrange.array_s, $$keys_o, $$values_o, _TRACKING;



const {:existential true} _b0: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const _WATCHED_VALUE_$$keys_i: bv32;

procedure {:inline 1} _LOG_READ_$$keys_i(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$keys_i;



implementation {:inline 1} _LOG_READ_$$keys_i(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keys_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_i == _value then true else _READ_HAS_OCCURRED_$$keys_i);
    return;
}



procedure _CHECK_READ_$$keys_i(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keys_i);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keys_i: bool;

procedure {:inline 1} _LOG_WRITE_$$keys_i(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$keys_i, _WRITE_READ_BENIGN_FLAG_$$keys_i;



implementation {:inline 1} _LOG_WRITE_$$keys_i(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keys_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_i == _value then true else _WRITE_HAS_OCCURRED_$$keys_i);
    _WRITE_READ_BENIGN_FLAG_$$keys_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_i == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keys_i);
    return;
}



procedure _CHECK_WRITE_$$keys_i(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_i != _value);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_i != _value);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keys_i(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$keys_i;



implementation {:inline 1} _LOG_ATOMIC_$$keys_i(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keys_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keys_i);
    return;
}



procedure _CHECK_ATOMIC_$$keys_i(_P: bool, _offset: bv32);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset);
  requires {:source_name "keys_i"} {:array "$$keys_i"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_i(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$keys_i;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_i(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keys_i := (if _P && _WRITE_HAS_OCCURRED_$$keys_i && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keys_i);
    return;
}



const _WATCHED_VALUE_$$keys_o: bv32;

procedure {:inline 1} _LOG_READ_$$keys_o(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$keys_o;



implementation {:inline 1} _LOG_READ_$$keys_o(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keys_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_o == _value then true else _READ_HAS_OCCURRED_$$keys_o);
    return;
}



procedure _CHECK_READ_$$keys_o(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keys_o);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keys_o: bool;

procedure {:inline 1} _LOG_WRITE_$$keys_o(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$keys_o, _WRITE_READ_BENIGN_FLAG_$$keys_o;



implementation {:inline 1} _LOG_WRITE_$$keys_o(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keys_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_o == _value then true else _WRITE_HAS_OCCURRED_$$keys_o);
    _WRITE_READ_BENIGN_FLAG_$$keys_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_o == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keys_o);
    return;
}



procedure _CHECK_WRITE_$$keys_o(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_o != _value);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys_o != _value);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keys_o(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$keys_o;



implementation {:inline 1} _LOG_ATOMIC_$$keys_o(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keys_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keys_o);
    return;
}



procedure _CHECK_ATOMIC_$$keys_o(_P: bool, _offset: bv32);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset);
  requires {:source_name "keys_o"} {:array "$$keys_o"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$keys_o;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys_o(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keys_o := (if _P && _WRITE_HAS_OCCURRED_$$keys_o && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keys_o);
    return;
}



const _WATCHED_VALUE_$$values_i: bv32;

procedure {:inline 1} _LOG_READ_$$values_i(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$values_i;



implementation {:inline 1} _LOG_READ_$$values_i(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$values_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_i == _value then true else _READ_HAS_OCCURRED_$$values_i);
    return;
}



procedure _CHECK_READ_$$values_i(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$values_i);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$values_i: bool;

procedure {:inline 1} _LOG_WRITE_$$values_i(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$values_i, _WRITE_READ_BENIGN_FLAG_$$values_i;



implementation {:inline 1} _LOG_WRITE_$$values_i(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$values_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_i == _value then true else _WRITE_HAS_OCCURRED_$$values_i);
    _WRITE_READ_BENIGN_FLAG_$$values_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_i == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$values_i);
    return;
}



procedure _CHECK_WRITE_$$values_i(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_i != _value);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_i != _value);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$values_i(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$values_i;



implementation {:inline 1} _LOG_ATOMIC_$$values_i(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$values_i := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$values_i);
    return;
}



procedure _CHECK_ATOMIC_$$values_i(_P: bool, _offset: bv32);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset);
  requires {:source_name "values_i"} {:array "$$values_i"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_i(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$values_i;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_i(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$values_i := (if _P && _WRITE_HAS_OCCURRED_$$values_i && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$values_i);
    return;
}



const _WATCHED_VALUE_$$values_o: bv32;

procedure {:inline 1} _LOG_READ_$$values_o(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$values_o;



implementation {:inline 1} _LOG_READ_$$values_o(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$values_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_o == _value then true else _READ_HAS_OCCURRED_$$values_o);
    return;
}



procedure _CHECK_READ_$$values_o(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$values_o);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$values_o: bool;

procedure {:inline 1} _LOG_WRITE_$$values_o(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$values_o, _WRITE_READ_BENIGN_FLAG_$$values_o;



implementation {:inline 1} _LOG_WRITE_$$values_o(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$values_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_o == _value then true else _WRITE_HAS_OCCURRED_$$values_o);
    _WRITE_READ_BENIGN_FLAG_$$values_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_o == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$values_o);
    return;
}



procedure _CHECK_WRITE_$$values_o(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_o != _value);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values_o != _value);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$values_o(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$values_o;



implementation {:inline 1} _LOG_ATOMIC_$$values_o(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$values_o := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$values_o);
    return;
}



procedure _CHECK_ATOMIC_$$values_o(_P: bool, _offset: bv32);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset);
  requires {:source_name "values_o"} {:array "$$values_o"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$values_o;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values_o(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$values_o := (if _P && _WRITE_HAS_OCCURRED_$$values_o && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$values_o);
    return;
}



const _WATCHED_VALUE_$$histo: bv32;

procedure {:inline 1} _LOG_READ_$$histo(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$histo;



implementation {:inline 1} _LOG_READ_$$histo(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo == _value then true else _READ_HAS_OCCURRED_$$histo);
    return;
}



procedure _CHECK_READ_$$histo(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$histo);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$histo: bool;

procedure {:inline 1} _LOG_WRITE_$$histo(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$histo, _WRITE_READ_BENIGN_FLAG_$$histo;



implementation {:inline 1} _LOG_WRITE_$$histo(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo == _value then true else _WRITE_HAS_OCCURRED_$$histo);
    _WRITE_READ_BENIGN_FLAG_$$histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$histo);
    return;
}



procedure _CHECK_WRITE_$$histo(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo != _value);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo != _value);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$histo(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$histo;



implementation {:inline 1} _LOG_ATOMIC_$$histo(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$histo);
    return;
}



procedure _CHECK_ATOMIC_$$histo(_P: bool, _offset: bv32);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset);
  requires {:source_name "histo"} {:array "$$histo"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$histo;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$histo := (if _P && _WRITE_HAS_OCCURRED_$$histo && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$histo);
    return;
}



const _WATCHED_VALUE_$$splitRearrange.histo_s: bv32;

procedure {:inline 1} _LOG_READ_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$splitRearrange.histo_s;



implementation {:inline 1} _LOG_READ_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$splitRearrange.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.histo_s == _value then true else _READ_HAS_OCCURRED_$$splitRearrange.histo_s);
    return;
}



procedure _CHECK_READ_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s: bool;

procedure {:inline 1} _LOG_WRITE_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s;



implementation {:inline 1} _LOG_WRITE_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.histo_s == _value then true else _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s);
    _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.histo_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s);
    return;
}



procedure _CHECK_WRITE_$$splitRearrange.histo_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.histo_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.histo_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$splitRearrange.histo_s(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s;



implementation {:inline 1} _LOG_ATOMIC_$$splitRearrange.histo_s(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s);
    return;
}



procedure _CHECK_ATOMIC_$$splitRearrange.histo_s(_P: bool, _offset: bv32);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitRearrange.histo_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s := (if _P && _WRITE_HAS_OCCURRED_$$splitRearrange.histo_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$splitRearrange.histo_s);
    return;
}



const _WATCHED_VALUE_$$splitRearrange.array_s: bv32;

procedure {:inline 1} _LOG_READ_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$splitRearrange.array_s;



implementation {:inline 1} _LOG_READ_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$splitRearrange.array_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.array_s == _value then true else _READ_HAS_OCCURRED_$$splitRearrange.array_s);
    return;
}



procedure _CHECK_READ_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s: bool;

procedure {:inline 1} _LOG_WRITE_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$splitRearrange.array_s, _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s;



implementation {:inline 1} _LOG_WRITE_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$splitRearrange.array_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.array_s == _value then true else _WRITE_HAS_OCCURRED_$$splitRearrange.array_s);
    _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.array_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s);
    return;
}



procedure _CHECK_WRITE_$$splitRearrange.array_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.array_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitRearrange.array_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$splitRearrange.array_s(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s;



implementation {:inline 1} _LOG_ATOMIC_$$splitRearrange.array_s(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s);
    return;
}



procedure _CHECK_ATOMIC_$$splitRearrange.array_s(_P: bool, _offset: bv32);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "array_s"} {:array "$$splitRearrange.array_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s := (if _P && _WRITE_HAS_OCCURRED_$$splitRearrange.array_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$splitRearrange.array_s);
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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitRearrange.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitRearrange.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitRearrange.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitRearrange.array_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitRearrange.array_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitRearrange.array_s;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys_o;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys_o;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys_o;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values_o;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values_o;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values_o;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys_o;
    goto anon9;

  anon9:
    havoc $$values_o;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitRearrange.histo_s;
    goto anon4;

  anon4:
    havoc $$splitRearrange.array_s;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;
