type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data"} {:global} $$data: [int]int;

axiom {:array_info "$$data"} {:global} {:elem_width 64} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

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

function FADD64(int, int) : int;

function FSUB64(int, int) : int;

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

procedure {:source_name "Add8"} {:kernel} $Add8($nIters: int);
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
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
  modifies _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:source_name "Add8"} {:kernel} $Add8($nIters: int)
{
  var $s0.0$1: int;
  var $s0.0$2: int;
  var $j.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$data(true, v0$1, $$data[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$data(true, v0$2, $$data[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v1$1 := $$data[v0$1];
    v1$2 := $$data[v0$2];
    $s0.0$1, $j.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD64(v1$1, 4604480259023595110), FADD64(v1$1, 4603579539098121011)), FADD64(v1$1, 4602678819172646912)), FADD64(v1$1, 4600877379321698714)), FADD64(v1$1, 4599075939470750515)), FADD64(v1$1, 4596373779694328218)), FADD64(v1$1, 4591870180066957722)), FADD64(v1$1, 0)), 0;
    $s0.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD64(v1$2, 4604480259023595110), FADD64(v1$2, 4603579539098121011)), FADD64(v1$2, 4602678819172646912)), FADD64(v1$2, 4600877379321698714)), FADD64(v1$2, 4599075939470750515)), FADD64(v1$2, 4596373779694328218)), FADD64(v1$2, 4591870180066957722)), FADD64(v1$2, 0));
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v2 := BV32_SLT($j.0, $nIters);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$data(true, v0$1, FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(BV_EXTRACT($s0.0$1, 64, 0), BV_EXTRACT($s0.0$1, 128, 64)), BV_EXTRACT($s0.0$1, 192, 128)), BV_EXTRACT($s0.0$1, 256, 192)), BV_EXTRACT($s0.0$1, 320, 256)), BV_EXTRACT($s0.0$1, 384, 320)), BV_EXTRACT($s0.0$1, 448, 384)), BV_EXTRACT($s0.0$1, 512, 448)), $$data[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$data(true, v0$2, FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(BV_EXTRACT($s0.0$2, 64, 0), BV_EXTRACT($s0.0$2, 128, 64)), BV_EXTRACT($s0.0$2, 192, 128)), BV_EXTRACT($s0.0$2, 256, 192)), BV_EXTRACT($s0.0$2, 320, 256)), BV_EXTRACT($s0.0$2, 384, 320)), BV_EXTRACT($s0.0$2, 448, 384)), BV_EXTRACT($s0.0$2, 512, 448)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v0$1] := FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(BV_EXTRACT($s0.0$1, 64, 0), BV_EXTRACT($s0.0$1, 128, 64)), BV_EXTRACT($s0.0$1, 192, 128)), BV_EXTRACT($s0.0$1, 256, 192)), BV_EXTRACT($s0.0$1, 320, 256)), BV_EXTRACT($s0.0$1, 384, 320)), BV_EXTRACT($s0.0$1, 448, 384)), BV_EXTRACT($s0.0$1, 512, 448));
    $$data[v0$2] := FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(BV_EXTRACT($s0.0$2, 64, 0), BV_EXTRACT($s0.0$2, 128, 64)), BV_EXTRACT($s0.0$2, 192, 128)), BV_EXTRACT($s0.0$2, 256, 192)), BV_EXTRACT($s0.0$2, 320, 256)), BV_EXTRACT($s0.0$2, 384, 320)), BV_EXTRACT($s0.0$2, 448, 384)), BV_EXTRACT($s0.0$2, 512, 448));
    return;

  $truebb:
    assume {:partition} v2;
    $s0.0$1, $j.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 512, 448)))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 448, 384))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 384, 320))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 320, 256))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 256, 192))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 192, 128))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 128, 64))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$1, 64, 0))))))))))))), BV32_ADD($j.0, 1);
    $s0.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 512, 448)))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 448, 384))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 384, 320))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 320, 256))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 256, 192))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 192, 128))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 128, 64))))))))))))), FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, FSUB64(4621819117588971520, BV_EXTRACT($s0.0$2, 64, 0)))))))))))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 16384 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$data: int;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
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
