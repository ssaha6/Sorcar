type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "B"} {:global} $$B: [bv32]bv64;

axiom {:array_info "$$B"} {:global} {:elem_width 64} {:source_name "B"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$B: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$B: bool;

var {:source_name "shared_A"} {:group_shared} $$kernel0.shared_A: [bv1][bv32]bv64;

axiom {:array_info "$$kernel0.shared_A"} {:group_shared} {:elem_width 64} {:source_name "shared_A"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel0.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A: bool;

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

function FMUL64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV32_SREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel0"} {:kernel} $kernel0($alpha: bv64, $n: bv32, $m: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $m == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($m, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$B && !_WRITE_HAS_OCCURRED_$$B && !_ATOMIC_HAS_OCCURRED_$$B;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_A && !_WRITE_HAS_OCCURRED_$$kernel0.shared_A && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
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
  modifies $$kernel0.shared_A, _WRITE_HAS_OCCURRED_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A, $$B, _TRACKING, _READ_HAS_OCCURRED_$$kernel0.shared_A, _READ_HAS_OCCURRED_$$B, _WRITE_HAS_OCCURRED_$$B, _WRITE_READ_BENIGN_FLAG_$$B, _WRITE_READ_BENIGN_FLAG_$$B, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING;



implementation {:source_name "kernel0"} {:kernel} $kernel0($alpha: bv64, $n: bv32, $m: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var $c5.0$1: bv64;
  var $c5.0$2: bv64;
  var $4$1: bv64;
  var $4$2: bv64;
  var $c51.0$1: bv64;
  var $c51.0$2: bv64;
  var $5$1: bv64;
  var $5$2: bv64;
  var $c22.0$1: bv64;
  var $c22.0$2: bv64;
  var $c53.0$1: bv64;
  var $c53.0$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv64;
  var v2$2: bv64;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
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
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bv64;
  var v11$2: bv64;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bv64;
  var v18$2: bv64;
  var v19$1: bv64;
  var v19$2: bv64;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv64;
  var v21$2: bv64;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bv64;
  var v25$2: bv64;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bv64;
  var v30$2: bv64;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv64;
  var v32$2: bv64;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: bool;
  var v34$2: bool;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bv64;
  var v36$2: bv64;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bool;
  var v38$2: bool;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: bv64;
  var v40$2: bv64;
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
  var p47$1: bool;
  var p47$2: bool;
  var p48$1: bool;
  var p48$2: bool;
  var p49$1: bool;
  var p49$2: bool;
  var p50$1: bool;
  var p50$2: bool;
  var p51$1: bool;
  var p51$2: bool;
  var p52$1: bool;
  var p52$2: bool;
  var p53$1: bool;
  var p53$2: bool;
  var p54$1: bool;
  var p54$2: bool;
  var p55$1: bool;
  var p55$2: bool;
  var p56$1: bool;
  var p56$2: bool;
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _READ_HAS_OCCURRED_$$B$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$$6: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$6: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6: bool;
  var _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$$24: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$24: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$24: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$$29: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$29: bool;
  var _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$29: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$$39: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$39: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0: bool;
  var _READ_HAS_OCCURRED_$$B$ghost$$67: bool;
  var _WRITE_HAS_OCCURRED_$$B$ghost$$67: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
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
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b222 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> _WATCHED_OFFSET == 0bv32 || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "nowrite"} _b221 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "noread"} _b220 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b219 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b218 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b217 ==> !_WRITE_HAS_OCCURRED_$$B;
    assert {:tag "noread"} _b216 ==> !_READ_HAS_OCCURRED_$$B;
    assert {:tag "predicatedEquality"} _b215 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b214 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b213 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b212 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b211 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b210 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b209 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b208 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b207 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b206 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b205 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b204 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b203 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b202 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b201 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b200 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b199 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b198 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b197 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b196 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b195 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b194 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b193 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b192 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b191 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b190 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b189 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b188 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b187 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b186 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b185 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b184 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b183 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b182 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b181 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b180 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b179 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b178 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b177 ==> p0$1 && p0$2 ==> $c53.0$1 == $c53.0$2;
    assert {:tag "predicatedEquality"} _b176 ==> p0$1 && p0$2 ==> $c22.0$1 == $c22.0$2;
    assert {:tag "predicatedEquality"} _b175 ==> p0$1 && p0$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b174 ==> p0$1 && p0$2 ==> $c51.0$1 == $c51.0$2;
    assert {:tag "predicatedEquality"} _b173 ==> p0$1 && p0$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b172 ==> p0$1 && p0$2 ==> $c5.0$1 == $c5.0$2;
    assert {:tag "predicatedEquality"} _b171 ==> p0$1 && p0$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b170 ==> p0$1 && p0$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b169 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b168 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b167 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b166 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b165 ==> p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b164 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b163 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b162 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b161 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) ==> p0$2;
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
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 7} p0$1 ==> true;
    v3$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($n)) else v3$1);
    v3$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($n)) else v3$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p56$1 := false;
    p56$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    $c1.0$1 := (if p1$1 then 0bv64 else $c1.0$1);
    $c1.0$2 := (if p1$2 then 0bv64 else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$B$ghost$$3 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$3 := _WRITE_HAS_OCCURRED_$$B;
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b286 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b285 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$3 == _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b284 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> _WATCHED_OFFSET == 0bv32 || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "nowrite"} _b283 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "noread"} _b282 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b281 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$3 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b280 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$3 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b279 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b278 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b277 ==> !_WRITE_HAS_OCCURRED_$$B;
    assert {:tag "noread"} _b276 ==> !_READ_HAS_OCCURRED_$$B;
    assert {:tag "predicatedEquality"} _b275 ==> p2$1 && p2$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b274 ==> p2$1 && p2$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b273 ==> p2$1 && p2$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b272 ==> p2$1 && p2$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b271 ==> p2$1 && p2$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b270 ==> p2$1 && p2$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b269 ==> p2$1 && p2$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b268 ==> p2$1 && p2$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b267 ==> p2$1 && p2$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b266 ==> p2$1 && p2$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b265 ==> p2$1 && p2$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b264 ==> p2$1 && p2$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b263 ==> p2$1 && p2$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b262 ==> p2$1 && p2$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b261 ==> p2$1 && p2$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b260 ==> p2$1 && p2$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b259 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b258 ==> p2$1 && p2$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b257 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b256 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b255 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b254 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b253 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b252 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b251 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b250 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b249 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b248 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b247 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b246 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b245 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b244 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b243 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b242 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b241 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b240 ==> p2$1 && p2$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b239 ==> p2$1 && p2$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b238 ==> p2$1 && p2$2 ==> $c53.0$1 == $c53.0$2;
    assert {:tag "predicatedEquality"} _b237 ==> p2$1 && p2$2 ==> $c22.0$1 == $c22.0$2;
    assert {:tag "predicatedEquality"} _b236 ==> p2$1 && p2$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b235 ==> p2$1 && p2$2 ==> $c51.0$1 == $c51.0$2;
    assert {:tag "predicatedEquality"} _b234 ==> p2$1 && p2$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b233 ==> p2$1 && p2$2 ==> $c5.0$1 == $c5.0$2;
    assert {:tag "predicatedEquality"} _b232 ==> p2$1 && p2$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b231 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b230 ==> p2$1 && p2$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b229 ==> p2$1 && p2$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b228 ==> p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b227 ==> p2$1 && p2$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b226 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b225 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b224 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b223 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b17 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b17 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b16 ==> BV64_UGE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b16 ==> BV64_UGE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b15 ==> BV64_ULE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b15 ==> BV64_ULE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b14 ==> BV64_SGE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b14 ==> BV64_SGE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b13 ==> BV64_SLE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b13 ==> BV64_SLE($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, 0bv64) == BV64_SUB($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, 0bv64) == BV64_SUB($c1.0$1, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b11 ==> BV64_SUB($c1.0$1, 0bv64) == BV64_SUB($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b11 ==> BV64_SUB($c1.0$2, 0bv64) == BV64_SUB($c1.0$1, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 9} p2$1 ==> true;
    v4$1 := (if p2$1 then BV64_SLE($c1.0$1, BV32_SEXT64($m)) else v4$1);
    v4$2 := (if p2$2 then BV64_SLE($c1.0$2, BV32_SEXT64($m)) else v4$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p49$1 := false;
    p49$2 := false;
    p50$1 := false;
    p50$2 := false;
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) else v5$1);
    v5$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) else v5$2);
    p4$1 := (if p3$1 && v5$1 then v5$1 else p4$1);
    p4$2 := (if p3$2 && v5$2 then v5$2 else p4$2);
    p49$1 := (if p3$1 && !v5$1 then !v5$1 else p49$1);
    p49$2 := (if p3$2 && !v5$2 then !v5$2 else p49$2);
    $c2.0$1 := (if p4$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p4$2 then 0bv64 else $c2.0$2);
    p5$1 := (if p4$1 then true else p5$1);
    p5$2 := (if p4$2 then true else p5$2);
    _READ_HAS_OCCURRED_$$B$ghost$$6 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$6 := _WRITE_HAS_OCCURRED_$$B;
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b330 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b329 ==> !p4$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$6 == _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b328 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "nowrite"} _b327 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "noread"} _b326 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b325 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$6 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b324 ==> !p4$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$6 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b323 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b322 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b321 ==> !_WRITE_HAS_OCCURRED_$$B;
    assert {:tag "noread"} _b320 ==> !_READ_HAS_OCCURRED_$$B;
    assert {:tag "predicatedEquality"} _b319 ==> p5$1 && p5$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b318 ==> p5$1 && p5$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b317 ==> p5$1 && p5$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b316 ==> p5$1 && p5$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b315 ==> p5$1 && p5$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b314 ==> p5$1 && p5$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b313 ==> p5$1 && p5$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b312 ==> p5$1 && p5$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b311 ==> p5$1 && p5$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b310 ==> p5$1 && p5$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b309 ==> p5$1 && p5$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b308 ==> p5$1 && p5$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b307 ==> p5$1 && p5$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b306 ==> p5$1 && p5$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b305 ==> p5$1 && p5$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b304 ==> p5$1 && p5$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b303 ==> p5$1 && p5$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b302 ==> p5$1 && p5$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b301 ==> p5$1 && p5$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b300 ==> p5$1 && p5$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b299 ==> p5$1 && p5$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b298 ==> p5$1 && p5$2 ==> $c51.0$1 == $c51.0$2;
    assert {:tag "predicatedEquality"} _b297 ==> p5$1 && p5$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b296 ==> p5$1 && p5$2 ==> $c5.0$1 == $c5.0$2;
    assert {:tag "predicatedEquality"} _b295 ==> p5$1 && p5$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b294 ==> p5$1 && p5$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b293 ==> p5$1 && p5$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b292 ==> p5$1 && p5$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b291 ==> p5$1 && p5$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b290 ==> p5$1 && p5$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b289 ==> p5$1 && p5$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "loopPredicateEquality"} _b288 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p5$1 == p5$2;
    assert {:tag "loopPredicateEquality"} _b287 ==> p5$1 == p5$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p5"} {:dominator_predicate "p4"} true;
    assert p5$1 ==> p2$1;
    assert p5$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b78 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b77 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b76 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b75 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b74 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b73 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b72 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b71 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b70 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b69 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b68 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b67 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b66 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) ==> p5$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b66 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) ==> p5$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p5$1 ==> _b65 ==> p5$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p5$2 ==> _b65 ==> p5$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64));
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b64 ==> BV64_UGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b64 ==> BV64_UGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b63 ==> BV64_ULE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b63 ==> BV64_ULE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b62 ==> BV64_SGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b62 ==> BV64_SGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b61 ==> BV64_SLE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b61 ==> BV64_SLE($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p5$1 ==> _b60 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p5$2 ==> _b60 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p5$1 ==> _b59 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p5$2 ==> _b59 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p5$1 ==> _b58 ==> BV64_SLE(0bv64, $0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p5$2 ==> _b58 ==> BV64_SLE(0bv64, $0$2);
    assert {:tag "guardNonNeg"} {:thread 1} p5$1 ==> _b57 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p5$2 ==> _b57 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p5$1 ==> _b56 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p5$2 ==> _b56 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p5$1 ==> true;
    v6$1 := (if p5$1 then BV64_SLT(BV32_SEXT64(BV32_SUB($m, 2bv32)), BV64_ADD($c1.0$1, 30bv64)) else v6$1);
    v6$2 := (if p5$2 then BV64_SLT(BV32_SEXT64(BV32_SUB($m, 2bv32)), BV64_ADD($c1.0$2, 30bv64)) else v6$2);
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
    p29$1 := false;
    p29$2 := false;
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
    p39$1 := false;
    p39$2 := false;
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
    p46$1 := false;
    p46$2 := false;
    p47$1 := false;
    p47$2 := false;
    p48$1 := false;
    p48$2 := false;
    p7$1 := (if p5$1 && v6$1 then v6$1 else p7$1);
    p7$2 := (if p5$2 && v6$2 then v6$2 else p7$2);
    p6$1 := (if p5$1 && !v6$1 then !v6$1 else p6$1);
    p6$2 := (if p5$2 && !v6$2 then !v6$2 else p6$2);
    $0$1 := (if p6$1 then BV64_ADD($c1.0$1, 30bv64) else $0$1);
    $0$2 := (if p6$2 then BV64_ADD($c1.0$2, 30bv64) else $0$2);
    $0$1 := (if p7$1 then BV32_SEXT64(BV32_SUB($m, 2bv32)) else $0$1);
    $0$2 := (if p7$2 then BV32_SEXT64(BV32_SUB($m, 2bv32)) else $0$2);
    v7$1 := (if p5$1 then BV64_SLE($c2.0$1, $0$1) else v7$1);
    v7$2 := (if p5$2 then BV64_SLE($c2.0$2, $0$2) else v7$2);
    p8$1 := (if p5$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p5$2 && v7$2 then v7$2 else p8$2);
    p5$1 := (if p5$1 && !v7$1 then v7$1 else p5$1);
    p5$2 := (if p5$2 && !v7$2 then v7$2 else p5$2);
    v8$1 := (if p8$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c2.0$1), 1bv64)) else v8$1);
    v8$2 := (if p8$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c2.0$2), 1bv64)) else v8$2);
    p10$1 := (if p8$1 && v8$1 then v8$1 else p10$1);
    p10$2 := (if p8$2 && v8$2 then v8$2 else p10$2);
    $c3.0$1 := (if p10$1 then 0bv64 else $c3.0$1);
    $c3.0$2 := (if p10$2 then 0bv64 else $c3.0$2);
    p11$1 := (if p10$1 then true else p11$1);
    p11$2 := (if p10$2 then true else p11$2);
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$12 := _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_8_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_8"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b332 ==> !p10$1 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A$ghost$$12 == _WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b331 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p10"} true;
    assert p11$1 ==> p5$1;
    assert p11$2 ==> p5$2;
    assert p5$1 ==> p2$1;
    assert p5$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b160 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c2.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b159 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b158 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b157 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b156 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b155 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c2.0$1), 1bv64)) && BV64_SLE($c3.0$1, $1$1) ==> p11$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b155 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c2.0$2), 1bv64)) && BV64_SLE($c3.0$2, $1$2) ==> p11$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p11$1 ==> _b154 ==> p11$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c2.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p11$2 ==> _b154 ==> p11$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c2.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b153 ==> BV64_UGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b153 ==> BV64_UGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b152 ==> BV64_ULE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b152 ==> BV64_ULE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b151 ==> BV64_SGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b151 ==> BV64_SGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b150 ==> BV64_SLE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b150 ==> BV64_SLE($c3.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p11$1 ==> _b149 ==> BV64_SLE(0bv64, $1$1);
    assert {:tag "guardNonNeg"} {:thread 2} p11$2 ==> _b149 ==> BV64_SLE(0bv64, $1$2);
    assert {:tag "guardNonNeg"} {:thread 1} p11$1 ==> _b148 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p11$2 ==> _b148 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 18} p11$1 ==> true;
    v9$1 := (if p11$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64)) else v9$1);
    v9$2 := (if p11$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64)) else v9$2);
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p13$1 := (if p11$1 && v9$1 then v9$1 else p13$1);
    p13$2 := (if p11$2 && v9$2 then v9$2 else p13$2);
    p12$1 := (if p11$1 && !v9$1 then !v9$1 else p12$1);
    p12$2 := (if p11$2 && !v9$2 then !v9$2 else p12$2);
    $1$1 := (if p12$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64) else $1$1);
    $1$2 := (if p12$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64) else $1$2);
    $1$1 := (if p13$1 then 31bv64 else $1$1);
    $1$2 := (if p13$2 then 31bv64 else $1$2);
    v10$1 := (if p11$1 then BV64_SLE($c3.0$1, $1$1) else v10$1);
    v10$2 := (if p11$2 then BV64_SLE($c3.0$2, $1$2) else v10$2);
    p14$1 := (if p11$1 && v10$1 then v10$1 else p14$1);
    p14$2 := (if p11$2 && v10$2 then v10$2 else p14$2);
    p11$1 := (if p11$1 && !v10$1 then v10$1 else p11$1);
    p11$2 := (if p11$2 && !v10$2 then v10$2 else p11$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v11$1 := (if p14$1 then _HAVOC_bv64$1 else v11$1);
    v11$2 := (if p14$2 then _HAVOC_bv64$2 else v11$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$kernel0.shared_A(p14$1, BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1), v11$1, $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(p14$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$kernel0.shared_A(p14$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_A"} true;
    $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)] := (if p14$1 then v11$1 else $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)]);
    $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)] := (if p14$2 then v11$2 else $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)]);
    $c3.0$1 := (if p14$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $c3.0$2 := (if p14$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p11$1 := (if p14$1 then true else p11$1);
    p11$2 := (if p14$2 then true else p11$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p11$1 && !p11$2;
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 28} $bugle_barrier_duplicated_6(1bv1, 1bv1, p8$1, p8$2);
    v12$1 := (if p8$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v12$1);
    v12$2 := (if p8$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v12$2);
    p16$1 := (if p8$1 && v12$1 then v12$1 else p16$1);
    p16$2 := (if p8$2 && v12$2 then v12$2 else p16$2);
    v13$1 := (if p16$1 then BV64_SGT(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, $c1.0$1), $c2.0$1), 1bv64)) else v13$1);
    v13$2 := (if p16$2 then BV64_SGT(0bv64, BV64_ADD(BV64_ADD(BV64_SUB(0bv64, $c1.0$2), $c2.0$2), 1bv64)) else v13$2);
    p18$1 := (if p16$1 && v13$1 then v13$1 else p18$1);
    p18$2 := (if p16$2 && v13$2 then v13$2 else p18$2);
    p17$1 := (if p16$1 && !v13$1 then !v13$1 else p17$1);
    p17$2 := (if p16$2 && !v13$2 then !v13$2 else p17$2);
    $2$1 := (if p17$1 then BV64_ADD(BV64_ADD(BV64_SUB(0bv64, $c1.0$1), $c2.0$1), 1bv64) else $2$1);
    $2$2 := (if p17$2 then BV64_ADD(BV64_ADD(BV64_SUB(0bv64, $c1.0$2), $c2.0$2), 1bv64) else $2$2);
    $2$1 := (if p18$1 then 0bv64 else $2$1);
    $2$2 := (if p18$2 then 0bv64 else $2$2);
    $c4.0$1 := (if p16$1 then $2$1 else $c4.0$1);
    $c4.0$2 := (if p16$2 then $2$2 else $c4.0$2);
    p19$1 := (if p16$1 then true else p19$1);
    p19$2 := (if p16$2 then true else p19$2);
    _READ_HAS_OCCURRED_$$B$ghost$$24 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$24 := _WRITE_HAS_OCCURRED_$$B;
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$24 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $24;

  $24:
    assume {:captureState "loop_head_state_6"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b337 ==> !p16$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$24 == _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b336 ==> !p16$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$24 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b335 ==> !p16$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$24 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b334 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b333 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p19"} {:dominator_predicate "p16"} true;
    assert p19$1 ==> p5$1;
    assert p19$2 ==> p5$2;
    assert p5$1 ==> p2$1;
    assert p5$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b101 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b100 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b99 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b98 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b97 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b96 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b95 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b94 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b93 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b92 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b91 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b90 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b89 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b88 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b87 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b86 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c4.0$1, $3$1) ==> p19$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b86 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c4.0$2, $3$2) ==> p19$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p19$1 ==> _b85 ==> p19$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p19$2 ==> _b85 ==> p19$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p19$1 ==> _b84 ==> BV64_UGE($c4.0$1, $2$1);
    assert {:tag "loopBound"} {:thread 2} p19$2 ==> _b84 ==> BV64_UGE($c4.0$2, $2$2);
    assert {:tag "loopBound"} {:thread 1} p19$1 ==> _b83 ==> BV64_ULE($c4.0$1, $2$1);
    assert {:tag "loopBound"} {:thread 2} p19$2 ==> _b83 ==> BV64_ULE($c4.0$2, $2$2);
    assert {:tag "loopBound"} {:thread 1} p19$1 ==> _b82 ==> BV64_SGE($c4.0$1, $2$1);
    assert {:tag "loopBound"} {:thread 2} p19$2 ==> _b82 ==> BV64_SGE($c4.0$2, $2$2);
    assert {:tag "loopBound"} {:thread 1} p19$1 ==> _b81 ==> BV64_SLE($c4.0$1, $2$1);
    assert {:tag "loopBound"} {:thread 2} p19$2 ==> _b81 ==> BV64_SLE($c4.0$2, $2$2);
    assert {:tag "guardNonNeg"} {:thread 1} p19$1 ==> _b80 ==> BV64_SLE(0bv64, $3$1);
    assert {:tag "guardNonNeg"} {:thread 2} p19$2 ==> _b80 ==> BV64_SLE(0bv64, $3$2);
    assert {:tag "guardNonNeg"} {:thread 1} p19$1 ==> _b79 ==> BV64_SLE(0bv64, $c4.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p19$2 ==> _b79 ==> BV64_SLE(0bv64, $c4.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 33} p19$1 ==> true;
    v14$1 := (if p19$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64)) else v14$1);
    v14$2 := (if p19$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64)) else v14$2);
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p21$1 := (if p19$1 && v14$1 then v14$1 else p21$1);
    p21$2 := (if p19$2 && v14$2 then v14$2 else p21$2);
    p20$1 := (if p19$1 && !v14$1 then !v14$1 else p20$1);
    p20$2 := (if p19$2 && !v14$2 then !v14$2 else p20$2);
    $3$1 := (if p20$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64) else $3$1);
    $3$2 := (if p20$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64) else $3$2);
    $3$1 := (if p21$1 then 31bv64 else $3$1);
    $3$2 := (if p21$2 then 31bv64 else $3$2);
    v15$1 := (if p19$1 then BV64_SLE($c4.0$1, $3$1) else v15$1);
    v15$2 := (if p19$2 then BV64_SLE($c4.0$2, $3$2) else v15$2);
    p22$1 := (if p19$1 && v15$1 then v15$1 else p22$1);
    p22$2 := (if p19$2 && v15$2 then v15$2 else p22$2);
    p19$1 := (if p19$1 && !v15$1 then v15$1 else p19$1);
    p19$2 := (if p19$2 && !v15$2 then v15$2 else p19$2);
    $c5.0$1 := (if p22$1 then 0bv64 else $c5.0$1);
    $c5.0$2 := (if p22$2 then 0bv64 else $c5.0$2);
    p23$1 := (if p22$1 then true else p23$1);
    p23$2 := (if p22$2 then true else p23$2);
    _READ_HAS_OCCURRED_$$B$ghost$$29 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$29 := _WRITE_HAS_OCCURRED_$$B;
    _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$29 := _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume {:captureState "loop_entry_state_7_0"} true;
    goto $29;

  $29:
    assume {:captureState "loop_head_state_7"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b342 ==> !p22$1 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A$ghost$$29 == _READ_HAS_OCCURRED_$$kernel0.shared_A;
    assert {:tag "disabledMaintainsInstrumentation"} _b341 ==> !p22$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$29 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b340 ==> !p22$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$29 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b339 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b338 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p23"} {:dominator_predicate "p22"} true;
    assert p23$1 ==> p19$1;
    assert p23$2 ==> p19$2;
    assert p19$1 ==> p5$1;
    assert p19$2 ==> p5$2;
    assert p5$1 ==> p2$1;
    assert p5$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b147 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c4.0$1, $3$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b146 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b145 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b144 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b143 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b142 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b141 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c4.0$1, $3$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b140 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b139 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b138 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b137 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b136 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b135 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c4.0$1, $3$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b134 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b133 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b132 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b131 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b130 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b129 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c4.0$1, $3$1) && BV64_SLE($c5.0$1, $4$1) ==> p23$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b129 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c4.0$2, $3$2) && BV64_SLE($c5.0$2, $4$2) ==> p23$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p23$1 ==> _b128 ==> p23$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c4.0$1, $3$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p23$2 ==> _b128 ==> p23$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c4.0$2, $3$2);
    assert {:tag "loopBound"} {:thread 1} p23$1 ==> _b127 ==> BV64_UGE($c5.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p23$2 ==> _b127 ==> BV64_UGE($c5.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p23$1 ==> _b126 ==> BV64_ULE($c5.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p23$2 ==> _b126 ==> BV64_ULE($c5.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p23$1 ==> _b125 ==> BV64_SGE($c5.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p23$2 ==> _b125 ==> BV64_SGE($c5.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p23$1 ==> _b124 ==> BV64_SLE($c5.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p23$2 ==> _b124 ==> BV64_SLE($c5.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p23$1 ==> _b123 ==> BV64_SLE(0bv64, $4$1);
    assert {:tag "guardNonNeg"} {:thread 2} p23$2 ==> _b123 ==> BV64_SLE(0bv64, $4$2);
    assert {:tag "guardNonNeg"} {:thread 1} p23$1 ==> _b122 ==> BV64_SLE(0bv64, $c5.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p23$2 ==> _b122 ==> BV64_SLE(0bv64, $c5.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 38} p23$1 ==> true;
    v16$1 := (if p23$1 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB($c1.0$1, $c2.0$1), $c4.0$1), 1bv64)) else v16$1);
    v16$2 := (if p23$2 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB($c1.0$2, $c2.0$2), $c4.0$2), 1bv64)) else v16$2);
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p25$1 := (if p23$1 && v16$1 then v16$1 else p25$1);
    p25$2 := (if p23$2 && v16$2 then v16$2 else p25$2);
    p24$1 := (if p23$1 && !v16$1 then !v16$1 else p24$1);
    p24$2 := (if p23$2 && !v16$2 then !v16$2 else p24$2);
    $4$1 := (if p24$1 then BV64_SUB(BV64_ADD(BV64_SUB($c1.0$1, $c2.0$1), $c4.0$1), 1bv64) else $4$1);
    $4$2 := (if p24$2 then BV64_SUB(BV64_ADD(BV64_SUB($c1.0$2, $c2.0$2), $c4.0$2), 1bv64) else $4$2);
    $4$1 := (if p25$1 then 31bv64 else $4$1);
    $4$2 := (if p25$2 then 31bv64 else $4$2);
    v17$1 := (if p23$1 then BV64_SLE($c5.0$1, $4$1) else v17$1);
    v17$2 := (if p23$2 then BV64_SLE($c5.0$2, $4$2) else v17$2);
    p26$1 := (if p23$1 && v17$1 then v17$1 else p26$1);
    p26$2 := (if p23$2 && v17$2 then v17$2 else p26$2);
    p23$1 := (if p23$1 && !v17$1 then v17$1 else p23$1);
    p23$2 := (if p23$2 && !v17$2 then v17$2 else p23$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$kernel0.shared_A(p26$1, BV32_ADD(BV32_MUL($c4.0$1[32:0], 32bv32), $c5.0$1[32:0]), $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL($c4.0$1[32:0], 32bv32), $c5.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$kernel0.shared_A(p26$2, BV32_ADD(BV32_MUL($c4.0$2[32:0], 32bv32), $c5.0$2[32:0]), $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c4.0$2[32:0], 32bv32), $c5.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_A"} true;
    v18$1 := (if p26$1 then $$kernel0.shared_A[1bv1][BV32_ADD(BV32_MUL($c4.0$1[32:0], 32bv32), $c5.0$1[32:0])] else v18$1);
    v18$2 := (if p26$2 then $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c4.0$2[32:0], 32bv32), $c5.0$2[32:0])] else v18$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$B(p26$1, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$B(p26$2, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v19$1 := (if p26$1 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c4.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v19$1);
    v19$2 := (if p26$2 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c4.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v19$2);
    v20$1 := (if p26$1 then BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c5.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0] else v20$1);
    v20$2 := (if p26$2 then BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c5.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0] else v20$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$B(p26$1, v20$1, $$B[v20$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$B(p26$2, v20$2, $$B[v20$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v21$1 := (if p26$1 then $$B[v20$1] else v21$1);
    v21$2 := (if p26$2 then $$B[v20$2] else v21$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$B(p26$1, v20$1, FADD64(FMUL64(v18$1, v19$1), v21$1), $$B[v20$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(p26$2, v20$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$B(p26$2, v20$2, FADD64(FMUL64(v18$2, v19$2), v21$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$B"} true;
    $$B[v20$1] := (if p26$1 then FADD64(FMUL64(v18$1, v19$1), v21$1) else $$B[v20$1]);
    $$B[v20$2] := (if p26$2 then FADD64(FMUL64(v18$2, v19$2), v21$2) else $$B[v20$2]);
    $c5.0$1 := (if p26$1 then BV64_ADD($c5.0$1, 1bv64) else $c5.0$1);
    $c5.0$2 := (if p26$2 then BV64_ADD($c5.0$2, 1bv64) else $c5.0$2);
    p23$1 := (if p26$1 then true else p23$1);
    p23$2 := (if p26$2 then true else p23$2);
    goto $29.backedge, $29.tail;

  $29.tail:
    assume !p23$1 && !p23$2;
    $c4.0$1 := (if p22$1 then BV64_ADD($c4.0$1, 1bv64) else $c4.0$1);
    $c4.0$2 := (if p22$2 then BV64_ADD($c4.0$2, 1bv64) else $c4.0$2);
    p19$1 := (if p22$1 then true else p19$1);
    p19$2 := (if p22$2 then true else p19$2);
    goto $24.backedge, $24.tail;

  $24.tail:
    assume !p19$1 && !p19$2;
    v22$1 := (if p16$1 then BV64_SGE(BV64_ADD($c1.0$1, 31bv64), BV32_SEXT64($m)) else v22$1);
    v22$2 := (if p16$2 then BV64_SGE(BV64_ADD($c1.0$2, 31bv64), BV32_SEXT64($m)) else v22$2);
    p28$1 := (if p16$1 && v22$1 then v22$1 else p28$1);
    p28$2 := (if p16$2 && v22$2 then v22$2 else p28$2);
    $c51.0$1 := (if p28$1 then 0bv64 else $c51.0$1);
    $c51.0$2 := (if p28$2 then 0bv64 else $c51.0$2);
    p29$1 := (if p28$1 then true else p29$1);
    p29$2 := (if p28$2 then true else p29$2);
    _READ_HAS_OCCURRED_$$B$ghost$$39 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$39 := _WRITE_HAS_OCCURRED_$$B;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $39;

  $39:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b346 ==> !p28$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$39 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b345 ==> !p28$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$39 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b344 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b343 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p29"} {:dominator_predicate "p28"} true;
    assert p29$1 ==> p5$1;
    assert p29$2 ==> p5$2;
    assert p5$1 ==> p2$1;
    assert p5$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b121 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV64_ADD($c1.0$1, 31bv64), BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b120 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b119 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b118 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b117 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b116 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b115 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV64_ADD($c1.0$1, 31bv64), BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b114 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b113 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c2.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b112 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b111 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b110 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b109 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV64_ADD($c1.0$1, 31bv64), BV32_SEXT64($m)) && BV64_SLE($c51.0$1, $5$1) ==> p29$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b109 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV64_ADD($c1.0$2, 31bv64), BV32_SEXT64($m)) && BV64_SLE($c51.0$2, $5$2) ==> p29$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p29$1 ==> _b108 ==> p29$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLE($c2.0$1, $0$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SGE(BV64_ADD($c1.0$1, 31bv64), BV32_SEXT64($m));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p29$2 ==> _b108 ==> p29$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLE($c2.0$2, $0$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SGE(BV64_ADD($c1.0$2, 31bv64), BV32_SEXT64($m));
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b107 ==> BV64_UGE($c51.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b107 ==> BV64_UGE($c51.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b106 ==> BV64_ULE($c51.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b106 ==> BV64_ULE($c51.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b105 ==> BV64_SGE($c51.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b105 ==> BV64_SGE($c51.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p29$1 ==> _b104 ==> BV64_SLE($c51.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p29$2 ==> _b104 ==> BV64_SLE($c51.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p29$1 ==> _b103 ==> BV64_SLE(0bv64, $5$1);
    assert {:tag "guardNonNeg"} {:thread 2} p29$2 ==> _b103 ==> BV64_SLE(0bv64, $5$2);
    assert {:tag "guardNonNeg"} {:thread 1} p29$1 ==> _b102 ==> BV64_SLE(0bv64, $c51.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p29$2 ==> _b102 ==> BV64_SLE(0bv64, $c51.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 52} p29$1 ==> true;
    v23$1 := (if p29$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1bv64)) else v23$1);
    v23$2 := (if p29$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1bv64)) else v23$2);
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p32$1 := false;
    p32$2 := false;
    p31$1 := (if p29$1 && v23$1 then v23$1 else p31$1);
    p31$2 := (if p29$2 && v23$2 then v23$2 else p31$2);
    p30$1 := (if p29$1 && !v23$1 then !v23$1 else p30$1);
    p30$2 := (if p29$2 && !v23$2 then !v23$2 else p30$2);
    $5$1 := (if p30$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$1), 1bv64) else $5$1);
    $5$2 := (if p30$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c2.0$2), 1bv64) else $5$2);
    $5$1 := (if p31$1 then 31bv64 else $5$1);
    $5$2 := (if p31$2 then 31bv64 else $5$2);
    v24$1 := (if p29$1 then BV64_SLE($c51.0$1, $5$1) else v24$1);
    v24$2 := (if p29$2 then BV64_SLE($c51.0$2, $5$2) else v24$2);
    p32$1 := (if p29$1 && v24$1 then v24$1 else p32$1);
    p32$2 := (if p29$2 && v24$2 then v24$2 else p32$2);
    p29$1 := (if p29$1 && !v24$1 then v24$1 else p29$1);
    p29$2 := (if p29$2 && !v24$2 then v24$2 else p29$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$B(p32$1, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$B(p32$2, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v25$1 := (if p32$1 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v25$1);
    v25$2 := (if p32$2 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v25$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$B(p32$1, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0], FMUL64($alpha, v25$1), $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(p32$2, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$B(p32$2, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0], FMUL64($alpha, v25$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$B"} true;
    $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] := (if p32$1 then FMUL64($alpha, v25$1) else $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c51.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] := (if p32$2 then FMUL64($alpha, v25$2) else $$B[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c51.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    $c51.0$1 := (if p32$1 then BV64_ADD($c51.0$1, 1bv64) else $c51.0$1);
    $c51.0$2 := (if p32$2 then BV64_ADD($c51.0$2, 1bv64) else $c51.0$2);
    p29$1 := (if p32$1 then true else p29$1);
    p29$2 := (if p32$2 then true else p29$2);
    goto $39.backedge, __partitioned_block_$39.tail_0;

  __partitioned_block_$39.tail_0:
    assume !p29$1 && !p29$2;
    goto __partitioned_block_$39.tail_1;

  __partitioned_block_$39.tail_1:
    call {:sourceloc_num 63} $bugle_barrier_duplicated_7(1bv1, 1bv1, p8$1, p8$2);
    $c2.0$1 := (if p8$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p8$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p5$1 := (if p8$1 then true else p5$1);
    p5$2 := (if p8$2 then true else p5$2);
    goto $6.backedge, __partitioned_block_$6.tail_0;

  __partitioned_block_$6.tail_0:
    assume !p5$1 && !p5$2;
    v26$1 := (if p4$1 then BV32_SGE($m, 33bv32) else v26$1);
    v26$2 := (if p4$2 then BV32_SGE($m, 33bv32) else v26$2);
    p34$1 := (if p4$1 && v26$1 then v26$1 else p34$1);
    p34$2 := (if p4$2 && v26$2 then v26$2 else p34$2);
    v27$1 := (if p34$1 then BV64_ADD($c1.0$1, 1bv64) == BV32_SEXT64($m) else v27$1);
    v27$2 := (if p34$2 then BV64_ADD($c1.0$2, 1bv64) == BV32_SEXT64($m) else v27$2);
    p36$1 := (if p34$1 && v27$1 then v27$1 else p36$1);
    p36$2 := (if p34$2 && v27$2 then v27$2 else p36$2);
    v28$1 := (if p36$1 then BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 else v28$1);
    v28$2 := (if p36$2 then BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 else v28$2);
    p38$1 := (if p36$1 && v28$1 then v28$1 else p38$1);
    p38$2 := (if p36$2 && v28$2 then v28$2 else p38$2);
    v29$1 := (if p38$1 then v2$1 == 0bv64 else v29$1);
    v29$2 := (if p38$2 then v2$2 == 0bv64 else v29$2);
    p40$1 := (if p38$1 && v29$1 then v29$1 else p40$1);
    p40$2 := (if p38$2 && v29$2 then v29$2 else p40$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v30$1 := (if p40$1 then _HAVOC_bv64$1 else v30$1);
    v30$2 := (if p40$2 then _HAVOC_bv64$2 else v30$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$kernel0.shared_A(p40$1, 0bv32, v30$1, $$kernel0.shared_A[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(p40$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$kernel0.shared_A(p40$2, 0bv32, v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_A"} true;
    $$kernel0.shared_A[1bv1][0bv32] := (if p40$1 then v30$1 else $$kernel0.shared_A[1bv1][0bv32]);
    $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p40$2 then v30$2 else $$kernel0.shared_A[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$6.tail_1;

  __partitioned_block_$6.tail_1:
    call {:sourceloc_num 73} $bugle_barrier_duplicated_4(1bv1, 1bv1, p38$1, p38$2);
    v31$1 := (if p38$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v31$1);
    v31$2 := (if p38$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v31$2);
    p42$1 := (if p38$1 && v31$1 then v31$1 else p42$1);
    p42$2 := (if p38$2 && v31$2 then v31$2 else p42$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$B(p42$1, BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$B(p42$2, BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v32$1 := (if p42$1 then $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v32$1);
    v32$2 := (if p42$2 then $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v32$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$B(p42$1, BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0], FMUL64($alpha, v32$1), $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(p42$2, BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$B(p42$2, BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0], FMUL64($alpha, v32$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$B"} true;
    $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] := (if p42$1 then FMUL64($alpha, v32$1) else $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] := (if p42$2 then FMUL64($alpha, v32$2) else $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(BV32_SUB($m, 1bv32), $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    goto __partitioned_block_$6.tail_2;

  __partitioned_block_$6.tail_2:
    call {:sourceloc_num 78} $bugle_barrier_duplicated_5(1bv1, 1bv1, p38$1, p38$2);
    v33$1 := (if p4$1 then $m == 1bv32 else v33$1);
    v33$2 := (if p4$2 then $m == 1bv32 else v33$2);
    p44$1 := (if p4$1 && v33$1 then v33$1 else p44$1);
    p44$2 := (if p4$2 && v33$2 then v33$2 else p44$2);
    v34$1 := (if p44$1 then $c1.0$1 == 0bv64 else v34$1);
    v34$2 := (if p44$2 then $c1.0$2 == 0bv64 else v34$2);
    p46$1 := (if p44$1 && v34$1 then v34$1 else p46$1);
    p46$2 := (if p44$2 && v34$2 then v34$2 else p46$2);
    goto __partitioned_block_$6.tail_3;

  __partitioned_block_$6.tail_3:
    call {:sourceloc_num 82} $bugle_barrier_duplicated_2(1bv1, 1bv1, p46$1, p46$2);
    v35$1 := (if p46$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v35$1);
    v35$2 := (if p46$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v35$2);
    p48$1 := (if p46$1 && v35$1 then v35$1 else p48$1);
    p48$2 := (if p46$2 && v35$2 then v35$2 else p48$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$B(p48$1, BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$B(p48$2, BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v36$1 := (if p48$1 then $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v36$1);
    v36$2 := (if p48$2 then $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v36$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$B(p48$1, BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0], FMUL64($alpha, v36$1), $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(p48$2, BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$B(p48$2, BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0], FMUL64($alpha, v36$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$B"} true;
    $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] := (if p48$1 then FMUL64($alpha, v36$1) else $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] := (if p48$2 then FMUL64($alpha, v36$2) else $$B[BV64_ADD(BV32_SEXT64(BV32_MUL(0bv32, $n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    goto __partitioned_block_$6.tail_4;

  __partitioned_block_$6.tail_4:
    call {:sourceloc_num 87} $bugle_barrier_duplicated_3(1bv1, 1bv1, p46$1, p46$2);
    $c22.0$1 := (if p49$1 then 0bv64 else $c22.0$1);
    $c22.0$2 := (if p49$2 then 0bv64 else $c22.0$2);
    p50$1 := (if p49$1 then true else p50$1);
    p50$2 := (if p49$2 then true else p50$2);
    _READ_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0 := _WRITE_HAS_OCCURRED_$$B;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$64_0;

  __partitioned_block_$64_0:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b360 ==> !p49$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b359 ==> !p49$1 ==> _READ_HAS_OCCURRED_$$B$ghost$__partitioned_block_$64_0 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b358 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b357 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b356 ==> !_WRITE_HAS_OCCURRED_$$B;
    assert {:tag "noread"} _b355 ==> !_READ_HAS_OCCURRED_$$B;
    assert {:tag "predicatedEquality"} _b354 ==> p50$1 && p50$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b353 ==> p50$1 && p50$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b352 ==> p50$1 && p50$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b351 ==> p50$1 && p50$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b350 ==> p50$1 && p50$2 ==> $c53.0$1 == $c53.0$2;
    assert {:tag "predicatedEquality"} _b349 ==> p50$1 && p50$2 ==> $c22.0$1 == $c22.0$2;
    assert {:tag "loopPredicateEquality"} _b348 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p50$1 == p50$2;
    assert {:tag "loopPredicateEquality"} _b347 ==> p50$1 == p50$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p50"} {:dominator_predicate "p49"} true;
    assert p50$1 ==> p2$1;
    assert p50$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _WRITE_HAS_OCCURRED_$$B ==> !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _READ_HAS_OCCURRED_$$B ==> !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b32 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLT($c22.0$1, BV32_SEXT64($m)) ==> p50$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b32 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLT($c22.0$2, BV32_SEXT64($m)) ==> p50$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p50$1 ==> _b31 ==> p50$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p50$2 ==> _b31 ==> p50$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64));
    assert {:tag "loopBound"} {:thread 1} p50$1 ==> _b30 ==> BV64_UGE($c22.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p50$2 ==> _b30 ==> BV64_UGE($c22.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p50$1 ==> _b29 ==> BV64_ULE($c22.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p50$2 ==> _b29 ==> BV64_ULE($c22.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p50$1 ==> _b28 ==> BV64_SGE($c22.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p50$2 ==> _b28 ==> BV64_SGE($c22.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p50$1 ==> _b27 ==> BV64_SLE($c22.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p50$2 ==> _b27 ==> BV64_SLE($c22.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p50$1 ==> _b26 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c22.0$1, 0bv64) == BV64_SUB($c22.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p50$2 ==> _b26 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c22.0$2, 0bv64) == BV64_SUB($c22.0$1, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p50$1 ==> _b25 ==> BV64_SUB($c22.0$1, 0bv64) == BV64_SUB($c22.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p50$2 ==> _b25 ==> BV64_SUB($c22.0$2, 0bv64) == BV64_SUB($c22.0$1, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p50$1 ==> _b24 ==> BV64_SLE(0bv64, $c22.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p50$2 ==> _b24 ==> BV64_SLE(0bv64, $c22.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p50$1 ==> _b23 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c22.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p50$2 ==> _b23 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c22.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 90} p50$1 ==> true;
    v37$1 := (if p50$1 then BV64_SLT($c22.0$1, BV32_SEXT64($m)) else v37$1);
    v37$2 := (if p50$2 then BV64_SLT($c22.0$2, BV32_SEXT64($m)) else v37$2);
    p51$1 := false;
    p51$2 := false;
    p52$1 := false;
    p52$2 := false;
    p53$1 := false;
    p53$2 := false;
    p54$1 := false;
    p54$2 := false;
    p51$1 := (if p50$1 && v37$1 then v37$1 else p51$1);
    p51$2 := (if p50$2 && v37$2 then v37$2 else p51$2);
    p50$1 := (if p50$1 && !v37$1 then v37$1 else p50$1);
    p50$2 := (if p50$2 && !v37$2 then v37$2 else p50$2);
    goto __partitioned_block_$64_1;

  __partitioned_block_$64_1:
    call {:sourceloc_num 92} $bugle_barrier_duplicated_0(1bv1, 1bv1, p51$1, p51$2);
    v38$1 := (if p51$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v38$1);
    v38$2 := (if p51$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v38$2);
    p53$1 := (if p51$1 && v38$1 then v38$1 else p53$1);
    p53$2 := (if p51$2 && v38$2 then v38$2 else p53$2);
    $c53.0$1 := (if p53$1 then 0bv64 else $c53.0$1);
    $c53.0$2 := (if p53$2 then 0bv64 else $c53.0$2);
    p54$1 := (if p53$1 then true else p54$1);
    p54$2 := (if p53$2 then true else p54$2);
    _READ_HAS_OCCURRED_$$B$ghost$$67 := _READ_HAS_OCCURRED_$$B;
    _WRITE_HAS_OCCURRED_$$B$ghost$$67 := _WRITE_HAS_OCCURRED_$$B;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $67;

  $67:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b364 ==> !p53$1 ==> _WRITE_HAS_OCCURRED_$$B$ghost$$67 == _WRITE_HAS_OCCURRED_$$B;
    assert {:tag "disabledMaintainsInstrumentation"} _b363 ==> !p53$1 ==> _READ_HAS_OCCURRED_$$B$ghost$$67 == _READ_HAS_OCCURRED_$$B;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b362 ==> _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b361 ==> _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p54"} {:dominator_predicate "p53"} true;
    assert p54$1 ==> p50$1;
    assert p54$2 ==> p50$2;
    assert p50$1 ==> p2$1;
    assert p50$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b55 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b54 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c22.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b53 ==> _WRITE_HAS_OCCURRED_$$B ==> !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b52 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b51 ==> _WRITE_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c22.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _READ_HAS_OCCURRED_$$B ==> !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLE($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$B ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b45 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLT($c22.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c53.0$1, 31bv64) ==> p54$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b45 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLT($c22.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c53.0$2, 31bv64) ==> p54$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p54$1 ==> _b44 ==> p54$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$1, 1bv64)) && BV64_SLT($c22.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p54$2 ==> _b44 ==> p54$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($m)) && !BV64_SGE(BV32_SEXT64($m), BV64_ADD($c1.0$2, 1bv64)) && BV64_SLT($c22.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p54$1 ==> _b43 ==> BV64_UGE($c53.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p54$2 ==> _b43 ==> BV64_UGE($c53.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p54$1 ==> _b42 ==> BV64_ULE($c53.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p54$2 ==> _b42 ==> BV64_ULE($c53.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p54$1 ==> _b41 ==> BV64_SGE($c53.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p54$2 ==> _b41 ==> BV64_SGE($c53.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p54$1 ==> _b40 ==> BV64_SLE($c53.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p54$2 ==> _b40 ==> BV64_SLE($c53.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p54$1 ==> _b39 ==> BV64_SLE(0bv64, $c53.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p54$2 ==> _b39 ==> BV64_SLE(0bv64, $c53.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($m), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 2bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_MUL(32bv32, (if BV32_ULT(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 0bv32) then BV32_SUB(0bv32, BV32_UDIV(BV32_SUB(BV32_ADD(BV32_SUB(0bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m)), 32bv32), 1bv32), 32bv32)) else BV32_UDIV(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 32bv32))))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 32bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 33bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32) == $m then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SREM(BV32_SUB($m, 1bv32), 32bv32) == 0bv32 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$B ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 94} p54$1 ==> true;
    v39$1 := (if p54$1 then BV64_SLE($c53.0$1, 31bv64) else v39$1);
    v39$2 := (if p54$2 then BV64_SLE($c53.0$2, 31bv64) else v39$2);
    p55$1 := false;
    p55$2 := false;
    p55$1 := (if p54$1 && v39$1 then v39$1 else p55$1);
    p55$2 := (if p54$2 && v39$2 then v39$2 else p55$2);
    p54$1 := (if p54$1 && !v39$1 then v39$1 else p54$1);
    p54$2 := (if p54$2 && !v39$2 then v39$2 else p54$2);
    call {:sourceloc} {:sourceloc_num 96} _LOG_READ_$$B(p55$1, BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 96} _CHECK_READ_$$B(p55$2, BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$B"} true;
    v40$1 := (if p55$1 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v40$1);
    v40$2 := (if p55$2 then $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v40$2);
    call {:sourceloc} {:sourceloc_num 97} _LOG_WRITE_$$B(p55$1, BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0], FMUL64($alpha, v40$1), $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$B(p55$2, BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 97} _CHECK_WRITE_$$B(p55$2, BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0], FMUL64($alpha, v40$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$B"} true;
    $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]] := (if p55$1 then FMUL64($alpha, v40$1) else $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$1, $c53.0$1), BV32_SEXT64($n)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]] := (if p55$2 then FMUL64($alpha, v40$2) else $$B[BV64_ADD(BV64_MUL(BV64_ADD($c22.0$2, $c53.0$2), BV32_SEXT64($n)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    $c53.0$1 := (if p55$1 then BV64_ADD($c53.0$1, 1bv64) else $c53.0$1);
    $c53.0$2 := (if p55$2 then BV64_ADD($c53.0$2, 1bv64) else $c53.0$2);
    p54$1 := (if p55$1 then true else p54$1);
    p54$2 := (if p55$2 then true else p54$2);
    goto $67.backedge, __partitioned_block_$67.tail_0;

  __partitioned_block_$67.tail_0:
    assume !p54$1 && !p54$2;
    goto __partitioned_block_$67.tail_1;

  __partitioned_block_$67.tail_1:
    call {:sourceloc_num 101} $bugle_barrier_duplicated_1(1bv1, 1bv1, p51$1, p51$2);
    $c22.0$1 := (if p51$1 then BV64_ADD($c22.0$1, 32bv64) else $c22.0$1);
    $c22.0$2 := (if p51$2 then BV64_ADD($c22.0$2, 32bv64) else $c22.0$2);
    p50$1 := (if p51$1 then true else p50$1);
    p50$2 := (if p51$2 then true else p50$2);
    goto $64.backedge, $64.tail;

  $64.tail:
    assume !p50$1 && !p50$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 32bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 32bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 1048576bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 1048576bv64) else $c0.0$2);
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

  $64.backedge:
    assume {:backedge} p50$1 || p50$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$64_0;

  $67.backedge:
    assume {:backedge} p54$1 || p54$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $67;

  $6.backedge:
    assume {:backedge} p5$1 || p5$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $6;

  $39.backedge:
    assume {:backedge} p29$1 || p29$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $39;

  $24.backedge:
    assume {:backedge} p19$1 || p19$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $24;

  $29.backedge:
    assume {:backedge} p23$1 || p23$2;
    assume {:captureState "loop_back_edge_state_7_0"} true;
    goto $29;

  $12.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_8_0"} true;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel0.shared_A, $$B, _TRACKING;



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



const _WATCHED_VALUE_$$kernel0.shared_A: bv64;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_A;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_A);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_A, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_A);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_A(_P: bool, _offset: bv32);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A"} {:array "$$kernel0.shared_A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A);
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
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
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$B;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$B;
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
    havoc $$B;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel0.shared_A;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

const {:existential true} _b243: bool;

const {:existential true} _b244: bool;

const {:existential true} _b245: bool;

const {:existential true} _b246: bool;

const {:existential true} _b247: bool;

const {:existential true} _b248: bool;

const {:existential true} _b249: bool;

const {:existential true} _b250: bool;

const {:existential true} _b251: bool;

const {:existential true} _b252: bool;

const {:existential true} _b253: bool;

const {:existential true} _b254: bool;

const {:existential true} _b255: bool;

const {:existential true} _b256: bool;

const {:existential true} _b257: bool;

const {:existential true} _b258: bool;

const {:existential true} _b259: bool;

const {:existential true} _b260: bool;

const {:existential true} _b261: bool;

const {:existential true} _b262: bool;

const {:existential true} _b263: bool;

const {:existential true} _b264: bool;

const {:existential true} _b265: bool;

const {:existential true} _b266: bool;

const {:existential true} _b267: bool;

const {:existential true} _b268: bool;

const {:existential true} _b269: bool;

const {:existential true} _b270: bool;

const {:existential true} _b271: bool;

const {:existential true} _b272: bool;

const {:existential true} _b273: bool;

const {:existential true} _b274: bool;

const {:existential true} _b275: bool;

const {:existential true} _b276: bool;

const {:existential true} _b277: bool;

const {:existential true} _b278: bool;

const {:existential true} _b279: bool;

const {:existential true} _b280: bool;

const {:existential true} _b281: bool;

const {:existential true} _b282: bool;

const {:existential true} _b283: bool;

const {:existential true} _b284: bool;

const {:existential true} _b285: bool;

const {:existential true} _b286: bool;

const {:existential true} _b287: bool;

const {:existential true} _b288: bool;

const {:existential true} _b289: bool;

const {:existential true} _b290: bool;

const {:existential true} _b291: bool;

const {:existential true} _b292: bool;

const {:existential true} _b293: bool;

const {:existential true} _b294: bool;

const {:existential true} _b295: bool;

const {:existential true} _b296: bool;

const {:existential true} _b297: bool;

const {:existential true} _b298: bool;

const {:existential true} _b299: bool;

const {:existential true} _b300: bool;

const {:existential true} _b301: bool;

const {:existential true} _b302: bool;

const {:existential true} _b303: bool;

const {:existential true} _b304: bool;

const {:existential true} _b305: bool;

const {:existential true} _b306: bool;

const {:existential true} _b307: bool;

const {:existential true} _b308: bool;

const {:existential true} _b309: bool;

const {:existential true} _b310: bool;

const {:existential true} _b311: bool;

const {:existential true} _b312: bool;

const {:existential true} _b313: bool;

const {:existential true} _b314: bool;

const {:existential true} _b315: bool;

const {:existential true} _b316: bool;

const {:existential true} _b317: bool;

const {:existential true} _b318: bool;

const {:existential true} _b319: bool;

const {:existential true} _b320: bool;

const {:existential true} _b321: bool;

const {:existential true} _b322: bool;

const {:existential true} _b323: bool;

const {:existential true} _b324: bool;

const {:existential true} _b325: bool;

const {:existential true} _b326: bool;

const {:existential true} _b327: bool;

const {:existential true} _b328: bool;

const {:existential true} _b329: bool;

const {:existential true} _b330: bool;

const {:existential true} _b331: bool;

const {:existential true} _b332: bool;

const {:existential true} _b333: bool;

const {:existential true} _b334: bool;

const {:existential true} _b335: bool;

const {:existential true} _b336: bool;

const {:existential true} _b337: bool;

const {:existential true} _b338: bool;

const {:existential true} _b339: bool;

const {:existential true} _b340: bool;

const {:existential true} _b341: bool;

const {:existential true} _b342: bool;

const {:existential true} _b343: bool;

const {:existential true} _b344: bool;

const {:existential true} _b345: bool;

const {:existential true} _b346: bool;

const {:existential true} _b347: bool;

const {:existential true} _b348: bool;

const {:existential true} _b349: bool;

const {:existential true} _b350: bool;

const {:existential true} _b351: bool;

const {:existential true} _b352: bool;

const {:existential true} _b353: bool;

const {:existential true} _b354: bool;

const {:existential true} _b355: bool;

const {:existential true} _b356: bool;

const {:existential true} _b357: bool;

const {:existential true} _b358: bool;

const {:existential true} _b359: bool;

const {:existential true} _b360: bool;

const {:existential true} _b361: bool;

const {:existential true} _b362: bool;

const {:existential true} _b363: bool;

const {:existential true} _b364: bool;
