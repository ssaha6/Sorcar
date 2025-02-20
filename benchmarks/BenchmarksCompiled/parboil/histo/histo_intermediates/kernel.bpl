type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "sm_mappings"} {:global} $$sm_mappings: [bv32]bv8;

axiom {:array_info "$$sm_mappings"} {:global} {:elem_width 8} {:source_name "sm_mappings"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sm_mappings: bool;

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

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvxor"} BV1_XOR(bv1, bv1) : bv1;

function {:bvbuiltin "zero_extend 24"} BV8_ZEXT32(bv8) : bv32;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

procedure {:source_name "histo_intermediates_kernel"} {:kernel} $histo_intermediates_kernel($height: bv32, $width: bv32, $input_pitch: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 996bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$sm_mappings && !_WRITE_HAS_OCCURRED_$$sm_mappings && !_ATOMIC_HAS_OCCURRED_$$sm_mappings;
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
  modifies _WRITE_HAS_OCCURRED_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:source_name "histo_intermediates_kernel"} {:kernel} $histo_intermediates_kernel($height: bv32, $width: bv32, $input_pitch: bv32)
{
  var $0$1: bv1;
  var $0$2: bv1;
  var $sm.i5.0$1: bv32;
  var $sm.i5.0$2: bv32;
  var $sm.i.0$1: bv32;
  var $sm.i.0$2: bv32;
  var $load_bin.0$1: bv32;
  var $load_bin.0$2: bv32;
  var $store.0$1: bv32;
  var $store.0$2: bv32;
  var $i.0: bv32;
  var $sm.i5.1$1: bv32;
  var $sm.i5.1$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v3: bool;
  var v6: bool;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv8;
  var v9$2: bv8;
  var v10$1: bv8;
  var v10$2: bv8;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv8;
  var v15$2: bv8;
  var v16$1: bv8;
  var v16$2: bv8;
  var v17$1: bv8;
  var v17$2: bv8;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1 := group_size_x;
    v2$1 := BV32_MUL(16bv32, group_id_x$1);
    v2$2 := BV32_MUL(16bv32, group_id_x$2);
    v3 := BV32_UREM($width, 2bv32) != 0bv32;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    $0$1 := 0bv1;
    $0$2 := 0bv1;
    goto $2;

  $2:
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    $sm.i5.0$1, $sm.i.0$1, $load_bin.0$1, $store.0$1, $i.0 := v4$1, v5$1, BV32_ADD(BV32_MUL(BV32_MUL(v2$1, $input_pitch), 2bv32), BV32_MUL(v0$1, 2bv32)), BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 0bv32;
    $sm.i5.0$2, $sm.i.0$2, $load_bin.0$2, $store.0$2 := v4$2, v5$2, BV32_ADD(BV32_MUL(BV32_MUL(v2$2, $input_pitch), 2bv32), BV32_MUL(v0$2, 2bv32)), BV32_ADD(BV32_MUL(v2$2, $width), v0$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _WRITE_HAS_OCCURRED_$$sm_mappings ==> BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4bv32), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4bv32), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4bv32), 3bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4bv32), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4bv32), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL($width, 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4bv32), 3bv32));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_UGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_ULE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_SGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_SLE($i.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b2 ==> BV32_SLE(0bv32, $i.0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b1 ==> BV32_AND(BV32_SUB($width, 1bv32), $store.0$1) == BV32_AND(BV32_SUB($width, 1bv32), BV32_ADD(BV32_MUL(v2$1, $width), v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b1 ==> BV32_AND(BV32_SUB($width, 1bv32), $store.0$2) == BV32_AND(BV32_SUB($width, 1bv32), BV32_ADD(BV32_MUL(v2$2, $width), v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> BV32_AND(BV32_SUB(BV32_MUL($input_pitch, 2bv32), 1bv32), $load_bin.0$1) == BV32_AND(BV32_SUB(BV32_MUL($input_pitch, 2bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_MUL(v2$1, $input_pitch), 2bv32), BV32_MUL(v0$1, 2bv32)));
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b0 ==> BV32_AND(BV32_SUB(BV32_MUL($input_pitch, 2bv32), 1bv32), $load_bin.0$2) == BV32_AND(BV32_SUB(BV32_MUL($input_pitch, 2bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_MUL(v2$2, $input_pitch), 2bv32), BV32_MUL(v0$2, 2bv32)));
    assert {:block_sourceloc} {:sourceloc_num 4} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$sm_mappings ==> BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4bv32), BV32_ADD(BV32_MUL(v2$1, $width), v0$1)), $width) == 0bv32 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4bv32), BV32_ADD(BV32_MUL(v2$1, $width), v0$1)), $width), 16bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV1_XOR($0$1, 1bv1) == 1bv1 ==> BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4bv32), BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), v1)), $width) == 0bv32 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4bv32), BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), v1)), $width), 16bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if $store.0$1 == BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), BV32_MUL($i.0, $width)) then 1bv1 else 0bv1) != 0bv1;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 2} (if $store.0$2 == BV32_ADD(BV32_ADD(BV32_MUL(v2$2, $width), v0$2), BV32_MUL($i.0, $width)) then 1bv1 else 0bv1) != 0bv1;
    v6 := BV32_SLT($i.0, 16bv32);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    return;

  $truebb0:
    assume {:partition} v6;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    v9$1 := BV32_UREM(BV32_LSHR(v7$1, 2bv32), 256bv32)[8:0];
    v9$2 := BV32_UREM(BV32_LSHR(v7$2, 2bv32), 256bv32)[8:0];
    v10$1 := BV32_UREM(BV32_LSHR(v7$1, 10bv32), 24bv32)[8:0];
    v10$2 := BV32_UREM(BV32_LSHR(v7$2, 10bv32), 24bv32)[8:0];
    v11$1 := BV32_UDIV(v7$1, 24576bv32)[8:0];
    v11$2 := BV32_UDIV(v7$2, 24576bv32)[8:0];
    v12$1 := BV32_MUL(BV8_ZEXT32(BV32_UREM(v7$1, 4bv32)[8:0]), 8bv32)[8:0];
    v12$2 := BV32_MUL(BV8_ZEXT32(BV32_UREM(v7$2, 4bv32)[8:0]), 8bv32)[8:0];
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$sm_mappings(true, BV32_MUL($store.0$1, 4bv32), v11$1, $$sm_mappings[BV32_MUL($store.0$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_MUL($store.0$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$sm_mappings(true, BV32_MUL($store.0$2, 4bv32), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_MUL($store.0$1, 4bv32)] := v11$1;
    $$sm_mappings[BV32_MUL($store.0$2, 4bv32)] := v11$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4bv32), 1bv32), v10$1, $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 1bv32), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 1bv32)] := v10$1;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4bv32), 1bv32)] := v10$2;
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4bv32), 2bv32), v9$1, $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 2bv32), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 2bv32)] := v9$1;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4bv32), 2bv32)] := v9$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4bv32), 3bv32), v12$1, $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4bv32), 3bv32), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4bv32), 3bv32)] := v12$1;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4bv32), 3bv32)] := v12$2;
    v13$1 := $0$1 == 1bv1;
    v13$2 := $0$2 == 1bv1;
    p1$1 := (if v13$1 then v13$1 else p1$1);
    p1$2 := (if v13$2 then v13$2 else p1$2);
    p0$1 := (if !v13$1 then !v13$1 else p0$1);
    p0$2 := (if !v13$2 then !v13$2 else p0$2);
    v14$1 := (if p0$1 then BV32_UREM(BV32_LSHR(v8$1, 2bv32), 256bv32)[8:0] else v14$1);
    v14$2 := (if p0$2 then BV32_UREM(BV32_LSHR(v8$2, 2bv32), 256bv32)[8:0] else v14$2);
    v15$1 := (if p0$1 then BV32_UREM(BV32_LSHR(v8$1, 10bv32), 24bv32)[8:0] else v15$1);
    v15$2 := (if p0$2 then BV32_UREM(BV32_LSHR(v8$2, 10bv32), 24bv32)[8:0] else v15$2);
    v16$1 := (if p0$1 then BV32_UDIV(v8$1, 24576bv32)[8:0] else v16$1);
    v16$2 := (if p0$2 then BV32_UDIV(v8$2, 24576bv32)[8:0] else v16$2);
    v17$1 := (if p0$1 then BV32_MUL(BV8_ZEXT32(BV32_UREM(v8$1, 4bv32)[8:0]), 8bv32)[8:0] else v17$1);
    v17$2 := (if p0$2 then BV32_MUL(BV8_ZEXT32(BV32_UREM(v8$2, 4bv32)[8:0]), 8bv32)[8:0] else v17$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$sm_mappings(p0$1, BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), v16$1, $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32)] := (if p0$1 then v16$1 else $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32)]);
    $$sm_mappings[BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32)] := (if p0$2 then v16$2 else $$sm_mappings[BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32)]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 1bv32), v15$1, $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 1bv32), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 1bv32)] := (if p0$1 then v15$1 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 1bv32)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 1bv32)] := (if p0$2 then v15$2 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 1bv32)]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 2bv32), v14$1, $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 2bv32), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 2bv32)] := (if p0$1 then v14$1 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 2bv32)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 2bv32)] := (if p0$2 then v14$2 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 2bv32)]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 3bv32), v17$1, $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 3bv32), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 3bv32)] := (if p0$1 then v17$1 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4bv32), 3bv32)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 3bv32)] := (if p0$2 then v17$2 else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4bv32), 3bv32)]);
    $sm.i5.1$1 := (if p0$1 then v17$1 ++ v14$1 ++ v15$1 ++ v16$1 else $sm.i5.1$1);
    $sm.i5.1$2 := (if p0$2 then v17$2 ++ v14$2 ++ v15$2 ++ v16$2 else $sm.i5.1$2);
    $sm.i5.1$1 := (if p1$1 then $sm.i5.0$1 else $sm.i5.1$1);
    $sm.i5.1$2 := (if p1$2 then $sm.i5.0$2 else $sm.i5.1$2);
    $sm.i5.0$1, $sm.i.0$1, $load_bin.0$1, $store.0$1, $i.0 := $sm.i5.1$1, v12$1 ++ v9$1 ++ v10$1 ++ v11$1, BV32_ADD($load_bin.0$1, BV32_MUL($input_pitch, 2bv32)), BV32_ADD($store.0$1, $width), BV32_ADD($i.0, 1bv32);
    $sm.i5.0$2, $sm.i.0$2, $load_bin.0$2, $store.0$2 := $sm.i5.1$2, v12$2 ++ v9$2 ++ v10$2 ++ v11$2, BV32_ADD($load_bin.0$2, BV32_MUL($input_pitch, 2bv32)), BV32_ADD($store.0$2, $width);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $truebb:
    assume {:partition} v3;
    $0$1 := (if v0$1 == BV32_SUB(v1, 1bv32) then 1bv1 else 0bv1);
    $0$2 := (if v0$2 == BV32_SUB(v1, 1bv32) then 1bv1 else 0bv1);
    goto $2;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 498bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 65bv32 then 1bv1 else 0bv1) != 0bv1;

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

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b6: bool;

const _WATCHED_VALUE_$$input: bv32;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$sm_mappings: bv8;

procedure {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _READ_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_READ_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sm_mappings: bool;

procedure {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _WRITE_HAS_OCCURRED_$$sm_mappings);
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



procedure _CHECK_WRITE_$$sm_mappings(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_ATOMIC_$$sm_mappings(_P: bool, _offset: bv32);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b7: bool;
