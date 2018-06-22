function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$pos"} {:global} {:elem_width 32} {:source_name "pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pos: bool;

axiom {:array_info "$$vel"} {:global} {:elem_width 32} {:source_name "vel"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vel: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vel: bool;

var {:source_name "localPos"} {:group_shared} $$localPos: [bv1][int]int;

axiom {:array_info "$$localPos"} {:group_shared} {:elem_width 32} {:source_name "localPos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$localPos: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$localPos: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$localPos: bool;

var {:source_name "newPosition"} {:global} $$newPosition: [int]int;

axiom {:array_info "$$newPosition"} {:global} {:elem_width 32} {:source_name "newPosition"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$newPosition: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$newPosition: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$newPosition: bool;

var {:source_name "newVelocity"} {:global} $$newVelocity: [int]int;

axiom {:array_info "$$newVelocity"} {:global} {:elem_width 32} {:source_name "newVelocity"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$newVelocity: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$newVelocity: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$newVelocity: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "nbody_sim"} {:kernel} $nbody_sim($numBodies: int, $deltaTime: int, $epsSqr: int);
  requires !_READ_HAS_OCCURRED_$$pos && !_WRITE_HAS_OCCURRED_$$pos && !_ATOMIC_HAS_OCCURRED_$$pos;
  requires !_READ_HAS_OCCURRED_$$vel && !_WRITE_HAS_OCCURRED_$$vel && !_ATOMIC_HAS_OCCURRED_$$vel;
  requires !_READ_HAS_OCCURRED_$$newPosition && !_WRITE_HAS_OCCURRED_$$newPosition && !_ATOMIC_HAS_OCCURRED_$$newPosition;
  requires !_READ_HAS_OCCURRED_$$newVelocity && !_WRITE_HAS_OCCURRED_$$newVelocity && !_ATOMIC_HAS_OCCURRED_$$newVelocity;
  requires !_READ_HAS_OCCURRED_$$localPos && !_WRITE_HAS_OCCURRED_$$localPos && !_ATOMIC_HAS_OCCURRED_$$localPos;
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
  modifies $$localPos, _WRITE_HAS_OCCURRED_$$newPosition, _WRITE_READ_BENIGN_FLAG_$$newPosition, _WRITE_READ_BENIGN_FLAG_$$newPosition, _WRITE_HAS_OCCURRED_$$newVelocity, _WRITE_READ_BENIGN_FLAG_$$newVelocity, _WRITE_READ_BENIGN_FLAG_$$newVelocity, _WRITE_HAS_OCCURRED_$$localPos, _WRITE_READ_BENIGN_FLAG_$$localPos, _WRITE_READ_BENIGN_FLAG_$$localPos, $$newPosition, $$newVelocity, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$localPos;



implementation {:source_name "nbody_sim"} {:kernel} $nbody_sim($numBodies: int, $deltaTime: int, $epsSqr: int)
{
  var $acc.0$1: int;
  var $acc.0$2: int;
  var $i.0: int;
  var $acc.1$1: int;
  var $acc.1$2: int;
  var $j.0: int;
  var v0$1: int;
  var v0$2: int;
  var v12: bool;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v2 := group_size_x;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    $acc.0$1, $i.0 := 0, 0;
    $acc.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  $i.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i.0, 0) ) ,  (  BV32_SGE($i.0, 0) ) ,  (  BV32_ULE($i.0, 0) ) ,  (  BV32_UGE($i.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  (  !_READ_HAS_OCCURRED_$$localPos ) ,  (  !_WRITE_HAS_OCCURRED_$$localPos ) ,  (  _READ_HAS_OCCURRED_$$localPos ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  _WRITE_HAS_OCCURRED_$$localPos ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) ) ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 5} true;
    v7 := BV32_ULT($i.0, BV32_UDIV($numBodies, v2));
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v7;
    havoc v26$1, v26$2;
    havoc v27$1, v27$2;
    havoc v28$1, v28$2;
    havoc v29$1, v29$2;
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$newPosition(true, BV32_MUL(v1$1, 4), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 32, 0), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v26$1, $deltaTime), v3$1)), $$newPosition[BV32_MUL(v1$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(true, BV32_MUL(v1$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$newPosition(true, BV32_MUL(v1$2, 4), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 32, 0), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v26$2, $deltaTime), v3$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newPosition"} true;
    $$newPosition[BV32_MUL(v1$1, 4)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 32, 0), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v26$1, $deltaTime), v3$1));
    $$newPosition[BV32_MUL(v1$2, 4)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 32, 0), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v26$2, $deltaTime), v3$2));
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$1, 4), 1), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 64, 32), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v27$1, $deltaTime), v4$1)), $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 1), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 64, 32), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v27$2, $deltaTime), v4$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newPosition"} true;
    $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 1)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 64, 32), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v27$1, $deltaTime), v4$1));
    $$newPosition[BV32_ADD(BV32_MUL(v1$2, 4), 1)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 64, 32), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v27$2, $deltaTime), v4$2));
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$1, 4), 2), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 96, 64), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v28$1, $deltaTime), v5$1)), $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 2), FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 96, 64), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v28$2, $deltaTime), v5$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newPosition"} true;
    $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 2)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$1, 96, 64), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v28$1, $deltaTime), v5$1));
    $$newPosition[BV32_ADD(BV32_MUL(v1$2, 4), 2)] := FADD32(FMUL32(FMUL32(FMUL32(BV_EXTRACT($acc.0$2, 96, 64), 1056964608), $deltaTime), $deltaTime), FADD32(FMUL32(v28$2, $deltaTime), v5$2));
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$1, 4), 3), v6$1, $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$newPosition(true, BV32_ADD(BV32_MUL(v1$2, 4), 3), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newPosition"} true;
    $$newPosition[BV32_ADD(BV32_MUL(v1$1, 4), 3)] := v6$1;
    $$newPosition[BV32_ADD(BV32_MUL(v1$2, 4), 3)] := v6$2;
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$newVelocity(true, BV32_MUL(v1$1, 4), FADD32(FMUL32(BV_EXTRACT($acc.0$1, 32, 0), $deltaTime), v26$1), $$newVelocity[BV32_MUL(v1$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(true, BV32_MUL(v1$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$newVelocity(true, BV32_MUL(v1$2, 4), FADD32(FMUL32(BV_EXTRACT($acc.0$2, 32, 0), $deltaTime), v26$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newVelocity"} true;
    $$newVelocity[BV32_MUL(v1$1, 4)] := FADD32(FMUL32(BV_EXTRACT($acc.0$1, 32, 0), $deltaTime), v26$1);
    $$newVelocity[BV32_MUL(v1$2, 4)] := FADD32(FMUL32(BV_EXTRACT($acc.0$2, 32, 0), $deltaTime), v26$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$1, 4), 1), FADD32(FMUL32(BV_EXTRACT($acc.0$1, 64, 32), $deltaTime), v27$1), $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 1), FADD32(FMUL32(BV_EXTRACT($acc.0$2, 64, 32), $deltaTime), v27$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newVelocity"} true;
    $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 1)] := FADD32(FMUL32(BV_EXTRACT($acc.0$1, 64, 32), $deltaTime), v27$1);
    $$newVelocity[BV32_ADD(BV32_MUL(v1$2, 4), 1)] := FADD32(FMUL32(BV_EXTRACT($acc.0$2, 64, 32), $deltaTime), v27$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$1, 4), 2), FADD32(FMUL32(BV_EXTRACT($acc.0$1, 96, 64), $deltaTime), v28$1), $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 2), FADD32(FMUL32(BV_EXTRACT($acc.0$2, 96, 64), $deltaTime), v28$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newVelocity"} true;
    $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 2)] := FADD32(FMUL32(BV_EXTRACT($acc.0$1, 96, 64), $deltaTime), v28$1);
    $$newVelocity[BV32_ADD(BV32_MUL(v1$2, 4), 2)] := FADD32(FMUL32(BV_EXTRACT($acc.0$2, 96, 64), $deltaTime), v28$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$1, 4), 3), FADD32(FMUL32(BV_EXTRACT($acc.0$1, 128, 96), $deltaTime), v29$1), $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$newVelocity(true, BV32_ADD(BV32_MUL(v1$2, 4), 3), FADD32(FMUL32(BV_EXTRACT($acc.0$2, 128, 96), $deltaTime), v29$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newVelocity"} true;
    $$newVelocity[BV32_ADD(BV32_MUL(v1$1, 4), 3)] := FADD32(FMUL32(BV_EXTRACT($acc.0$1, 128, 96), $deltaTime), v29$1);
    $$newVelocity[BV32_ADD(BV32_MUL(v1$2, 4), 3)] := FADD32(FMUL32(BV_EXTRACT($acc.0$2, 128, 96), $deltaTime), v29$2);
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v7;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$localPos(true, BV32_MUL(v0$1, 4), v8$1, $$localPos[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$localPos(true, BV32_MUL(v0$2, 4), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$localPos"} true;
    $$localPos[1bv1][BV32_MUL(v0$1, 4)] := v8$1;
    $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := v8$2;
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v9$1, $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$localPos"} true;
    $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v9$1;
    $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v9$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v10$1, $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$localPos"} true;
    $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v10$1;
    $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v10$2;
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v11$1, $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$localPos(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$localPos"} true;
    $$localPos[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v11$1;
    $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v11$2;
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_0(-1, 0);
    $acc.1$1, $j.0 := $acc.0$1, 0;
    $acc.1$2 := $acc.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$localPos ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  (  $j.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($j.0, 0) ) ,  (  BV32_SGE($j.0, 0) ) ,  (  BV32_ULE($j.0, 0) ) ,  (  BV32_UGE($j.0, 0) ) ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$localPos ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 16} true;
    v12 := BV32_ULT($j.0, v2);
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v12;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 28} $bugle_barrier_duplicated_1(-1, 0);
    $acc.0$1, $i.0 := $acc.1$1, BV32_ADD($i.0, 1);
    $acc.0$2 := $acc.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb0:
    assume {:partition} v12;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$localPos(true, BV32_MUL($j.0, 4), $$localPos[1bv1][BV32_MUL($j.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$localPos(true, BV32_MUL($j.0, 4), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v13$1 := $$localPos[1bv1][BV32_MUL($j.0, 4)];
    v13$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)];
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v14$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    v14$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v15$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    v15$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v16$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    v16$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    v17$1 := FSUB32(v13$1, v3$1);
    v17$2 := FSUB32(v13$2, v3$2);
    v18$1 := FSUB32(v14$1, v4$1);
    v18$2 := FSUB32(v14$2, v4$2);
    v19$1 := FSUB32(v15$1, v5$1);
    v19$2 := FSUB32(v15$2, v5$2);
    v20$1 := FDIV32(1065353216, FSQRT32(FADD32(FADD32(FMUL32(v19$1, v19$1), FADD32(FMUL32(v17$1, v17$1), FMUL32(v18$1, v18$1))), $epsSqr)));
    v20$2 := FDIV32(1065353216, FSQRT32(FADD32(FADD32(FMUL32(v19$2, v19$2), FADD32(FMUL32(v17$2, v17$2), FMUL32(v18$2, v18$2))), $epsSqr)));
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$localPos(true, BV32_MUL($j.0, 4), $$localPos[1bv1][BV32_MUL($j.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$localPos(true, BV32_MUL($j.0, 4), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v21$1 := $$localPos[1bv1][BV32_MUL($j.0, 4)];
    v21$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($j.0, 4)];
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 1), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v22$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    v22$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 2), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v23$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    v23$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$localPos(true, BV32_ADD(BV32_MUL($j.0, 4), 3), $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$localPos"} true;
    v24$1 := $$localPos[1bv1][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    v24$2 := $$localPos[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($j.0, 4), 3)];
    v25$1 := FMUL32(v24$1, FMUL32(FMUL32(v20$1, v20$1), v20$1));
    v25$2 := FMUL32(v24$2, FMUL32(FMUL32(v20$2, v20$2), v20$2));
    $acc.1$1, $j.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($acc.1$1, 128, 96), FMUL32(v25$1, FSUB32(v16$1, v6$1))), FADD32(BV_EXTRACT($acc.1$1, 96, 64), FMUL32(v25$1, v19$1))), FADD32(BV_EXTRACT($acc.1$1, 64, 32), FMUL32(v25$1, v18$1))), FADD32(BV_EXTRACT($acc.1$1, 32, 0), FMUL32(v25$1, v17$1))), BV32_ADD($j.0, 1);
    $acc.1$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($acc.1$2, 128, 96), FMUL32(v25$2, FSUB32(v16$2, v6$2))), FADD32(BV_EXTRACT($acc.1$2, 96, 64), FMUL32(v25$2, v19$2))), FADD32(BV_EXTRACT($acc.1$2, 64, 32), FMUL32(v25$2, v18$2))), FADD32(BV_EXTRACT($acc.1$2, 32, 0), FMUL32(v25$2, v17$2)));
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$localPos, $$newPosition, $$newVelocity, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$localPos, $$newPosition, $$newVelocity, _TRACKING;





function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}













const _WATCHED_VALUE_$$pos: int;

procedure {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _READ_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_READ_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pos);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pos: bool;

procedure {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _WRITE_HAS_OCCURRED_$$pos);
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pos);
    return;
}



