type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$B"} {:global} {:elem_width 64} {:source_name "B"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$B: bool;

var {:source_name "E"} {:global} $$E: [bv32]bv64;

axiom {:array_info "$$E"} {:global} {:elem_width 64} {:source_name "E"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$E: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$E: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$E: bool;

axiom {:array_info "$$private_E"} {:elem_width 64} {:source_name "private_E"} {:source_elem_width 64} {:source_dimensions "1,2"} true;

var {:source_name "shared_A"} {:group_shared} $$kernel1.shared_A: [bv1][bv32]bv64;

axiom {:array_info "$$kernel1.shared_A"} {:group_shared} {:elem_width 64} {:source_name "shared_A"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel1.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

procedure {:source_name "kernel1"} {:kernel} $kernel1($nl: bv32, $nj: bv32, $nm: bv32, $nk: bv32, $ni: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $nl == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $nj == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $nm == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $nk == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 4} {:thread 1} (if $ni == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 5} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nl, 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($nl, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nj, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nj, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nm, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nm, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nk, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nk, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($ni, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($ni, 2147483647bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$B && !_WRITE_HAS_OCCURRED_$$B && !_ATOMIC_HAS_OCCURRED_$$B;
  requires !_READ_HAS_OCCURRED_$$E && !_WRITE_HAS_OCCURRED_$$E && !_ATOMIC_HAS_OCCURRED_$$E;
  requires !_READ_HAS_OCCURRED_$$kernel1.shared_A && !_WRITE_HAS_OCCURRED_$$kernel1.shared_A && !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
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
  modifies $$kernel1.shared_A, _WRITE_HAS_OCCURRED_$$kernel1.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A, $$E, _TRACKING, _READ_HAS_OCCURRED_$$kernel1.shared_A, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$E, _WRITE_READ_BENIGN_FLAG_$$E, _WRITE_READ_BENIGN_FLAG_$$E, _TRACKING;



implementation {:source_name "kernel1"} {:kernel} $kernel1($nl: bv32, $nj: bv32, $nm: bv32, $nk: bv32, $ni: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $0$1: bv32;
  var $0$2: bv32;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $1$1: bv32;
  var $1$2: bv32;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $c41.0$1: bv64;
  var $c41.0$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c32.0$1: bv64;
  var $c32.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv64;
  var v10$2: bv64;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bv64;
  var v16$2: bv64;
  var v17$1: bv64;
  var v17$2: bv64;
  var v18$1: bv64;
  var v18$2: bv64;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bv64;
  var v20$2: bv64;
  var v21$1: bv64;
  var v21$2: bv64;
  var v22$1: bv64;
  var v22$2: bv64;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bv64;
  var v27$2: bv64;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv64;
  var v32$2: bv64;
  var v33$1: bv64;
  var v33$2: bv64;
  var v34$1: bv64;
  var v34$2: bv64;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bv64;
  var v36$2: bv64;
  var v37$1: bv64;
  var v37$2: bv64;
  var v38$1: bv64;
  var v38$2: bv64;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: bool;
  var v40$2: bool;
  var v41$1: bv64;
  var v41$2: bv64;
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: bv64;
  var v43$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _WRITE_HAS_OCCURRED_$$E$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$6: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$18: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$31: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$41: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := local_id_x$1;
    v2$2 := local_id_x$2;
    v3$1 := BV32_ZEXT64(v2$1);
    v3$2 := BV32_ZEXT64(v2$2);
    v4$1 := BV32_ZEXT64(local_id_y$1);
    v4$2 := BV32_ZEXT64(local_id_y$2);
    $c0.0$1 := BV64_MUL(32bv64, v0$1);
    $c0.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b143 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b142 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "nowrite"} _b141 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "noread"} _b140 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b139 ==> _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b138 ==> !_WRITE_HAS_OCCURRED_$$E;
    assert {:tag "predicatedEquality"} _b137 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b136 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b135 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b134 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b133 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b132 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b131 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b130 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b129 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b128 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b127 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b126 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b125 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b124 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b123 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b122 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b121 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b120 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b119 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b118 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b117 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> $c32.0$1 == $c32.0$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> $c41.0$1 == $c41.0$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b87 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b86 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b7 ==> BV64_UGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b7 ==> BV64_UGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b6 ==> BV64_ULE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b6 ==> BV64_ULE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV64_SGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV64_SGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV64_SLE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV64_SLE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 11} p0$1 ==> true;
    v5$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($ni)) else v5$1);
    v5$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($ni)) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p46$1 := false;
    p46$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    $c1.0$1 := (if p1$1 then BV64_MUL(32bv64, v1$1) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_MUL(32bv64, v1$2) else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$E$ghost$$3 := _WRITE_HAS_OCCURRED_$$E;
    _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3 := _READ_HAS_OCCURRED_$$kernel1.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b202 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b201 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$3 == _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b200 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b199 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "nowrite"} _b198 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "noread"} _b197 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b196 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$E$ghost$$3 == _WRITE_HAS_OCCURRED_$$E;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b195 ==> _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b194 ==> !_WRITE_HAS_OCCURRED_$$E;
    assert {:tag "predicatedEquality"} _b193 ==> p2$1 && p2$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b192 ==> p2$1 && p2$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b191 ==> p2$1 && p2$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b190 ==> p2$1 && p2$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b189 ==> p2$1 && p2$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b188 ==> p2$1 && p2$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b187 ==> p2$1 && p2$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b186 ==> p2$1 && p2$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b185 ==> p2$1 && p2$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b184 ==> p2$1 && p2$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b183 ==> p2$1 && p2$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b182 ==> p2$1 && p2$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b181 ==> p2$1 && p2$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b180 ==> p2$1 && p2$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b179 ==> p2$1 && p2$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b178 ==> p2$1 && p2$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b177 ==> p2$1 && p2$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b176 ==> p2$1 && p2$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b175 ==> p2$1 && p2$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b174 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b173 ==> p2$1 && p2$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b172 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b171 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b170 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b169 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b168 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b167 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b166 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b165 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b164 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b163 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b162 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b161 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b160 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b159 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b158 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b157 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b156 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b155 ==> p2$1 && p2$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b154 ==> p2$1 && p2$2 ==> $c32.0$1 == $c32.0$2;
    assert {:tag "predicatedEquality"} _b153 ==> p2$1 && p2$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b152 ==> p2$1 && p2$2 ==> $c41.0$1 == $c41.0$2;
    assert {:tag "predicatedEquality"} _b151 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b150 ==> p2$1 && p2$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b149 ==> p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b148 ==> p2$1 && p2$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b147 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b146 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b145 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b144 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _WRITE_HAS_OCCURRED_$$E ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b17 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b17 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b16 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b16 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b15 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b15 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b14 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b14 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b13 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b13 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b11 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b11 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v1$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b9 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b9 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 13} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nj)) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nj)) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
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
    p22$1 := false;
    p22$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    v7$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v7$1);
    v7$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v7$2);
    p5$1 := (if p3$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p3$2 && v7$2 then v7$2 else p5$2);
    $c4.0$1 := (if p5$1 then v4$1 else $c4.0$1);
    $c4.0$2 := (if p5$2 then v4$2 else $c4.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$6 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_6"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b205 ==> !p5$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$6 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessBreak"} _b204 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b203 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p2$1;
    assert p6$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b85 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b84 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b83 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b82 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c4.0$1, BV32_SEXT64($0$1)) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b82 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c4.0$2, BV32_SEXT64($0$2)) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b81 ==> p6$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b81 ==> p6$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b80 ==> BV64_UGE($c4.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b80 ==> BV64_UGE($c4.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b79 ==> BV64_ULE($c4.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b79 ==> BV64_ULE($c4.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b78 ==> BV64_SGE($c4.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b78 ==> BV64_SGE($c4.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b77 ==> BV64_SLE($c4.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b77 ==> BV64_SLE($c4.0$2, v4$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b76 ==> BV32_SLE(0bv32, $0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b76 ==> BV32_SLE(0bv32, $0$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b75 ==> BV64_SLE(0bv64, $c4.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b75 ==> BV64_SLE(0bv64, $c4.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b74 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b74 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 16} p6$1 ==> true;
    v8$1 := (if p6$1 then BV32_SLT(31bv32, BV32_SUB($nk, 1bv32)) else v8$1);
    v8$2 := (if p6$2 then BV32_SLT(31bv32, BV32_SUB($nk, 1bv32)) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p8$1 := (if p6$1 && v8$1 then v8$1 else p8$1);
    p8$2 := (if p6$2 && v8$2 then v8$2 else p8$2);
    p7$1 := (if p6$1 && !v8$1 then !v8$1 else p7$1);
    p7$2 := (if p6$2 && !v8$2 then !v8$2 else p7$2);
    $0$1 := (if p7$1 then BV32_SUB($nk, 1bv32) else $0$1);
    $0$2 := (if p7$2 then BV32_SUB($nk, 1bv32) else $0$2);
    $0$1 := (if p8$1 then 31bv32 else $0$1);
    $0$2 := (if p8$2 then 31bv32 else $0$2);
    v9$1 := (if p6$1 then BV64_SLE($c4.0$1, BV32_SEXT64($0$1)) else v9$1);
    v9$2 := (if p6$2 then BV64_SLE($c4.0$2, BV32_SEXT64($0$2)) else v9$2);
    p9$1 := (if p6$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p6$2 && v9$2 then v9$2 else p9$2);
    p6$1 := (if p6$1 && !v9$1 then v9$1 else p6$1);
    p6$2 := (if p6$2 && !v9$2 then v9$2 else p6$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v10$1 := (if p9$1 then _HAVOC_bv64$1 else v10$1);
    v10$2 := (if p9$2 then _HAVOC_bv64$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$kernel1.shared_A(p9$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0]), v10$1, $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A(p9$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$kernel1.shared_A(p9$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel1.shared_A"} true;
    $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])] := (if p9$1 then v10$1 else $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])] := (if p9$2 then v10$2 else $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])]);
    $c4.0$1 := (if p9$1 then BV64_ADD($c4.0$1, 16bv64) else $c4.0$1);
    $c4.0$2 := (if p9$2 then BV64_ADD($c4.0$2, 16bv64) else $c4.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $6.backedge, __partitioned_block_$6.tail_0;

  __partitioned_block_$6.tail_0:
    assume !p6$1 && !p6$2;
    goto __partitioned_block_$6.tail_1;

  __partitioned_block_$6.tail_1:
    call {:sourceloc_num 26} $bugle_barrier_duplicated_0(1bv1, 1bv1, p3$1, p3$2);
    v11$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v11$1);
    v11$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v11$2);
    p11$1 := (if p3$1 && v11$1 then v11$1 else p11$1);
    p11$2 := (if p3$2 && v11$2 then v11$2 else p11$2);
    v12$1 := (if p11$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v12$1);
    v12$2 := (if p11$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v12$2);
    p13$1 := (if p11$1 && v12$1 then v12$1 else p13$1);
    p13$2 := (if p11$2 && v12$2 then v12$2 else p13$2);
    $$private_E$0bv32$1 := (if p13$1 then 0bv64 else $$private_E$0bv32$1);
    $$private_E$0bv32$2 := (if p13$2 then 0bv64 else $$private_E$0bv32$2);
    v13$1 := (if p13$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v13$1);
    v13$2 := (if p13$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v13$2);
    p15$1 := (if p13$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p13$2 && v13$2 then v13$2 else p15$2);
    $$private_E$1bv32$1 := (if p15$1 then 0bv64 else $$private_E$1bv32$1);
    $$private_E$1bv32$2 := (if p15$2 then 0bv64 else $$private_E$1bv32$2);
    $c3.0$1 := (if p13$1 then 0bv64 else $c3.0$1);
    $c3.0$2 := (if p13$2 then 0bv64 else $c3.0$2);
    p16$1 := (if p13$1 then true else p16$1);
    p16$2 := (if p13$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$18 := _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $18;

  $18:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b207 ==> !p13$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$18 == _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b206 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p13"} true;
    assert p16$1 ==> p2$1;
    assert p16$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b73 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b72 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b71 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b70 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b69 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64)) && BV64_SLE($c3.0$1, BV32_SEXT64($1$1)) ==> p16$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b69 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64)) && BV64_SLE($c3.0$2, BV32_SEXT64($1$2)) ==> p16$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p16$1 ==> _b68 ==> p16$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p16$2 ==> _b68 ==> p16$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b67 ==> BV64_UGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b67 ==> BV64_UGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b66 ==> BV64_ULE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b66 ==> BV64_ULE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b65 ==> BV64_SGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b65 ==> BV64_SGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b64 ==> BV64_SLE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b64 ==> BV64_SLE($c3.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p16$1 ==> _b63 ==> BV32_SLE(0bv32, $1$1);
    assert {:tag "guardNonNeg"} {:thread 2} p16$2 ==> _b63 ==> BV32_SLE(0bv32, $1$2);
    assert {:tag "guardNonNeg"} {:thread 1} p16$1 ==> _b62 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p16$2 ==> _b62 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 33} p16$1 ==> true;
    v14$1 := (if p16$1 then BV32_SLT(31bv32, BV32_SUB($nk, 1bv32)) else v14$1);
    v14$2 := (if p16$2 then BV32_SLT(31bv32, BV32_SUB($nk, 1bv32)) else v14$2);
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
    p18$1 := (if p16$1 && v14$1 then v14$1 else p18$1);
    p18$2 := (if p16$2 && v14$2 then v14$2 else p18$2);
    p17$1 := (if p16$1 && !v14$1 then !v14$1 else p17$1);
    p17$2 := (if p16$2 && !v14$2 then !v14$2 else p17$2);
    $1$1 := (if p17$1 then BV32_SUB($nk, 1bv32) else $1$1);
    $1$2 := (if p17$2 then BV32_SUB($nk, 1bv32) else $1$2);
    $1$1 := (if p18$1 then 31bv32 else $1$1);
    $1$2 := (if p18$2 then 31bv32 else $1$2);
    v15$1 := (if p16$1 then BV64_SLE($c3.0$1, BV32_SEXT64($1$1)) else v15$1);
    v15$2 := (if p16$2 then BV64_SLE($c3.0$2, BV32_SEXT64($1$2)) else v15$2);
    p19$1 := (if p16$1 && v15$1 then v15$1 else p19$1);
    p19$2 := (if p16$2 && v15$2 then v15$2 else p19$2);
    p16$1 := (if p16$1 && !v15$1 then v15$1 else p16$1);
    p16$2 := (if p16$2 && !v15$2 then v15$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$kernel1.shared_A(p19$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0]), $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$kernel1.shared_A(p19$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0]), $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A"} true;
    v16$1 := (if p19$1 then $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])] else v16$1);
    v16$2 := (if p19$2 then $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])] else v16$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v17$1 := (if p19$1 then _HAVOC_bv64$1 else v17$1);
    v17$2 := (if p19$2 then _HAVOC_bv64$2 else v17$2);
    v18$1 := (if p19$1 then $$private_E$0bv32$1 else v18$1);
    v18$2 := (if p19$2 then $$private_E$0bv32$2 else v18$2);
    $$private_E$0bv32$1 := (if p19$1 then FADD64(FMUL64(v16$1, v17$1), v18$1) else $$private_E$0bv32$1);
    $$private_E$0bv32$2 := (if p19$2 then FADD64(FMUL64(v16$2, v17$2), v18$2) else $$private_E$0bv32$2);
    v19$1 := (if p19$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v19$1);
    v19$2 := (if p19$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v19$2);
    p21$1 := (if p19$1 && v19$1 then v19$1 else p21$1);
    p21$2 := (if p19$2 && v19$2 then v19$2 else p21$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$kernel1.shared_A(p21$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0]), $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$kernel1.shared_A(p21$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0]), $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A"} true;
    v20$1 := (if p21$1 then $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3.0$1[32:0])] else v20$1);
    v20$2 := (if p21$2 then $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3.0$2[32:0])] else v20$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v21$1 := (if p21$1 then _HAVOC_bv64$1 else v21$1);
    v21$2 := (if p21$2 then _HAVOC_bv64$2 else v21$2);
    v22$1 := (if p21$1 then $$private_E$1bv32$1 else v22$1);
    v22$2 := (if p21$2 then $$private_E$1bv32$2 else v22$2);
    $$private_E$1bv32$1 := (if p21$1 then FADD64(FMUL64(v20$1, v21$1), v22$1) else $$private_E$1bv32$1);
    $$private_E$1bv32$2 := (if p21$2 then FADD64(FMUL64(v20$2, v21$2), v22$2) else $$private_E$1bv32$2);
    $c3.0$1 := (if p19$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $c3.0$2 := (if p19$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p16$1 := (if p19$1 then true else p16$1);
    p16$2 := (if p19$2 then true else p16$2);
    goto $18.backedge, __partitioned_block_$18.tail_0;

  __partitioned_block_$18.tail_0:
    assume !p16$1 && !p16$2;
    goto __partitioned_block_$18.tail_1;

  __partitioned_block_$18.tail_1:
    call {:sourceloc_num 51} $bugle_barrier_duplicated_1(1bv1, 1bv1, p3$1, p3$2);
    $c2.0$1 := (if p3$1 then 32bv64 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 32bv64 else $c2.0$2);
    p22$1 := (if p3$1 then true else p22$1);
    p22$2 := (if p3$2 then true else p22$2);
    _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28 := _READ_HAS_OCCURRED_$$kernel1.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $28;

  $28:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b237 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b236 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$28 == _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessBreak"} _b235 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b234 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b233 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "nowrite"} _b232 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "noread"} _b231 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "predicatedEquality"} _b230 ==> p22$1 && p22$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b229 ==> p22$1 && p22$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b228 ==> p22$1 && p22$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b227 ==> p22$1 && p22$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b226 ==> p22$1 && p22$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b225 ==> p22$1 && p22$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b224 ==> p22$1 && p22$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b223 ==> p22$1 && p22$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b222 ==> p22$1 && p22$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b221 ==> p22$1 && p22$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b220 ==> p22$1 && p22$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b219 ==> p22$1 && p22$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b218 ==> p22$1 && p22$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b217 ==> p22$1 && p22$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b216 ==> p22$1 && p22$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b215 ==> p22$1 && p22$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b214 ==> p22$1 && p22$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b213 ==> p22$1 && p22$2 ==> $c32.0$1 == $c32.0$2;
    assert {:tag "predicatedEquality"} _b212 ==> p22$1 && p22$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b211 ==> p22$1 && p22$2 ==> $c41.0$1 == $c41.0$2;
    assert {:tag "predicatedEquality"} _b210 ==> p22$1 && p22$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "loopPredicateEquality"} _b209 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p22$1 == p22$2;
    assert {:tag "loopPredicateEquality"} _b208 ==> p22$1 == p22$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p22"} {:dominator_predicate "p3"} true;
    assert p22$1 ==> p2$1;
    assert p22$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b31 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) ==> p22$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b31 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) ==> p22$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p22$1 ==> _b30 ==> p22$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p22$2 ==> _b30 ==> p22$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj));
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b29 ==> BV64_UGE($c2.0$1, 32bv64);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b29 ==> BV64_UGE($c2.0$2, 32bv64);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b28 ==> BV64_ULE($c2.0$1, 32bv64);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b28 ==> BV64_ULE($c2.0$2, 32bv64);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b27 ==> BV64_SGE($c2.0$1, 32bv64);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b27 ==> BV64_SGE($c2.0$2, 32bv64);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b26 ==> BV64_SLE($c2.0$1, 32bv64);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b26 ==> BV64_SLE($c2.0$2, 32bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p22$1 ==> _b25 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, 32bv64) == BV64_SUB($c2.0$2, 32bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p22$2 ==> _b25 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, 32bv64) == BV64_SUB($c2.0$1, 32bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p22$1 ==> _b24 ==> BV64_SUB($c2.0$1, 32bv64) == BV64_SUB($c2.0$2, 32bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p22$2 ==> _b24 ==> BV64_SUB($c2.0$2, 32bv64) == BV64_SUB($c2.0$1, 32bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p22$1 ==> _b23 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p22$2 ==> _b23 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p22$1 ==> _b22 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 32bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p22$2 ==> _b22 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 32bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 52} p22$1 ==> true;
    v23$1 := (if p22$1 then BV64_SLT($c2.0$1, BV32_SEXT64($nk)) else v23$1);
    v23$2 := (if p22$2 then BV64_SLT($c2.0$2, BV32_SEXT64($nk)) else v23$2);
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
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
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p42$1 := false;
    p42$2 := false;
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p23$1 := (if p22$1 && v23$1 then v23$1 else p23$1);
    p23$2 := (if p22$2 && v23$2 then v23$2 else p23$2);
    p22$1 := (if p22$1 && !v23$1 then v23$1 else p22$1);
    p22$2 := (if p22$2 && !v23$2 then v23$2 else p22$2);
    v24$1 := (if p23$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v24$1);
    v24$2 := (if p23$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v24$2);
    p25$1 := (if p23$1 && v24$1 then v24$1 else p25$1);
    p25$2 := (if p23$2 && v24$2 then v24$2 else p25$2);
    $c41.0$1 := (if p25$1 then v4$1 else $c41.0$1);
    $c41.0$2 := (if p25$2 then v4$2 else $c41.0$2);
    p26$1 := (if p25$1 then true else p26$1);
    p26$2 := (if p25$2 then true else p26$2);
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$31 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $31;

  $31:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b240 ==> !p25$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A$ghost$$31 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessBreak"} _b239 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b238 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p26"} {:dominator_predicate "p25"} true;
    assert p26$1 ==> p22$1;
    assert p26$2 ==> p22$2;
    assert p22$1 ==> p2$1;
    assert p22$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b61 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b60 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c2.0$1, BV32_SEXT64($nk));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b59 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b58 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b57 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c41.0$1, $2$1) ==> p26$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b57 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c41.0$2, $2$2) ==> p26$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p26$1 ==> _b56 ==> p26$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p26$2 ==> _b56 ==> p26$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b55 ==> BV64_UGE($c41.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b55 ==> BV64_UGE($c41.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b54 ==> BV64_ULE($c41.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b54 ==> BV64_ULE($c41.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b53 ==> BV64_SGE($c41.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b53 ==> BV64_SGE($c41.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p26$1 ==> _b52 ==> BV64_SLE($c41.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p26$2 ==> _b52 ==> BV64_SLE($c41.0$2, v4$2);
    assert {:tag "guardNonNeg"} {:thread 1} p26$1 ==> _b51 ==> BV64_SLE(0bv64, $2$1);
    assert {:tag "guardNonNeg"} {:thread 2} p26$2 ==> _b51 ==> BV64_SLE(0bv64, $2$2);
    assert {:tag "guardNonNeg"} {:thread 1} p26$1 ==> _b50 ==> BV64_SLE(0bv64, $c41.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p26$2 ==> _b50 ==> BV64_SLE(0bv64, $c41.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p26$1 ==> _b49 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c41.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p26$2 ==> _b49 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c41.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 55} p26$1 ==> true;
    v25$1 := (if p26$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64)) else v25$1);
    v25$2 := (if p26$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64)) else v25$2);
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p28$1 := (if p26$1 && v25$1 then v25$1 else p28$1);
    p28$2 := (if p26$2 && v25$2 then v25$2 else p28$2);
    p27$1 := (if p26$1 && !v25$1 then !v25$1 else p27$1);
    p27$2 := (if p26$2 && !v25$2 then !v25$2 else p27$2);
    $2$1 := (if p27$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64) else $2$1);
    $2$2 := (if p27$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64) else $2$2);
    $2$1 := (if p28$1 then 31bv64 else $2$1);
    $2$2 := (if p28$2 then 31bv64 else $2$2);
    v26$1 := (if p26$1 then BV64_SLE($c41.0$1, $2$1) else v26$1);
    v26$2 := (if p26$2 then BV64_SLE($c41.0$2, $2$2) else v26$2);
    p29$1 := (if p26$1 && v26$1 then v26$1 else p29$1);
    p29$2 := (if p26$2 && v26$2 then v26$2 else p29$2);
    p26$1 := (if p26$1 && !v26$1 then v26$1 else p26$1);
    p26$2 := (if p26$2 && !v26$2 then v26$2 else p26$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v27$1 := (if p29$1 then _HAVOC_bv64$1 else v27$1);
    v27$2 := (if p29$2 then _HAVOC_bv64$2 else v27$2);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$kernel1.shared_A(p29$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c41.0$1[32:0]), v27$1, $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c41.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A(p29$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c41.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$kernel1.shared_A(p29$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c41.0$2[32:0]), v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel1.shared_A"} true;
    $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c41.0$1[32:0])] := (if p29$1 then v27$1 else $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c41.0$1[32:0])]);
    $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c41.0$2[32:0])] := (if p29$2 then v27$2 else $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c41.0$2[32:0])]);
    $c41.0$1 := (if p29$1 then BV64_ADD($c41.0$1, 16bv64) else $c41.0$1);
    $c41.0$2 := (if p29$2 then BV64_ADD($c41.0$2, 16bv64) else $c41.0$2);
    p26$1 := (if p29$1 then true else p26$1);
    p26$2 := (if p29$2 then true else p26$2);
    goto $31.backedge, __partitioned_block_$31.tail_0;

  __partitioned_block_$31.tail_0:
    assume !p26$1 && !p26$2;
    goto __partitioned_block_$31.tail_1;

  __partitioned_block_$31.tail_1:
    call {:sourceloc_num 65} $bugle_barrier_duplicated_3(1bv1, 1bv1, p23$1, p23$2);
    v28$1 := (if p23$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v28$1);
    v28$2 := (if p23$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v28$2);
    p31$1 := (if p23$1 && v28$1 then v28$1 else p31$1);
    p31$2 := (if p23$2 && v28$2 then v28$2 else p31$2);
    v29$1 := (if p31$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v29$1);
    v29$2 := (if p31$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v29$2);
    p33$1 := (if p31$1 && v29$1 then v29$1 else p33$1);
    p33$2 := (if p31$2 && v29$2 then v29$2 else p33$2);
    $c32.0$1 := (if p33$1 then 0bv64 else $c32.0$1);
    $c32.0$2 := (if p33$2 then 0bv64 else $c32.0$2);
    p34$1 := (if p33$1 then true else p34$1);
    p34$2 := (if p33$2 then true else p34$2);
    _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$41 := _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $41;

  $41:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b242 ==> !p33$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A$ghost$$41 == _READ_HAS_OCCURRED_$$kernel1.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b241 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(0bv64[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p34"} {:dominator_predicate "p33"} true;
    assert p34$1 ==> p22$1;
    assert p34$2 ==> p22$2;
    assert p22$1 ==> p2$1;
    assert p22$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c2.0$1, BV32_SEXT64($nk));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c1.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b43 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64)) && BV64_SLE($c32.0$1, $3$1) ==> p34$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b43 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64)) && BV64_SLE($c32.0$2, $3$2) ==> p34$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p34$1 ==> _b42 ==> p34$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($ni)) && BV64_SLT($c1.0$1, BV32_SEXT64($nj)) && BV64_SLT($c2.0$1, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), $c1.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p34$2 ==> _b42 ==> p34$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($ni)) && BV64_SLT($c1.0$2, BV32_SEXT64($nj)) && BV64_SLT($c2.0$2, BV32_SEXT64($nk)) && BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$2), $c1.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p34$1 ==> _b41 ==> BV64_UGE($c32.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p34$2 ==> _b41 ==> BV64_UGE($c32.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p34$1 ==> _b40 ==> BV64_ULE($c32.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p34$2 ==> _b40 ==> BV64_ULE($c32.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p34$1 ==> _b39 ==> BV64_SGE($c32.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p34$2 ==> _b39 ==> BV64_SGE($c32.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p34$1 ==> _b38 ==> BV64_SLE($c32.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p34$2 ==> _b38 ==> BV64_SLE($c32.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p34$1 ==> _b37 ==> BV64_SLE(0bv64, $3$1);
    assert {:tag "guardNonNeg"} {:thread 2} p34$2 ==> _b37 ==> BV64_SLE(0bv64, $3$2);
    assert {:tag "guardNonNeg"} {:thread 1} p34$1 ==> _b36 ==> BV64_SLE(0bv64, $c32.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p34$2 ==> _b36 ==> BV64_SLE(0bv64, $c32.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 9} {:thread 1} (if _READ_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nk, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1bv64)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nk, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nk))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$E ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ni, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj), $ni))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nj))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 68} p34$1 ==> true;
    v30$1 := (if p34$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64)) else v30$1);
    v30$2 := (if p34$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64)) else v30$2);
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p36$1 := (if p34$1 && v30$1 then v30$1 else p36$1);
    p36$2 := (if p34$2 && v30$2 then v30$2 else p36$2);
    p35$1 := (if p34$1 && !v30$1 then !v30$1 else p35$1);
    p35$2 := (if p34$2 && !v30$2 then !v30$2 else p35$2);
    $3$1 := (if p35$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$1), 1bv64) else $3$1);
    $3$2 := (if p35$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nk), $c2.0$2), 1bv64) else $3$2);
    $3$1 := (if p36$1 then 31bv64 else $3$1);
    $3$2 := (if p36$2 then 31bv64 else $3$2);
    v31$1 := (if p34$1 then BV64_SLE($c32.0$1, $3$1) else v31$1);
    v31$2 := (if p34$2 then BV64_SLE($c32.0$2, $3$2) else v31$2);
    p37$1 := (if p34$1 && v31$1 then v31$1 else p37$1);
    p37$2 := (if p34$2 && v31$2 then v31$2 else p37$2);
    p34$1 := (if p34$1 && !v31$1 then v31$1 else p34$1);
    p34$2 := (if p34$2 && !v31$2 then v31$2 else p34$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$kernel1.shared_A(p37$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0]), $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$kernel1.shared_A(p37$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0]), $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A"} true;
    v32$1 := (if p37$1 then $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0])] else v32$1);
    v32$2 := (if p37$2 then $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0])] else v32$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v33$1 := (if p37$1 then _HAVOC_bv64$1 else v33$1);
    v33$2 := (if p37$2 then _HAVOC_bv64$2 else v33$2);
    v34$1 := (if p37$1 then $$private_E$0bv32$1 else v34$1);
    v34$2 := (if p37$2 then $$private_E$0bv32$2 else v34$2);
    $$private_E$0bv32$1 := (if p37$1 then FADD64(FMUL64(v32$1, v33$1), v34$1) else $$private_E$0bv32$1);
    $$private_E$0bv32$2 := (if p37$2 then FADD64(FMUL64(v32$2, v33$2), v34$2) else $$private_E$0bv32$2);
    v35$1 := (if p37$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v35$1);
    v35$2 := (if p37$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v35$2);
    p39$1 := (if p37$1 && v35$1 then v35$1 else p39$1);
    p39$2 := (if p37$2 && v35$2 then v35$2 else p39$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$kernel1.shared_A(p39$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0]), $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$kernel1.shared_A(p39$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0]), $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A"} true;
    v36$1 := (if p39$1 then $$kernel1.shared_A[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c32.0$1[32:0])] else v36$1);
    v36$2 := (if p39$2 then $$kernel1.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c32.0$2[32:0])] else v36$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v37$1 := (if p39$1 then _HAVOC_bv64$1 else v37$1);
    v37$2 := (if p39$2 then _HAVOC_bv64$2 else v37$2);
    v38$1 := (if p39$1 then $$private_E$1bv32$1 else v38$1);
    v38$2 := (if p39$2 then $$private_E$1bv32$2 else v38$2);
    $$private_E$1bv32$1 := (if p39$1 then FADD64(FMUL64(v36$1, v37$1), v38$1) else $$private_E$1bv32$1);
    $$private_E$1bv32$2 := (if p39$2 then FADD64(FMUL64(v36$2, v37$2), v38$2) else $$private_E$1bv32$2);
    $c32.0$1 := (if p37$1 then BV64_ADD($c32.0$1, 1bv64) else $c32.0$1);
    $c32.0$2 := (if p37$2 then BV64_ADD($c32.0$2, 1bv64) else $c32.0$2);
    p34$1 := (if p37$1 then true else p34$1);
    p34$2 := (if p37$2 then true else p34$2);
    goto $41.backedge, __partitioned_block_$41.tail_0;

  __partitioned_block_$41.tail_0:
    assume !p34$1 && !p34$2;
    goto __partitioned_block_$41.tail_1;

  __partitioned_block_$41.tail_1:
    call {:sourceloc_num 86} $bugle_barrier_duplicated_4(1bv1, 1bv1, p23$1, p23$2);
    $c2.0$1 := (if p23$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p23$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p22$1 := (if p23$1 then true else p22$1);
    p22$2 := (if p23$2 then true else p22$2);
    goto $28.backedge, __partitioned_block_$28.tail_0;

  __partitioned_block_$28.tail_0:
    assume !p22$1 && !p22$2;
    v39$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$1, $c0.0$1), 1bv64)) else v39$1);
    v39$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($ni), BV64_ADD(BV64_ADD(v3$2, $c0.0$2), 1bv64)) else v39$2);
    p41$1 := (if p3$1 && v39$1 then v39$1 else p41$1);
    p41$2 := (if p3$2 && v39$2 then v39$2 else p41$2);
    v40$1 := (if p41$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 1bv64)) else v40$1);
    v40$2 := (if p41$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 1bv64)) else v40$2);
    p43$1 := (if p41$1 && v40$1 then v40$1 else p43$1);
    p43$2 := (if p41$2 && v40$2 then v40$2 else p43$2);
    v41$1 := (if p43$1 then $$private_E$0bv32$1 else v41$1);
    v41$2 := (if p43$2 then $$private_E$0bv32$2 else v41$2);
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$E(p43$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0], v41$1, $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(p43$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$E(p43$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0], v41$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$E"} true;
    $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]] := (if p43$1 then v41$1 else $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(v4$1, $c1.0$1))[32:0]]);
    $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]] := (if p43$2 then v41$2 else $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(v4$2, $c1.0$2))[32:0]]);
    v42$1 := (if p43$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 17bv64)) else v42$1);
    v42$2 := (if p43$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 17bv64)) else v42$2);
    p45$1 := (if p43$1 && v42$1 then v42$1 else p45$1);
    p45$2 := (if p43$2 && v42$2 then v42$2 else p45$2);
    v43$1 := (if p45$1 then $$private_E$1bv32$1 else v43$1);
    v43$2 := (if p45$2 then $$private_E$1bv32$2 else v43$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$E(p45$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0], v43$1, $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(p45$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$E(p45$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0], v43$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$E"} true;
    $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]] := (if p45$1 then v43$1 else $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$1, $c1.0$1), 16bv64))[32:0]]);
    $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]] := (if p45$2 then v43$2 else $$E[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($nj)), BV64_ADD(BV64_ADD(v4$2, $c1.0$2), 16bv64))[32:0]]);
    goto __partitioned_block_$28.tail_1;

  __partitioned_block_$28.tail_1:
    call {:sourceloc_num 98} $bugle_barrier_duplicated_2(1bv1, 1bv1, p3$1, p3$2);
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192bv64) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;

  $28.backedge:
    assume {:backedge} p22$1 || p22$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $28;

  $41.backedge:
    assume {:backedge} p34$1 || p34$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $41;

  $31.backedge:
    assume {:backedge} p26$1 || p26$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $31;

  $18.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $18;

  $6.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $6;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A, $$E, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A, $$E, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A, $$E, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A, $$E, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A, $$E, _TRACKING;



