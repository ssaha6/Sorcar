type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "force"} {:global} $$force: [int]int;

axiom {:array_info "$$force"} {:global} {:elem_width 32} {:source_name "force"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$force: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$force: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$force: bool;

var {:source_name "position"} {:global} $$position: [int]int;

axiom {:array_info "$$position"} {:global} {:elem_width 32} {:source_name "position"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$position: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$position: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$position: bool;

var {:source_name "neighList"} {:global} $$neighList: [int]int;

axiom {:array_info "$$neighList"} {:global} {:elem_width 32} {:source_name "neighList"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$neighList: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$neighList: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$neighList: bool;

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

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "compute_lj_force"} {:kernel} $compute_lj_force($neighCount: int, $cutsq: int, $lj1: int, $lj2: int, $inum: int);
  requires {:sourceloc_num 0} {:thread 1} (if $neighCount == 128 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $inum == 12288 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$force && !_WRITE_HAS_OCCURRED_$$force && !_ATOMIC_HAS_OCCURRED_$$force;
  requires !_READ_HAS_OCCURRED_$$position && !_WRITE_HAS_OCCURRED_$$position && !_ATOMIC_HAS_OCCURRED_$$position;
  requires !_READ_HAS_OCCURRED_$$neighList && !_WRITE_HAS_OCCURRED_$$neighList && !_ATOMIC_HAS_OCCURRED_$$neighList;
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
  modifies _WRITE_HAS_OCCURRED_$$force, _WRITE_READ_BENIGN_FLAG_$$force, _WRITE_READ_BENIGN_FLAG_$$force;



implementation {:source_name "compute_lj_force"} {:kernel} $compute_lj_force($neighCount: int, $cutsq: int, $lj1: int, $lj2: int, $inum: int)
{
  var $f.0$1: int;
  var $f.0$2: int;
  var $j.0: int;
  var $f.1$1: int;
  var $f.1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5: bool;
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
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
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
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := $$position[BV32_MUL(v0$1, 4)];
    v1$2 := $$position[BV32_MUL(v0$2, 4)];
    v2$1 := $$position[BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v2$2 := $$position[BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    v3$1 := $$position[BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v3$2 := $$position[BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    v4$1 := $$position[BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v4$2 := $$position[BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    $f.0$1, $j.0 := 0, 0;
    $f.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 7} true;
    v5 := BV32_SLT($j.0, $neighCount);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v5;
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$force(true, BV32_MUL(v0$1, 4), BV_EXTRACT($f.0$1, 32, 0), $$force[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$force(true, BV32_MUL(v0$2, 4), BV_EXTRACT($f.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$force"} true;
    $$force[BV32_MUL(v0$1, 4)] := BV_EXTRACT($f.0$1, 32, 0);
    $$force[BV32_MUL(v0$2, 4)] := BV_EXTRACT($f.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), BV_EXTRACT($f.0$1, 64, 32), $$force[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), BV_EXTRACT($f.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$force"} true;
    $$force[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := BV_EXTRACT($f.0$1, 64, 32);
    $$force[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := BV_EXTRACT($f.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), BV_EXTRACT($f.0$1, 96, 64), $$force[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), BV_EXTRACT($f.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$force"} true;
    $$force[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := BV_EXTRACT($f.0$1, 96, 64);
    $$force[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := BV_EXTRACT($f.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), BV_EXTRACT($f.0$1, 128, 96), $$force[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$force(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), BV_EXTRACT($f.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$force"} true;
    $$force[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := BV_EXTRACT($f.0$1, 128, 96);
    $$force[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := BV_EXTRACT($f.0$2, 128, 96);
    return;

  $truebb:
    assume {:partition} v5;
    v6$1 := $$neighList[BV32_ADD(BV32_MUL($j.0, $inum), v0$1)];
    v6$2 := $$neighList[BV32_ADD(BV32_MUL($j.0, $inum), v0$2)];
    v7$1 := $$position[BV32_MUL(v6$1, 4)];
    v7$2 := $$position[BV32_MUL(v6$2, 4)];
    v8$1 := $$position[BV32_ADD(BV32_MUL(v6$1, 4), 1)];
    v8$2 := $$position[BV32_ADD(BV32_MUL(v6$2, 4), 1)];
    v9$1 := $$position[BV32_ADD(BV32_MUL(v6$1, 4), 2)];
    v9$2 := $$position[BV32_ADD(BV32_MUL(v6$2, 4), 2)];
    v10$1 := $$position[BV32_ADD(BV32_MUL(v6$1, 4), 3)];
    v10$2 := $$position[BV32_ADD(BV32_MUL(v6$2, 4), 3)];
    v11$1 := FSUB32(v1$1, v7$1);
    v11$2 := FSUB32(v1$2, v7$2);
    v12$1 := FSUB32(v2$1, v8$1);
    v12$2 := FSUB32(v2$2, v8$2);
    v13$1 := FSUB32(v3$1, v9$1);
    v13$2 := FSUB32(v3$2, v9$2);
    v14$1 := FADD32(FMUL32(v13$1, v13$1), FADD32(FMUL32(v11$1, v11$1), FMUL32(v12$1, v12$1)));
    v14$2 := FADD32(FMUL32(v13$2, v13$2), FADD32(FMUL32(v11$2, v11$2), FMUL32(v12$2, v12$2)));
    v15$1 := FLT32(v14$1, $cutsq);
    v15$2 := FLT32(v14$2, $cutsq);
    p1$1 := (if v15$1 then v15$1 else p1$1);
    p1$2 := (if v15$2 then v15$2 else p1$2);
    p0$1 := (if !v15$1 then !v15$1 else p0$1);
    p0$2 := (if !v15$2 then !v15$2 else p0$2);
    $f.1$1 := (if p0$1 then $f.0$1 else $f.1$1);
    $f.1$2 := (if p0$2 then $f.0$2 else $f.1$2);
    v16$1 := (if p1$1 then FDIV32(1065353216, v14$1) else v16$1);
    v16$2 := (if p1$2 then FDIV32(1065353216, v14$2) else v16$2);
    v17$1 := (if p1$1 then FMUL32(FMUL32(v16$1, v16$1), v16$1) else v17$1);
    v17$2 := (if p1$2 then FMUL32(FMUL32(v16$2, v16$2), v16$2) else v17$2);
    v18$1 := (if p1$1 then FMUL32(FMUL32(v16$1, v17$1), FADD32(FMUL32($lj1, v17$1), FSUB32(-2147483648, $lj2))) else v18$1);
    v18$2 := (if p1$2 then FMUL32(FMUL32(v16$2, v17$2), FADD32(FMUL32($lj1, v17$2), FSUB32(-2147483648, $lj2))) else v18$2);
    v19$1 := (if p1$1 then BV_EXTRACT($f.0$1, 64, 32) else v19$1);
    v19$2 := (if p1$2 then BV_EXTRACT($f.0$2, 64, 32) else v19$2);
    v20$1 := (if p1$1 then BV_EXTRACT($f.0$1, 96, 64) else v20$1);
    v20$2 := (if p1$2 then BV_EXTRACT($f.0$2, 96, 64) else v20$2);
    $f.1$1 := (if p1$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($f.0$1, 128, 96), FADD32(v20$1, FMUL32(v13$1, v18$1))), FADD32(v19$1, FMUL32(v12$1, v18$1))), FADD32(BV_EXTRACT($f.0$1, 32, 0), FMUL32(v11$1, v18$1))) else $f.1$1);
    $f.1$2 := (if p1$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($f.0$2, 128, 96), FADD32(v20$2, FMUL32(v13$2, v18$2))), FADD32(v19$2, FMUL32(v12$2, v18$2))), FADD32(BV_EXTRACT($f.0$2, 32, 0), FMUL32(v11$2, v18$2))) else $f.1$2);
    $f.0$1, $j.0 := $f.1$1, BV32_ADD($j.0, 1);
    $f.0$2 := $f.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 96 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$force: int;

procedure {:inline 1} _LOG_READ_$$force(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$force;



implementation {:inline 1} _LOG_READ_$$force(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$force := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$force == _value then true else _READ_HAS_OCCURRED_$$force);
    return;
}



procedure _CHECK_READ_$$force(_P: bool, _offset: int, _value: int);
  requires {:source_name "force"} {:array "$$force"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$force);
  requires {:source_name "force"} {:array "$$force"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$force: bool;

procedure {:inline 1} _LOG_WRITE_$$force(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$force, _WRITE_READ_BENIGN_FLAG_$$force;



implementation {:inline 1} _LOG_WRITE_$$force(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$force := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$force == _value then true else _WRITE_HAS_OCCURRED_$$force);
    _WRITE_READ_BENIGN_FLAG_$$force := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$force == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$force);
    return;
}



procedure _CHECK_WRITE_$$force(_P: bool, _offset: int, _value: int);
  requires {:source_name "force"} {:array "$$force"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$force != _value);
  requires {:source_name "force"} {:array "$$force"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$force != _value);
  requires {:source_name "force"} {:array "$$force"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$force(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$force;



implementation {:inline 1} _LOG_ATOMIC_$$force(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$force := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$force);
    return;
}



procedure _CHECK_ATOMIC_$$force(_P: bool, _offset: int);
  requires {:source_name "force"} {:array "$$force"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset);
  requires {:source_name "force"} {:array "$$force"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$force;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$force(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$force := (if _P && _WRITE_HAS_OCCURRED_$$force && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$force);
    return;
}



const _WATCHED_VALUE_$$position: int;

procedure {:inline 1} _LOG_READ_$$position(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$position;



implementation {:inline 1} _LOG_READ_$$position(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$position := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$position == _value then true else _READ_HAS_OCCURRED_$$position);
    return;
}



procedure _CHECK_READ_$$position(_P: bool, _offset: int, _value: int);
  requires {:source_name "position"} {:array "$$position"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$position);
  requires {:source_name "position"} {:array "$$position"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$position: bool;

procedure {:inline 1} _LOG_WRITE_$$position(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$position, _WRITE_READ_BENIGN_FLAG_$$position;



implementation {:inline 1} _LOG_WRITE_$$position(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$position := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$position == _value then true else _WRITE_HAS_OCCURRED_$$position);
    _WRITE_READ_BENIGN_FLAG_$$position := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$position == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$position);
    return;
}



procedure _CHECK_WRITE_$$position(_P: bool, _offset: int, _value: int);
  requires {:source_name "position"} {:array "$$position"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$position != _value);
  requires {:source_name "position"} {:array "$$position"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$position != _value);
  requires {:source_name "position"} {:array "$$position"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$position(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$position;



implementation {:inline 1} _LOG_ATOMIC_$$position(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$position := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$position);
    return;
}



procedure _CHECK_ATOMIC_$$position(_P: bool, _offset: int);
  requires {:source_name "position"} {:array "$$position"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset);
  requires {:source_name "position"} {:array "$$position"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$position(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$position;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$position(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$position := (if _P && _WRITE_HAS_OCCURRED_$$position && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$position);
    return;
}



const _WATCHED_VALUE_$$neighList: int;

procedure {:inline 1} _LOG_READ_$$neighList(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$neighList;



implementation {:inline 1} _LOG_READ_$$neighList(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$neighList := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$neighList == _value then true else _READ_HAS_OCCURRED_$$neighList);
    return;
}



procedure _CHECK_READ_$$neighList(_P: bool, _offset: int, _value: int);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$neighList);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$neighList: bool;

procedure {:inline 1} _LOG_WRITE_$$neighList(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$neighList, _WRITE_READ_BENIGN_FLAG_$$neighList;



implementation {:inline 1} _LOG_WRITE_$$neighList(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$neighList := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$neighList == _value then true else _WRITE_HAS_OCCURRED_$$neighList);
    _WRITE_READ_BENIGN_FLAG_$$neighList := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$neighList == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$neighList);
    return;
}



procedure _CHECK_WRITE_$$neighList(_P: bool, _offset: int, _value: int);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$neighList != _value);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$neighList != _value);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$neighList(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$neighList;



implementation {:inline 1} _LOG_ATOMIC_$$neighList(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$neighList := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$neighList);
    return;
}



procedure _CHECK_ATOMIC_$$neighList(_P: bool, _offset: int);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset);
  requires {:source_name "neighList"} {:array "$$neighList"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$neighList(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$neighList;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$neighList(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$neighList := (if _P && _WRITE_HAS_OCCURRED_$$neighList && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$neighList);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