procedure _CHECK_WRITE_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_ATOMIC_$$pos(_P: bool, _offset: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pos);
    return;
}



const _WATCHED_VALUE_$$vel: int;

procedure {:inline 1} _LOG_READ_$$vel(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vel;



implementation {:inline 1} _LOG_READ_$$vel(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vel == _value then true else _READ_HAS_OCCURRED_$$vel);
    return;
}



procedure _CHECK_READ_$$vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vel);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vel: bool;

procedure {:inline 1} _LOG_WRITE_$$vel(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vel, _WRITE_READ_BENIGN_FLAG_$$vel;



implementation {:inline 1} _LOG_WRITE_$$vel(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vel == _value then true else _WRITE_HAS_OCCURRED_$$vel);
    _WRITE_READ_BENIGN_FLAG_$$vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vel == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vel);
    return;
}



procedure _CHECK_WRITE_$$vel(_P: bool, _offset: int, _value: int);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vel != _value);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vel != _value);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vel(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vel;



implementation {:inline 1} _LOG_ATOMIC_$$vel(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vel := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vel);
    return;
}



procedure _CHECK_ATOMIC_$$vel(_P: bool, _offset: int);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset);
  requires {:source_name "vel"} {:array "$$vel"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vel(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vel;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vel(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vel := (if _P && _WRITE_HAS_OCCURRED_$$vel && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vel);
    return;
}



const _WATCHED_VALUE_$$newPosition: int;

procedure {:inline 1} _LOG_READ_$$newPosition(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$newPosition;



implementation {:inline 1} _LOG_READ_$$newPosition(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$newPosition := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newPosition == _value then true else _READ_HAS_OCCURRED_$$newPosition);
    return;
}



procedure _CHECK_READ_$$newPosition(_P: bool, _offset: int, _value: int);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$newPosition);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$newPosition: bool;

procedure {:inline 1} _LOG_WRITE_$$newPosition(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$newPosition, _WRITE_READ_BENIGN_FLAG_$$newPosition;



implementation {:inline 1} _LOG_WRITE_$$newPosition(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$newPosition := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newPosition == _value then true else _WRITE_HAS_OCCURRED_$$newPosition);
    _WRITE_READ_BENIGN_FLAG_$$newPosition := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newPosition == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$newPosition);
    return;
}



