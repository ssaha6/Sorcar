type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "p"} {:global} $$p: [bv32]bv8;

axiom {:array_info "$$p"} {:global} {:elem_width 8} {:source_name "p"} {:source_elem_width 192} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "coord_d"} {:global} $$coord_d: [bv32]bv32;

axiom {:array_info "$$coord_d"} {:global} {:elem_width 32} {:source_name "coord_d"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$coord_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$coord_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$coord_d: bool;

var {:source_name "work_mem_d"} {:global} $$work_mem_d: [bv32]bv32;

axiom {:array_info "$$work_mem_d"} {:global} {:elem_width 32} {:source_name "work_mem_d"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$work_mem_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$work_mem_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$work_mem_d: bool;

axiom {:array_info "$$center_table_d"} {:global} {:elem_width 32} {:source_name "center_table_d"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$center_table_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$center_table_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$center_table_d: bool;

var {:source_name "switch_membership_d"} {:global} $$switch_membership_d: [bv32]bv8;

axiom {:array_info "$$switch_membership_d"} {:global} {:elem_width 8} {:source_name "switch_membership_d"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$switch_membership_d: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$switch_membership_d: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$switch_membership_d: bool;

var {:source_name "coord_s"} {:group_shared} $$coord_s: [bv1][bv32]bv32;

axiom {:array_info "$$coord_s"} {:group_shared} {:elem_width 32} {:source_name "coord_s"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$coord_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$coord_s: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$coord_s: bool;

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

function FLT32(bv32, bv32) : bool;

function FMUL32(bv32, bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

procedure {:source_name "pgain_kernel"} {:kernel} $pgain_kernel($num: bv32, $dim: bv32, $x: bv64, $K: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $num == 65536bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $dim == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $x == 64563bv64 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $K == 1bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$coord_d && !_WRITE_HAS_OCCURRED_$$coord_d && !_ATOMIC_HAS_OCCURRED_$$coord_d;
  requires !_READ_HAS_OCCURRED_$$work_mem_d && !_WRITE_HAS_OCCURRED_$$work_mem_d && !_ATOMIC_HAS_OCCURRED_$$work_mem_d;
  requires !_READ_HAS_OCCURRED_$$center_table_d && !_WRITE_HAS_OCCURRED_$$center_table_d && !_ATOMIC_HAS_OCCURRED_$$center_table_d;
  requires !_READ_HAS_OCCURRED_$$switch_membership_d && !_WRITE_HAS_OCCURRED_$$switch_membership_d && !_ATOMIC_HAS_OCCURRED_$$switch_membership_d;
  requires !_READ_HAS_OCCURRED_$$coord_s && !_WRITE_HAS_OCCURRED_$$coord_s && !_ATOMIC_HAS_OCCURRED_$$coord_s;
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
  modifies $$coord_s, _WRITE_HAS_OCCURRED_$$coord_s, _WRITE_READ_BENIGN_FLAG_$$coord_s, _WRITE_READ_BENIGN_FLAG_$$coord_s, $$work_mem_d, $$switch_membership_d, _TRACKING, _READ_HAS_OCCURRED_$$coord_s, _WRITE_HAS_OCCURRED_$$switch_membership_d, _WRITE_READ_BENIGN_FLAG_$$switch_membership_d, _WRITE_READ_BENIGN_FLAG_$$switch_membership_d, _WRITE_HAS_OCCURRED_$$work_mem_d, _WRITE_READ_BENIGN_FLAG_$$work_mem_d, _WRITE_READ_BENIGN_FLAG_$$work_mem_d, _READ_HAS_OCCURRED_$$work_mem_d;



implementation {:source_name "pgain_kernel"} {:kernel} $pgain_kernel($num: bv32, $dim: bv32, $x: bv64, $K: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $x_cost.0$1: bv32;
  var $x_cost.0$2: bv32;
  var $i10.0$1: bv32;
  var $i10.0$2: bv32;
  var v13$1: bv8;
  var v13$2: bv8;
  var v10$1: bv8;
  var v10$2: bv8;
  var v9$1: bv32;
  var v9$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v17$1: bv8;
  var v17$2: bv8;
  var v22$1: bv8;
  var v22$2: bv8;
  var v23$1: bv8;
  var v23$2: bv8;
  var v16$1: bv8;
  var v16$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v15$1: bv8;
  var v15$2: bv8;
  var v2$1: bool;
  var v2$2: bool;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v31$1: bv32;
  var v31$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v21$1: bool;
  var v21$2: bool;
  var v14$1: bv32;
  var v14$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v30$1: bv32;
  var v30$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v25$1: bv8;
  var v25$2: bv8;
  var v28$1: bv8;
  var v28$2: bv8;
  var v29$1: bv8;
  var v29$2: bv8;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _WRITE_HAS_OCCURRED_$$coord_s$ghost$$for.cond: bool;
  var _READ_HAS_OCCURRED_$$coord_s$ghost$$for.cond.11: bool;


  $entry:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $num);
    v1$2 := BV32_SLT(v0$2, $num);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p9$1 := false;
    p9$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    v2$1 := (if p0$1 then local_id_x$1 == 0bv32 else v2$1);
    v2$2 := (if p0$2 then local_id_x$2 == 0bv32 else v2$2);
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    $i.0$1 := (if p1$1 then 0bv32 else $i.0$1);
    $i.0$2 := (if p1$2 then 0bv32 else $i.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$coord_s$ghost$$for.cond := _WRITE_HAS_OCCURRED_$$coord_s;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b17 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$coord_s$ghost$$for.cond == _WRITE_HAS_OCCURRED_$$coord_s;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$coord_s ==> local_id_x$1 == 0bv32;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _WRITE_HAS_OCCURRED_$$coord_s ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b14 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num) && local_id_x$1 == 0bv32 && BV32_SLT($i.0$1, $dim) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b14 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $num) && local_id_x$2 == 0bv32 && BV32_SLT($i.0$2, $dim) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b13 ==> p2$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num) && local_id_x$1 == 0bv32;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b13 ==> p2$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $num) && local_id_x$2 == 0bv32;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b12 ==> BV32_UGE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b12 ==> BV32_UGE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b11 ==> BV32_ULE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b11 ==> BV32_ULE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b10 ==> BV32_SGE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b10 ==> BV32_SGE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b9 ==> BV32_SLE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b9 ==> BV32_SLE($i.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b8 ==> BV32_SLE(0bv32, $i.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b8 ==> BV32_SLE(0bv32, $i.0$2);
    assert {:block_sourceloc} {:sourceloc_num 7} p2$1 ==> true;
    v3$1 := (if p2$1 then BV32_SLT($i.0$1, $dim) else v3$1);
    v3$2 := (if p2$2 then BV32_SLT($i.0$2, $dim) else v3$2);
    p3$1 := false;
    p3$2 := false;
    p3$1 := (if p2$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p2$2 && v3$2 then v3$2 else p3$2);
    p2$1 := (if p2$1 && !v3$1 then v3$1 else p2$1);
    p2$2 := (if p2$2 && !v3$2 then v3$2 else p2$2);
    v4$1 := (if p3$1 then $$coord_d[BV64_ADD(BV32_SEXT64(BV32_MUL($i.0$1, $num)), $x)[32:0]] else v4$1);
    v4$2 := (if p3$2 then $$coord_d[BV64_ADD(BV32_SEXT64(BV32_MUL($i.0$2, $num)), $x)[32:0]] else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$coord_s(p3$1, $i.0$1, v4$1, $$coord_s[1bv1][$i.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$coord_s(p3$2, $i.0$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$coord_s(p3$2, $i.0$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$coord_s"} true;
    $$coord_s[1bv1][$i.0$1] := (if p3$1 then v4$1 else $$coord_s[1bv1][$i.0$1]);
    $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2] := (if p3$2 then v4$2 else $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i.0$2]);
    $i.0$1 := (if p3$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1);
    $i.0$2 := (if p3$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $for.cond.backedge, __partitioned_block_$for.cond.tail_0;

  __partitioned_block_$for.cond.tail_0:
    assume !p2$1 && !p2$2;
    goto __partitioned_block_$for.cond.tail_1;

  __partitioned_block_$for.cond.tail_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(1bv1, 0bv1, p0$1, p0$2);
    $x_cost.0$1, $i10.0$1 := (if p0$1 then 0bv32 else $x_cost.0$1), (if p0$1 then 0bv32 else $i10.0$1);
    $x_cost.0$2, $i10.0$2 := (if p0$2 then 0bv32 else $x_cost.0$2), (if p0$2 then 0bv32 else $i10.0$2);
    p5$1 := (if p0$1 then true else p5$1);
    p5$2 := (if p0$2 then true else p5$2);
    _READ_HAS_OCCURRED_$$coord_s$ghost$$for.cond.11 := _READ_HAS_OCCURRED_$$coord_s;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond.11;

  $for.cond.11:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b18 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$coord_s$ghost$$for.cond.11 == _READ_HAS_OCCURRED_$$coord_s;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$coord_s ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p5"} {:dominator_predicate "p0"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$coord_s ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num) && BV32_SLT($i10.0$1, $dim) ==> p5$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $num) && BV32_SLT($i10.0$2, $dim) ==> p5$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p5$1 ==> _b5 ==> p5$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $num);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p5$2 ==> _b5 ==> p5$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $num);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b4 ==> BV32_UGE($i10.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b4 ==> BV32_UGE($i10.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b3 ==> BV32_ULE($i10.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b3 ==> BV32_ULE($i10.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b2 ==> BV32_SGE($i10.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b2 ==> BV32_SGE($i10.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b1 ==> BV32_SLE($i10.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b1 ==> BV32_SLE($i10.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p5$1 ==> _b0 ==> BV32_SLE(0bv32, $i10.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p5$2 ==> _b0 ==> BV32_SLE(0bv32, $i10.0$2);
    assert {:block_sourceloc} {:sourceloc_num 15} p5$1 ==> true;
    v5$1 := (if p5$1 then BV32_SLT($i10.0$1, $dim) else v5$1);
    v5$2 := (if p5$2 then BV32_SLT($i10.0$2, $dim) else v5$2);
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p6$1 := (if p5$1 && v5$1 then v5$1 else p6$1);
    p6$2 := (if p5$2 && v5$2 then v5$2 else p6$2);
    p5$1 := (if p5$1 && !v5$1 then v5$1 else p5$1);
    p5$2 := (if p5$2 && !v5$2 then v5$2 else p5$2);
    v6$1 := (if p6$1 then $$coord_d[BV32_ADD(BV32_MUL($i10.0$1, $num), v0$1)] else v6$1);
    v6$2 := (if p6$2 then $$coord_d[BV32_ADD(BV32_MUL($i10.0$2, $num), v0$2)] else v6$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$coord_s(p6$1, $i10.0$1, $$coord_s[1bv1][$i10.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$coord_s(p6$2, $i10.0$2, $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i10.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$coord_s"} true;
    v7$1 := (if p6$1 then $$coord_s[1bv1][$i10.0$1] else v7$1);
    v7$2 := (if p6$2 then $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i10.0$2] else v7$2);
    v8$1 := (if p6$1 then $$coord_d[BV32_ADD(BV32_MUL($i10.0$1, $num), v0$1)] else v8$1);
    v8$2 := (if p6$2 then $$coord_d[BV32_ADD(BV32_MUL($i10.0$2, $num), v0$2)] else v8$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$coord_s(p6$1, $i10.0$1, $$coord_s[1bv1][$i10.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$coord_s(p6$2, $i10.0$2, $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i10.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$coord_s"} true;
    v9$1 := (if p6$1 then $$coord_s[1bv1][$i10.0$1] else v9$1);
    v9$2 := (if p6$2 then $$coord_s[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$i10.0$2] else v9$2);
    $x_cost.0$1, $i10.0$1 := (if p6$1 then FADD32($x_cost.0$1, FMUL32(FSUB32(v6$1, v7$1), FSUB32(v8$1, v9$1))) else $x_cost.0$1), (if p6$1 then BV32_ADD($i10.0$1, 1bv32) else $i10.0$1);
    $x_cost.0$2, $i10.0$2 := (if p6$2 then FADD32($x_cost.0$2, FMUL32(FSUB32(v6$2, v7$2), FSUB32(v8$2, v9$2))) else $x_cost.0$2), (if p6$2 then BV32_ADD($i10.0$2, 1bv32) else $i10.0$2);
    p5$1 := (if p6$1 then true else p5$1);
    p5$2 := (if p6$2 then true else p5$2);
    goto $for.cond.11.backedge, $for.cond.11.tail;

  $for.cond.11.tail:
    assume !p5$1 && !p5$2;
    v10$1 := (if p0$1 then $$p[BV32_MUL(v0$1, 24bv32)] else v10$1);
    v10$2 := (if p0$2 then $$p[BV32_MUL(v0$2, 24bv32)] else v10$2);
    v11$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 1bv32)] else v11$1);
    v11$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 1bv32)] else v11$2);
    v12$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 2bv32)] else v12$1);
    v12$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 2bv32)] else v12$2);
    v13$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 3bv32)] else v13$1);
    v13$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 3bv32)] else v13$2);
    v14$1 := (if p0$1 then FMUL32($x_cost.0$1, v13$1 ++ v12$1 ++ v11$1 ++ v10$1) else v14$1);
    v14$2 := (if p0$2 then FMUL32($x_cost.0$2, v13$2 ++ v12$2 ++ v11$2 ++ v10$2) else v14$2);
    v15$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 16bv32)] else v15$1);
    v15$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 16bv32)] else v15$2);
    v16$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 17bv32)] else v16$1);
    v16$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 17bv32)] else v16$2);
    v17$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 18bv32)] else v17$1);
    v17$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 18bv32)] else v17$2);
    v18$1 := (if p0$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 19bv32)] else v18$1);
    v18$2 := (if p0$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 19bv32)] else v18$2);
    v19$1 := (if p0$1 then v18$1 ++ v17$1 ++ v16$1 ++ v15$1 else v19$1);
    v19$2 := (if p0$2 then v18$2 ++ v17$2 ++ v16$2 ++ v15$2 else v19$2);
    v20$1 := (if p0$1 then BV32_MUL(v0$1, BV32_ADD($K, 1bv32)) else v20$1);
    v20$2 := (if p0$2 then BV32_MUL(v0$2, BV32_ADD($K, 1bv32)) else v20$2);
    v21$1 := (if p0$1 then FLT32(v14$1, v19$1) else v21$1);
    v21$2 := (if p0$2 then FLT32(v14$2, v19$2) else v21$2);
    p7$1 := (if p0$1 && v21$1 then v21$1 else p7$1);
    p7$2 := (if p0$2 && v21$2 then v21$2 else p7$2);
    p8$1 := (if p0$1 && !v21$1 then !v21$1 else p8$1);
    p8$2 := (if p0$2 && !v21$2 then !v21$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$switch_membership_d(p7$1, v0$1, 49bv8, $$switch_membership_d[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$switch_membership_d(p7$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$switch_membership_d(p7$2, v0$2, 49bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$switch_membership_d"} true;
    $$switch_membership_d[v0$1] := (if p7$1 then 49bv8 else $$switch_membership_d[v0$1]);
    $$switch_membership_d[v0$2] := (if p7$2 then 49bv8 else $$switch_membership_d[v0$2]);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$work_mem_d(p7$1, BV32_ADD(v20$1, $K), FSUB32(v14$1, v19$1), $$work_mem_d[BV32_ADD(v20$1, $K)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$work_mem_d(p7$2, BV32_ADD(v20$2, $K));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$work_mem_d(p7$2, BV32_ADD(v20$2, $K), FSUB32(v14$2, v19$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$work_mem_d"} true;
    $$work_mem_d[BV32_ADD(v20$1, $K)] := (if p7$1 then FSUB32(v14$1, v19$1) else $$work_mem_d[BV32_ADD(v20$1, $K)]);
    $$work_mem_d[BV32_ADD(v20$2, $K)] := (if p7$2 then FSUB32(v14$2, v19$2) else $$work_mem_d[BV32_ADD(v20$2, $K)]);
    v22$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 8bv32)] else v22$1);
    v22$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 8bv32)] else v22$2);
    v23$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 9bv32)] else v23$1);
    v23$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 9bv32)] else v23$2);
    v24$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 10bv32)] else v24$1);
    v24$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 10bv32)] else v24$2);
    v25$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 11bv32)] else v25$1);
    v25$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 11bv32)] else v25$2);
    v26$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 12bv32)] else v26$1);
    v26$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 12bv32)] else v26$2);
    v27$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 13bv32)] else v27$1);
    v27$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 13bv32)] else v27$2);
    v28$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 14bv32)] else v28$1);
    v28$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 14bv32)] else v28$2);
    v29$1 := (if p8$1 then $$p[BV32_ADD(BV32_MUL(v0$1, 24bv32), 15bv32)] else v29$1);
    v29$2 := (if p8$2 then $$p[BV32_ADD(BV32_MUL(v0$2, 24bv32), 15bv32)] else v29$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v30$1 := (if p8$1 then _HAVOC_bv32$1 else v30$1);
    v30$2 := (if p8$2 then _HAVOC_bv32$2 else v30$2);
    v31$1 := (if p8$1 then BV32_ADD(v20$1, v30$1) else v31$1);
    v31$2 := (if p8$2 then BV32_ADD(v20$2, v30$2) else v31$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$work_mem_d(p8$1, v31$1, $$work_mem_d[v31$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$work_mem_d(p8$2, v31$2, $$work_mem_d[v31$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$work_mem_d"} true;
    v32$1 := (if p8$1 then $$work_mem_d[v31$1] else v32$1);
    v32$2 := (if p8$2 then $$work_mem_d[v31$2] else v32$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$work_mem_d(p8$1, v31$1, FADD32(v32$1, FSUB32(v19$1, v14$1)), $$work_mem_d[v31$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$work_mem_d(p8$2, v31$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$work_mem_d(p8$2, v31$2, FADD32(v32$2, FSUB32(v19$2, v14$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$work_mem_d"} true;
    $$work_mem_d[v31$1] := (if p8$1 then FADD32(v32$1, FSUB32(v19$1, v14$1)) else $$work_mem_d[v31$1]);
    $$work_mem_d[v31$2] := (if p8$2 then FADD32(v32$2, FSUB32(v19$2, v14$2)) else $$work_mem_d[v31$2]);
    return;

  $for.cond.11.backedge:
    assume {:backedge} p5$1 || p5$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond.11;

  $for.cond.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

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

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$coord_s, $$work_mem_d, $$switch_membership_d, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

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

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const _WATCHED_VALUE_$$p: bv8;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: bv32, _value: bv8);
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



const _WATCHED_VALUE_$$coord_d: bv32;

procedure {:inline 1} _LOG_READ_$$coord_d(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$coord_d;



implementation {:inline 1} _LOG_READ_$$coord_d(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$coord_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_d == _value then true else _READ_HAS_OCCURRED_$$coord_d);
    return;
}



procedure _CHECK_READ_$$coord_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$coord_d);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$coord_d: bool;

procedure {:inline 1} _LOG_WRITE_$$coord_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$coord_d, _WRITE_READ_BENIGN_FLAG_$$coord_d;



implementation {:inline 1} _LOG_WRITE_$$coord_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$coord_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_d == _value then true else _WRITE_HAS_OCCURRED_$$coord_d);
    _WRITE_READ_BENIGN_FLAG_$$coord_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$coord_d);
    return;
}



procedure _CHECK_WRITE_$$coord_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_d != _value);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_d != _value);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$coord_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$coord_d;



implementation {:inline 1} _LOG_ATOMIC_$$coord_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$coord_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$coord_d);
    return;
}



procedure _CHECK_ATOMIC_$$coord_d(_P: bool, _offset: bv32);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "coord_d"} {:array "$$coord_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$coord_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$coord_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$coord_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$coord_d := (if _P && _WRITE_HAS_OCCURRED_$$coord_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$coord_d);
    return;
}



const _WATCHED_VALUE_$$work_mem_d: bv32;

procedure {:inline 1} _LOG_READ_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$work_mem_d;



implementation {:inline 1} _LOG_READ_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$work_mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work_mem_d == _value then true else _READ_HAS_OCCURRED_$$work_mem_d);
    return;
}



procedure _CHECK_READ_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$work_mem_d);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$work_mem_d: bool;

