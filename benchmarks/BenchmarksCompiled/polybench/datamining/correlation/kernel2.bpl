type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "data"} {:global} $$data: [bv32]bv64;

axiom {:array_info "$$data"} {:global} {:elem_width 64} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

var {:source_name "mean"} {:global} $$mean: [bv32]bv64;

axiom {:array_info "$$mean"} {:global} {:elem_width 64} {:source_name "mean"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mean: bool;

var {:source_name "stddev"} {:global} $$stddev: [bv32]bv64;

axiom {:array_info "$$stddev"} {:global} {:elem_width 64} {:source_name "stddev"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$stddev: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$stddev: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$stddev: bool;

axiom {:array_info "$$private_mean"} {:elem_width 64} {:source_name "private_mean"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$private_stddev"} {:elem_width 64} {:source_name "private_stddev"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:source_name "shared_data"} {:group_shared} $$kernel2.shared_data: [bv1][bv32]bv64;

axiom {:array_info "$$kernel2.shared_data"} {:group_shared} {:elem_width 64} {:source_name "shared_data"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel2.shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data: bool;

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

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel2"} {:kernel} $kernel2($float_n: bv64, $m: bv32, $n: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), 18446744071562067968bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$mean && !_WRITE_HAS_OCCURRED_$$mean && !_ATOMIC_HAS_OCCURRED_$$mean;
  requires !_READ_HAS_OCCURRED_$$stddev && !_WRITE_HAS_OCCURRED_$$stddev && !_ATOMIC_HAS_OCCURRED_$$stddev;
  requires !_READ_HAS_OCCURRED_$$kernel2.shared_data && !_WRITE_HAS_OCCURRED_$$kernel2.shared_data && !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
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
  modifies $$kernel2.shared_data, _READ_HAS_OCCURRED_$$mean, _READ_HAS_OCCURRED_$$stddev, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING, _READ_HAS_OCCURRED_$$kernel2.shared_data, _TRACKING, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev, _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _TRACKING;



implementation {:source_name "kernel2"} {:kernel} $kernel2($float_n: bv64, $m: bv32, $n: bv32)
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
  var $c21.0$1: bv64;
  var $c21.0$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
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
  var v5$1: bv64;
  var v5$2: bv64;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bv64;
  var v7$2: bv64;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bv64;
  var v12$2: bv64;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bv64;
  var v15$2: bv64;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
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
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv64;
  var v25$2: bv64;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bv64;
  var v29$2: bv64;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv64;
  var v32$2: bv64;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: bv64;
  var v34$2: bv64;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bv64;
  var v36$2: bv64;
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
  var _READ_HAS_OCCURRED_$$data$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$10: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$30: bool;
  var _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30: bool;


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
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b124 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b123 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "nowrite"} _b122 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "noread"} _b121 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b120 ==> _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b119 ==> _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b118 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assert {:tag "noread"} _b117 ==> !_READ_HAS_OCCURRED_$$stddev;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b116 ==> _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b115 ==> _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b114 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assert {:tag "noread"} _b113 ==> !_READ_HAS_OCCURRED_$$mean;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b112 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b111 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b110 ==> !_WRITE_HAS_OCCURRED_$$data;
    assert {:tag "noread"} _b109 ==> !_READ_HAS_OCCURRED_$$data;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> $c21.0$1 == $c21.0$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b66 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b65 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) ==> p0$2;
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
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 10} p0$1 ==> true;
    v3$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($m)) else v3$1);
    v3$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($m)) else v3$2);
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
    p36$1 := false;
    p36$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    v4$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v4$1);
    v4$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v4$2);
    p3$1 := (if p1$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p1$2 && v4$2 then v4$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$mean(p3$1, BV64_ADD(v2$1, $c0.0$1)[32:0], $$mean[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$mean(p3$2, BV64_ADD(v2$2, $c0.0$2)[32:0], $$mean[BV64_ADD(v2$2, $c0.0$2)[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$mean"} true;
    v5$1 := (if p3$1 then $$mean[BV64_ADD(v2$1, $c0.0$1)[32:0]] else v5$1);
    v5$2 := (if p3$2 then $$mean[BV64_ADD(v2$2, $c0.0$2)[32:0]] else v5$2);
    $$private_mean$0bv32$1 := (if p3$1 then v5$1 else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p3$2 then v5$2 else $$private_mean$0bv32$2);
    v6$1 := (if p3$1 then BV32_SGE($n, 1bv32) else v6$1);
    v6$2 := (if p3$2 then BV32_SGE($n, 1bv32) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$stddev(p5$1, BV64_ADD(v2$1, $c0.0$1)[32:0], $$stddev[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$stddev(p5$2, BV64_ADD(v2$2, $c0.0$2)[32:0], $$stddev[BV64_ADD(v2$2, $c0.0$2)[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$stddev"} true;
    v7$1 := (if p5$1 then $$stddev[BV64_ADD(v2$1, $c0.0$1)[32:0]] else v7$1);
    v7$2 := (if p5$2 then $$stddev[BV64_ADD(v2$2, $c0.0$2)[32:0]] else v7$2);
    $$private_stddev$0bv32$1 := (if p5$1 then v7$1 else $$private_stddev$0bv32$1);
    $$private_stddev$0bv32$2 := (if p5$2 then v7$2 else $$private_stddev$0bv32$2);
    $c1.0$1 := (if p1$1 then 0bv64 else $c1.0$1);
    $c1.0$2 := (if p1$2 then 0bv64 else $c1.0$2);
    p6$1 := (if p1$1 then true else p6$1);
    p6$2 := (if p1$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$data$ghost$$7 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$7 := _WRITE_HAS_OCCURRED_$$data;
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b167 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "disabledMaintainsInstrumentation"} _b166 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$7 == _READ_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b165 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b164 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "nowrite"} _b163 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "noread"} _b162 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "disabledMaintainsInstrumentation"} _b161 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$7 == _WRITE_HAS_OCCURRED_$$data;
    assert {:tag "disabledMaintainsInstrumentation"} _b160 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$7 == _READ_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b159 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b158 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b157 ==> !_WRITE_HAS_OCCURRED_$$data;
    assert {:tag "noread"} _b156 ==> !_READ_HAS_OCCURRED_$$data;
    assert {:tag "predicatedEquality"} _b155 ==> p6$1 && p6$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b154 ==> p6$1 && p6$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b153 ==> p6$1 && p6$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b152 ==> p6$1 && p6$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b151 ==> p6$1 && p6$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b150 ==> p6$1 && p6$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b149 ==> p6$1 && p6$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b148 ==> p6$1 && p6$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b147 ==> p6$1 && p6$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b146 ==> p6$1 && p6$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b145 ==> p6$1 && p6$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b144 ==> p6$1 && p6$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b143 ==> p6$1 && p6$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b142 ==> p6$1 && p6$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b141 ==> p6$1 && p6$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b140 ==> p6$1 && p6$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b139 ==> p6$1 && p6$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b138 ==> p6$1 && p6$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b137 ==> p6$1 && p6$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b136 ==> p6$1 && p6$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b135 ==> p6$1 && p6$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b134 ==> p6$1 && p6$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b133 ==> p6$1 && p6$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b132 ==> p6$1 && p6$2 ==> $c21.0$1 == $c21.0$2;
    assert {:tag "predicatedEquality"} _b131 ==> p6$1 && p6$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b130 ==> p6$1 && p6$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b129 ==> p6$1 && p6$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b128 ==> p6$1 && p6$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b127 ==> p6$1 && p6$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b126 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2;
    assert {:tag "loopPredicateEquality"} _b125 ==> p6$1 == p6$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p1"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b17 ==> p6$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b17 ==> p6$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b16 ==> BV64_UGE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b16 ==> BV64_UGE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b15 ==> BV64_ULE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b15 ==> BV64_ULE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b14 ==> BV64_SGE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b14 ==> BV64_SGE($c1.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b13 ==> BV64_SLE($c1.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b13 ==> BV64_SLE($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p6$1 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, 0bv64) == BV64_SUB($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p6$2 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, 0bv64) == BV64_SUB($c1.0$1, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p6$1 ==> _b11 ==> BV64_SUB($c1.0$1, 0bv64) == BV64_SUB($c1.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p6$2 ==> _b11 ==> BV64_SUB($c1.0$2, 0bv64) == BV64_SUB($c1.0$1, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 20} p6$1 ==> true;
    v8$1 := (if p6$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v8$1);
    v8$2 := (if p6$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
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
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    v9$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    $c2.0$1 := (if p9$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p9$2 then 0bv64 else $c2.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$data$ghost$$10 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b171 ==> !p9$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$10 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b170 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "disabledMaintainsInstrumentation"} _b169 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$10 == _READ_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b168 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p6$1;
    assert p10$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b64 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b63 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b62 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b61 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b60 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b59 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b58 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c2.0$1, $0$1) ==> p10$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b58 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c2.0$2, $0$2) ==> p10$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p10$1 ==> _b57 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p10$2 ==> _b57 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b56 ==> BV64_UGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b56 ==> BV64_UGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b55 ==> BV64_ULE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b55 ==> BV64_ULE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b54 ==> BV64_SGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b54 ==> BV64_SGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b53 ==> BV64_SLE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b53 ==> BV64_SLE($c2.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p10$1 ==> _b52 ==> BV64_SLE(0bv64, $0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p10$2 ==> _b52 ==> BV64_SLE(0bv64, $0$2);
    assert {:tag "guardNonNeg"} {:thread 1} p10$1 ==> _b51 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p10$2 ==> _b51 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 23} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64)) else v10$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p12$1 := (if p10$1 && v10$1 then v10$1 else p12$1);
    p12$2 := (if p10$2 && v10$2 then v10$2 else p12$2);
    p11$1 := (if p10$1 && !v10$1 then !v10$1 else p11$1);
    p11$2 := (if p10$2 && !v10$2 then !v10$2 else p11$2);
    $0$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64) else $0$1);
    $0$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64) else $0$2);
    $0$1 := (if p12$1 then 31bv64 else $0$1);
    $0$2 := (if p12$2 then 31bv64 else $0$2);
    v11$1 := (if p10$1 then BV64_SLE($c2.0$1, $0$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c2.0$2, $0$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$data(p13$1, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0], $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$data(p13$2, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0], $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v12$1 := (if p13$1 then $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c2.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0]] else v12$1);
    v12$2 := (if p13$2 then $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c2.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0]] else v12$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel2.shared_data(p13$1, BV32_ADD(BV32_MUL($c2.0$1[32:0], 32bv32), v1$1), v12$1, $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c2.0$1[32:0], 32bv32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(p13$2, BV32_ADD(BV32_MUL($c2.0$2[32:0], 32bv32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel2.shared_data(p13$2, BV32_ADD(BV32_MUL($c2.0$2[32:0], 32bv32), v1$2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel2.shared_data"} true;
    $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c2.0$1[32:0], 32bv32), v1$1)] := (if p13$1 then v12$1 else $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c2.0$1[32:0], 32bv32), v1$1)]);
    $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c2.0$2[32:0], 32bv32), v1$2)] := (if p13$2 then v12$2 else $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c2.0$2[32:0], 32bv32), v1$2)]);
    $c2.0$1 := (if p13$1 then BV64_ADD($c2.0$1, 1bv64) else $c2.0$1);
    $c2.0$2 := (if p13$2 then BV64_ADD($c2.0$2, 1bv64) else $c2.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $10.backedge, __partitioned_block_$10.tail_0;

  __partitioned_block_$10.tail_0:
    assume !p10$1 && !p10$2;
    goto __partitioned_block_$10.tail_1;

  __partitioned_block_$10.tail_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_3(1bv1, 1bv1, p7$1, p7$2);
    v13$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v13$1);
    v13$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v13$2);
    p15$1 := (if p7$1 && v13$1 then v13$1 else p15$1);
    p15$2 := (if p7$2 && v13$2 then v13$2 else p15$2);
    v14$1 := (if p15$1 then $c1.0$1 == 0bv64 else v14$1);
    v14$2 := (if p15$2 then $c1.0$2 == 0bv64 else v14$2);
    p17$1 := (if p15$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p15$2 && v14$2 then v14$2 else p17$2);
    v15$1 := (if p17$1 then $$private_mean$0bv32$1 else v15$1);
    v15$2 := (if p17$2 then $$private_mean$0bv32$2 else v15$2);
    $$private_mean$0bv32$1 := (if p17$1 then FDIV64(v15$1, $float_n) else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p17$2 then FDIV64(v15$2, $float_n) else $$private_mean$0bv32$2);
    $c3.0$1 := (if p15$1 then 0bv64 else $c3.0$1);
    $c3.0$2 := (if p15$2 then 0bv64 else $c3.0$2);
    p18$1 := (if p15$1 then true else p18$1);
    p18$2 := (if p15$2 then true else p18$2);
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 := _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b175 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 == _WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "disabledMaintainsInstrumentation"} _b174 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$21 == _READ_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b173 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b172 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1)) || BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p15"} true;
    assert p18$1 ==> p6$1;
    assert p18$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b44 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c3.0$1, $1$1) ==> p18$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b44 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c3.0$2, $1$2) ==> p18$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p18$1 ==> _b43 ==> p18$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p18$2 ==> _b43 ==> p18$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b42 ==> BV64_UGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b42 ==> BV64_UGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b41 ==> BV64_ULE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b41 ==> BV64_ULE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b40 ==> BV64_SGE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b40 ==> BV64_SGE($c3.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b39 ==> BV64_SLE($c3.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b39 ==> BV64_SLE($c3.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p18$1 ==> _b38 ==> BV64_SLE(0bv64, $1$1);
    assert {:tag "guardNonNeg"} {:thread 2} p18$2 ==> _b38 ==> BV64_SLE(0bv64, $1$2);
    assert {:tag "guardNonNeg"} {:thread 1} p18$1 ==> _b37 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p18$2 ==> _b37 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 39} p18$1 ==> true;
    v16$1 := (if p18$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64)) else v16$1);
    v16$2 := (if p18$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64)) else v16$2);
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p20$1 := (if p18$1 && v16$1 then v16$1 else p20$1);
    p20$2 := (if p18$2 && v16$2 then v16$2 else p20$2);
    p19$1 := (if p18$1 && !v16$1 then !v16$1 else p19$1);
    p19$2 := (if p18$2 && !v16$2 then !v16$2 else p19$2);
    $1$1 := (if p19$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64) else $1$1);
    $1$2 := (if p19$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64) else $1$2);
    $1$1 := (if p20$1 then 31bv64 else $1$1);
    $1$2 := (if p20$2 then 31bv64 else $1$2);
    v17$1 := (if p18$1 then BV64_SLE($c3.0$1, $1$1) else v17$1);
    v17$2 := (if p18$2 then BV64_SLE($c3.0$2, $1$2) else v17$2);
    p21$1 := (if p18$1 && v17$1 then v17$1 else p21$1);
    p21$2 := (if p18$2 && v17$2 then v17$2 else p21$2);
    p18$1 := (if p18$1 && !v17$1 then v17$1 else p18$1);
    p18$2 := (if p18$2 && !v17$2 then v17$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v18$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)] else v18$1);
    v18$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)] else v18$2);
    v19$1 := (if p21$1 then $$private_mean$0bv32$1 else v19$1);
    v19$2 := (if p21$2 then $$private_mean$0bv32$2 else v19$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v20$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v1$1)] else v20$1);
    v20$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v1$2)] else v20$2);
    v21$1 := (if p21$1 then $$private_mean$0bv32$1 else v21$1);
    v21$2 := (if p21$2 then $$private_mean$0bv32$2 else v21$2);
    v22$1 := (if p21$1 then $$private_stddev$0bv32$1 else v22$1);
    v22$2 := (if p21$2 then $$private_stddev$0bv32$2 else v22$2);
    $$private_stddev$0bv32$1 := (if p21$1 then FADD64(FMUL64(FSUB64(v18$1, v19$1), FSUB64(v20$1, v21$1)), v22$1) else $$private_stddev$0bv32$1);
    $$private_stddev$0bv32$2 := (if p21$2 then FADD64(FMUL64(FSUB64(v18$2, v19$2), FSUB64(v20$2, v21$2)), v22$2) else $$private_stddev$0bv32$2);
    v23$1 := (if p21$1 then $$private_mean$0bv32$1 else v23$1);
    v23$2 := (if p21$2 then $$private_mean$0bv32$2 else v23$2);
    v24$1 := (if p21$1 then $c3.0$1[32:0] else v24$1);
    v24$2 := (if p21$2 then $c3.0$2[32:0] else v24$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v25$1 := (if p21$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1)] else v25$1);
    v25$2 := (if p21$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2)] else v25$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$kernel2.shared_data(p21$1, BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1), FSUB64(v25$1, v23$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$kernel2.shared_data(p21$2, BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2), FSUB64(v25$2, v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel2.shared_data"} true;
    $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1)] := (if p21$1 then FSUB64(v25$1, v23$1) else $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL(v24$1, 32bv32), v1$1)]);
    $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2)] := (if p21$2 then FSUB64(v25$2, v23$2) else $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v24$2, 32bv32), v1$2)]);
    $c3.0$1 := (if p21$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $c3.0$2 := (if p21$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p18$1 := (if p21$1 then true else p18$1);
    p18$2 := (if p21$2 then true else p18$2);
    goto $21.backedge, __partitioned_block_$21.tail_0;

  __partitioned_block_$21.tail_0:
    assume !p18$1 && !p18$2;
    goto __partitioned_block_$21.tail_1;

  __partitioned_block_$21.tail_1:
    call {:sourceloc_num 56} $bugle_barrier_duplicated_4(1bv1, 1bv1, p7$1, p7$2);
    v26$1 := (if p7$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v26$1);
    v26$2 := (if p7$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v26$2);
    p23$1 := (if p7$1 && v26$1 then v26$1 else p23$1);
    p23$2 := (if p7$2 && v26$2 then v26$2 else p23$2);
    $c21.0$1 := (if p23$1 then 0bv64 else $c21.0$1);
    $c21.0$2 := (if p23$2 then 0bv64 else $c21.0$2);
    p24$1 := (if p23$1 then true else p24$1);
    p24$2 := (if p23$2 then true else p24$2);
    _WRITE_HAS_OCCURRED_$$data$ghost$$30 := _WRITE_HAS_OCCURRED_$$data;
    _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30 := _READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $30;

  $30:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b179 ==> !p23$1 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data$ghost$$30 == _READ_HAS_OCCURRED_$$kernel2.shared_data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b178 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL(0bv64[32:0], 32bv32), local_id_x$1));
    assert {:tag "disabledMaintainsInstrumentation"} _b177 ==> !p23$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$30 == _WRITE_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b176 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p24"} {:dominator_predicate "p23"} true;
    assert p24$1 ==> p6$1;
    assert p24$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$kernel2.shared_data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b30 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLE($c21.0$1, $2$1) ==> p24$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b30 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLE($c21.0$2, $2$2) ==> p24$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p24$1 ==> _b29 ==> p24$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p24$2 ==> _b29 ==> p24$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b28 ==> BV64_UGE($c21.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b28 ==> BV64_UGE($c21.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b27 ==> BV64_ULE($c21.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b27 ==> BV64_ULE($c21.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b26 ==> BV64_SGE($c21.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b26 ==> BV64_SGE($c21.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p24$1 ==> _b25 ==> BV64_SLE($c21.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p24$2 ==> _b25 ==> BV64_SLE($c21.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p24$1 ==> _b24 ==> BV64_SLE(0bv64, $2$1);
    assert {:tag "guardNonNeg"} {:thread 2} p24$2 ==> _b24 ==> BV64_SLE(0bv64, $2$2);
    assert {:tag "guardNonNeg"} {:thread 1} p24$1 ==> _b23 ==> BV64_SLE(0bv64, $c21.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p24$2 ==> _b23 ==> BV64_SLE(0bv64, $c21.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 8} {:thread 1} (if _READ_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$stddev ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 58} p24$1 ==> true;
    v27$1 := (if p24$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64)) else v27$1);
    v27$2 := (if p24$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64)) else v27$2);
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p26$1 := (if p24$1 && v27$1 then v27$1 else p26$1);
    p26$2 := (if p24$2 && v27$2 then v27$2 else p26$2);
    p25$1 := (if p24$1 && !v27$1 then !v27$1 else p25$1);
    p25$2 := (if p24$2 && !v27$2 then !v27$2 else p25$2);
    $2$1 := (if p25$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64) else $2$1);
    $2$2 := (if p25$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64) else $2$2);
    $2$1 := (if p26$1 then 31bv64 else $2$1);
    $2$2 := (if p26$2 then 31bv64 else $2$2);
    v28$1 := (if p24$1 then BV64_SLE($c21.0$1, $2$1) else v28$1);
    v28$2 := (if p24$2 then BV64_SLE($c21.0$2, $2$2) else v28$2);
    p27$1 := (if p24$1 && v28$1 then v28$1 else p27$1);
    p27$2 := (if p24$2 && v28$2 then v28$2 else p27$2);
    p24$1 := (if p24$1 && !v28$1 then v28$1 else p24$1);
    p24$2 := (if p24$2 && !v28$2 then v28$2 else p24$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$kernel2.shared_data(p27$1, BV32_ADD(BV32_MUL($c21.0$1[32:0], 32bv32), v1$1), $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c21.0$1[32:0], 32bv32), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$kernel2.shared_data(p27$2, BV32_ADD(BV32_MUL($c21.0$2[32:0], 32bv32), v1$2), $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c21.0$2[32:0], 32bv32), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared_data"} true;
    v29$1 := (if p27$1 then $$kernel2.shared_data[1bv1][BV32_ADD(BV32_MUL($c21.0$1[32:0], 32bv32), v1$1)] else v29$1);
    v29$2 := (if p27$2 then $$kernel2.shared_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c21.0$2[32:0], 32bv32), v1$2)] else v29$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$data(p27$1, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0], v29$1, $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(p27$2, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$data(p27$2, BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0], v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0]] := (if p27$1 then v29$1 else $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c21.0$1), BV32_SEXT64($m)), BV64_ADD(v2$1, $c0.0$1))[32:0]]);
    $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0]] := (if p27$2 then v29$2 else $$data[BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c21.0$2), BV32_SEXT64($m)), BV64_ADD(v2$2, $c0.0$2))[32:0]]);
    $c21.0$1 := (if p27$1 then BV64_ADD($c21.0$1, 1bv64) else $c21.0$1);
    $c21.0$2 := (if p27$2 then BV64_ADD($c21.0$2, 1bv64) else $c21.0$2);
    p24$1 := (if p27$1 then true else p24$1);
    p24$2 := (if p27$2 then true else p24$2);
    goto $30.backedge, $30.tail;

  $30.tail:
    assume !p24$1 && !p24$2;
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 32bv64) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 32bv64) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $7.backedge, __partitioned_block_$7.tail_0;

  __partitioned_block_$7.tail_0:
    assume !p6$1 && !p6$2;
    v30$1 := (if p1$1 then BV32_SLE($n, 0bv32) else v30$1);
    v30$2 := (if p1$2 then BV32_SLE($n, 0bv32) else v30$2);
    p28$1 := (if p1$1 && v30$1 then v30$1 else p28$1);
    p28$2 := (if p1$2 && v30$2 then v30$2 else p28$2);
    p31$1 := (if p1$1 && !v30$1 then !v30$1 else p31$1);
    p31$2 := (if p1$2 && !v30$2 then !v30$2 else p31$2);
    goto __partitioned_block_$7.tail_1;

  __partitioned_block_$7.tail_1:
    call {:sourceloc_num 71} $bugle_barrier_duplicated_1(1bv1, 1bv1, p28$1, p28$2);
    v31$1 := (if p28$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v31$1);
    v31$2 := (if p28$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v31$2);
    p30$1 := (if p28$1 && v31$1 then v31$1 else p30$1);
    p30$2 := (if p28$2 && v31$2 then v31$2 else p30$2);
    v32$1 := (if p30$1 then $$private_mean$0bv32$1 else v32$1);
    v32$2 := (if p30$2 then $$private_mean$0bv32$2 else v32$2);
    $$private_mean$0bv32$1 := (if p30$1 then FDIV64(v32$1, $float_n) else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p30$2 then FDIV64(v32$2, $float_n) else $$private_mean$0bv32$2);
    goto __partitioned_block_$7.tail_2;

  __partitioned_block_$7.tail_2:
    call {:sourceloc_num 76} $bugle_barrier_duplicated_2(1bv1, 1bv1, p28$1, p28$2);
    v33$1 := (if p31$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v33$1);
    v33$2 := (if p31$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v33$2);
    p33$1 := (if p31$1 && v33$1 then v33$1 else p33$1);
    p33$2 := (if p31$2 && v33$2 then v33$2 else p33$2);
    v34$1 := (if p33$1 then $$private_stddev$0bv32$1 else v34$1);
    v34$2 := (if p33$2 then $$private_stddev$0bv32$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_WRITE_$$stddev(p33$1, BV64_ADD(v2$1, $c0.0$1)[32:0], v34$1, $$stddev[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(p33$2, BV64_ADD(v2$2, $c0.0$2)[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 80} _CHECK_WRITE_$$stddev(p33$2, BV64_ADD(v2$2, $c0.0$2)[32:0], v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$stddev"} true;
    $$stddev[BV64_ADD(v2$1, $c0.0$1)[32:0]] := (if p33$1 then v34$1 else $$stddev[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    $$stddev[BV64_ADD(v2$2, $c0.0$2)[32:0]] := (if p33$2 then v34$2 else $$stddev[BV64_ADD(v2$2, $c0.0$2)[32:0]]);
    v35$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v35$1);
    v35$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v35$2);
    p35$1 := (if p1$1 && v35$1 then v35$1 else p35$1);
    p35$2 := (if p1$2 && v35$2 then v35$2 else p35$2);
    v36$1 := (if p35$1 then $$private_mean$0bv32$1 else v36$1);
    v36$2 := (if p35$2 then $$private_mean$0bv32$2 else v36$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$mean(p35$1, BV64_ADD(v2$1, $c0.0$1)[32:0], v36$1, $$mean[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(p35$2, BV64_ADD(v2$2, $c0.0$2)[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$mean(p35$2, BV64_ADD(v2$2, $c0.0$2)[32:0], v36$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$mean"} true;
    $$mean[BV64_ADD(v2$1, $c0.0$1)[32:0]] := (if p35$1 then v36$1 else $$mean[BV64_ADD(v2$1, $c0.0$1)[32:0]]);
    $$mean[BV64_ADD(v2$2, $c0.0$2)[32:0]] := (if p35$2 then v36$2 else $$mean[BV64_ADD(v2$2, $c0.0$2)[32:0]]);
    goto __partitioned_block_$7.tail_3;

  __partitioned_block_$7.tail_3:
    call {:sourceloc_num 86} $bugle_barrier_duplicated_0(1bv1, 1bv1, p1$1, p1$2);
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

  $7.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $7;

  $30.backedge:
    assume {:backedge} p24$1 || p24$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $30;

  $21.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $21;

  $10.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $10;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel2.shared_data, $$data, $$mean, $$stddev, _TRACKING;



var $$private_mean$0bv32$1: bv64;

var $$private_mean$0bv32$2: bv64;

var $$private_stddev$0bv32$1: bv64;

var $$private_stddev$0bv32$2: bv64;

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

const _WATCHED_VALUE_$$data: bv64;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: bv32);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



const _WATCHED_VALUE_$$mean: bv64;

procedure {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _READ_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_READ_$$mean(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mean);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mean: bool;

procedure {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _WRITE_HAS_OCCURRED_$$mean);
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



procedure _CHECK_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_ATOMIC_$$mean(_P: bool, _offset: bv32);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



const _WATCHED_VALUE_$$stddev: bv64;

procedure {:inline 1} _LOG_READ_$$stddev(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$stddev;



implementation {:inline 1} _LOG_READ_$$stddev(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then true else _READ_HAS_OCCURRED_$$stddev);
    return;
}



procedure _CHECK_READ_$$stddev(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$stddev);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$stddev: bool;

procedure {:inline 1} _LOG_WRITE_$$stddev(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$stddev, _WRITE_READ_BENIGN_FLAG_$$stddev;



implementation {:inline 1} _LOG_WRITE_$$stddev(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then true else _WRITE_HAS_OCCURRED_$$stddev);
    _WRITE_READ_BENIGN_FLAG_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$stddev);
    return;
}



procedure _CHECK_WRITE_$$stddev(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev != _value);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$stddev != _value);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$stddev(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$stddev;



implementation {:inline 1} _LOG_ATOMIC_$$stddev(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$stddev := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$stddev);
    return;
}



procedure _CHECK_ATOMIC_$$stddev(_P: bool, _offset: bv32);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);
  requires {:source_name "stddev"} {:array "$$stddev"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$stddev;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$stddev(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$stddev := (if _P && _WRITE_HAS_OCCURRED_$$stddev && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$stddev);
    return;
}



const _WATCHED_VALUE_$$kernel2.shared_data: bv64;

procedure {:inline 1} _LOG_READ_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel2.shared_data;



implementation {:inline 1} _LOG_READ_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then true else _READ_HAS_OCCURRED_$$kernel2.shared_data);
    return;
}



procedure _CHECK_READ_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel2.shared_data, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data;



implementation {:inline 1} _LOG_WRITE_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then true else _WRITE_HAS_OCCURRED_$$kernel2.shared_data);
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data);
    return;
}



procedure _CHECK_WRITE_$$kernel2.shared_data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;



implementation {:inline 1} _LOG_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel2.shared_data);
    return;
}



procedure _CHECK_ATOMIC_$$kernel2.shared_data(_P: bool, _offset: bv32);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_data"} {:array "$$kernel2.shared_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data := (if _P && _WRITE_HAS_OCCURRED_$$kernel2.shared_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared_data);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared_data;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared_data;
    goto anon1;

  anon1:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$stddev;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$stddev;
    goto anon6;

  anon6:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon8;

  anon8:
    havoc $$mean;
    goto anon9;

  anon9:
    havoc $$stddev;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel2.shared_data;
    goto anon3;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

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
