type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP16(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "blk_sad"} {:global} $$blk_sad: [int]int;

axiom {:array_info "$$blk_sad"} {:global} {:elem_width 16} {:source_name "blk_sad"} {:source_elem_width 16} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blk_sad: bool;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blk_sad: bool;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blk_sad: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_ASHR(int, int) : int;

function {:inline true} BV16_ADD(x: int, y: int) : int
{
  x + y
}

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

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

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

procedure {:source_name "larger_sad_calc_16"} {:kernel} $larger_sad_calc_16($mb_width: int, $mb_height: int);
  requires {:sourceloc_num 0} {:thread 1} (if $mb_width == 11 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $mb_height == 9 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$blk_sad && !_WRITE_HAS_OCCURRED_$$blk_sad && !_ATOMIC_HAS_OCCURRED_$$blk_sad;
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
  modifies _READ_HAS_OCCURRED_$$blk_sad, _WRITE_HAS_OCCURRED_$$blk_sad, _WRITE_READ_BENIGN_FLAG_$$blk_sad, _WRITE_READ_BENIGN_FLAG_$$blk_sad;



implementation {:source_name "larger_sad_calc_16"} {:kernel} $larger_sad_calc_16($mb_width: int, $mb_height: int)
{
  var $search_pos.0$1: int;
  var $search_pos.0$2: int;
  var v0: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;


  $0:
    v0 := BV32_MUL(BV32_MUL(BV32_ASHR(BV32_SHL($mb_height, 8), 8), BV32_ASHR(BV32_SHL($mb_width, 8), 8)), 1096);
    v1$1 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ASHR(BV32_SHL($mb_width, 8), 8), BV32_ASHR(BV32_SHL(group_id_y$1, 8), 8)), group_id_x$1), 1096);
    v1$2 := BV32_MUL(BV32_ADD(BV32_MUL(BV32_ASHR(BV32_SHL($mb_width, 8), 8), BV32_ASHR(BV32_SHL(group_id_y$2, 8), 8)), group_id_x$2), 1096);
    v2$1 := BV32_SHL(BV32_ADD(v0, v1$1), 2);
    v2$2 := BV32_SHL(BV32_ADD(v0, v1$2), 2);
    v3$1 := BV32_SHL(BV32_ADD(v0, v1$1), 1);
    v3$2 := BV32_SHL(BV32_ADD(v0, v1$2), 1);
    v4$1 := BV32_MUL(v1$1, 2);
    v4$2 := BV32_MUL(v1$2, 2);
    $search_pos.0$1 := local_id_x$1;
    $search_pos.0$2 := local_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _WRITE_HAS_OCCURRED_$$blk_sad ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b6 ==> _READ_HAS_OCCURRED_$$blk_sad ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($search_pos.0$1, 545) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($search_pos.0$2, 545) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($search_pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($search_pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($search_pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($search_pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($search_pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($search_pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($search_pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($search_pos.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $search_pos.0$1 mod 32 == local_id_x$1 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $search_pos.0$2 mod 32 == local_id_x$2 mod 32;
    assert {:block_sourceloc} {:sourceloc_num 3} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$blk_sad ==> BV32_OR(BV32_OR(BV32_OR(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v2$1, 2), BV32_MUL(v0, 2))), 4), 545) then 1 else 0)), BV1_ZEXT32((if BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v2$1, 2), BV32_MUL(v0, 2))), 4), 548), 545) then 1 else 0))), BV1_ZEXT32((if BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v2$1, 2), BV32_MUL(v0, 2))), 4), 1096), 545) then 1 else 0))), BV1_ZEXT32((if BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v2$1, 2), BV32_MUL(v0, 2))), 4), 1644), 545) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$blk_sad ==> BV32_OR(BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v3$1, 2), BV32_MUL(v0, 2))), 4), 545) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v3$1, 2), BV32_MUL(v0, 2))), 4), 32) == local_id_x$1 then 1 else 0))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v3$1, 2), BV32_MUL(v0, 2))), 4), 548), 545) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v3$1, 2), BV32_MUL(v0, 2))), 4), 548), 32) == local_id_x$1 then 1 else 0)))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v0, 2), BV32_MUL(v4$1, 2))), 4), 545) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v0, 2), BV32_MUL(v4$1, 2))), 4), 32) == local_id_x$1 then 1 else 0)))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v0, 2), BV32_MUL(v4$1, 2))), 4), 548), 545) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_ADD(BV32_MUL(v0, 2), BV32_MUL(v4$1, 2))), 4), 548), 32) == local_id_x$1 then 1 else 0)))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_MUL(v1$1, 2)), 4), 545) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(BV32_MUL(2, _WATCHED_OFFSET), BV32_MUL(v1$1, 2)), 4), 32) == local_id_x$1 then 1 else 0)))) != 0 then 1 else 0) != 0;
    v5$1 := (if p0$1 then BV32_SLT($search_pos.0$1, 545) else v5$1);
    v5$2 := (if p0$2 then BV32_SLT($search_pos.0$2, 545) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL($search_pos.0$1, 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL($search_pos.0$1, 2))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL($search_pos.0$2, 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL($search_pos.0$2, 2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v6$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL($search_pos.0$1, 2))] else v6$1);
    v6$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL($search_pos.0$2, 2))] else v6$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL($search_pos.0$1, 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL($search_pos.0$1, 2), 1))]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL($search_pos.0$2, 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL($search_pos.0$2, 2), 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v7$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL($search_pos.0$1, 2), 1))] else v7$1);
    v7$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL($search_pos.0$2, 2), 1))] else v7$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v8$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))] else v8$1);
    v8$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))] else v8$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2), 1))]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2), 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v9$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2), 1))] else v9$1);
    v9$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2), 1))] else v9$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v10$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2))] else v10$1);
    v10$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2))] else v10$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2), 1))]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2), 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v11$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1096), 2), 1))] else v11$1);
    v11$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1096), 2), 1))] else v11$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2))]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v12$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2))] else v12$1);
    v12$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2))] else v12$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2), 1))]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2), 1)), $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2), 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blk_sad"} true;
    v13$1 := (if p1$1 then $$blk_sad[BV32_ADD(BV32_ADD(v2$1, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$1, 1644), 2), 1))] else v13$1);
    v13$2 := (if p1$2 then $$blk_sad[BV32_ADD(BV32_ADD(v2$2, v0), BV32_ADD(BV32_MUL(BV32_ADD($search_pos.0$2, 1644), 2), 1))] else v13$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2)), BV16_ADD(v6$1, v10$1), $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)), BV16_ADD(v6$2, v10$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2))] := (if p1$1 then BV16_ADD(v6$1, v10$1) else $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2))]);
    $$blk_sad[BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2))] := (if p1$2 then BV16_ADD(v6$2, v10$2) else $$blk_sad[BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2))]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2)), 1), BV16_ADD(v7$1, v11$1), $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)), 1), BV16_ADD(v7$2, v11$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2)), 1)] := (if p1$1 then BV16_ADD(v7$1, v11$1) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL($search_pos.0$1, 2)), 1)]);
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)), 1)] := (if p1$2 then BV16_ADD(v7$2, v11$2) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL($search_pos.0$2, 2)), 1)]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), BV16_ADD(v8$1, v12$1), $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), BV16_ADD(v8$2, v12$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))] := (if p1$1 then BV16_ADD(v8$1, v12$1) else $$blk_sad[BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))]);
    $$blk_sad[BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))] := (if p1$2 then BV16_ADD(v8$2, v12$2) else $$blk_sad[BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1), BV16_ADD(v9$1, v13$1), $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1), BV16_ADD(v9$2, v13$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)] := (if p1$1 then BV16_ADD(v9$1, v13$1) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$1, v0), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)]);
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1)] := (if p1$2 then BV16_ADD(v9$2, v13$2) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v3$2, v0), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1)]);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2)), BV16_ADD(v6$1, v8$1), $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)), BV16_ADD(v6$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2))] := (if p1$1 then BV16_ADD(v6$1, v8$1) else $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2))]);
    $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2))] := (if p1$2 then BV16_ADD(v6$2, v8$2) else $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2))]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2)), 1), BV16_ADD(v7$1, v9$1), $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)), 1), BV16_ADD(v7$2, v9$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2)), 1)] := (if p1$1 then BV16_ADD(v7$1, v9$1) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL($search_pos.0$1, 2)), 1)]);
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)), 1)] := (if p1$2 then BV16_ADD(v7$2, v9$2) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL($search_pos.0$2, 2)), 1)]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), BV16_ADD(v10$1, v12$1), $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), BV16_ADD(v10$2, v12$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))] := (if p1$1 then BV16_ADD(v10$1, v12$1) else $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2))]);
    $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))] := (if p1$2 then BV16_ADD(v10$2, v12$2) else $$blk_sad[BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2))]);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1), BV16_ADD(v11$1, v13$1), $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1), BV16_ADD(v11$2, v13$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)] := (if p1$1 then BV16_ADD(v11$1, v13$1) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$1), BV32_MUL(BV32_ADD($search_pos.0$1, 548), 2)), 1)]);
    $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1)] := (if p1$2 then BV16_ADD(v11$2, v13$2) else $$blk_sad[BV32_ADD(BV32_ADD(BV32_ADD(v0, v4$2), BV32_MUL(BV32_ADD($search_pos.0$2, 548), 2)), 1)]);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2)), BV16_ADD(BV16_ADD(v6$1, v8$1), BV16_ADD(v10$1, v12$1)), $$blk_sad[BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)), BV16_ADD(BV16_ADD(v6$2, v8$2), BV16_ADD(v10$2, v12$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2))] := (if p1$1 then BV16_ADD(BV16_ADD(v6$1, v8$1), BV16_ADD(v10$1, v12$1)) else $$blk_sad[BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2))]);
    $$blk_sad[BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2))] := (if p1$2 then BV16_ADD(BV16_ADD(v6$2, v8$2), BV16_ADD(v10$2, v12$2)) else $$blk_sad[BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2))]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$blk_sad(p1$1, BV32_ADD(BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2)), 1), BV16_ADD(BV16_ADD(v7$1, v9$1), BV16_ADD(v11$1, v13$1)), $$blk_sad[BV32_ADD(BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$blk_sad(p1$2, BV32_ADD(BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)), 1), BV16_ADD(BV16_ADD(v7$2, v9$2), BV16_ADD(v11$2, v13$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blk_sad"} true;
    $$blk_sad[BV32_ADD(BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2)), 1)] := (if p1$1 then BV16_ADD(BV16_ADD(v7$1, v9$1), BV16_ADD(v11$1, v13$1)) else $$blk_sad[BV32_ADD(BV32_ADD(v1$1, BV32_MUL($search_pos.0$1, 2)), 1)]);
    $$blk_sad[BV32_ADD(BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)), 1)] := (if p1$2 then BV16_ADD(BV16_ADD(v7$2, v9$2), BV16_ADD(v11$2, v13$2)) else $$blk_sad[BV32_ADD(BV32_ADD(v1$2, BV32_MUL($search_pos.0$2, 2)), 1)]);
    $search_pos.0$1 := (if p1$1 then BV32_ADD($search_pos.0$1, 32) else $search_pos.0$1);
    $search_pos.0$2 := (if p1$2 then BV32_ADD($search_pos.0$2, 32) else $search_pos.0$2);
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
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 11 then 1 else 0) != 0;