procedure _CHECK_WRITE_$$newPosition(_P: bool, _offset: int, _value: int);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newPosition != _value);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newPosition != _value);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$newPosition(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$newPosition;



implementation {:inline 1} _LOG_ATOMIC_$$newPosition(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$newPosition := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$newPosition);
    return;
}



procedure _CHECK_ATOMIC_$$newPosition(_P: bool, _offset: int);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset);
  requires {:source_name "newPosition"} {:array "$$newPosition"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$newPosition;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newPosition(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$newPosition := (if _P && _WRITE_HAS_OCCURRED_$$newPosition && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$newPosition);
    return;
}



const _WATCHED_VALUE_$$newVelocity: int;

procedure {:inline 1} _LOG_READ_$$newVelocity(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$newVelocity;



implementation {:inline 1} _LOG_READ_$$newVelocity(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$newVelocity := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVelocity == _value then true else _READ_HAS_OCCURRED_$$newVelocity);
    return;
}



procedure _CHECK_READ_$$newVelocity(_P: bool, _offset: int, _value: int);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$newVelocity);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$newVelocity: bool;

procedure {:inline 1} _LOG_WRITE_$$newVelocity(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$newVelocity, _WRITE_READ_BENIGN_FLAG_$$newVelocity;



implementation {:inline 1} _LOG_WRITE_$$newVelocity(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$newVelocity := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVelocity == _value then true else _WRITE_HAS_OCCURRED_$$newVelocity);
    _WRITE_READ_BENIGN_FLAG_$$newVelocity := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVelocity == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$newVelocity);
    return;
}