var $$private_E$0bv32$1: bv64;

var $$private_E$0bv32$2: bv64;

var $$private_E$1bv32$1: bv64;

var $$private_E$1bv32$2: bv64;

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b6: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

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

const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$B: bv64;

procedure {:inline 1} _LOG_READ_$$B(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_READ_$$B(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _READ_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_READ_$$B(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$B);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$B: bool;

procedure {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$B, _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _LOG_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then true else _WRITE_HAS_OCCURRED_$$B);
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



procedure _CHECK_WRITE_$$B(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$B != _value);
  requires {:source_name "B"} {:array "$$B"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$B;



implementation {:inline 1} _LOG_ATOMIC_$$B(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$B);
    return;
}



procedure _CHECK_ATOMIC_$$B(_P: bool, _offset: bv32);
  requires {:source_name "B"} {:array "$$B"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);
  requires {:source_name "B"} {:array "$$B"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$B;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$B := (if _P && _WRITE_HAS_OCCURRED_$$B && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$B);
    return;
}



const _WATCHED_VALUE_$$E: bv64;

procedure {:inline 1} _LOG_READ_$$E(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$E;



implementation {:inline 1} _LOG_READ_$$E(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then true else _READ_HAS_OCCURRED_$$E);
    return;
}



procedure _CHECK_READ_$$E(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$E);
  requires {:source_name "E"} {:array "$$E"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$E: bool;

procedure {:inline 1} _LOG_WRITE_$$E(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$E, _WRITE_READ_BENIGN_FLAG_$$E;



implementation {:inline 1} _LOG_WRITE_$$E(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then true else _WRITE_HAS_OCCURRED_$$E);
    _WRITE_READ_BENIGN_FLAG_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$E);
    return;
}



procedure _CHECK_WRITE_$$E(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E != _value);
  requires {:source_name "E"} {:array "$$E"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$E != _value);
  requires {:source_name "E"} {:array "$$E"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$E(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$E;



implementation {:inline 1} _LOG_ATOMIC_$$E(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$E := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$E);
    return;
}



procedure _CHECK_ATOMIC_$$E(_P: bool, _offset: bv32);
  requires {:source_name "E"} {:array "$$E"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);
  requires {:source_name "E"} {:array "$$E"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$E;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$E(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$E := (if _P && _WRITE_HAS_OCCURRED_$$E && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$E);
    return;
}



const _WATCHED_VALUE_$$kernel1.shared_A: bv64;

procedure {:inline 1} _LOG_READ_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel1.shared_A;



implementation {:inline 1} _LOG_READ_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel1.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A == _value then true else _READ_HAS_OCCURRED_$$kernel1.shared_A);
    return;
}



procedure _CHECK_READ_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel1.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A;



implementation {:inline 1} _LOG_WRITE_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A == _value then true else _WRITE_HAS_OCCURRED_$$kernel1.shared_A);
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A);
    return;
}