axiom (if num_groups_y == 9 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const _WATCHED_VALUE_$$blk_sad: int;

procedure {:inline 1} _LOG_READ_$$blk_sad(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$blk_sad;



implementation {:inline 1} _LOG_READ_$$blk_sad(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blk_sad := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blk_sad == _value then true else _READ_HAS_OCCURRED_$$blk_sad);
    return;
}



procedure _CHECK_READ_$$blk_sad(_P: bool, _offset: int, _value: int);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blk_sad);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blk_sad: bool;

procedure {:inline 1} _LOG_WRITE_$$blk_sad(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$blk_sad, _WRITE_READ_BENIGN_FLAG_$$blk_sad;



implementation {:inline 1} _LOG_WRITE_$$blk_sad(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blk_sad := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blk_sad == _value then true else _WRITE_HAS_OCCURRED_$$blk_sad);
    _WRITE_READ_BENIGN_FLAG_$$blk_sad := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blk_sad == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blk_sad);
    return;
}



procedure _CHECK_WRITE_$$blk_sad(_P: bool, _offset: int, _value: int);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blk_sad != _value);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blk_sad != _value);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blk_sad(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blk_sad;



implementation {:inline 1} _LOG_ATOMIC_$$blk_sad(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blk_sad := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blk_sad);
    return;
}



procedure _CHECK_ATOMIC_$$blk_sad(_P: bool, _offset: int);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset);
  requires {:source_name "blk_sad"} {:array "$$blk_sad"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blk_sad;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blk_sad(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blk_sad := (if _P && _WRITE_HAS_OCCURRED_$$blk_sad && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blk_sad);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;