procedure {:inline 1} _LOG_WRITE_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$work_mem_d, _WRITE_READ_BENIGN_FLAG_$$work_mem_d;



implementation {:inline 1} _LOG_WRITE_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$work_mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work_mem_d == _value then true else _WRITE_HAS_OCCURRED_$$work_mem_d);
    _WRITE_READ_BENIGN_FLAG_$$work_mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work_mem_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$work_mem_d);
    return;
}



procedure _CHECK_WRITE_$$work_mem_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work_mem_d != _value);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work_mem_d != _value);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$work_mem_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$work_mem_d;



implementation {:inline 1} _LOG_ATOMIC_$$work_mem_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$work_mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$work_mem_d);
    return;
}



procedure _CHECK_ATOMIC_$$work_mem_d(_P: bool, _offset: bv32);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "work_mem_d"} {:array "$$work_mem_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$work_mem_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$work_mem_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$work_mem_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$work_mem_d := (if _P && _WRITE_HAS_OCCURRED_$$work_mem_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$work_mem_d);
    return;
}



const _WATCHED_VALUE_$$center_table_d: bv32;

procedure {:inline 1} _LOG_READ_$$center_table_d(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$center_table_d;



implementation {:inline 1} _LOG_READ_$$center_table_d(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$center_table_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$center_table_d == _value then true else _READ_HAS_OCCURRED_$$center_table_d);
    return;
}



