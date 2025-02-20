type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "knodesD"} {:global} $$knodesD: [bv32]bv8;

axiom {:array_info "$$knodesD"} {:global} {:elem_width 8} {:source_name "knodesD"} {:source_elem_width 16544} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$knodesD: bool;

axiom {:array_info "$$recordsD"} {:global} {:elem_width 32} {:source_name "recordsD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$recordsD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$recordsD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$recordsD: bool;

var {:source_name "currKnodeD"} {:global} $$currKnodeD: [bv32]bv64;

axiom {:array_info "$$currKnodeD"} {:global} {:elem_width 64} {:source_name "currKnodeD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$currKnodeD: bool;

var {:source_name "offsetD"} {:global} $$offsetD: [bv32]bv64;

axiom {:array_info "$$offsetD"} {:global} {:elem_width 64} {:source_name "offsetD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$offsetD: bool;

var {:source_name "keysD"} {:global} $$keysD: [bv32]bv32;

axiom {:array_info "$$keysD"} {:global} {:elem_width 32} {:source_name "keysD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keysD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keysD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keysD: bool;

var {:source_name "ansD"} {:global} $$ansD: [bv32]bv32;

axiom {:array_info "$$ansD"} {:global} {:elem_width 32} {:source_name "ansD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ansD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ansD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ansD: bool;

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

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

procedure {:source_name "findK"} {:kernel} $findK($height: bv64, $knodes_elem: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $height == 2bv64 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $knodes_elem == 7874bv64 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$knodesD && !_WRITE_HAS_OCCURRED_$$knodesD && !_ATOMIC_HAS_OCCURRED_$$knodesD;
  requires !_READ_HAS_OCCURRED_$$recordsD && !_WRITE_HAS_OCCURRED_$$recordsD && !_ATOMIC_HAS_OCCURRED_$$recordsD;
  requires !_READ_HAS_OCCURRED_$$currKnodeD && !_WRITE_HAS_OCCURRED_$$currKnodeD && !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
  requires !_READ_HAS_OCCURRED_$$offsetD && !_WRITE_HAS_OCCURRED_$$offsetD && !_ATOMIC_HAS_OCCURRED_$$offsetD;
  requires !_READ_HAS_OCCURRED_$$keysD && !_WRITE_HAS_OCCURRED_$$keysD && !_ATOMIC_HAS_OCCURRED_$$keysD;
  requires !_READ_HAS_OCCURRED_$$ansD && !_WRITE_HAS_OCCURRED_$$ansD && !_ATOMIC_HAS_OCCURRED_$$ansD;
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
  modifies _READ_HAS_OCCURRED_$$currKnodeD, _WRITE_HAS_OCCURRED_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD, _READ_HAS_OCCURRED_$$offsetD, _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, $$currKnodeD, $$offsetD, $$ansD, _TRACKING, _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _TRACKING;



implementation {:source_name "findK"} {:kernel} $findK($height: bv64, $knodes_elem: bv64)
{
  var $i.0: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2: bool;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv8;
  var v4$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv64;
  var v10$2: bv64;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bv8;
  var v13$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bv64;
  var v17$2: bv64;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bv64;
  var v23$2: bv64;
  var v24$1: bv8;
  var v24$2: bv8;
  var v25$1: bv8;
  var v25$2: bv8;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bv64;
  var v29$2: bv64;
  var v30$1: bv64;
  var v30$2: bv64;
  var v31$1: bv8;
  var v31$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v33$1: bv8;
  var v33$2: bv8;
  var v34$1: bv8;
  var v34$2: bv8;
  var v35$1: bv32;
  var v35$2: bv32;
  var v36$1: bool;
  var v36$2: bool;
  var v37$1: bv64;
  var v37$2: bv64;
  var v38$1: bv8;
  var v38$2: bv8;
  var v39$1: bv8;
  var v39$2: bv8;
  var v40$1: bv8;
  var v40$2: bv8;
  var v41$1: bv8;
  var v41$2: bv8;
  var v42$1: bv32;
  var v42$2: bv32;
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


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := group_id_x$1;
    v1$2 := group_id_x$2;
    $i.0 := 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b12 ==> _WRITE_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b11 ==> _READ_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1;
    assert {:tag "nowrite"} _b10 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assert {:tag "noread"} _b9 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _WRITE_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _READ_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1;
    assert {:tag "nowrite"} _b6 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assert {:tag "noread"} _b5 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $i.0);
    assert {:block_sourceloc} {:sourceloc_num 3} true;
    v2 := BV64_SLT(BV32_SEXT64($i.0), $height);
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
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v30$1 := $$currKnodeD[v1$1];
    v30$2 := $$currKnodeD[v1$2];
    v31$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v30$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v31$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v30$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v32$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v32$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v33$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v33$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v34$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v34$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v30$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v35$1 := $$keysD[v1$1];
    v35$2 := $$keysD[v1$2];
    v36$1 := v34$1 ++ v33$1 ++ v32$1 ++ v31$1 == v35$1;
    v36$2 := v34$2 ++ v33$2 ++ v32$2 ++ v31$2 == v35$2;
    p8$1 := (if v36$1 then v36$1 else p8$1);
    p8$2 := (if v36$2 then v36$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$currKnodeD(p8$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$currKnodeD(p8$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v37$1 := (if p8$1 then $$currKnodeD[v1$1] else v37$1);
    v37$2 := (if p8$2 then $$currKnodeD[v1$2] else v37$2);
    v38$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v37$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v38$1);
    v38$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v37$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v38$2);
    v39$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v39$1);
    v39$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v39$2);
    v40$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v40$1);
    v40$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v40$2);
    v41$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v41$1);
    v41$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v37$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v41$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v42$1 := (if p8$1 then _HAVOC_bv32$1 else v42$1);
    v42$2 := (if p8$2 then _HAVOC_bv32$2 else v42$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$ansD(p8$1, v1$1, v42$1, $$ansD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(p8$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$ansD(p8$2, v1$2, v42$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ansD"} true;
    $$ansD[v1$1] := (if p8$1 then v42$1 else $$ansD[v1$1]);
    $$ansD[v1$2] := (if p8$2 then v42$2 else $$ansD[v1$2]);
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v3$1 := $$currKnodeD[v1$1];
    v3$2 := $$currKnodeD[v1$2];
    v4$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v4$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v5$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v5$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v6$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v6$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v7$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v7$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v8$1 := $$keysD[v1$1];
    v8$2 := $$keysD[v1$2];
    v9$1 := BV32_SLE(v7$1 ++ v6$1 ++ v5$1 ++ v4$1, v8$1);
    v9$2 := BV32_SLE(v7$2 ++ v6$2 ++ v5$2 ++ v4$2, v8$2);
    p1$1 := (if v9$1 then v9$1 else p1$1);
    p1$2 := (if v9$2 then v9$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$currKnodeD(p1$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$currKnodeD(p1$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v10$1 := (if p1$1 then $$currKnodeD[v1$1] else v10$1);
    v10$2 := (if p1$2 then $$currKnodeD[v1$2] else v10$2);
    v11$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32))] else v11$1);
    v11$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32))] else v11$2);
    v12$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 1bv32)] else v12$1);
    v12$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 1bv32)] else v12$2);
    v13$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 2bv32)] else v13$1);
    v13$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 2bv32)] else v13$2);
    v14$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 3bv32)] else v14$1);
    v14$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 3bv32)] else v14$2);
    v15$1 := (if p1$1 then $$keysD[v1$1] else v15$1);
    v15$2 := (if p1$2 then $$keysD[v1$2] else v15$2);
    v16$1 := (if p1$1 then BV32_SGT(v14$1 ++ v13$1 ++ v12$1 ++ v11$1, v15$1) else v16$1);
    v16$2 := (if p1$2 then BV32_SGT(v14$2 ++ v13$2 ++ v12$2 ++ v11$2, v15$2) else v16$2);
    p3$1 := (if p1$1 && v16$1 then v16$1 else p3$1);
    p3$2 := (if p1$2 && v16$2 then v16$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$offsetD(p3$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$offsetD(p3$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v17$1 := (if p3$1 then $$offsetD[v1$1] else v17$1);
    v17$2 := (if p3$2 then $$offsetD[v1$2] else v17$2);
    v18$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v18$1);
    v18$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v18$2);
    v19$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v19$1);
    v19$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v19$2);
    v20$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v20$1);
    v20$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v20$2);
    v21$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v21$1);
    v21$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v21$2);
    v22$1 := (if p3$1 then BV64_SLT(BV32_SEXT64(v21$1 ++ v20$1 ++ v19$1 ++ v18$1), $knodes_elem) else v22$1);
    v22$2 := (if p3$2 then BV64_SLT(BV32_SEXT64(v21$2 ++ v20$2 ++ v19$2 ++ v18$2), $knodes_elem) else v22$2);
    p5$1 := (if p3$1 && v22$1 then v22$1 else p5$1);
    p5$2 := (if p3$2 && v22$2 then v22$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$offsetD(p5$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$offsetD(p5$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v23$1 := (if p5$1 then $$offsetD[v1$1] else v23$1);
    v23$2 := (if p5$2 then $$offsetD[v1$2] else v23$2);
    v24$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v24$1);
    v24$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v24$2);
    v25$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v25$1);
    v25$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v25$2);
    v26$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v26$1);
    v26$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v26$2);
    v27$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v27$1);
    v27$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v27$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$offsetD(p5$1, v1$1, BV32_SEXT64(v27$1 ++ v26$1 ++ v25$1 ++ v24$1), $$offsetD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(p5$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$offsetD(p5$2, v1$2, BV32_SEXT64(v27$2 ++ v26$2 ++ v25$2 ++ v24$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$offsetD"} true;
    $$offsetD[v1$1] := (if p5$1 then BV32_SEXT64(v27$1 ++ v26$1 ++ v25$1 ++ v24$1) else $$offsetD[v1$1]);
    $$offsetD[v1$2] := (if p5$2 then BV32_SEXT64(v27$2 ++ v26$2 ++ v25$2 ++ v24$2) else $$offsetD[v1$2]);
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    v28$1 := v0$1 == 0bv32;
    v28$2 := v0$2 == 0bv32;
    p7$1 := (if v28$1 then v28$1 else p7$1);
    p7$2 := (if v28$2 then v28$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$offsetD(p7$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$offsetD(p7$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v29$1 := (if p7$1 then $$offsetD[v1$1] else v29$1);
    v29$2 := (if p7$2 then $$offsetD[v1$2] else v29$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$currKnodeD(p7$1, v1$1, v29$1, $$currKnodeD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(p7$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$currKnodeD(p7$2, v1$2, v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$currKnodeD"} true;
    $$currKnodeD[v1$1] := (if p7$1 then v29$1 else $$currKnodeD[v1$1]);
    $$currKnodeD[v1$2] := (if p7$2 then v29$2 else $$currKnodeD[v1$2]);
    goto __partitioned_block_$truebb_2;

  __partitioned_block_$truebb_2:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    $i.0 := BV32_ADD($i.0, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 10000bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$currKnodeD, $$offsetD, $$ansD, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$currKnodeD, $$offsetD, $$ansD, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$knodesD: bv8;

procedure {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _READ_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$knodesD);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$knodesD: bool;

procedure {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$knodesD, _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _WRITE_HAS_OCCURRED_$$knodesD);
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



procedure _CHECK_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_ATOMIC_$$knodesD(_P: bool, _offset: bv32);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



const _WATCHED_VALUE_$$recordsD: bv32;

procedure {:inline 1} _LOG_READ_$$recordsD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$recordsD;



implementation {:inline 1} _LOG_READ_$$recordsD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then true else _READ_HAS_OCCURRED_$$recordsD);
    return;
}



procedure _CHECK_READ_$$recordsD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$recordsD);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$recordsD: bool;

procedure {:inline 1} _LOG_WRITE_$$recordsD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$recordsD, _WRITE_READ_BENIGN_FLAG_$$recordsD;



implementation {:inline 1} _LOG_WRITE_$$recordsD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then true else _WRITE_HAS_OCCURRED_$$recordsD);
    _WRITE_READ_BENIGN_FLAG_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$recordsD);
    return;
}



procedure _CHECK_WRITE_$$recordsD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD != _value);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD != _value);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$recordsD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$recordsD;



implementation {:inline 1} _LOG_ATOMIC_$$recordsD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$recordsD);
    return;
}



procedure _CHECK_ATOMIC_$$recordsD(_P: bool, _offset: bv32);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$recordsD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$recordsD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$recordsD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$recordsD := (if _P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$recordsD);
    return;
}



const _WATCHED_VALUE_$$currKnodeD: bv64;

procedure {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _READ_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$currKnodeD: bool;

procedure {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _WRITE_HAS_OCCURRED_$$currKnodeD);
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



procedure _CHECK_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



const _WATCHED_VALUE_$$offsetD: bv64;

procedure {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _READ_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$offsetD);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$offsetD: bool;

procedure {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _WRITE_HAS_OCCURRED_$$offsetD);
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



procedure _CHECK_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_ATOMIC_$$offsetD(_P: bool, _offset: bv32);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



const _WATCHED_VALUE_$$keysD: bv32;

procedure {:inline 1} _LOG_READ_$$keysD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$keysD;



implementation {:inline 1} _LOG_READ_$$keysD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then true else _READ_HAS_OCCURRED_$$keysD);
    return;
}