procedure _CHECK_WRITE_$$newVelocity(_P: bool, _offset: int, _value: int);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVelocity != _value);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVelocity != _value);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$newVelocity(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$newVelocity;



implementation {:inline 1} _LOG_ATOMIC_$$newVelocity(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$newVelocity := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$newVelocity);
    return;
}



procedure _CHECK_ATOMIC_$$newVelocity(_P: bool, _offset: int);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset);
  requires {:source_name "newVelocity"} {:array "$$newVelocity"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$newVelocity;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVelocity(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$newVelocity := (if _P && _WRITE_HAS_OCCURRED_$$newVelocity && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$newVelocity);
    return;
}



const _WATCHED_VALUE_$$localPos: int;

procedure {:inline 1} _LOG_READ_$$localPos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$localPos;



implementation {:inline 1} _LOG_READ_$$localPos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$localPos := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localPos == _value then true else _READ_HAS_OCCURRED_$$localPos);
    return;
}



procedure _CHECK_READ_$$localPos(_P: bool, _offset: int, _value: int);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$localPos && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$localPos: bool;

procedure {:inline 1} _LOG_WRITE_$$localPos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$localPos, _WRITE_READ_BENIGN_FLAG_$$localPos;



implementation {:inline 1} _LOG_WRITE_$$localPos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$localPos := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localPos == _value then true else _WRITE_HAS_OCCURRED_$$localPos);
    _WRITE_READ_BENIGN_FLAG_$$localPos := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localPos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$localPos);
    return;
}



procedure _CHECK_WRITE_$$localPos(_P: bool, _offset: int, _value: int);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localPos != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localPos != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$localPos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$localPos;



implementation {:inline 1} _LOG_ATOMIC_$$localPos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$localPos := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$localPos);
    return;
}



procedure _CHECK_ATOMIC_$$localPos(_P: bool, _offset: int);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "localPos"} {:array "$$localPos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$localPos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localPos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$localPos := (if _P && _WRITE_HAS_OCCURRED_$$localPos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$localPos);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$localPos;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$localPos;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$localPos;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$newPosition;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$newPosition;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$newPosition;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$newVelocity;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$newVelocity;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$newVelocity;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$newPosition;
    goto anon7;

  anon7:
    havoc $$newVelocity;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$localPos;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$localPos;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$localPos;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$localPos;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$newPosition;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$newPosition;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$newPosition;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$newVelocity;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$newVelocity;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$newVelocity;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$newPosition;
    goto anon7;

  anon7:
    havoc $$newVelocity;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$localPos;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}










