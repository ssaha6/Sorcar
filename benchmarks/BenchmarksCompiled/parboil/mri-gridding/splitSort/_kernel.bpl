type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x$1: [bv32]bv32, y$1: bv32, x$2: [bv32]bv32, y$2: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "keys"} {:global} $$keys: [bv32]bv32;

axiom {:array_info "$$keys"} {:global} {:elem_width 32} {:source_name "keys"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keys: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keys: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keys: bool;

var {:source_name "values"} {:global} $$values: [bv32]bv32;

axiom {:array_info "$$values"} {:global} {:elem_width 32} {:source_name "values"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$values: bool;

var {:source_name "histo"} {:global} $$histo: [bv32]bv32;

axiom {:array_info "$$histo"} {:global} {:elem_width 32} {:source_name "histo"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$histo: bool;

axiom {:array_info "$$splitSort.histo_s"} {:group_shared} {:elem_width 32} {:source_name "histo_s"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$splitSort.histo_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$splitSort.histo_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s: bool;

var {:source_name "flags"} {:group_shared} $$splitSort.flags: [bv1][bv32]bv32;

axiom {:array_info "$$splitSort.flags"} {:group_shared} {:elem_width 32} {:source_name "flags"} {:source_elem_width 32} {:source_dimensions "1105"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$splitSort.flags: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$splitSort.flags: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$splitSort.flags: bool;

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

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "zero_extend 16"} BV16_ZEXT32(bv16) : bv32;

procedure {:source_name "splitSort"} {:kernel} $splitSort($numElems: bv32, $iter: bv32);
  requires !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
  requires !_READ_HAS_OCCURRED_$$values && !_WRITE_HAS_OCCURRED_$$values && !_ATOMIC_HAS_OCCURRED_$$values;
  requires !_READ_HAS_OCCURRED_$$histo && !_WRITE_HAS_OCCURRED_$$histo && !_ATOMIC_HAS_OCCURRED_$$histo;
  requires !_READ_HAS_OCCURRED_$$splitSort.histo_s && !_WRITE_HAS_OCCURRED_$$splitSort.histo_s && !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
  requires !_READ_HAS_OCCURRED_$$splitSort.flags && !_WRITE_HAS_OCCURRED_$$splitSort.flags && !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
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
  modifies _USED_$$splitSort.histo_s, $$splitSort.flags, _READ_HAS_OCCURRED_$$keys, _READ_HAS_OCCURRED_$$values, _WRITE_HAS_OCCURRED_$$splitSort.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s, $$keys, $$values, $$histo, _TRACKING, _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s, _WRITE_HAS_OCCURRED_$$keys, _WRITE_READ_BENIGN_FLAG_$$keys, _WRITE_READ_BENIGN_FLAG_$$keys, _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _READ_HAS_OCCURRED_$$splitSort.histo_s, _WRITE_HAS_OCCURRED_$$histo, _WRITE_READ_BENIGN_FLAG_$$histo, _WRITE_READ_BENIGN_FLAG_$$histo, _WRITE_HAS_OCCURRED_$$splitSort.flags, _WRITE_READ_BENIGN_FLAG_$$splitSort.flags, _WRITE_READ_BENIGN_FLAG_$$splitSort.flags, _TRACKING, _READ_HAS_OCCURRED_$$splitSort.flags, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING;



implementation {:source_name "splitSort"} {:kernel} $splitSort($numElems: bv32, $iter: bv32)
{
  var $lkey.0$1: bv128;
  var $lkey.0$2: bv128;
  var $lvalue.0$1: bv128;
  var $lvalue.0$2: bv128;
  var $index.0$1: bv128;
  var $index.0$2: bv128;
  var $i.0: bv32;
  var $d.i.0: bv32;
  var $stride.i.0: bv32;
  var $d106.i.0: bv32;
  var $stride.i.1: bv32;
  var $cond$1: bv32;
  var $cond$2: bv32;
  var $cond183$1: bv32;
  var $cond183$2: bv32;
  var $cond190$1: bv32;
  var $cond190$2: bv32;
  var $cond197$1: bv32;
  var $cond197$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v105$1: bv128;
  var v105$2: bv128;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v11$1: bool;
  var v11$2: bool;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bool;
  var v2$2: bool;
  var v0$1: bv32;
  var v0$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v61$1: bv32;
  var v61$2: bv32;
  var v64$1: bv32;
  var v64$2: bv32;
  var v60$1: bv32;
  var v60$2: bv32;
  var v66$1: bv32;
  var v66$2: bv32;
  var v70$1: bv32;
  var v70$2: bv32;
  var v62$1: bv32;
  var v62$2: bv32;
  var v80$1: bv32;
  var v80$2: bv32;
  var v87$1: bv32;
  var v87$2: bv32;
  var v74$1: bv32;
  var v74$2: bv32;
  var v83$1: bv32;
  var v83$2: bv32;
  var v94$1: bv32;
  var v94$2: bv32;
  var v91$1: bv32;
  var v91$2: bv32;
  var v78$1: bv32;
  var v78$2: bv32;
  var v72$1: bv32;
  var v72$2: bv32;
  var v104$1: bv32;
  var v104$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v16: bool;
  var v17$1: bv32;
  var v17$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v36: bool;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v58$1: bv32;
  var v58$2: bv32;
  var v57$1: bv32;
  var v57$2: bv32;
  var v59$1: bv32;
  var v59$2: bv32;
  var v63$1: bv32;
  var v63$2: bv32;
  var v56$1: bv32;
  var v56$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: bv32;
  var v46$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v52: bv32;
  var v51: bool;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: bv32;
  var v54$2: bv32;
  var v55$1: bv32;
  var v55$2: bv32;
  var v65$1: bv32;
  var v65$2: bv32;
  var v67$1: bv32;
  var v67$2: bv32;
  var v68$1: bv32;
  var v68$2: bv32;
  var v69$1: bv32;
  var v69$2: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v75$1: bv32;
  var v75$2: bv32;
  var v73$1: bv32;
  var v73$2: bv32;
  var v98$1: bool;
  var v98$2: bool;
  var v100$1: bool;
  var v100$2: bool;
  var v97$1: bv32;
  var v97$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v102$1: bool;
  var v102$2: bool;
  var v101$1: bool;
  var v101$2: bool;
  var v77$1: bv32;
  var v77$2: bv32;
  var v79$1: bv32;
  var v79$2: bv32;
  var v76$1: bv32;
  var v76$2: bv32;
  var v82$1: bv32;
  var v82$2: bv32;
  var v86$1: bv32;
  var v86$2: bv32;
  var v89$1: bv32;
  var v89$2: bv32;
  var v81$1: bv32;
  var v81$2: bv32;
  var v85$1: bv32;
  var v85$2: bv32;
  var v84$1: bv32;
  var v84$2: bv32;
  var v90$1: bv32;
  var v90$2: bv32;
  var v92$1: bv32;
  var v92$2: bv32;
  var v88$1: bv32;
  var v88$2: bv32;
  var v93: bv32;
  var v96$1: bool;
  var v96$2: bool;
  var v95$1: bv16;
  var v95$2: bv16;
  var v103$1: bool;
  var v103$2: bool;
  var _abstracted_call_arg_0$1: bv32;
  var _abstracted_call_arg_0$2: bv32;
  var _abstracted_call_arg_1$1: bv32;
  var _abstracted_call_arg_1$2: bv32;
  var _abstracted_call_arg_2$1: bv32;
  var _abstracted_call_arg_2$2: bv32;
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
  var _HAVOC_bv128$1: bv128;
  var _HAVOC_bv128$2: bv128;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  __partitioned_block_$entry_0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), BV32_MUL(4bv32, local_id_x$1));
    v1$2 := BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), BV32_MUL(4bv32, local_id_x$2));
    v2$1 := BV32_ULT(v1$1, $numElems);
    v2$2 := BV32_ULT(v1$2, $numElems);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$keys(p0$1, v1$1, $$keys[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$keys(p0$2, v1$2, $$keys[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$keys"} true;
    v3$1 := (if p0$1 then $$keys[v1$1] else v3$1);
    v3$2 := (if p0$2 then $$keys[v1$2] else v3$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$keys(p0$1, BV32_ADD(v1$1, 1bv32), $$keys[BV32_ADD(v1$1, 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$keys(p0$2, BV32_ADD(v1$2, 1bv32), $$keys[BV32_ADD(v1$2, 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$keys"} true;
    v4$1 := (if p0$1 then $$keys[BV32_ADD(v1$1, 1bv32)] else v4$1);
    v4$2 := (if p0$2 then $$keys[BV32_ADD(v1$2, 1bv32)] else v4$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$keys(p0$1, BV32_ADD(v1$1, 2bv32), $$keys[BV32_ADD(v1$1, 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$keys(p0$2, BV32_ADD(v1$2, 2bv32), $$keys[BV32_ADD(v1$2, 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$keys"} true;
    v5$1 := (if p0$1 then $$keys[BV32_ADD(v1$1, 2bv32)] else v5$1);
    v5$2 := (if p0$2 then $$keys[BV32_ADD(v1$2, 2bv32)] else v5$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$keys(p0$1, BV32_ADD(v1$1, 3bv32), $$keys[BV32_ADD(v1$1, 3bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$keys(p0$2, BV32_ADD(v1$2, 3bv32), $$keys[BV32_ADD(v1$2, 3bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$keys"} true;
    v6$1 := (if p0$1 then $$keys[BV32_ADD(v1$1, 3bv32)] else v6$1);
    v6$2 := (if p0$2 then $$keys[BV32_ADD(v1$2, 3bv32)] else v6$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$values(p0$1, v1$1, $$values[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$values(p0$2, v1$2, $$values[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$values"} true;
    v7$1 := (if p0$1 then $$values[v1$1] else v7$1);
    v7$2 := (if p0$2 then $$values[v1$2] else v7$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$values(p0$1, BV32_ADD(v1$1, 1bv32), $$values[BV32_ADD(v1$1, 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$values(p0$2, BV32_ADD(v1$2, 1bv32), $$values[BV32_ADD(v1$2, 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$values"} true;
    v8$1 := (if p0$1 then $$values[BV32_ADD(v1$1, 1bv32)] else v8$1);
    v8$2 := (if p0$2 then $$values[BV32_ADD(v1$2, 1bv32)] else v8$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$values(p0$1, BV32_ADD(v1$1, 2bv32), $$values[BV32_ADD(v1$1, 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$values(p0$2, BV32_ADD(v1$2, 2bv32), $$values[BV32_ADD(v1$2, 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$values"} true;
    v9$1 := (if p0$1 then $$values[BV32_ADD(v1$1, 2bv32)] else v9$1);
    v9$2 := (if p0$2 then $$values[BV32_ADD(v1$2, 2bv32)] else v9$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$values(p0$1, BV32_ADD(v1$1, 3bv32), $$values[BV32_ADD(v1$1, 3bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$values(p0$2, BV32_ADD(v1$2, 3bv32), $$values[BV32_ADD(v1$2, 3bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$values"} true;
    v10$1 := (if p0$1 then $$values[BV32_ADD(v1$1, 3bv32)] else v10$1);
    v10$2 := (if p0$2 then $$values[BV32_ADD(v1$2, 3bv32)] else v10$2);
    $lkey.0$1, $lvalue.0$1 := (if p0$1 then v6$1 ++ v5$1 ++ v4$1 ++ v3$1 else $lkey.0$1), (if p0$1 then v10$1 ++ v9$1 ++ v8$1 ++ v7$1 else $lvalue.0$1);
    $lkey.0$2, $lvalue.0$2 := (if p0$2 then v6$2 ++ v5$2 ++ v4$2 ++ v3$2 else $lkey.0$2), (if p0$2 then v10$2 ++ v9$2 ++ v8$2 ++ v7$2 else $lvalue.0$2);
    havoc _HAVOC_bv128$1, _HAVOC_bv128$2;
    v105$1 := (if p1$1 then _HAVOC_bv128$1 else v105$1);
    v105$2 := (if p1$2 then _HAVOC_bv128$2 else v105$2);
    $lkey.0$1, $lvalue.0$1 := (if p1$1 then 340282366920938463463374607431768211455bv128 else $lkey.0$1), (if p1$1 then v105$1 else $lvalue.0$1);
    $lkey.0$2, $lvalue.0$2 := (if p1$2 then 340282366920938463463374607431768211455bv128 else $lkey.0$2), (if p1$2 then v105$2 else $lvalue.0$2);
    v11$1 := BV32_ULT(v0$1, 16bv32);
    v11$2 := BV32_ULT(v0$2, 16bv32);
    p2$1 := (if v11$1 then v11$1 else p2$1);
    p2$2 := (if v11$2 then v11$2 else p2$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_2$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$splitSort.histo_s(p2$1, v0$1, 0bv32, _abstracted_call_arg_2$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$splitSort.histo_s(p2$2, v0$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.histo_s"} true;
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    call {:sourceloc} {:sourceloc_num 15} _LOG_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 15} _CHECK_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$splitSort.histo_s"} true;
    havoc v12$1, v12$2;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v12$1];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v12$1] := true;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v12$2];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[32:0], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v12$2] := true;
    call {:sourceloc} {:sourceloc_num 16} _LOG_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 16} _CHECK_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$splitSort.histo_s"} true;
    havoc v13$1, v13$2;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v13$1];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v13$1] := true;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v13$2];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[64:32], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v13$2] := true;
    call {:sourceloc} {:sourceloc_num 17} _LOG_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 17} _CHECK_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$splitSort.histo_s"} true;
    havoc v14$1, v14$2;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v14$1];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v14$1] := true;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v14$2];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[96:64], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v14$2] := true;
    call {:sourceloc} {:sourceloc_num 18} _LOG_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 18} _CHECK_ATOMIC_$$splitSort.histo_s(true, BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$splitSort.histo_s"} true;
    havoc v15$1, v15$2;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v15$1];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$1[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v15$1] := true;
    assume !_USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v15$2];
    _USED_$$splitSort.histo_s[BV32_SDIV(BV32_MUL(BV32_LSHR(BV32_AND($lkey.0$2[128:96], BV32_SUB(BV32_SHL(1bv32, BV32_AND(BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)), 31bv32)), 1bv32)), BV32_AND(BV32_MUL(4bv32, $iter), 31bv32)), 4bv32), 4bv32)][v15$2] := true;
    $index.0$1, $i.0 := BV32_ADD(BV32_MUL(4bv32, v0$1), 3bv32) ++ BV32_ADD(BV32_MUL(4bv32, v0$1), 2bv32) ++ BV32_ADD(BV32_MUL(4bv32, v0$1), 1bv32) ++ BV32_MUL(4bv32, v0$1), BV32_MUL(4bv32, $iter);
    $index.0$2 := BV32_ADD(BV32_MUL(4bv32, v0$2), 3bv32) ++ BV32_ADD(BV32_MUL(4bv32, v0$2), 2bv32) ++ BV32_ADD(BV32_MUL(4bv32, v0$2), 1bv32) ++ BV32_MUL(4bv32, v0$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b26 ==> _WRITE_HAS_OCCURRED_$$splitSort.flags ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, local_id_x$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, local_id_x$1), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(4bv32, group_size_x)), 24bv32) then BV32_ADD(4bv32, BV32_MUL(4bv32, group_size_x)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32), BV32_LSHR(BV32_LSHR(BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32)), 24bv32) then BV32_ADD(4bv32, BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32) else 24bv32), 31bv32)), 8bv32));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b25 ==> _READ_HAS_OCCURRED_$$splitSort.flags ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, local_id_x$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, local_id_x$1), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32), BV32_LSHR(BV32_LSHR(BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32)), 24bv32) then BV32_ADD(4bv32, BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, local_id_x$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, local_id_x$1), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, local_id_x$1)) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 5bv32) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), BV32_AND((if BV32_ULT(BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))), 24bv32) then BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1))) else 24bv32), 31bv32)), 8bv32)) || _WATCHED_OFFSET == BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 1bv32), BV32_AND((if BV32_ULT(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32), 24bv32) then BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, local_id_x$1)), 5bv32) else 24bv32), 31bv32)), 8bv32));
    assert {:tag "nowrite"} _b24 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "noread"} _b23 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "pow2NotZero"} _b22 ==> v52 != 0bv32;
    assert {:tag "pow2"} _b21 ==> v52 == 0bv32 || BV32_AND(v52, BV32_SUB(v52, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b20 ==> $stride.i.1 != 0bv32;
    assert {:tag "pow2"} _b19 ==> $stride.i.1 == 0bv32 || BV32_AND($stride.i.1, BV32_SUB($stride.i.1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b18 ==> $d106.i.0 != 0bv32;
    assert {:tag "pow2"} _b17 ==> $d106.i.0 == 0bv32 || BV32_AND($d106.i.0, BV32_SUB($d106.i.0, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b16 ==> $stride.i.0 != 0bv32;
    assert {:tag "pow2"} _b15 ==> $stride.i.0 == 0bv32 || BV32_AND($stride.i.0, BV32_SUB($stride.i.0, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b14 ==> $d.i.0 != 0bv32;
    assert {:tag "pow2"} _b13 ==> $d.i.0 == 0bv32 || BV32_AND($d.i.0, BV32_SUB($d.i.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.0, BV32_MUL(4bv32, $iter));
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.0, BV32_MUL(4bv32, $iter));
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.0, BV32_MUL(4bv32, $iter));
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.0, BV32_MUL(4bv32, $iter));
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $i.0);
    assert {:block_sourceloc} {:sourceloc_num 19} true;
    v16 := BV32_SLT($i.0, BV32_MUL(4bv32, BV32_ADD($iter, 1bv32)));
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    goto __partitioned_block_$truebb1_0, $falsebb1;

  $falsebb1:
    assume {:partition} !v16;
    v102$1 := BV32_ULT(v1$1, $numElems);
    v102$2 := BV32_ULT(v1$2, $numElems);
    p18$1 := (if v102$1 then v102$1 else p18$1);
    p18$2 := (if v102$2 then v102$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$keys(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0]), $lkey.0$1[32:0], $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0]), $lkey.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys"} true;
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])] := (if p18$1 then $lkey.0$1[32:0] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])]);
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0])] := (if p18$2 then $lkey.0$2[32:0] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0])]);
    call {:sourceloc} {:sourceloc_num 91} _LOG_WRITE_$$keys(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32]), $lkey.0$1[64:32], $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32]));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 91} _CHECK_WRITE_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32]), $lkey.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys"} true;
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])] := (if p18$1 then $lkey.0$1[64:32] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])]);
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32])] := (if p18$2 then $lkey.0$2[64:32] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32])]);
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$keys(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64]), $lkey.0$1[96:64], $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64]));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64]), $lkey.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys"} true;
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])] := (if p18$1 then $lkey.0$1[96:64] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])]);
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64])] := (if p18$2 then $lkey.0$2[96:64] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64])]);
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$keys(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96]), $lkey.0$1[128:96], $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96]));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$keys(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96]), $lkey.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$keys"} true;
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])] := (if p18$1 then $lkey.0$1[128:96] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])]);
    $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96])] := (if p18$2 then $lkey.0$2[128:96] else $$keys[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96])]);
    call {:sourceloc} {:sourceloc_num 94} _LOG_WRITE_$$values(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0]), $lvalue.0$1[32:0], $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 94} _CHECK_WRITE_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0]), $lvalue.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])] := (if p18$1 then $lvalue.0$1[32:0] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[32:0])]);
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0])] := (if p18$2 then $lvalue.0$2[32:0] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[32:0])]);
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$values(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32]), $lvalue.0$1[64:32], $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32]));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32]), $lvalue.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])] := (if p18$1 then $lvalue.0$1[64:32] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[64:32])]);
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32])] := (if p18$2 then $lvalue.0$2[64:32] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[64:32])]);
    call {:sourceloc} {:sourceloc_num 96} _LOG_WRITE_$$values(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64]), $lvalue.0$1[96:64], $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64]));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 96} _CHECK_WRITE_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64]), $lvalue.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])] := (if p18$1 then $lvalue.0$1[96:64] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[96:64])]);
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64])] := (if p18$2 then $lvalue.0$2[96:64] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[96:64])]);
    call {:sourceloc} {:sourceloc_num 97} _LOG_WRITE_$$values(p18$1, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96]), $lvalue.0$1[128:96], $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96]));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 97} _CHECK_WRITE_$$values(p18$2, BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96]), $lvalue.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])] := (if p18$1 then $lvalue.0$1[128:96] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$1, 4bv32), 256bv32), $index.0$1[128:96])]);
    $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96])] := (if p18$2 then $lvalue.0$2[128:96] else $$values[BV32_ADD(BV32_MUL(BV32_MUL(group_id_x$2, 4bv32), 256bv32), $index.0$2[128:96])]);
    v103$1 := BV32_ULT(v0$1, 16bv32);
    v103$2 := BV32_ULT(v0$2, 16bv32);
    p20$1 := (if v103$1 then v103$1 else p20$1);
    p20$2 := (if v103$2 then v103$2 else p20$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_0$1 := (if p20$1 then _HAVOC_bv32$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p20$2 then _HAVOC_bv32$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$splitSort.histo_s(p20$1, v0$1, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 100} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_1$1 := (if p20$1 then _HAVOC_bv32$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p20$2 then _HAVOC_bv32$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$splitSort.histo_s(p20$2, v0$2, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.histo_s"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v104$1 := (if p20$1 then _HAVOC_bv32$1 else v104$1);
    v104$2 := (if p20$2 then _HAVOC_bv32$2 else v104$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_WRITE_$$histo(p20$1, BV32_ADD(BV32_MUL(num_groups_x, local_id_x$1), group_id_x$1), v104$1, $$histo[BV32_ADD(BV32_MUL(num_groups_x, local_id_x$1), group_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo(p20$2, BV32_ADD(BV32_MUL(num_groups_x, local_id_x$2), group_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 101} _CHECK_WRITE_$$histo(p20$2, BV32_ADD(BV32_MUL(num_groups_x, local_id_x$2), group_id_x$2), v104$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$histo"} true;
    $$histo[BV32_ADD(BV32_MUL(num_groups_x, local_id_x$1), group_id_x$1)] := (if p20$1 then v104$1 else $$histo[BV32_ADD(BV32_MUL(num_groups_x, local_id_x$1), group_id_x$1)]);
    $$histo[BV32_ADD(BV32_MUL(num_groups_x, local_id_x$2), group_id_x$2)] := (if p20$2 then v104$2 else $$histo[BV32_ADD(BV32_MUL(num_groups_x, local_id_x$2), group_id_x$2)]);
    return;

  __partitioned_block_$truebb1_0:
    assume {:partition} v16;
    v17$1 := BV32_AND(BV32_LSHR($lkey.0$1[32:0], BV32_AND($i.0, 31bv32)), 1bv32);
    v17$2 := BV32_AND(BV32_LSHR($lkey.0$2[32:0], BV32_AND($i.0, 31bv32)), 1bv32);
    v18$1 := BV32_AND(BV32_LSHR($lkey.0$1[64:32], BV32_AND($i.0, 31bv32)), 1bv32);
    v18$2 := BV32_AND(BV32_LSHR($lkey.0$2[64:32], BV32_AND($i.0, 31bv32)), 1bv32);
    v19$1 := BV32_AND(BV32_LSHR($lkey.0$1[96:64], BV32_AND($i.0, 31bv32)), 1bv32);
    v19$2 := BV32_AND(BV32_LSHR($lkey.0$2[96:64], BV32_AND($i.0, 31bv32)), 1bv32);
    v20$1 := BV32_AND(BV32_LSHR($lkey.0$1[128:96], BV32_AND($i.0, 31bv32)), 1bv32);
    v20$2 := BV32_AND(BV32_LSHR($lkey.0$2[128:96], BV32_AND($i.0, 31bv32)), 1bv32);
    v21$1 := BV32_ADD(4bv32, $index.0$1[32:0]);
    v21$2 := BV32_ADD(4bv32, $index.0$2[32:0]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$1[32:0], BV32_LSHR(BV32_LSHR($index.0$1[32:0], BV32_AND((if BV32_ULT(v21$1, 24bv32) then v21$1 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v17$1), 31bv32)), $$splitSort.flags[1bv1][BV32_ADD($index.0$1[32:0], BV32_LSHR(BV32_LSHR($index.0$1[32:0], BV32_AND((if BV32_ULT(v21$1, 24bv32) then v21$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD($index.0$2[32:0], BV32_LSHR(BV32_LSHR($index.0$2[32:0], BV32_AND((if BV32_ULT(v21$2, 24bv32) then v21$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$2[32:0], BV32_LSHR(BV32_LSHR($index.0$2[32:0], BV32_AND((if BV32_ULT(v21$2, 24bv32) then v21$2 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v17$2), 31bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD($index.0$1[32:0], BV32_LSHR(BV32_LSHR($index.0$1[32:0], BV32_AND((if BV32_ULT(v21$1, 24bv32) then v21$1 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v17$1), 31bv32));
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($index.0$2[32:0], BV32_LSHR(BV32_LSHR($index.0$2[32:0], BV32_AND((if BV32_ULT(v21$2, 24bv32) then v21$2 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v17$2), 31bv32));
    v22$1 := BV32_ADD(4bv32, $index.0$1[64:32]);
    v22$2 := BV32_ADD(4bv32, $index.0$2[64:32]);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$1[64:32], BV32_LSHR(BV32_LSHR($index.0$1[64:32], BV32_AND((if BV32_ULT(v22$1, 24bv32) then v22$1 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v18$1), 31bv32)), $$splitSort.flags[1bv1][BV32_ADD($index.0$1[64:32], BV32_LSHR(BV32_LSHR($index.0$1[64:32], BV32_AND((if BV32_ULT(v22$1, 24bv32) then v22$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD($index.0$2[64:32], BV32_LSHR(BV32_LSHR($index.0$2[64:32], BV32_AND((if BV32_ULT(v22$2, 24bv32) then v22$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$2[64:32], BV32_LSHR(BV32_LSHR($index.0$2[64:32], BV32_AND((if BV32_ULT(v22$2, 24bv32) then v22$2 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v18$2), 31bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD($index.0$1[64:32], BV32_LSHR(BV32_LSHR($index.0$1[64:32], BV32_AND((if BV32_ULT(v22$1, 24bv32) then v22$1 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v18$1), 31bv32));
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($index.0$2[64:32], BV32_LSHR(BV32_LSHR($index.0$2[64:32], BV32_AND((if BV32_ULT(v22$2, 24bv32) then v22$2 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v18$2), 31bv32));
    v23$1 := BV32_ADD(4bv32, $index.0$1[96:64]);
    v23$2 := BV32_ADD(4bv32, $index.0$2[96:64]);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$1[96:64], BV32_LSHR(BV32_LSHR($index.0$1[96:64], BV32_AND((if BV32_ULT(v23$1, 24bv32) then v23$1 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v19$1), 31bv32)), $$splitSort.flags[1bv1][BV32_ADD($index.0$1[96:64], BV32_LSHR(BV32_LSHR($index.0$1[96:64], BV32_AND((if BV32_ULT(v23$1, 24bv32) then v23$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD($index.0$2[96:64], BV32_LSHR(BV32_LSHR($index.0$2[96:64], BV32_AND((if BV32_ULT(v23$2, 24bv32) then v23$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$2[96:64], BV32_LSHR(BV32_LSHR($index.0$2[96:64], BV32_AND((if BV32_ULT(v23$2, 24bv32) then v23$2 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v19$2), 31bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD($index.0$1[96:64], BV32_LSHR(BV32_LSHR($index.0$1[96:64], BV32_AND((if BV32_ULT(v23$1, 24bv32) then v23$1 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v19$1), 31bv32));
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($index.0$2[96:64], BV32_LSHR(BV32_LSHR($index.0$2[96:64], BV32_AND((if BV32_ULT(v23$2, 24bv32) then v23$2 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v19$2), 31bv32));
    v24$1 := BV32_ADD(4bv32, $index.0$1[128:96]);
    v24$2 := BV32_ADD(4bv32, $index.0$2[128:96]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$1[128:96], BV32_LSHR(BV32_LSHR($index.0$1[128:96], BV32_AND((if BV32_ULT(v24$1, 24bv32) then v24$1 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v20$1), 31bv32)), $$splitSort.flags[1bv1][BV32_ADD($index.0$1[128:96], BV32_LSHR(BV32_LSHR($index.0$1[128:96], BV32_AND((if BV32_ULT(v24$1, 24bv32) then v24$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD($index.0$2[128:96], BV32_LSHR(BV32_LSHR($index.0$2[128:96], BV32_AND((if BV32_ULT(v24$2, 24bv32) then v24$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD($index.0$2[128:96], BV32_LSHR(BV32_LSHR($index.0$2[128:96], BV32_AND((if BV32_ULT(v24$2, 24bv32) then v24$2 else 24bv32), 31bv32)), 8bv32)), BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v20$2), 31bv32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD($index.0$1[128:96], BV32_LSHR(BV32_LSHR($index.0$1[128:96], BV32_AND((if BV32_ULT(v24$1, 24bv32) then v24$1 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v20$1), 31bv32));
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($index.0$2[128:96], BV32_LSHR(BV32_LSHR($index.0$2[128:96], BV32_AND((if BV32_ULT(v24$2, 24bv32) then v24$2 else 24bv32), 31bv32)), 8bv32))] := BV32_SHL(1bv32, BV32_AND(BV32_MUL(16bv32, v20$2), 31bv32));
    v25$1 := local_id_x$1;
    v25$2 := local_id_x$2;
    goto __partitioned_block_$truebb1_1;

  __partitioned_block_$truebb1_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v26$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$1));
    v26$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$2));
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v26$1, 24bv32) then v26$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v26$1, 24bv32) then v26$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v26$2, 24bv32) then v26$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v26$2, 24bv32) then v26$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v27$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v26$1, 24bv32) then v26$1 else 24bv32), 31bv32)), 8bv32))];
    v27$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v26$2, 24bv32) then v26$2 else 24bv32), 31bv32)), 8bv32))];
    v28$1 := BV32_ADD(BV32_MUL(2bv32, v25$1), 5bv32);
    v28$2 := BV32_ADD(BV32_MUL(2bv32, v25$2), 5bv32);
    v29$1 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_AND((if BV32_ULT(v28$1, 24bv32) then v28$1 else 24bv32), 31bv32)), 8bv32));
    v29$2 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_AND((if BV32_ULT(v28$2, 24bv32) then v28$2 else 24bv32), 31bv32)), 8bv32));
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$splitSort.flags(true, v29$1, $$splitSort.flags[1bv1][v29$1]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$splitSort.flags(true, v29$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v29$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v30$1 := $$splitSort.flags[1bv1][v29$1];
    v30$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v29$2];
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$splitSort.flags(true, v29$1, BV32_ADD(v30$1, v27$1), $$splitSort.flags[1bv1][v29$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, v29$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$splitSort.flags(true, v29$2, BV32_ADD(v30$2, v27$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v29$1] := BV32_ADD(v30$1, v27$1);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v29$2] := BV32_ADD(v30$2, v27$2);
    v31$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)));
    v31$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)));
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v31$1, 24bv32) then v31$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v31$1, 24bv32) then v31$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v31$2, 24bv32) then v31$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v31$2, 24bv32) then v31$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v32$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v31$1, 24bv32) then v31$1 else 24bv32), 31bv32)), 8bv32))];
    v32$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v31$2, 24bv32) then v31$2 else 24bv32), 31bv32)), 8bv32))];
    v33$1 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 5bv32);
    v33$2 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 5bv32);
    v34$1 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_AND((if BV32_ULT(v33$1, 24bv32) then v33$1 else 24bv32), 31bv32)), 8bv32));
    v34$2 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_AND((if BV32_ULT(v33$2, 24bv32) then v33$2 else 24bv32), 31bv32)), 8bv32));
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$splitSort.flags(true, v34$1, $$splitSort.flags[1bv1][v34$1]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$splitSort.flags(true, v34$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v34$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v35$1 := $$splitSort.flags[1bv1][v34$1];
    v35$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v34$2];
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$splitSort.flags(true, v34$1, BV32_ADD(v35$1, v32$1), $$splitSort.flags[1bv1][v34$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, v34$2);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$splitSort.flags(true, v34$2, BV32_ADD(v35$2, v32$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v34$1] := BV32_ADD(v35$1, v32$1);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v34$2] := BV32_ADD(v35$2, v32$2);
    $d.i.0, $stride.i.0 := group_size_x, 2bv32;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.i;

  $for.cond.i:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessBreak"} _b68 ==> _WRITE_HAS_OCCURRED_$$splitSort.flags ==> local_id_x$1 == BV32_SUB(BV32_SUB(BV32_SUB(BV32_DIV(BV32_DIV(_WATCHED_OFFSET, 2bv32), $stride.i.0), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0));
    assert {:tag "accessBreak"} _b67 ==> _WRITE_HAS_OCCURRED_$$splitSort.flags ==> local_id_x$1 == BV32_SUB(BV32_SUB(BV32_SUB(BV32_DIV(BV32_DIV(_WATCHED_OFFSET, 2bv32), $stride.i.0), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0));
    assert {:tag "accessBreak"} _b66 ==> _WRITE_HAS_OCCURRED_$$splitSort.flags ==> local_id_x$1 == BV32_SUB(BV32_SUB(BV32_SUB(BV32_DIV(BV32_DIV(_WATCHED_OFFSET, 2bv32), $stride.i.0), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0));
    assert {:tag "accessBreak"} _b65 ==> _WRITE_HAS_OCCURRED_$$splitSort.flags ==> local_id_x$1 == BV32_SUB(BV32_SUB(BV32_SUB(BV32_DIV(BV32_DIV(_WATCHED_OFFSET, 2bv32), $stride.i.0), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0)), BV32_DIV(BV32_MUL(local_id_x$1, $stride.i.0), $stride.i.0));
    assert {:tag "nowrite"} _b64 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "noread"} _b63 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "relationalPow2"} _b62 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 2bv32) || BV32_MUL($stride.i.0, $d.i.0) == 1bv32;
    assert {:tag "relationalPow2"} _b61 ==> BV32_MUL($stride.i.0, $d.i.0) == 1bv32;
    assert {:tag "relationalPow2"} _b60 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 4bv32) || BV32_MUL($stride.i.0, $d.i.0) == 2bv32;
    assert {:tag "relationalPow2"} _b59 ==> BV32_MUL($stride.i.0, $d.i.0) == 2bv32;
    assert {:tag "relationalPow2"} _b58 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 8bv32) || BV32_MUL($stride.i.0, $d.i.0) == 4bv32;
    assert {:tag "relationalPow2"} _b57 ==> BV32_MUL($stride.i.0, $d.i.0) == 4bv32;
    assert {:tag "relationalPow2"} _b56 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 16bv32) || BV32_MUL($stride.i.0, $d.i.0) == 8bv32;
    assert {:tag "relationalPow2"} _b55 ==> BV32_MUL($stride.i.0, $d.i.0) == 8bv32;
    assert {:tag "relationalPow2"} _b54 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 32bv32) || BV32_MUL($stride.i.0, $d.i.0) == 16bv32;
    assert {:tag "relationalPow2"} _b53 ==> BV32_MUL($stride.i.0, $d.i.0) == 16bv32;
    assert {:tag "relationalPow2"} _b52 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 64bv32) || BV32_MUL($stride.i.0, $d.i.0) == 32bv32;
    assert {:tag "relationalPow2"} _b51 ==> BV32_MUL($stride.i.0, $d.i.0) == 32bv32;
    assert {:tag "relationalPow2"} _b50 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 128bv32) || BV32_MUL($stride.i.0, $d.i.0) == 64bv32;
    assert {:tag "relationalPow2"} _b49 ==> BV32_MUL($stride.i.0, $d.i.0) == 64bv32;
    assert {:tag "relationalPow2"} _b48 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 256bv32) || BV32_MUL($stride.i.0, $d.i.0) == 128bv32;
    assert {:tag "relationalPow2"} _b47 ==> BV32_MUL($stride.i.0, $d.i.0) == 128bv32;
    assert {:tag "relationalPow2"} _b46 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 512bv32) || BV32_MUL($stride.i.0, $d.i.0) == 256bv32;
    assert {:tag "relationalPow2"} _b45 ==> BV32_MUL($stride.i.0, $d.i.0) == 256bv32;
    assert {:tag "relationalPow2"} _b44 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 1024bv32) || BV32_MUL($stride.i.0, $d.i.0) == 512bv32;
    assert {:tag "relationalPow2"} _b43 ==> BV32_MUL($stride.i.0, $d.i.0) == 512bv32;
    assert {:tag "relationalPow2"} _b42 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 2048bv32) || BV32_MUL($stride.i.0, $d.i.0) == 1024bv32;
    assert {:tag "relationalPow2"} _b41 ==> BV32_MUL($stride.i.0, $d.i.0) == 1024bv32;
    assert {:tag "relationalPow2"} _b40 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 4096bv32) || BV32_MUL($stride.i.0, $d.i.0) == 2048bv32;
    assert {:tag "relationalPow2"} _b39 ==> BV32_MUL($stride.i.0, $d.i.0) == 2048bv32;
    assert {:tag "relationalPow2"} _b38 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 8192bv32) || BV32_MUL($stride.i.0, $d.i.0) == 4096bv32;
    assert {:tag "relationalPow2"} _b37 ==> BV32_MUL($stride.i.0, $d.i.0) == 4096bv32;
    assert {:tag "relationalPow2"} _b36 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 16384bv32) || BV32_MUL($stride.i.0, $d.i.0) == 8192bv32;
    assert {:tag "relationalPow2"} _b35 ==> BV32_MUL($stride.i.0, $d.i.0) == 8192bv32;
    assert {:tag "relationalPow2"} _b34 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 32768bv32) || BV32_MUL($stride.i.0, $d.i.0) == 16384bv32;
    assert {:tag "relationalPow2"} _b33 ==> BV32_MUL($stride.i.0, $d.i.0) == 16384bv32;
    assert {:tag "relationalPow2"} _b32 ==> ($d.i.0 == 0bv32 && $stride.i.0 == 65536bv32) || BV32_MUL($stride.i.0, $d.i.0) == 32768bv32;
    assert {:tag "relationalPow2"} _b31 ==> BV32_MUL($stride.i.0, $d.i.0) == 32768bv32;
    assert {:tag "pow2NotZero"} _b30 ==> $stride.i.0 != 0bv32;
    assert {:tag "pow2"} _b29 ==> $stride.i.0 == 0bv32 || BV32_AND($stride.i.0, BV32_SUB($stride.i.0, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b28 ==> $d.i.0 != 0bv32;
    assert {:tag "pow2"} _b27 ==> $d.i.0 == 0bv32 || BV32_AND($d.i.0, BV32_SUB($d.i.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_UGE($d.i.0, group_size_x);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_ULE($d.i.0, group_size_x);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SGE($d.i.0, group_size_x);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SLE($d.i.0, group_size_x);
    assert {:block_sourceloc} {:sourceloc_num 32} true;
    v36 := BV32_UGT($d.i.0, 0bv32);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    goto __partitioned_block_$truebb2_0, $falsebb2;

  $falsebb2:
    assume {:partition} !v36;
    v45$1 := v25$1 == 0bv32;
    v45$2 := v25$2 == 0bv32;
    p7$1 := (if v45$1 then v45$1 else p7$1);
    p7$2 := (if v45$2 then v45$2 else p7$2);
    v46$1 := (if p7$1 then BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32) else v46$1);
    v46$2 := (if p7$2 then BV32_SUB(BV32_MUL(4bv32, group_size_x), 1bv32) else v46$2);
    v47$1 := (if p7$1 then BV32_ADD(4bv32, v46$1) else v47$1);
    v47$2 := (if p7$2 then BV32_ADD(4bv32, v46$2) else v47$2);
    v48$1 := (if p7$1 then BV32_ADD(v46$1, BV32_LSHR(BV32_LSHR(v46$1, BV32_AND((if BV32_ULT(v47$1, 24bv32) then v47$1 else 24bv32), 31bv32)), 8bv32)) else v48$1);
    v48$2 := (if p7$2 then BV32_ADD(v46$2, BV32_LSHR(BV32_LSHR(v46$2, BV32_AND((if BV32_ULT(v47$2, 24bv32) then v47$2 else 24bv32), 31bv32)), 8bv32)) else v48$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$splitSort.flags(p7$1, v48$1, $$splitSort.flags[1bv1][v48$1]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$splitSort.flags(p7$2, v48$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v48$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v49$1 := (if p7$1 then $$splitSort.flags[1bv1][v48$1] else v49$1);
    v49$2 := (if p7$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v48$2] else v49$2);
    v50$1 := (if p7$1 then BV32_ADD(4bv32, BV32_MUL(4bv32, group_size_x)) else v50$1);
    v50$2 := (if p7$2 then BV32_ADD(4bv32, BV32_MUL(4bv32, group_size_x)) else v50$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$splitSort.flags(p7$1, BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$1, 24bv32) then v50$1 else 24bv32), 31bv32)), 8bv32)), v49$1, $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$1, 24bv32) then v50$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(p7$2, BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$2, 24bv32) then v50$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$splitSort.flags(p7$2, BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$2, 24bv32) then v50$2 else 24bv32), 31bv32)), 8bv32)), v49$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$1, 24bv32) then v50$1 else 24bv32), 31bv32)), 8bv32))] := (if p7$1 then v49$1 else $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$1, 24bv32) then v50$1 else 24bv32), 31bv32)), 8bv32))]);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$2, 24bv32) then v50$2 else 24bv32), 31bv32)), 8bv32))] := (if p7$2 then v49$2 else $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v50$2, 24bv32) then v50$2 else 24bv32), 31bv32)), 8bv32))]);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$splitSort.flags(p7$1, v48$1, 0bv32, $$splitSort.flags[1bv1][v48$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(p7$2, v48$2);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$splitSort.flags(p7$2, v48$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v48$1] := (if p7$1 then 0bv32 else $$splitSort.flags[1bv1][v48$1]);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v48$2] := (if p7$2 then 0bv32 else $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v48$2]);
    $d106.i.0, $stride.i.1 := 1bv32, $stride.i.0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.107.i;

  $for.cond.107.i:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "nowrite"} _b108 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "noread"} _b107 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assert {:tag "relationalPow2"} _b106 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 2bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 1bv32;
    assert {:tag "relationalPow2"} _b105 ==> BV32_MUL($d106.i.0, $stride.i.1) == 1bv32;
    assert {:tag "relationalPow2"} _b104 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 4bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 2bv32;
    assert {:tag "relationalPow2"} _b103 ==> BV32_MUL($d106.i.0, $stride.i.1) == 2bv32;
    assert {:tag "relationalPow2"} _b102 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 8bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 4bv32;
    assert {:tag "relationalPow2"} _b101 ==> BV32_MUL($d106.i.0, $stride.i.1) == 4bv32;
    assert {:tag "relationalPow2"} _b100 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 16bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 8bv32;
    assert {:tag "relationalPow2"} _b99 ==> BV32_MUL($d106.i.0, $stride.i.1) == 8bv32;
    assert {:tag "relationalPow2"} _b98 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 32bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 16bv32;
    assert {:tag "relationalPow2"} _b97 ==> BV32_MUL($d106.i.0, $stride.i.1) == 16bv32;
    assert {:tag "relationalPow2"} _b96 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 64bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 32bv32;
    assert {:tag "relationalPow2"} _b95 ==> BV32_MUL($d106.i.0, $stride.i.1) == 32bv32;
    assert {:tag "relationalPow2"} _b94 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 128bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 64bv32;
    assert {:tag "relationalPow2"} _b93 ==> BV32_MUL($d106.i.0, $stride.i.1) == 64bv32;
    assert {:tag "relationalPow2"} _b92 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 256bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 128bv32;
    assert {:tag "relationalPow2"} _b91 ==> BV32_MUL($d106.i.0, $stride.i.1) == 128bv32;
    assert {:tag "relationalPow2"} _b90 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 512bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 256bv32;
    assert {:tag "relationalPow2"} _b89 ==> BV32_MUL($d106.i.0, $stride.i.1) == 256bv32;
    assert {:tag "relationalPow2"} _b88 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 1024bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 512bv32;
    assert {:tag "relationalPow2"} _b87 ==> BV32_MUL($d106.i.0, $stride.i.1) == 512bv32;
    assert {:tag "relationalPow2"} _b86 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 2048bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 1024bv32;
    assert {:tag "relationalPow2"} _b85 ==> BV32_MUL($d106.i.0, $stride.i.1) == 1024bv32;
    assert {:tag "relationalPow2"} _b84 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 4096bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 2048bv32;
    assert {:tag "relationalPow2"} _b83 ==> BV32_MUL($d106.i.0, $stride.i.1) == 2048bv32;
    assert {:tag "relationalPow2"} _b82 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 8192bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 4096bv32;
    assert {:tag "relationalPow2"} _b81 ==> BV32_MUL($d106.i.0, $stride.i.1) == 4096bv32;
    assert {:tag "relationalPow2"} _b80 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 16384bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 8192bv32;
    assert {:tag "relationalPow2"} _b79 ==> BV32_MUL($d106.i.0, $stride.i.1) == 8192bv32;
    assert {:tag "relationalPow2"} _b78 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 32768bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 16384bv32;
    assert {:tag "relationalPow2"} _b77 ==> BV32_MUL($d106.i.0, $stride.i.1) == 16384bv32;
    assert {:tag "relationalPow2"} _b76 ==> ($stride.i.1 == 0bv32 && $d106.i.0 == 65536bv32) || BV32_MUL($d106.i.0, $stride.i.1) == 32768bv32;
    assert {:tag "relationalPow2"} _b75 ==> BV32_MUL($d106.i.0, $stride.i.1) == 32768bv32;
    assert {:tag "pow2NotZero"} _b74 ==> v52 != 0bv32;
    assert {:tag "pow2"} _b73 ==> v52 == 0bv32 || BV32_AND(v52, BV32_SUB(v52, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b72 ==> $stride.i.1 != 0bv32;
    assert {:tag "pow2"} _b71 ==> $stride.i.1 == 0bv32 || BV32_AND($stride.i.1, BV32_SUB($stride.i.1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b70 ==> $d106.i.0 != 0bv32;
    assert {:tag "pow2"} _b69 ==> $d106.i.0 == 0bv32 || BV32_AND($d106.i.0, BV32_SUB($d106.i.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.flags ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$splitSort.histo_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_UGE($d106.i.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_ULE($d106.i.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_SGE($d106.i.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_SLE($d106.i.0, 1bv32);
    assert {:block_sourceloc} {:sourceloc_num 46} true;
    v51 := BV32_ULE($d106.i.0, group_size_x);
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
    goto __partitioned_block_$truebb5_0, __partitioned_block_$falsebb5_0;

  __partitioned_block_$falsebb5_0:
    assume {:partition} !v51;
    goto __partitioned_block_$falsebb5_1;

  __partitioned_block_$falsebb5_1:
    call {:sourceloc_num 57} $bugle_barrier_duplicated_2(1bv1, 0bv1);
    v63$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$1));
    v63$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$2));
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v63$1, 24bv32) then v63$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v63$1, 24bv32) then v63$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v63$2, 24bv32) then v63$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v63$2, 24bv32) then v63$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v64$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v63$1, 24bv32) then v63$1 else 24bv32), 31bv32)), 8bv32))];
    v64$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v63$2, 24bv32) then v63$2 else 24bv32), 31bv32)), 8bv32))];
    v65$1 := BV32_ADD(BV32_MUL(2bv32, v25$1), 5bv32);
    v65$2 := BV32_ADD(BV32_MUL(2bv32, v25$2), 5bv32);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_AND((if BV32_ULT(v65$1, 24bv32) then v65$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_AND((if BV32_ULT(v65$1, 24bv32) then v65$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_AND((if BV32_ULT(v65$2, 24bv32) then v65$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_AND((if BV32_ULT(v65$2, 24bv32) then v65$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v66$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_AND((if BV32_ULT(v65$1, 24bv32) then v65$1 else 24bv32), 31bv32)), 8bv32))];
    v66$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_AND((if BV32_ULT(v65$2, 24bv32) then v65$2 else 24bv32), 31bv32)), 8bv32))];
    v67$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$1));
    v67$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, v25$2));
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v67$1, 24bv32) then v67$1 else 24bv32), 31bv32)), 8bv32)), v66$1, $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v67$1, 24bv32) then v67$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v67$2, 24bv32) then v67$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v67$2, 24bv32) then v67$2 else 24bv32), 31bv32)), 8bv32)), v66$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, v25$1), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$1), BV32_AND((if BV32_ULT(v67$1, 24bv32) then v67$1 else 24bv32), 31bv32)), 8bv32))] := v66$1;
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, v25$2), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, v25$2), BV32_AND((if BV32_ULT(v67$2, 24bv32) then v67$2 else 24bv32), 31bv32)), 8bv32))] := v66$2;
    v68$1 := BV32_ADD(BV32_MUL(2bv32, v25$1), 5bv32);
    v68$2 := BV32_ADD(BV32_MUL(2bv32, v25$2), 5bv32);
    v69$1 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$1), 1bv32), BV32_AND((if BV32_ULT(v68$1, 24bv32) then v68$1 else 24bv32), 31bv32)), 8bv32));
    v69$2 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, v25$2), 1bv32), BV32_AND((if BV32_ULT(v68$2, 24bv32) then v68$2 else 24bv32), 31bv32)), 8bv32));
    call {:sourceloc} {:sourceloc_num 61} _LOG_READ_$$splitSort.flags(true, v69$1, $$splitSort.flags[1bv1][v69$1]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 61} _CHECK_READ_$$splitSort.flags(true, v69$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v69$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v70$1 := $$splitSort.flags[1bv1][v69$1];
    v70$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v69$2];
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$splitSort.flags(true, v69$1, BV32_ADD(v70$1, v64$1), $$splitSort.flags[1bv1][v69$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, v69$2);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$splitSort.flags(true, v69$2, BV32_ADD(v70$2, v64$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v69$1] := BV32_ADD(v70$1, v64$1);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v69$2] := BV32_ADD(v70$2, v64$2);
    v71$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)));
    v71$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)));
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v71$1, 24bv32) then v71$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v71$1, 24bv32) then v71$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v71$2, 24bv32) then v71$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v71$2, 24bv32) then v71$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v72$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v71$1, 24bv32) then v71$1 else 24bv32), 31bv32)), 8bv32))];
    v72$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v71$2, 24bv32) then v71$2 else 24bv32), 31bv32)), 8bv32))];
    v73$1 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 5bv32);
    v73$2 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 5bv32);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$splitSort.flags(true, BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_AND((if BV32_ULT(v73$1, 24bv32) then v73$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_AND((if BV32_ULT(v73$1, 24bv32) then v73$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$splitSort.flags(true, BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_AND((if BV32_ULT(v73$2, 24bv32) then v73$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_AND((if BV32_ULT(v73$2, 24bv32) then v73$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v74$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_AND((if BV32_ULT(v73$1, 24bv32) then v73$1 else 24bv32), 31bv32)), 8bv32))];
    v74$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_AND((if BV32_ULT(v73$2, 24bv32) then v73$2 else 24bv32), 31bv32)), 8bv32))];
    v75$1 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)));
    v75$2 := BV32_ADD(4bv32, BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)));
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v75$1, 24bv32) then v75$1 else 24bv32), 31bv32)), 8bv32)), v74$1, $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v75$1, 24bv32) then v75$1 else 24bv32), 31bv32)), 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v75$2, 24bv32) then v75$2 else 24bv32), 31bv32)), 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$splitSort.flags(true, BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v75$2, 24bv32) then v75$2 else 24bv32), 31bv32)), 8bv32)), v74$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), BV32_AND((if BV32_ULT(v75$1, 24bv32) then v75$1 else 24bv32), 31bv32)), 8bv32))] := v74$1;
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_LSHR(BV32_LSHR(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), BV32_AND((if BV32_ULT(v75$2, 24bv32) then v75$2 else 24bv32), 31bv32)), 8bv32))] := v74$2;
    v76$1 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 5bv32);
    v76$2 := BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 5bv32);
    v77$1 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$1)), 1bv32), BV32_AND((if BV32_ULT(v76$1, 24bv32) then v76$1 else 24bv32), 31bv32)), 8bv32));
    v77$2 := BV32_ADD(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_LSHR(BV32_LSHR(BV32_ADD(BV32_MUL(2bv32, BV32_ADD(group_size_x, v25$2)), 1bv32), BV32_AND((if BV32_ULT(v76$2, 24bv32) then v76$2 else 24bv32), 31bv32)), 8bv32));
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$splitSort.flags(true, v77$1, $$splitSort.flags[1bv1][v77$1]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$splitSort.flags(true, v77$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v77$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v78$1 := $$splitSort.flags[1bv1][v77$1];
    v78$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v77$2];
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$splitSort.flags(true, v77$1, BV32_ADD(v78$1, v72$1), $$splitSort.flags[1bv1][v77$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(true, v77$2);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$splitSort.flags(true, v77$2, BV32_ADD(v78$2, v72$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v77$1] := BV32_ADD(v78$1, v72$1);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v77$2] := BV32_ADD(v78$2, v72$2);
    goto __partitioned_block_$falsebb5_2;

  __partitioned_block_$falsebb5_2:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_3(1bv1, 0bv1);
    v79$1 := BV32_ADD(4bv32, $index.0$1[32:0]);
    v79$2 := BV32_ADD(4bv32, $index.0$2[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 69} true;
    v80$1 := $$splitSort.flags[1bv1][BV32_ADD($index.0$1[32:0], BV32_LSHR(BV32_LSHR($index.0$1[32:0], BV32_AND((if BV32_ULT(v79$1, 24bv32) then v79$1 else 24bv32), 31bv32)), 8bv32))];
    v80$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($index.0$2[32:0], BV32_LSHR(BV32_LSHR($index.0$2[32:0], BV32_AND((if BV32_ULT(v79$2, 24bv32) then v79$2 else 24bv32), 31bv32)), 8bv32))];
    v81$1 := $index.0$1[64:32];
    v81$2 := $index.0$2[64:32];
    v82$1 := BV32_ADD(4bv32, v81$1);
    v82$2 := BV32_ADD(4bv32, v81$2);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 70} true;
    v83$1 := $$splitSort.flags[1bv1][BV32_ADD(v81$1, BV32_LSHR(BV32_LSHR(v81$1, BV32_AND((if BV32_ULT(v82$1, 24bv32) then v82$1 else 24bv32), 31bv32)), 8bv32))];
    v83$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v81$2, BV32_LSHR(BV32_LSHR(v81$2, BV32_AND((if BV32_ULT(v82$2, 24bv32) then v82$2 else 24bv32), 31bv32)), 8bv32))];
    v84$1 := BV32_AND(BV32_LSHR(v83$1, BV32_AND(BV32_MUL(16bv32, v18$1), 31bv32)), 65535bv32);
    v84$2 := BV32_AND(BV32_LSHR(v83$2, BV32_AND(BV32_MUL(16bv32, v18$2), 31bv32)), 65535bv32);
    v85$1 := $index.0$1[96:64];
    v85$2 := $index.0$2[96:64];
    v86$1 := BV32_ADD(4bv32, v85$1);
    v86$2 := BV32_ADD(4bv32, v85$2);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 71} true;
    v87$1 := $$splitSort.flags[1bv1][BV32_ADD(v85$1, BV32_LSHR(BV32_LSHR(v85$1, BV32_AND((if BV32_ULT(v86$1, 24bv32) then v86$1 else 24bv32), 31bv32)), 8bv32))];
    v87$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v85$2, BV32_LSHR(BV32_LSHR(v85$2, BV32_AND((if BV32_ULT(v86$2, 24bv32) then v86$2 else 24bv32), 31bv32)), 8bv32))];
    v88$1 := BV32_AND(BV32_LSHR(v87$1, BV32_AND(BV32_MUL(16bv32, v19$1), 31bv32)), 65535bv32);
    v88$2 := BV32_AND(BV32_LSHR(v87$2, BV32_AND(BV32_MUL(16bv32, v19$2), 31bv32)), 65535bv32);
    v89$1 := $index.0$1[128:96];
    v89$2 := $index.0$2[128:96];
    v90$1 := BV32_ADD(4bv32, v89$1);
    v90$2 := BV32_ADD(4bv32, v89$2);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 72} true;
    v91$1 := $$splitSort.flags[1bv1][BV32_ADD(v89$1, BV32_LSHR(BV32_LSHR(v89$1, BV32_AND((if BV32_ULT(v90$1, 24bv32) then v90$1 else 24bv32), 31bv32)), 8bv32))];
    v91$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v89$2, BV32_LSHR(BV32_LSHR(v89$2, BV32_AND((if BV32_ULT(v90$2, 24bv32) then v90$2 else 24bv32), 31bv32)), 8bv32))];
    v92$1 := BV32_AND(BV32_LSHR(v91$1, BV32_AND(BV32_MUL(16bv32, v20$1), 31bv32)), 65535bv32);
    v92$2 := BV32_AND(BV32_LSHR(v91$2, BV32_AND(BV32_MUL(16bv32, v20$2), 31bv32)), 65535bv32);
    v93 := BV32_ADD(4bv32, BV32_MUL(4bv32, group_size_x));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 73} true;
    v94$1 := $$splitSort.flags[1bv1][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v93, 24bv32) then v93 else 24bv32), 31bv32)), 8bv32))];
    v94$2 := $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(4bv32, group_size_x), BV32_LSHR(BV32_LSHR(BV32_MUL(4bv32, group_size_x), BV32_AND((if BV32_ULT(v93, 24bv32) then v93 else 24bv32), 31bv32)), 8bv32))];
    v95$1 := BV32_AND(v94$1, 65535bv32)[16:0];
    v95$2 := BV32_AND(v94$2, 65535bv32)[16:0];
    v96$1 := v17$1 != 0bv32;
    v96$2 := v17$2 != 0bv32;
    p11$1 := (if v96$1 then v96$1 else p11$1);
    p11$2 := (if v96$2 then v96$2 else p11$2);
    p10$1 := (if !v96$1 then !v96$1 else p10$1);
    p10$2 := (if !v96$2 then !v96$2 else p10$2);
    $cond$1 := (if p10$1 then 0bv32 else $cond$1);
    $cond$2 := (if p10$2 then 0bv32 else $cond$2);
    $cond$1 := (if p11$1 then BV16_ZEXT32(v95$1) else $cond$1);
    $cond$2 := (if p11$2 then BV16_ZEXT32(v95$2) else $cond$2);
    v97$1 := BV32_ADD(BV32_AND(BV32_LSHR(v80$1, BV32_AND(BV32_MUL(16bv32, v17$1), 31bv32)), 65535bv32), $cond$1);
    v97$2 := BV32_ADD(BV32_AND(BV32_LSHR(v80$2, BV32_AND(BV32_MUL(16bv32, v17$2), 31bv32)), 65535bv32), $cond$2);
    v98$1 := v18$1 != 0bv32;
    v98$2 := v18$2 != 0bv32;
    p13$1 := (if v98$1 then v98$1 else p13$1);
    p13$2 := (if v98$2 then v98$2 else p13$2);
    p12$1 := (if !v98$1 then !v98$1 else p12$1);
    p12$2 := (if !v98$2 then !v98$2 else p12$2);
    $cond183$1 := (if p12$1 then 0bv32 else $cond183$1);
    $cond183$2 := (if p12$2 then 0bv32 else $cond183$2);
    $cond183$1 := (if p13$1 then BV16_ZEXT32(v95$1) else $cond183$1);
    $cond183$2 := (if p13$2 then BV16_ZEXT32(v95$2) else $cond183$2);
    v99$1 := BV32_ADD(v84$1, $cond183$1);
    v99$2 := BV32_ADD(v84$2, $cond183$2);
    v100$1 := v19$1 != 0bv32;
    v100$2 := v19$2 != 0bv32;
    p15$1 := (if v100$1 then v100$1 else p15$1);
    p15$2 := (if v100$2 then v100$2 else p15$2);
    p14$1 := (if !v100$1 then !v100$1 else p14$1);
    p14$2 := (if !v100$2 then !v100$2 else p14$2);
    $cond190$1 := (if p14$1 then 0bv32 else $cond190$1);
    $cond190$2 := (if p14$2 then 0bv32 else $cond190$2);
    $cond190$1 := (if p15$1 then BV16_ZEXT32(v95$1) else $cond190$1);
    $cond190$2 := (if p15$2 then BV16_ZEXT32(v95$2) else $cond190$2);
    v101$1 := v20$1 != 0bv32;
    v101$2 := v20$2 != 0bv32;
    p17$1 := (if v101$1 then v101$1 else p17$1);
    p17$2 := (if v101$2 then v101$2 else p17$2);
    p16$1 := (if !v101$1 then !v101$1 else p16$1);
    p16$2 := (if !v101$2 then !v101$2 else p16$2);
    $cond197$1 := (if p16$1 then 0bv32 else $cond197$1);
    $cond197$2 := (if p16$2 then 0bv32 else $cond197$2);
    $cond197$1 := (if p17$1 then BV16_ZEXT32(v95$1) else $cond197$1);
    $cond197$2 := (if p17$2 then BV16_ZEXT32(v95$2) else $cond197$2);
    goto __partitioned_block_$falsebb5_3;

  __partitioned_block_$falsebb5_3:
    call {:sourceloc_num 86} $bugle_barrier_duplicated_4(1bv1, 0bv1);
    $index.0$1, $i.0 := BV32_ADD(v92$1, $cond197$1) ++ BV32_ADD(v88$1, $cond190$1) ++ v99$1 ++ v97$1, BV32_ADD($i.0, 1bv32);
    $index.0$2 := BV32_ADD(v92$2, $cond197$2) ++ BV32_ADD(v88$2, $cond190$2) ++ v99$2 ++ v97$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  __partitioned_block_$truebb5_0:
    assume {:partition} v51;
    v52 := BV32_LSHR($stride.i.1, 1bv32);
    goto __partitioned_block_$truebb5_1;

  __partitioned_block_$truebb5_1:
    call {:sourceloc_num 48} $bugle_barrier_duplicated_5(1bv1, 0bv1);
    v53$1 := BV32_ULT(v25$1, $d106.i.0);
    v53$2 := BV32_ULT(v25$2, $d106.i.0);
    p9$1 := (if v53$1 then v53$1 else p9$1);
    p9$2 := (if v53$2 then v53$2 else p9$2);
    v54$1 := (if p9$1 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2bv32, v52), v25$1), v52), 1bv32) else v54$1);
    v54$2 := (if p9$2 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2bv32, v52), v25$2), v52), 1bv32) else v54$2);
    v55$1 := (if p9$1 then BV32_ADD(v54$1, v52) else v55$1);
    v55$2 := (if p9$2 then BV32_ADD(v54$2, v52) else v55$2);
    v56$1 := (if p9$1 then BV32_ADD(4bv32, v54$1) else v56$1);
    v56$2 := (if p9$2 then BV32_ADD(4bv32, v54$2) else v56$2);
    v57$1 := (if p9$1 then BV32_ADD(v54$1, BV32_LSHR(BV32_LSHR(v54$1, BV32_AND((if BV32_ULT(v56$1, 24bv32) then v56$1 else 24bv32), 31bv32)), 8bv32)) else v57$1);
    v57$2 := (if p9$2 then BV32_ADD(v54$2, BV32_LSHR(BV32_LSHR(v54$2, BV32_AND((if BV32_ULT(v56$2, 24bv32) then v56$2 else 24bv32), 31bv32)), 8bv32)) else v57$2);
    v58$1 := (if p9$1 then BV32_ADD(4bv32, v55$1) else v58$1);
    v58$2 := (if p9$2 then BV32_ADD(4bv32, v55$2) else v58$2);
    v59$1 := (if p9$1 then BV32_ADD(v55$1, BV32_LSHR(BV32_LSHR(v55$1, BV32_AND((if BV32_ULT(v58$1, 24bv32) then v58$1 else 24bv32), 31bv32)), 8bv32)) else v59$1);
    v59$2 := (if p9$2 then BV32_ADD(v55$2, BV32_LSHR(BV32_LSHR(v55$2, BV32_AND((if BV32_ULT(v58$2, 24bv32) then v58$2 else 24bv32), 31bv32)), 8bv32)) else v59$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$splitSort.flags(p9$1, v57$1, $$splitSort.flags[1bv1][v57$1]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$splitSort.flags(p9$2, v57$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v57$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v60$1 := (if p9$1 then $$splitSort.flags[1bv1][v57$1] else v60$1);
    v60$2 := (if p9$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v57$2] else v60$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$splitSort.flags(p9$1, v59$1, $$splitSort.flags[1bv1][v59$1]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$splitSort.flags(p9$2, v59$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v61$1 := (if p9$1 then $$splitSort.flags[1bv1][v59$1] else v61$1);
    v61$2 := (if p9$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2] else v61$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$splitSort.flags(p9$1, v57$1, v61$1, $$splitSort.flags[1bv1][v57$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(p9$2, v57$2);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$splitSort.flags(p9$2, v57$2, v61$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v57$1] := (if p9$1 then v61$1 else $$splitSort.flags[1bv1][v57$1]);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v57$2] := (if p9$2 then v61$2 else $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v57$2]);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$splitSort.flags(p9$1, v59$1, $$splitSort.flags[1bv1][v59$1]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$splitSort.flags(p9$2, v59$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v62$1 := (if p9$1 then $$splitSort.flags[1bv1][v59$1] else v62$1);
    v62$2 := (if p9$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2] else v62$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$splitSort.flags(p9$1, v59$1, BV32_ADD(v62$1, v60$1), $$splitSort.flags[1bv1][v59$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(p9$2, v59$2);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$splitSort.flags(p9$2, v59$2, BV32_ADD(v62$2, v60$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v59$1] := (if p9$1 then BV32_ADD(v62$1, v60$1) else $$splitSort.flags[1bv1][v59$1]);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2] := (if p9$2 then BV32_ADD(v62$2, v60$2) else $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v59$2]);
    $d106.i.0, $stride.i.1 := BV32_MUL($d106.i.0, 2bv32), v52;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.107.i;

  __partitioned_block_$truebb2_0:
    assume {:partition} v36;
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 34} $bugle_barrier_duplicated_6(1bv1, 0bv1);
    v37$1 := BV32_ULT(v25$1, $d.i.0);
    v37$2 := BV32_ULT(v25$2, $d.i.0);
    p5$1 := (if v37$1 then v37$1 else p5$1);
    p5$2 := (if v37$2 then v37$2 else p5$2);
    v38$1 := (if p5$1 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2bv32, $stride.i.0), v25$1), $stride.i.0), 1bv32) else v38$1);
    v38$2 := (if p5$2 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2bv32, $stride.i.0), v25$2), $stride.i.0), 1bv32) else v38$2);
    v39$1 := (if p5$1 then BV32_ADD(v38$1, $stride.i.0) else v39$1);
    v39$2 := (if p5$2 then BV32_ADD(v38$2, $stride.i.0) else v39$2);
    v40$1 := (if p5$1 then BV32_ADD(4bv32, v38$1) else v40$1);
    v40$2 := (if p5$2 then BV32_ADD(4bv32, v38$2) else v40$2);
    v41$1 := (if p5$1 then BV32_ADD(4bv32, v39$1) else v41$1);
    v41$2 := (if p5$2 then BV32_ADD(4bv32, v39$2) else v41$2);
    v42$1 := (if p5$1 then BV32_ADD(v39$1, BV32_LSHR(BV32_LSHR(v39$1, BV32_AND((if BV32_ULT(v41$1, 24bv32) then v41$1 else 24bv32), 31bv32)), 8bv32)) else v42$1);
    v42$2 := (if p5$2 then BV32_ADD(v39$2, BV32_LSHR(BV32_LSHR(v39$2, BV32_AND((if BV32_ULT(v41$2, 24bv32) then v41$2 else 24bv32), 31bv32)), 8bv32)) else v42$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$splitSort.flags(p5$1, BV32_ADD(v38$1, BV32_LSHR(BV32_LSHR(v38$1, BV32_AND((if BV32_ULT(v40$1, 24bv32) then v40$1 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[1bv1][BV32_ADD(v38$1, BV32_LSHR(BV32_LSHR(v38$1, BV32_AND((if BV32_ULT(v40$1, 24bv32) then v40$1 else 24bv32), 31bv32)), 8bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$splitSort.flags(p5$2, BV32_ADD(v38$2, BV32_LSHR(BV32_LSHR(v38$2, BV32_AND((if BV32_ULT(v40$2, 24bv32) then v40$2 else 24bv32), 31bv32)), 8bv32)), $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, BV32_LSHR(BV32_LSHR(v38$2, BV32_AND((if BV32_ULT(v40$2, 24bv32) then v40$2 else 24bv32), 31bv32)), 8bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v43$1 := (if p5$1 then $$splitSort.flags[1bv1][BV32_ADD(v38$1, BV32_LSHR(BV32_LSHR(v38$1, BV32_AND((if BV32_ULT(v40$1, 24bv32) then v40$1 else 24bv32), 31bv32)), 8bv32))] else v43$1);
    v43$2 := (if p5$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v38$2, BV32_LSHR(BV32_LSHR(v38$2, BV32_AND((if BV32_ULT(v40$2, 24bv32) then v40$2 else 24bv32), 31bv32)), 8bv32))] else v43$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$splitSort.flags(p5$1, v42$1, $$splitSort.flags[1bv1][v42$1]);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$splitSort.flags(p5$2, v42$2, $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v42$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$splitSort.flags"} true;
    v44$1 := (if p5$1 then $$splitSort.flags[1bv1][v42$1] else v44$1);
    v44$2 := (if p5$2 then $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v42$2] else v44$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$splitSort.flags(p5$1, v42$1, BV32_ADD(v44$1, v43$1), $$splitSort.flags[1bv1][v42$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(p5$2, v42$2);
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$splitSort.flags(p5$2, v42$2, BV32_ADD(v44$2, v43$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$splitSort.flags"} true;
    $$splitSort.flags[1bv1][v42$1] := (if p5$1 then BV32_ADD(v44$1, v43$1) else $$splitSort.flags[1bv1][v42$1]);
    $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v42$2] := (if p5$2 then BV32_ADD(v44$2, v43$2) else $$splitSort.flags[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v42$2]);
    $d.i.0, $stride.i.0 := BV32_LSHR($d.i.0, 1bv32), BV32_MUL($stride.i.0, 2bv32);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.i;
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
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$splitSort.flags, $$keys, $$values, $$histo, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

var {:atomic_usedmap} _USED_$$splitSort.histo_s: [bv32][bv32]bool;

const _WATCHED_VALUE_$$keys: bv32;

procedure {:inline 1} _LOG_READ_$$keys(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$keys;



implementation {:inline 1} _LOG_READ_$$keys(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then true else _READ_HAS_OCCURRED_$$keys);
    return;
}



procedure _CHECK_READ_$$keys(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keys);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keys: bool;

procedure {:inline 1} _LOG_WRITE_$$keys(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$keys, _WRITE_READ_BENIGN_FLAG_$$keys;



implementation {:inline 1} _LOG_WRITE_$$keys(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then true else _WRITE_HAS_OCCURRED_$$keys);
    _WRITE_READ_BENIGN_FLAG_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keys);
    return;
}



procedure _CHECK_WRITE_$$keys(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys != _value);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys != _value);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keys(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$keys;



implementation {:inline 1} _LOG_ATOMIC_$$keys(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keys);
    return;
}



procedure _CHECK_ATOMIC_$$keys(_P: bool, _offset: bv32);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$keys;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keys := (if _P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keys);
    return;
}



const _WATCHED_VALUE_$$values: bv32;

procedure {:inline 1} _LOG_READ_$$values(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_READ_$$values(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _READ_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_READ_$$values(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$values);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$values: bool;

procedure {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _WRITE_HAS_OCCURRED_$$values);
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$values);
    return;
}



procedure _CHECK_WRITE_$$values(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_ATOMIC_$$values(_P: bool, _offset: bv32);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$values);
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



const _WATCHED_VALUE_$$splitSort.histo_s: bv32;

procedure {:inline 1} _LOG_READ_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$splitSort.histo_s;



implementation {:inline 1} _LOG_READ_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$splitSort.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.histo_s == _value then true else _READ_HAS_OCCURRED_$$splitSort.histo_s);
    return;
}



procedure _CHECK_READ_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s: bool;

procedure {:inline 1} _LOG_WRITE_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$splitSort.histo_s, _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s;



implementation {:inline 1} _LOG_WRITE_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$splitSort.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.histo_s == _value then true else _WRITE_HAS_OCCURRED_$$splitSort.histo_s);
    _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.histo_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s);
    return;
}



procedure _CHECK_WRITE_$$splitSort.histo_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.histo_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.histo_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$splitSort.histo_s(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;



implementation {:inline 1} _LOG_ATOMIC_$$splitSort.histo_s(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$splitSort.histo_s);
    return;
}



procedure _CHECK_ATOMIC_$$splitSort.histo_s(_P: bool, _offset: bv32);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "histo_s"} {:array "$$splitSort.histo_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s := (if _P && _WRITE_HAS_OCCURRED_$$splitSort.histo_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$splitSort.histo_s);
    return;
}



const _WATCHED_VALUE_$$splitSort.flags: bv32;

procedure {:inline 1} _LOG_READ_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$splitSort.flags;



implementation {:inline 1} _LOG_READ_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$splitSort.flags := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.flags == _value then true else _READ_HAS_OCCURRED_$$splitSort.flags);
    return;
}



procedure _CHECK_READ_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$splitSort.flags && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$splitSort.flags: bool;

procedure {:inline 1} _LOG_WRITE_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$splitSort.flags, _WRITE_READ_BENIGN_FLAG_$$splitSort.flags;



implementation {:inline 1} _LOG_WRITE_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$splitSort.flags := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.flags == _value then true else _WRITE_HAS_OCCURRED_$$splitSort.flags);
    _WRITE_READ_BENIGN_FLAG_$$splitSort.flags := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.flags == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$splitSort.flags);
    return;
}



procedure _CHECK_WRITE_$$splitSort.flags(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.flags != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$splitSort.flags != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$splitSort.flags(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$splitSort.flags;



implementation {:inline 1} _LOG_ATOMIC_$$splitSort.flags(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$splitSort.flags := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$splitSort.flags);
    return;
}



procedure _CHECK_ATOMIC_$$splitSort.flags(_P: bool, _offset: bv32);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "flags"} {:array "$$splitSort.flags"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$splitSort.flags;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$splitSort.flags(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$splitSort.flags := (if _P && _WRITE_HAS_OCCURRED_$$splitSort.flags && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$splitSort.flags);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.histo_s;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.histo_s;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$splitSort.flags;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$splitSort.flags;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$keys;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$keys;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$histo;
    goto anon7;

  anon7:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$keys;
    goto anon9;

  anon9:
    havoc $$values;
    goto anon10;

  anon10:
    havoc $$histo;
    goto anon11;

  anon13_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$splitSort.flags;
    goto anon4;

  anon12_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

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

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

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
