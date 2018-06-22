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

function FMUL64(int, int) : int;

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

procedure {:source_name "Mul2"} {:kernel} $Mul2($nIters: int);
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



implementation {:source_name "Mul2"} {:kernel} $Mul2($nIters: int)
{
  var $s0.0$1: int;
  var $s0.0$2: int;
  var $j.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4: bool;
  var v5$1: int;
  var v5$2: int;
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
  var v26$1: int;
  var v26$2: int;
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
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
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
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$data(true, v0$1, $$data[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$data(true, v0$2, $$data[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v1$1 := $$data[v0$1];
    v1$2 := $$data[v0$2];
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$data(true, v0$1, $$data[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$data(true, v0$2, $$data[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v2$1 := $$data[v0$1];
    v2$2 := $$data[v0$2];
    v3$1 := FADD64(FSUB64(v1$1, v2$1), 4607173411716726784);
    v3$2 := FADD64(FSUB64(v1$2, v2$2), 4607173411716726784);
    $s0.0$1, $j.0 := BV_CONCAT(FADD64(v3$1, 4591870180066957722), FADD64(v3$1, 0)), 0;
    $s0.0$2 := BV_CONCAT(FADD64(v3$2, 4591870180066957722), FADD64(v3$2, 0));
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 3} true;
    v4 := BV32_SLT($j.0, $nIters);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v4;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$data(true, v0$1, FADD64(BV_EXTRACT($s0.0$1, 64, 0), BV_EXTRACT($s0.0$1, 128, 64)), $$data[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$data(true, v0$2, FADD64(BV_EXTRACT($s0.0$2, 64, 0), BV_EXTRACT($s0.0$2, 128, 64)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v0$1] := FADD64(BV_EXTRACT($s0.0$1, 64, 0), BV_EXTRACT($s0.0$1, 128, 64));
    $$data[v0$2] := FADD64(BV_EXTRACT($s0.0$2, 64, 0), BV_EXTRACT($s0.0$2, 128, 64));
    return;

  $truebb:
    assume {:partition} v4;
    v5$1 := FMUL64(FMUL64(BV_EXTRACT($s0.0$1, 64, 0), BV_EXTRACT($s0.0$1, 64, 0)), 4607227454753341440);
    v5$2 := FMUL64(FMUL64(BV_EXTRACT($s0.0$2, 64, 0), BV_EXTRACT($s0.0$2, 64, 0)), 4607227454753341440);
    v6$1 := FMUL64(FMUL64(BV_EXTRACT($s0.0$1, 128, 64), BV_EXTRACT($s0.0$1, 128, 64)), 4607227454753341440);
    v6$2 := FMUL64(FMUL64(BV_EXTRACT($s0.0$2, 128, 64), BV_EXTRACT($s0.0$2, 128, 64)), 4607227454753341440);
    v7$1 := FMUL64(FMUL64(v5$1, v5$1), 4607227454753341440);
    v7$2 := FMUL64(FMUL64(v5$2, v5$2), 4607227454753341440);
    v8$1 := FMUL64(FMUL64(v6$1, v6$1), 4607227454753341440);
    v8$2 := FMUL64(FMUL64(v6$2, v6$2), 4607227454753341440);
    v9$1 := FMUL64(FMUL64(v7$1, v7$1), 4607227454753341440);
    v9$2 := FMUL64(FMUL64(v7$2, v7$2), 4607227454753341440);
    v10$1 := FMUL64(FMUL64(v8$1, v8$1), 4607227454753341440);
    v10$2 := FMUL64(FMUL64(v8$2, v8$2), 4607227454753341440);
    v11$1 := FMUL64(FMUL64(v9$1, v9$1), 4607227454753341440);
    v11$2 := FMUL64(FMUL64(v9$2, v9$2), 4607227454753341440);
    v12$1 := FMUL64(FMUL64(v10$1, v10$1), 4607227454753341440);
    v12$2 := FMUL64(FMUL64(v10$2, v10$2), 4607227454753341440);
    v13$1 := FMUL64(FMUL64(v11$1, v11$1), 4607227454753341440);
    v13$2 := FMUL64(FMUL64(v11$2, v11$2), 4607227454753341440);
    v14$1 := FMUL64(FMUL64(v12$1, v12$1), 4607227454753341440);
    v14$2 := FMUL64(FMUL64(v12$2, v12$2), 4607227454753341440);
    v15$1 := FMUL64(FMUL64(v13$1, v13$1), 4607227454753341440);
    v15$2 := FMUL64(FMUL64(v13$2, v13$2), 4607227454753341440);
    v16$1 := FMUL64(FMUL64(v14$1, v14$1), 4607227454753341440);
    v16$2 := FMUL64(FMUL64(v14$2, v14$2), 4607227454753341440);
    v17$1 := FMUL64(FMUL64(v15$1, v15$1), 4607227454753341440);
    v17$2 := FMUL64(FMUL64(v15$2, v15$2), 4607227454753341440);
    v18$1 := FMUL64(FMUL64(v16$1, v16$1), 4607227454753341440);
    v18$2 := FMUL64(FMUL64(v16$2, v16$2), 4607227454753341440);
    v19$1 := FMUL64(FMUL64(v17$1, v17$1), 4607227454753341440);
    v19$2 := FMUL64(FMUL64(v17$2, v17$2), 4607227454753341440);
    v20$1 := FMUL64(FMUL64(v18$1, v18$1), 4607227454753341440);
    v20$2 := FMUL64(FMUL64(v18$2, v18$2), 4607227454753341440);
    v21$1 := FMUL64(FMUL64(v19$1, v19$1), 4607227454753341440);
    v21$2 := FMUL64(FMUL64(v19$2, v19$2), 4607227454753341440);
    v22$1 := FMUL64(FMUL64(v20$1, v20$1), 4607227454753341440);
    v22$2 := FMUL64(FMUL64(v20$2, v20$2), 4607227454753341440);
    v23$1 := FMUL64(FMUL64(v21$1, v21$1), 4607227454753341440);
    v23$2 := FMUL64(FMUL64(v21$2, v21$2), 4607227454753341440);
    v24$1 := FMUL64(FMUL64(v22$1, v22$1), 4607227454753341440);
    v24$2 := FMUL64(FMUL64(v22$2, v22$2), 4607227454753341440);
    v25$1 := FMUL64(FMUL64(v23$1, v23$1), 4607227454753341440);
    v25$2 := FMUL64(FMUL64(v23$2, v23$2), 4607227454753341440);
    v26$1 := FMUL64(FMUL64(v24$1, v24$1), 4607227454753341440);
    v26$2 := FMUL64(FMUL64(v24$2, v24$2), 4607227454753341440);
    v27$1 := FMUL64(FMUL64(v25$1, v25$1), 4607227454753341440);
    v27$2 := FMUL64(FMUL64(v25$2, v25$2), 4607227454753341440);
    v28$1 := FMUL64(FMUL64(v26$1, v26$1), 4607227454753341440);
    v28$2 := FMUL64(FMUL64(v26$2, v26$2), 4607227454753341440);
    v29$1 := FMUL64(FMUL64(v27$1, v27$1), 4607227454753341440);
    v29$2 := FMUL64(FMUL64(v27$2, v27$2), 4607227454753341440);
    v30$1 := FMUL64(FMUL64(v28$1, v28$1), 4607227454753341440);
    v30$2 := FMUL64(FMUL64(v28$2, v28$2), 4607227454753341440);
    v31$1 := FMUL64(FMUL64(v29$1, v29$1), 4607227454753341440);
    v31$2 := FMUL64(FMUL64(v29$2, v29$2), 4607227454753341440);
    v32$1 := FMUL64(FMUL64(v30$1, v30$1), 4607227454753341440);
    v32$2 := FMUL64(FMUL64(v30$2, v30$2), 4607227454753341440);
    v33$1 := FMUL64(FMUL64(v31$1, v31$1), 4607227454753341440);
    v33$2 := FMUL64(FMUL64(v31$2, v31$2), 4607227454753341440);
    v34$1 := FMUL64(FMUL64(v32$1, v32$1), 4607227454753341440);
    v34$2 := FMUL64(FMUL64(v32$2, v32$2), 4607227454753341440);
    v35$1 := FMUL64(FMUL64(v33$1, v33$1), 4607227454753341440);
    v35$2 := FMUL64(FMUL64(v33$2, v33$2), 4607227454753341440);
    v36$1 := FMUL64(FMUL64(v34$1, v34$1), 4607227454753341440);
    v36$2 := FMUL64(FMUL64(v34$2, v34$2), 4607227454753341440);
    v37$1 := FMUL64(FMUL64(v35$1, v35$1), 4607227454753341440);
    v37$2 := FMUL64(FMUL64(v35$2, v35$2), 4607227454753341440);
    v38$1 := FMUL64(FMUL64(v36$1, v36$1), 4607227454753341440);
    v38$2 := FMUL64(FMUL64(v36$2, v36$2), 4607227454753341440);
    v39$1 := FMUL64(FMUL64(v37$1, v37$1), 4607227454753341440);
    v39$2 := FMUL64(FMUL64(v37$2, v37$2), 4607227454753341440);
    v40$1 := FMUL64(FMUL64(v38$1, v38$1), 4607227454753341440);
    v40$2 := FMUL64(FMUL64(v38$2, v38$2), 4607227454753341440);
    v41$1 := FMUL64(FMUL64(v39$1, v39$1), 4607227454753341440);
    v41$2 := FMUL64(FMUL64(v39$2, v39$2), 4607227454753341440);
    v42$1 := FMUL64(FMUL64(v40$1, v40$1), 4607227454753341440);
    v42$2 := FMUL64(FMUL64(v40$2, v40$2), 4607227454753341440);
    v43$1 := FMUL64(FMUL64(v41$1, v41$1), 4607227454753341440);
    v43$2 := FMUL64(FMUL64(v41$2, v41$2), 4607227454753341440);
    v44$1 := FMUL64(FMUL64(v42$1, v42$1), 4607227454753341440);
    v44$2 := FMUL64(FMUL64(v42$2, v42$2), 4607227454753341440);
    v45$1 := FMUL64(FMUL64(v43$1, v43$1), 4607227454753341440);
    v45$2 := FMUL64(FMUL64(v43$2, v43$2), 4607227454753341440);
    v46$1 := FMUL64(FMUL64(v44$1, v44$1), 4607227454753341440);
    v46$2 := FMUL64(FMUL64(v44$2, v44$2), 4607227454753341440);
    v47$1 := FMUL64(FMUL64(v45$1, v45$1), 4607227454753341440);
    v47$2 := FMUL64(FMUL64(v45$2, v45$2), 4607227454753341440);
    v48$1 := FMUL64(FMUL64(v46$1, v46$1), 4607227454753341440);
    v48$2 := FMUL64(FMUL64(v46$2, v46$2), 4607227454753341440);
    v49$1 := FMUL64(FMUL64(v47$1, v47$1), 4607227454753341440);
    v49$2 := FMUL64(FMUL64(v47$2, v47$2), 4607227454753341440);
    v50$1 := FMUL64(FMUL64(v48$1, v48$1), 4607227454753341440);
    v50$2 := FMUL64(FMUL64(v48$2, v48$2), 4607227454753341440);
    v51$1 := FMUL64(FMUL64(v49$1, v49$1), 4607227454753341440);
    v51$2 := FMUL64(FMUL64(v49$2, v49$2), 4607227454753341440);
    v52$1 := FMUL64(FMUL64(v50$1, v50$1), 4607227454753341440);
    v52$2 := FMUL64(FMUL64(v50$2, v50$2), 4607227454753341440);
    v53$1 := FMUL64(FMUL64(v51$1, v51$1), 4607227454753341440);
    v53$2 := FMUL64(FMUL64(v51$2, v51$2), 4607227454753341440);
    v54$1 := FMUL64(FMUL64(v52$1, v52$1), 4607227454753341440);
    v54$2 := FMUL64(FMUL64(v52$2, v52$2), 4607227454753341440);
    v55$1 := FMUL64(FMUL64(v53$1, v53$1), 4607227454753341440);
    v55$2 := FMUL64(FMUL64(v53$2, v53$2), 4607227454753341440);
    v56$1 := FMUL64(FMUL64(v54$1, v54$1), 4607227454753341440);
    v56$2 := FMUL64(FMUL64(v54$2, v54$2), 4607227454753341440);
    v57$1 := FMUL64(FMUL64(v55$1, v55$1), 4607227454753341440);
    v57$2 := FMUL64(FMUL64(v55$2, v55$2), 4607227454753341440);
    v58$1 := FMUL64(FMUL64(v56$1, v56$1), 4607227454753341440);
    v58$2 := FMUL64(FMUL64(v56$2, v56$2), 4607227454753341440);
    v59$1 := FMUL64(FMUL64(v57$1, v57$1), 4607227454753341440);
    v59$2 := FMUL64(FMUL64(v57$2, v57$2), 4607227454753341440);
    v60$1 := FMUL64(FMUL64(v58$1, v58$1), 4607227454753341440);
    v60$2 := FMUL64(FMUL64(v58$2, v58$2), 4607227454753341440);
    v61$1 := FMUL64(FMUL64(v59$1, v59$1), 4607227454753341440);
    v61$2 := FMUL64(FMUL64(v59$2, v59$2), 4607227454753341440);
    v62$1 := FMUL64(FMUL64(v60$1, v60$1), 4607227454753341440);
    v62$2 := FMUL64(FMUL64(v60$2, v60$2), 4607227454753341440);
    v63$1 := FMUL64(FMUL64(v61$1, v61$1), 4607227454753341440);
    v63$2 := FMUL64(FMUL64(v61$2, v61$2), 4607227454753341440);
    v64$1 := FMUL64(FMUL64(v62$1, v62$1), 4607227454753341440);
    v64$2 := FMUL64(FMUL64(v62$2, v62$2), 4607227454753341440);
    v65$1 := FMUL64(FMUL64(v63$1, v63$1), 4607227454753341440);
    v65$2 := FMUL64(FMUL64(v63$2, v63$2), 4607227454753341440);
    v66$1 := FMUL64(FMUL64(v64$1, v64$1), 4607227454753341440);
    v66$2 := FMUL64(FMUL64(v64$2, v64$2), 4607227454753341440);
    v67$1 := FMUL64(FMUL64(v65$1, v65$1), 4607227454753341440);
    v67$2 := FMUL64(FMUL64(v65$2, v65$2), 4607227454753341440);
    v68$1 := FMUL64(FMUL64(v66$1, v66$1), 4607227454753341440);
    v68$2 := FMUL64(FMUL64(v66$2, v66$2), 4607227454753341440);
    v69$1 := FMUL64(FMUL64(v67$1, v67$1), 4607227454753341440);
    v69$2 := FMUL64(FMUL64(v67$2, v67$2), 4607227454753341440);
    v70$1 := FMUL64(FMUL64(v68$1, v68$1), 4607227454753341440);
    v70$2 := FMUL64(FMUL64(v68$2, v68$2), 4607227454753341440);
    v71$1 := FMUL64(FMUL64(v69$1, v69$1), 4607227454753341440);
    v71$2 := FMUL64(FMUL64(v69$2, v69$2), 4607227454753341440);
    v72$1 := FMUL64(FMUL64(v70$1, v70$1), 4607227454753341440);
    v72$2 := FMUL64(FMUL64(v70$2, v70$2), 4607227454753341440);
    v73$1 := FMUL64(FMUL64(v71$1, v71$1), 4607227454753341440);
    v73$2 := FMUL64(FMUL64(v71$2, v71$2), 4607227454753341440);
    v74$1 := FMUL64(FMUL64(v72$1, v72$1), 4607227454753341440);
    v74$2 := FMUL64(FMUL64(v72$2, v72$2), 4607227454753341440);
    v75$1 := FMUL64(FMUL64(v73$1, v73$1), 4607227454753341440);
    v75$2 := FMUL64(FMUL64(v73$2, v73$2), 4607227454753341440);
    v76$1 := FMUL64(FMUL64(v74$1, v74$1), 4607227454753341440);
    v76$2 := FMUL64(FMUL64(v74$2, v74$2), 4607227454753341440);
    $s0.0$1, $j.0 := BV_CONCAT(FMUL64(FMUL64(v76$1, v76$1), 4607227454753341440), FMUL64(FMUL64(v75$1, v75$1), 4607227454753341440)), BV32_ADD($j.0, 1);
    $s0.0$2 := BV_CONCAT(FMUL64(FMUL64(v76$2, v76$2), 4607227454753341440), FMUL64(FMUL64(v75$2, v75$2), 4607227454753341440));
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