procedure _CHECK_READ_$$center_table_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$center_table_d);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$center_table_d: bool;

procedure {:inline 1} _LOG_WRITE_$$center_table_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$center_table_d, _WRITE_READ_BENIGN_FLAG_$$center_table_d;



implementation {:inline 1} _LOG_WRITE_$$center_table_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$center_table_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$center_table_d == _value then true else _WRITE_HAS_OCCURRED_$$center_table_d);
    _WRITE_READ_BENIGN_FLAG_$$center_table_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$center_table_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$center_table_d);
    return;
}



procedure _CHECK_WRITE_$$center_table_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$center_table_d != _value);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$center_table_d != _value);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$center_table_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$center_table_d;



implementation {:inline 1} _LOG_ATOMIC_$$center_table_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$center_table_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$center_table_d);
    return;
}



procedure _CHECK_ATOMIC_$$center_table_d(_P: bool, _offset: bv32);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "center_table_d"} {:array "$$center_table_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$center_table_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$center_table_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$center_table_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$center_table_d := (if _P && _WRITE_HAS_OCCURRED_$$center_table_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$center_table_d);
    return;
}



const _WATCHED_VALUE_$$switch_membership_d: bv8;

procedure {:inline 1} _LOG_READ_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$switch_membership_d;



implementation {:inline 1} _LOG_READ_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$switch_membership_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$switch_membership_d == _value then true else _READ_HAS_OCCURRED_$$switch_membership_d);
    return;
}



