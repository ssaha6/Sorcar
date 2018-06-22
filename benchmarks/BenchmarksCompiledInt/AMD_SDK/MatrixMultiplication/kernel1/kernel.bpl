type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$matrixA"} {:global} {:elem_width 32} {:source_name "matrixA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixA: bool;

axiom {:array_info "$$matrixB"} {:global} {:elem_width 32} {:source_name "matrixB"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixB: bool;

var {:source_name "matrixC"} {:global} $$matrixC: [int]int;

axiom {:array_info "$$matrixC"} {:global} {:elem_width 32} {:source_name "matrixC"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixC: bool;

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

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mmmKernel"} {:kernel} $mmmKernel($widthA: int, $widthB: int);
  requires {:sourceloc_num 0} {:thread 1} (if $widthB == 256 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$matrixA && !_WRITE_HAS_OCCURRED_$$matrixA && !_ATOMIC_HAS_OCCURRED_$$matrixA;
  requires !_READ_HAS_OCCURRED_$$matrixB && !_WRITE_HAS_OCCURRED_$$matrixB && !_ATOMIC_HAS_OCCURRED_$$matrixB;
  requires !_READ_HAS_OCCURRED_$$matrixC && !_WRITE_HAS_OCCURRED_$$matrixC && !_ATOMIC_HAS_OCCURRED_$$matrixC;
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
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:source_name "mmmKernel"} {:kernel} $mmmKernel($widthA: int, $widthB: int)
{
  var $sum0.0$1: int;
  var $sum0.0$2: int;
  var $sum1.0$1: int;
  var $sum1.0$2: int;
  var $sum2.0$1: int;
  var $sum2.0$2: int;
  var $sum3.0$1: int;
  var $sum3.0$2: int;
  var $i.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v14$1: int;
  var v14$2: int;
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
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2 := BV32_UDIV($widthB, 4);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := 0, 0, 0, 0, 0;
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := 0, 0, 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v3 := BV32_ULT($i.0, $widthA);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), BV_EXTRACT($sum0.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), BV_EXTRACT($sum0.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4)] := BV_EXTRACT($sum0.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4)] := BV_EXTRACT($sum0.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 1), BV_EXTRACT($sum0.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 1), BV_EXTRACT($sum0.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 1)] := BV_EXTRACT($sum0.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 1)] := BV_EXTRACT($sum0.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 2), BV_EXTRACT($sum0.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 2), BV_EXTRACT($sum0.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 2)] := BV_EXTRACT($sum0.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 2)] := BV_EXTRACT($sum0.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 3), BV_EXTRACT($sum0.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 3), BV_EXTRACT($sum0.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_SHL(v1$1, 2), v2)), 4), 3)] := BV_EXTRACT($sum0.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_SHL(v1$2, 2), v2)), 4), 3)] := BV_EXTRACT($sum0.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), BV_EXTRACT($sum1.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), BV_EXTRACT($sum1.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4)] := BV_EXTRACT($sum1.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4)] := BV_EXTRACT($sum1.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 1), BV_EXTRACT($sum1.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 1), BV_EXTRACT($sum1.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 1)] := BV_EXTRACT($sum1.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 1)] := BV_EXTRACT($sum1.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 2), BV_EXTRACT($sum1.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 2), BV_EXTRACT($sum1.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 2)] := BV_EXTRACT($sum1.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 2)] := BV_EXTRACT($sum1.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 3), BV_EXTRACT($sum1.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 3), BV_EXTRACT($sum1.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 1), v2)), 4), 3)] := BV_EXTRACT($sum1.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 1), v2)), 4), 3)] := BV_EXTRACT($sum1.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), BV_EXTRACT($sum2.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), BV_EXTRACT($sum2.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4)] := BV_EXTRACT($sum2.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4)] := BV_EXTRACT($sum2.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 1), BV_EXTRACT($sum2.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 1), BV_EXTRACT($sum2.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 1)] := BV_EXTRACT($sum2.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 1)] := BV_EXTRACT($sum2.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 2), BV_EXTRACT($sum2.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 2), BV_EXTRACT($sum2.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 2)] := BV_EXTRACT($sum2.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 2)] := BV_EXTRACT($sum2.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 3), BV_EXTRACT($sum2.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 3), BV_EXTRACT($sum2.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 2), v2)), 4), 3)] := BV_EXTRACT($sum2.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 2), v2)), 4), 3)] := BV_EXTRACT($sum2.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), BV_EXTRACT($sum3.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), BV_EXTRACT($sum3.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4)] := BV_EXTRACT($sum3.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4)] := BV_EXTRACT($sum3.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 1), BV_EXTRACT($sum3.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 1), BV_EXTRACT($sum3.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 1)] := BV_EXTRACT($sum3.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 1)] := BV_EXTRACT($sum3.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 2), BV_EXTRACT($sum3.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 2), BV_EXTRACT($sum3.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 2)] := BV_EXTRACT($sum3.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 2)] := BV_EXTRACT($sum3.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 3), BV_EXTRACT($sum3.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 3), BV_EXTRACT($sum3.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_SHL(v1$1, 2), 3), v2)), 4), 3)] := BV_EXTRACT($sum3.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_SHL(v1$2, 2), 3), v2)), 4), 3)] := BV_EXTRACT($sum3.0$2, 128, 96);
    return;

  $truebb:
    assume {:partition} v3;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    havoc v18$1, v18$2;
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    havoc v25$1, v25$2;
    havoc v26$1, v26$2;
    havoc v27$1, v27$2;
    havoc v28$1, v28$2;
    havoc v29$1, v29$2;
    havoc v30$1, v30$2;
    havoc v31$1, v31$2;
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    havoc v35$1, v35$2;
    v36$1 := BV_EXTRACT($sum0.0$1, 64, 32);
    v36$2 := BV_EXTRACT($sum0.0$2, 64, 32);
    v37$1 := BV_EXTRACT($sum0.0$1, 96, 64);
    v37$2 := BV_EXTRACT($sum0.0$2, 96, 64);
    v38$1 := BV_EXTRACT($sum0.0$1, 128, 96);
    v38$2 := BV_EXTRACT($sum0.0$2, 128, 96);
    v39$1 := BV_EXTRACT($sum1.0$1, 64, 32);
    v39$2 := BV_EXTRACT($sum1.0$2, 64, 32);
    v40$1 := BV_EXTRACT($sum1.0$1, 96, 64);
    v40$2 := BV_EXTRACT($sum1.0$2, 96, 64);
    v41$1 := BV_EXTRACT($sum1.0$1, 128, 96);
    v41$2 := BV_EXTRACT($sum1.0$2, 128, 96);
    v42$1 := BV_EXTRACT($sum2.0$1, 64, 32);
    v42$2 := BV_EXTRACT($sum2.0$2, 64, 32);
    v43$1 := BV_EXTRACT($sum2.0$1, 96, 64);
    v43$2 := BV_EXTRACT($sum2.0$2, 96, 64);
    v44$1 := BV_EXTRACT($sum2.0$1, 128, 96);
    v44$2 := BV_EXTRACT($sum2.0$2, 128, 96);
    v45$1 := BV_EXTRACT($sum3.0$1, 64, 32);
    v45$2 := BV_EXTRACT($sum3.0$2, 64, 32);
    v46$1 := BV_EXTRACT($sum3.0$1, 96, 64);
    v46$2 := BV_EXTRACT($sum3.0$2, 96, 64);
    v47$1 := BV_EXTRACT($sum3.0$1, 128, 96);
    v47$2 := BV_EXTRACT($sum3.0$2, 128, 96);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v38$1, FADD32(FMUL32(v7$1, v35$1), FADD32(FMUL32(v6$1, v31$1), FADD32(FMUL32(v4$1, v23$1), FMUL32(v5$1, v27$1))))), FADD32(v37$1, FADD32(FMUL32(v7$1, v34$1), FADD32(FMUL32(v6$1, v30$1), FADD32(FMUL32(v4$1, v22$1), FMUL32(v5$1, v26$1)))))), FADD32(v36$1, FADD32(FMUL32(v7$1, v33$1), FADD32(FMUL32(v6$1, v29$1), FADD32(FMUL32(v4$1, v21$1), FMUL32(v5$1, v25$1)))))), FADD32(BV_EXTRACT($sum0.0$1, 32, 0), FADD32(FMUL32(v7$1, v32$1), FADD32(FMUL32(v6$1, v28$1), FADD32(FMUL32(v4$1, v20$1), FMUL32(v5$1, v24$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v41$1, FADD32(FMUL32(v11$1, v35$1), FADD32(FMUL32(v10$1, v31$1), FADD32(FMUL32(v8$1, v23$1), FMUL32(v9$1, v27$1))))), FADD32(v40$1, FADD32(FMUL32(v11$1, v34$1), FADD32(FMUL32(v10$1, v30$1), FADD32(FMUL32(v8$1, v22$1), FMUL32(v9$1, v26$1)))))), FADD32(v39$1, FADD32(FMUL32(v11$1, v33$1), FADD32(FMUL32(v10$1, v29$1), FADD32(FMUL32(v8$1, v21$1), FMUL32(v9$1, v25$1)))))), FADD32(BV_EXTRACT($sum1.0$1, 32, 0), FADD32(FMUL32(v11$1, v32$1), FADD32(FMUL32(v10$1, v28$1), FADD32(FMUL32(v8$1, v20$1), FMUL32(v9$1, v24$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v44$1, FADD32(FMUL32(v15$1, v35$1), FADD32(FMUL32(v14$1, v31$1), FADD32(FMUL32(v12$1, v23$1), FMUL32(v13$1, v27$1))))), FADD32(v43$1, FADD32(FMUL32(v15$1, v34$1), FADD32(FMUL32(v14$1, v30$1), FADD32(FMUL32(v12$1, v22$1), FMUL32(v13$1, v26$1)))))), FADD32(v42$1, FADD32(FMUL32(v15$1, v33$1), FADD32(FMUL32(v14$1, v29$1), FADD32(FMUL32(v12$1, v21$1), FMUL32(v13$1, v25$1)))))), FADD32(BV_EXTRACT($sum2.0$1, 32, 0), FADD32(FMUL32(v15$1, v32$1), FADD32(FMUL32(v14$1, v28$1), FADD32(FMUL32(v12$1, v20$1), FMUL32(v13$1, v24$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v47$1, FADD32(FMUL32(v19$1, v35$1), FADD32(FMUL32(v18$1, v31$1), FADD32(FMUL32(v16$1, v23$1), FMUL32(v17$1, v27$1))))), FADD32(v46$1, FADD32(FMUL32(v19$1, v34$1), FADD32(FMUL32(v18$1, v30$1), FADD32(FMUL32(v16$1, v22$1), FMUL32(v17$1, v26$1)))))), FADD32(v45$1, FADD32(FMUL32(v19$1, v33$1), FADD32(FMUL32(v18$1, v29$1), FADD32(FMUL32(v16$1, v21$1), FMUL32(v17$1, v25$1)))))), FADD32(BV_EXTRACT($sum3.0$1, 32, 0), FADD32(FMUL32(v19$1, v32$1), FADD32(FMUL32(v18$1, v28$1), FADD32(FMUL32(v16$1, v20$1), FMUL32(v17$1, v24$1)))))), BV32_ADD($i.0, 4);
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v38$2, FADD32(FMUL32(v7$2, v35$2), FADD32(FMUL32(v6$2, v31$2), FADD32(FMUL32(v4$2, v23$2), FMUL32(v5$2, v27$2))))), FADD32(v37$2, FADD32(FMUL32(v7$2, v34$2), FADD32(FMUL32(v6$2, v30$2), FADD32(FMUL32(v4$2, v22$2), FMUL32(v5$2, v26$2)))))), FADD32(v36$2, FADD32(FMUL32(v7$2, v33$2), FADD32(FMUL32(v6$2, v29$2), FADD32(FMUL32(v4$2, v21$2), FMUL32(v5$2, v25$2)))))), FADD32(BV_EXTRACT($sum0.0$2, 32, 0), FADD32(FMUL32(v7$2, v32$2), FADD32(FMUL32(v6$2, v28$2), FADD32(FMUL32(v4$2, v20$2), FMUL32(v5$2, v24$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v41$2, FADD32(FMUL32(v11$2, v35$2), FADD32(FMUL32(v10$2, v31$2), FADD32(FMUL32(v8$2, v23$2), FMUL32(v9$2, v27$2))))), FADD32(v40$2, FADD32(FMUL32(v11$2, v34$2), FADD32(FMUL32(v10$2, v30$2), FADD32(FMUL32(v8$2, v22$2), FMUL32(v9$2, v26$2)))))), FADD32(v39$2, FADD32(FMUL32(v11$2, v33$2), FADD32(FMUL32(v10$2, v29$2), FADD32(FMUL32(v8$2, v21$2), FMUL32(v9$2, v25$2)))))), FADD32(BV_EXTRACT($sum1.0$2, 32, 0), FADD32(FMUL32(v11$2, v32$2), FADD32(FMUL32(v10$2, v28$2), FADD32(FMUL32(v8$2, v20$2), FMUL32(v9$2, v24$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v44$2, FADD32(FMUL32(v15$2, v35$2), FADD32(FMUL32(v14$2, v31$2), FADD32(FMUL32(v12$2, v23$2), FMUL32(v13$2, v27$2))))), FADD32(v43$2, FADD32(FMUL32(v15$2, v34$2), FADD32(FMUL32(v14$2, v30$2), FADD32(FMUL32(v12$2, v22$2), FMUL32(v13$2, v26$2)))))), FADD32(v42$2, FADD32(FMUL32(v15$2, v33$2), FADD32(FMUL32(v14$2, v29$2), FADD32(FMUL32(v12$2, v21$2), FMUL32(v13$2, v25$2)))))), FADD32(BV_EXTRACT($sum2.0$2, 32, 0), FADD32(FMUL32(v15$2, v32$2), FADD32(FMUL32(v14$2, v28$2), FADD32(FMUL32(v12$2, v20$2), FMUL32(v13$2, v24$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v47$2, FADD32(FMUL32(v19$2, v35$2), FADD32(FMUL32(v18$2, v31$2), FADD32(FMUL32(v16$2, v23$2), FMUL32(v17$2, v27$2))))), FADD32(v46$2, FADD32(FMUL32(v19$2, v34$2), FADD32(FMUL32(v18$2, v30$2), FADD32(FMUL32(v16$2, v22$2), FMUL32(v17$2, v26$2)))))), FADD32(v45$2, FADD32(FMUL32(v19$2, v33$2), FADD32(FMUL32(v18$2, v29$2), FADD32(FMUL32(v16$2, v21$2), FMUL32(v17$2, v25$2)))))), FADD32(BV_EXTRACT($sum3.0$2, 32, 0), FADD32(FMUL32(v19$2, v32$2), FADD32(FMUL32(v18$2, v28$2), FADD32(FMUL32(v16$2, v20$2), FMUL32(v17$2, v24$2))))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$matrixA: int;

procedure {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _READ_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixA);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixA: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixA, _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _WRITE_HAS_OCCURRED_$$matrixA);
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



procedure _CHECK_WRITE_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_ATOMIC_$$matrixA(_P: bool, _offset: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



const _WATCHED_VALUE_$$matrixB: int;

procedure {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _READ_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixB);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixB: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixB, _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _WRITE_HAS_OCCURRED_$$matrixB);
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



procedure _CHECK_WRITE_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_ATOMIC_$$matrixB(_P: bool, _offset: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



const _WATCHED_VALUE_$$matrixC: int;

procedure {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _READ_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixC);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixC: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _WRITE_HAS_OCCURRED_$$matrixC);
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



procedure _CHECK_WRITE_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_ATOMIC_$$matrixC(_P: bool, _offset: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixC);
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
