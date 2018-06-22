type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "sm_mappings"} {:global} $$sm_mappings: [int]int;

axiom {:array_info "$$sm_mappings"} {:global} {:elem_width 8} {:source_name "sm_mappings"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sm_mappings: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_LSHR(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function {:inline true} BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "histo_intermediates_kernel"} {:kernel} $histo_intermediates_kernel($height: int, $width: int, $input_pitch: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 996 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$sm_mappings && !_WRITE_HAS_OCCURRED_$$sm_mappings && !_ATOMIC_HAS_OCCURRED_$$sm_mappings;
  requires BV32_SGT(group_size_x, 0);
  requires BV32_SGT(num_groups_x, 0);
  requires BV32_SGE(group_id_x$1, 0);
  requires BV32_SGE(group_id_x$2, 0);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0);
  requires BV32_SGE(local_id_x$2, 0);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0);
  requires BV32_SGT(num_groups_y, 0);
  requires BV32_SGE(group_id_y$1, 0);
  requires BV32_SGE(group_id_y$2, 0);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0);
  requires BV32_SGE(local_id_y$2, 0);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0);
  requires BV32_SGT(num_groups_z, 0);
  requires BV32_SGE(group_id_z$1, 0);
  requires BV32_SGE(group_id_z$2, 0);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0);
  requires BV32_SGE(local_id_z$2, 0);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:source_name "histo_intermediates_kernel"} {:kernel} $histo_intermediates_kernel($height: int, $width: int, $input_pitch: int)
{
  var $0$1: int;
  var $0$2: int;
  var $load_bin.0$1: int;
  var $load_bin.0$2: int;
  var $store.0$1: int;
  var $store.0$2: int;
  var $i.0: int;
  var v3: bool;
  var v1: int;
  var v0$1: int;
  var v0$2: int;
  var v5$1: int;
  var v5$2: int;
  var v2$1: int;
  var v2$2: int;
  var v4: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v6$1: int;
  var v6$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1 := group_size_x;
    v2$1 := BV32_MUL(16, group_id_x$1);
    v2$2 := BV32_MUL(16, group_id_x$2);
    v3 := BV32_UREM($width, 2) != 0;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    $0$1 := 0;
    $0$2 := 0;
    goto $2;

  $2:
    $load_bin.0$1, $store.0$1, $i.0 := BV32_ADD(BV32_MUL(BV32_MUL(v2$1, $input_pitch), 2), BV32_MUL(v0$1, 2)), BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 0;
    $load_bin.0$2, $store.0$2 := BV32_ADD(BV32_MUL(BV32_MUL(v2$2, $input_pitch), 2), BV32_MUL(v0$2, 2)), BV32_ADD(BV32_MUL(v2$2, $width), v0$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _WRITE_HAS_OCCURRED_$$sm_mappings ==> _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4), 1) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4), 2) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), 4), 3) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4), 1) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4), 2) mod BV32_MUL($width, 4) || _WATCHED_OFFSET mod BV32_MUL($width, 4) == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), group_size_x), 4), 3) mod BV32_MUL($width, 4);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_UGE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_ULE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_SGE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_SLE($i.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b2 ==> $i.0 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b1 ==> $store.0$1 mod $width == BV32_ADD(BV32_MUL(v2$1, $width), v0$1) mod $width;
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b1 ==> $store.0$2 mod $width == BV32_ADD(BV32_MUL(v2$2, $width), v0$2) mod $width;
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $load_bin.0$1 mod BV32_MUL($input_pitch, 2) == BV32_ADD(BV32_MUL(BV32_MUL(v2$1, $input_pitch), 2), BV32_MUL(v0$1, 2)) mod BV32_MUL($input_pitch, 2);
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b0 ==> $load_bin.0$2 mod BV32_MUL($input_pitch, 2) == BV32_ADD(BV32_MUL(BV32_MUL(v2$2, $input_pitch), 2), BV32_MUL(v0$2, 2)) mod BV32_MUL($input_pitch, 2);
    assert {:block_sourceloc} {:sourceloc_num 4} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$sm_mappings ==> BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4), BV32_ADD(BV32_MUL(v2$1, $width), v0$1)), $width) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4), BV32_ADD(BV32_MUL(v2$1, $width), v0$1)), $width), 16) then 1 else 0))), BV1_ZEXT32((if BV1_XOR($0$1, -1) == 1 ==> BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4), BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), v1)), $width) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(_WATCHED_OFFSET, 4), BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), v1)), $width), 16) then 1 else 0))) != 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if $store.0$1 == BV32_ADD(BV32_ADD(BV32_MUL(v2$1, $width), v0$1), BV32_MUL($i.0, $width)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 2} (if $store.0$2 == BV32_ADD(BV32_ADD(BV32_MUL(v2$2, $width), v0$2), BV32_MUL($i.0, $width)) then 1 else 0) != 0;
    v4 := BV32_SLT($i.0, 16);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v4;
    return;

  $truebb0:
    assume {:partition} v4;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$sm_mappings(true, BV32_MUL($store.0$1, 4), BV_EXTRACT(BV32_UDIV(v5$1, 24576), 8, 0), $$sm_mappings[BV32_MUL($store.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_MUL($store.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$sm_mappings(true, BV32_MUL($store.0$2, 4), BV_EXTRACT(BV32_UDIV(v5$2, 24576), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_MUL($store.0$1, 4)] := BV_EXTRACT(BV32_UDIV(v5$1, 24576), 8, 0);
    $$sm_mappings[BV32_MUL($store.0$2, 4)] := BV_EXTRACT(BV32_UDIV(v5$2, 24576), 8, 0);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4), 1), BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$1, 10), 24), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 1), BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$2, 10), 24), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 1)] := BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$1, 10), 24), 8, 0);
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4), 1)] := BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$2, 10), 24), 8, 0);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4), 2), BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$1, 2), 256), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 2), BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$2, 2), 256), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 2)] := BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$1, 2), 256), 8, 0);
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4), 2)] := BV_EXTRACT(BV32_UREM(BV32_LSHR(v5$2, 2), 256), 8, 0);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$1, 4), 3), BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v5$1, 4), 8, 0)), 8), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$sm_mappings(true, BV32_ADD(BV32_MUL($store.0$2, 4), 3), BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v5$2, 4), 8, 0)), 8), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$1, 4), 3)] := BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v5$1, 4), 8, 0)), 8), 8, 0);
    $$sm_mappings[BV32_ADD(BV32_MUL($store.0$2, 4), 3)] := BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v5$2, 4), 8, 0)), 8), 8, 0);
    v7$1 := $0$1 == 1;
    v7$2 := $0$2 == 1;
    p0$1 := (if !v7$1 then !v7$1 else p0$1);
    p0$2 := (if !v7$2 then !v7$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$sm_mappings(p0$1, BV32_MUL(BV32_ADD($store.0$1, v1), 4), BV_EXTRACT(BV32_UDIV(v6$1, 24576), 8, 0), $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_MUL(BV32_ADD($store.0$2, v1), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_MUL(BV32_ADD($store.0$2, v1), 4), BV_EXTRACT(BV32_UDIV(v6$2, 24576), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4)] := (if p0$1 then BV_EXTRACT(BV32_UDIV(v6$1, 24576), 8, 0) else $$sm_mappings[BV32_MUL(BV32_ADD($store.0$1, v1), 4)]);
    $$sm_mappings[BV32_MUL(BV32_ADD($store.0$2, v1), 4)] := (if p0$2 then BV_EXTRACT(BV32_UDIV(v6$2, 24576), 8, 0) else $$sm_mappings[BV32_MUL(BV32_ADD($store.0$2, v1), 4)]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 1), BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$1, 10), 24), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 1), BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$2, 10), 24), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 1)] := (if p0$1 then BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$1, 10), 24), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 1)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 1)] := (if p0$2 then BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$2, 10), 24), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 1)]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 2), BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$1, 2), 256), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 2), BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$2, 2), 256), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 2)] := (if p0$1 then BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$1, 2), 256), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 2)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 2)] := (if p0$2 then BV_EXTRACT(BV32_UREM(BV32_LSHR(v6$2, 2), 256), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 2)]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$sm_mappings(p0$1, BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 3), BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v6$1, 4), 8, 0)), 8), 8, 0), $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$sm_mappings(p0$2, BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 3), BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v6$2, 4), 8, 0)), 8), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sm_mappings"} true;
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 3)] := (if p0$1 then BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v6$1, 4), 8, 0)), 8), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$1, v1), 4), 3)]);
    $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 3)] := (if p0$2 then BV_EXTRACT(BV32_MUL(BV8_ZEXT32(BV_EXTRACT(BV32_UREM(v6$2, 4), 8, 0)), 8), 8, 0) else $$sm_mappings[BV32_ADD(BV32_MUL(BV32_ADD($store.0$2, v1), 4), 3)]);
    $load_bin.0$1, $store.0$1, $i.0 := BV32_ADD($load_bin.0$1, BV32_MUL($input_pitch, 2)), BV32_ADD($store.0$1, $width), BV32_ADD($i.0, 1);
    $load_bin.0$2, $store.0$2 := BV32_ADD($load_bin.0$2, BV32_MUL($input_pitch, 2)), BV32_ADD($store.0$2, $width);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $truebb:
    assume {:partition} v3;
    $0$1 := (if v0$1 == BV32_SUB(v1, 1) then 1 else 0);
    $0$2 := (if v0$2 == BV32_SUB(v1, 1) then 1 else 0);
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 498 then 1 else 0) != 0;

axiom (if num_groups_x == 65 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b5: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b6: bool;

const _WATCHED_VALUE_$$input: int;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$sm_mappings: int;

procedure {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _READ_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_READ_$$sm_mappings(_P: bool, _offset: int, _value: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sm_mappings: bool;

procedure {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _WRITE_HAS_OCCURRED_$$sm_mappings);
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



procedure _CHECK_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_ATOMIC_$$sm_mappings(_P: bool, _offset: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b7: bool;