procedure _CHECK_READ_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$switch_membership_d);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$switch_membership_d: bool;

procedure {:inline 1} _LOG_WRITE_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$switch_membership_d, _WRITE_READ_BENIGN_FLAG_$$switch_membership_d;



implementation {:inline 1} _LOG_WRITE_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$switch_membership_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$switch_membership_d == _value then true else _WRITE_HAS_OCCURRED_$$switch_membership_d);
    _WRITE_READ_BENIGN_FLAG_$$switch_membership_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$switch_membership_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$switch_membership_d);
    return;
}



procedure _CHECK_WRITE_$$switch_membership_d(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$switch_membership_d != _value);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$switch_membership_d != _value);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$switch_membership_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$switch_membership_d;



implementation {:inline 1} _LOG_ATOMIC_$$switch_membership_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$switch_membership_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$switch_membership_d);
    return;
}



procedure _CHECK_ATOMIC_$$switch_membership_d(_P: bool, _offset: bv32);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "switch_membership_d"} {:array "$$switch_membership_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$switch_membership_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$switch_membership_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$switch_membership_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$switch_membership_d := (if _P && _WRITE_HAS_OCCURRED_$$switch_membership_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$switch_membership_d);
    return;
}



const _WATCHED_VALUE_$$coord_s: bv32;