procedure _CHECK_READ_$$keysD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keysD);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keysD: bool;

procedure {:inline 1} _LOG_WRITE_$$keysD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$keysD, _WRITE_READ_BENIGN_FLAG_$$keysD;



implementation {:inline 1} _LOG_WRITE_$$keysD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then true else _WRITE_HAS_OCCURRED_$$keysD);
    _WRITE_READ_BENIGN_FLAG_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keysD);
    return;
}



procedure _CHECK_WRITE_$$keysD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD != _value);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD != _value);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keysD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$keysD;



implementation {:inline 1} _LOG_ATOMIC_$$keysD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keysD);
    return;
}



procedure _CHECK_ATOMIC_$$keysD(_P: bool, _offset: bv32);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keysD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$keysD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keysD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keysD := (if _P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keysD);
    return;
}



const _WATCHED_VALUE_$$ansD: bv32;

procedure {:inline 1} _LOG_READ_$$ansD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$ansD;



implementation {:inline 1} _LOG_READ_$$ansD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then true else _READ_HAS_OCCURRED_$$ansD);
    return;
}



procedure _CHECK_READ_$$ansD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ansD);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ansD: bool;

procedure {:inline 1} _LOG_WRITE_$$ansD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD;



implementation {:inline 1} _LOG_WRITE_$$ansD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then true else _WRITE_HAS_OCCURRED_$$ansD);
    _WRITE_READ_BENIGN_FLAG_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ansD);
    return;
}



procedure _CHECK_WRITE_$$ansD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD != _value);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD != _value);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ansD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$ansD;



implementation {:inline 1} _LOG_ATOMIC_$$ansD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ansD);
    return;
}



procedure _CHECK_ATOMIC_$$ansD(_P: bool, _offset: bv32);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$ansD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ansD := (if _P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ansD);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$ansD;
    goto anon3;

  anon3:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon7;

  anon7:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$currKnodeD;
    goto anon5;

  anon5:
    havoc $$offsetD;
    goto anon6;

  anon6:
    havoc $$ansD;
    goto anon7;

  anon8_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$ansD;
    goto anon3;

  anon3:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon7;

  anon7:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$currKnodeD;
    goto anon5;

  anon5:
    havoc $$offsetD;
    goto anon6;

  anon6:
    havoc $$ansD;
    goto anon7;

  anon8_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;