procedure _CHECK_WRITE_$$kernel1.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel1.shared_A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;



implementation {:inline 1} _LOG_ATOMIC_$$kernel1.shared_A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A);
    return;
}



procedure _CHECK_ATOMIC_$$kernel1.shared_A(_P: bool, _offset: bv32);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel1.shared_A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A := (if _P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$E;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$E;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$E;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$E;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$E;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$E;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$E;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$E;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$E;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$E;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$E;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

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

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

const {:existential true} _b134: bool;

const {:existential true} _b135: bool;

const {:existential true} _b136: bool;

const {:existential true} _b137: bool;

const {:existential true} _b138: bool;

const {:existential true} _b139: bool;

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;

const {:existential true} _b180: bool;

const {:existential true} _b181: bool;

const {:existential true} _b182: bool;

const {:existential true} _b183: bool;

const {:existential true} _b184: bool;

const {:existential true} _b185: bool;

const {:existential true} _b186: bool;

const {:existential true} _b187: bool;

const {:existential true} _b188: bool;

const {:existential true} _b189: bool;

const {:existential true} _b190: bool;

const {:existential true} _b191: bool;

const {:existential true} _b192: bool;

const {:existential true} _b193: bool;

const {:existential true} _b194: bool;

const {:existential true} _b195: bool;

const {:existential true} _b196: bool;

const {:existential true} _b197: bool;

const {:existential true} _b198: bool;

const {:existential true} _b199: bool;

const {:existential true} _b200: bool;

const {:existential true} _b201: bool;

const {:existential true} _b202: bool;

const {:existential true} _b203: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b204: bool;

const {:existential true} _b205: bool;

const {:existential true} _b206: bool;

const {:existential true} _b207: bool;

const {:existential true} _b208: bool;

const {:existential true} _b209: bool;

const {:existential true} _b210: bool;

const {:existential true} _b211: bool;

const {:existential true} _b212: bool;

const {:existential true} _b213: bool;

const {:existential true} _b214: bool;

const {:existential true} _b215: bool;

const {:existential true} _b216: bool;

const {:existential true} _b217: bool;

const {:existential true} _b218: bool;

const {:existential true} _b219: bool;

const {:existential true} _b220: bool;

const {:existential true} _b221: bool;

const {:existential true} _b222: bool;

const {:existential true} _b223: bool;

const {:existential true} _b224: bool;

const {:existential true} _b225: bool;

const {:existential true} _b226: bool;

const {:existential true} _b227: bool;

const {:existential true} _b228: bool;

const {:existential true} _b229: bool;

const {:existential true} _b230: bool;

const {:existential true} _b231: bool;

const {:existential true} _b232: bool;

const {:existential true} _b233: bool;

const {:existential true} _b234: bool;

const {:existential true} _b235: bool;

const {:existential true} _b236: bool;

const {:existential true} _b237: bool;

const {:existential true} _b238: bool;

const {:existential true} _b239: bool;

const {:existential true} _b240: bool;

const {:existential true} _b241: bool;

const {:existential true} _b242: bool;