procedure {:inline 1} _LOG_READ_$$coord_s(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$coord_s;



implementation {:inline 1} _LOG_READ_$$coord_s(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$coord_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_s == _value then true else _READ_HAS_OCCURRED_$$coord_s);
    return;
}



procedure _CHECK_READ_$$coord_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$coord_s && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$coord_s: bool;

procedure {:inline 1} _LOG_WRITE_$$coord_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$coord_s, _WRITE_READ_BENIGN_FLAG_$$coord_s;



implementation {:inline 1} _LOG_WRITE_$$coord_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$coord_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_s == _value then true else _WRITE_HAS_OCCURRED_$$coord_s);
    _WRITE_READ_BENIGN_FLAG_$$coord_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$coord_s);
    return;
}



procedure _CHECK_WRITE_$$coord_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$coord_s != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$coord_s(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$coord_s;



implementation {:inline 1} _LOG_ATOMIC_$$coord_s(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$coord_s := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$coord_s);
    return;
}



procedure _CHECK_ATOMIC_$$coord_s(_P: bool, _offset: bv32);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "coord_s"} {:array "$$coord_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$coord_s(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$coord_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$coord_s(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$coord_s := (if _P && _WRITE_HAS_OCCURRED_$$coord_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$coord_s);
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$coord_s;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$coord_s;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$coord_s;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$work_mem_d;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$work_mem_d;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$work_mem_d;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$switch_membership_d;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$switch_membership_d;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$switch_membership_d;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$work_mem_d;
    goto anon7;

  anon7:
    havoc $$switch_membership_d;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$coord_s;
    goto anon3;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;
