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

procedure {:source_name "MulMAdd8"} {:kernel} $MulMAdd8($nIters: int);
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



implementation {:source_name "MulMAdd8"} {:kernel} $MulMAdd8($nIters: int)
{
  var $s0.0$1: int;
  var $s0.0$2: int;
  var $j.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v4$1: int;
  var v4$2: int;
  var v3$1: int;
  var v3$2: int;
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
  var v16$1: int;
  var v16$2: int;
  var v13$1: int;
  var v13$2: int;
  var v12$1: int;
  var v12$2: int;
  var v11$1: int;
  var v11$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v24$1: int;
  var v24$2: int;
  var v21$1: int;
  var v21$2: int;
  var v20$1: int;
  var v20$2: int;
  var v19$1: int;
  var v19$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v32$1: int;
  var v32$2: int;
  var v29$1: int;
  var v29$2: int;
  var v28$1: int;
  var v28$2: int;
  var v27$1: int;
  var v27$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v40$1: int;
  var v40$2: int;
  var v37$1: int;
  var v37$2: int;
  var v36$1: int;
  var v36$2: int;
  var v35$1: int;
  var v35$2: int;
  var v42$1: int;
  var v42$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v41$1: int;
  var v41$2: int;
  var v48$1: int;
  var v48$2: int;
  var v45$1: int;
  var v45$2: int;
  var v44$1: int;
  var v44$2: int;
  var v43$1: int;
  var v43$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;


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
    v3$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 64, 0)), 4615626668101337088), BV_EXTRACT($s0.0$1, 64, 0));
    v3$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 64, 0)), 4615626668101337088), BV_EXTRACT($s0.0$2, 64, 0));
    v4$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 128, 64)), 4615626668101337088), BV_EXTRACT($s0.0$1, 128, 64));
    v4$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 128, 64)), 4615626668101337088), BV_EXTRACT($s0.0$2, 128, 64));
    v5$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 192, 128)), 4615626668101337088), BV_EXTRACT($s0.0$1, 192, 128));
    v5$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 192, 128)), 4615626668101337088), BV_EXTRACT($s0.0$2, 192, 128));
    v6$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 256, 192)), 4615626668101337088), BV_EXTRACT($s0.0$1, 256, 192));
    v6$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 256, 192)), 4615626668101337088), BV_EXTRACT($s0.0$2, 256, 192));
    v7$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 320, 256)), 4615626668101337088), BV_EXTRACT($s0.0$1, 320, 256));
    v7$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 320, 256)), 4615626668101337088), BV_EXTRACT($s0.0$2, 320, 256));
    v8$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 384, 320)), 4615626668101337088), BV_EXTRACT($s0.0$1, 384, 320));
    v8$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 384, 320)), 4615626668101337088), BV_EXTRACT($s0.0$2, 384, 320));
    v9$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 448, 384)), 4615626668101337088), BV_EXTRACT($s0.0$1, 448, 384));
    v9$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 448, 384)), 4615626668101337088), BV_EXTRACT($s0.0$2, 448, 384));
    v10$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$1, 512, 448)), 4615626668101337088), BV_EXTRACT($s0.0$1, 512, 448));
    v10$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, BV_EXTRACT($s0.0$2, 512, 448)), 4615626668101337088), BV_EXTRACT($s0.0$2, 512, 448));
    v11$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v3$1), 4615626668101337088), v3$1);
    v11$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v3$2), 4615626668101337088), v3$2);
    v12$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v4$1), 4615626668101337088), v4$1);
    v12$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v4$2), 4615626668101337088), v4$2);
    v13$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v5$1), 4615626668101337088), v5$1);
    v13$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v5$2), 4615626668101337088), v5$2);
    v14$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v6$1), 4615626668101337088), v6$1);
    v14$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v6$2), 4615626668101337088), v6$2);
    v15$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v7$1), 4615626668101337088), v7$1);
    v15$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v7$2), 4615626668101337088), v7$2);
    v16$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v8$1), 4615626668101337088), v8$1);
    v16$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v8$2), 4615626668101337088), v8$2);
    v17$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v9$1), 4615626668101337088), v9$1);
    v17$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v9$2), 4615626668101337088), v9$2);
    v18$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v10$1), 4615626668101337088), v10$1);
    v18$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v10$2), 4615626668101337088), v10$2);
    v19$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v11$1), 4615626668101337088), v11$1);
    v19$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v11$2), 4615626668101337088), v11$2);
    v20$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v12$1), 4615626668101337088), v12$1);
    v20$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v12$2), 4615626668101337088), v12$2);
    v21$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v13$1), 4615626668101337088), v13$1);
    v21$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v13$2), 4615626668101337088), v13$2);
    v22$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v14$1), 4615626668101337088), v14$1);
    v22$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v14$2), 4615626668101337088), v14$2);
    v23$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v15$1), 4615626668101337088), v15$1);
    v23$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v15$2), 4615626668101337088), v15$2);
    v24$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v16$1), 4615626668101337088), v16$1);
    v24$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v16$2), 4615626668101337088), v16$2);
    v25$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v17$1), 4615626668101337088), v17$1);
    v25$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v17$2), 4615626668101337088), v17$2);
    v26$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v18$1), 4615626668101337088), v18$1);
    v26$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v18$2), 4615626668101337088), v18$2);
    v27$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v19$1), 4615626668101337088), v19$1);
    v27$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v19$2), 4615626668101337088), v19$2);
    v28$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v20$1), 4615626668101337088), v20$1);
    v28$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v20$2), 4615626668101337088), v20$2);
    v29$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v21$1), 4615626668101337088), v21$1);
    v29$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v21$2), 4615626668101337088), v21$2);
    v30$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v22$1), 4615626668101337088), v22$1);
    v30$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v22$2), 4615626668101337088), v22$2);
    v31$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v23$1), 4615626668101337088), v23$1);
    v31$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v23$2), 4615626668101337088), v23$2);
    v32$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v24$1), 4615626668101337088), v24$1);
    v32$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v24$2), 4615626668101337088), v24$2);
    v33$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v25$1), 4615626668101337088), v25$1);
    v33$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v25$2), 4615626668101337088), v25$2);
    v34$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v26$1), 4615626668101337088), v26$1);
    v34$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v26$2), 4615626668101337088), v26$2);
    v35$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v27$1), 4615626668101337088), v27$1);
    v35$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v27$2), 4615626668101337088), v27$2);
    v36$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v28$1), 4615626668101337088), v28$1);
    v36$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v28$2), 4615626668101337088), v28$2);
    v37$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v29$1), 4615626668101337088), v29$1);
    v37$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v29$2), 4615626668101337088), v29$2);
    v38$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v30$1), 4615626668101337088), v30$1);
    v38$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v30$2), 4615626668101337088), v30$2);
    v39$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v31$1), 4615626668101337088), v31$1);
    v39$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v31$2), 4615626668101337088), v31$2);
    v40$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v32$1), 4615626668101337088), v32$1);
    v40$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v32$2), 4615626668101337088), v32$2);
    v41$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v33$1), 4615626668101337088), v33$1);
    v41$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v33$2), 4615626668101337088), v33$2);
    v42$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v34$1), 4615626668101337088), v34$1);
    v42$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v34$2), 4615626668101337088), v34$2);
    v43$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v35$1), 4615626668101337088), v35$1);
    v43$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v35$2), 4615626668101337088), v35$2);
    v44$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v36$1), 4615626668101337088), v36$1);
    v44$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v36$2), 4615626668101337088), v36$2);
    v45$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v37$1), 4615626668101337088), v37$1);
    v45$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v37$2), 4615626668101337088), v37$2);
    v46$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v38$1), 4615626668101337088), v38$1);
    v46$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v38$2), 4615626668101337088), v38$2);
    v47$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v39$1), 4615626668101337088), v39$1);
    v47$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v39$2), 4615626668101337088), v39$2);
    v48$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v40$1), 4615626668101337088), v40$1);
    v48$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v40$2), 4615626668101337088), v40$2);
    v49$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v41$1), 4615626668101337088), v41$1);
    v49$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v41$2), 4615626668101337088), v41$2);
    v50$1 := FMUL64(FADD64(FMUL64(-4623305305659277312, v42$1), 4615626668101337088), v42$1);
    v50$2 := FMUL64(FADD64(FMUL64(-4623305305659277312, v42$2), 4615626668101337088), v42$2);
    $s0.0$1, $j.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FMUL64(FADD64(FMUL64(-4623305305659277312, v50$1), 4615626668101337088), v50$1), FMUL64(FADD64(FMUL64(-4623305305659277312, v49$1), 4615626668101337088), v49$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v48$1), 4615626668101337088), v48$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v47$1), 4615626668101337088), v47$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v46$1), 4615626668101337088), v46$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v45$1), 4615626668101337088), v45$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v44$1), 4615626668101337088), v44$1)), FMUL64(FADD64(FMUL64(-4623305305659277312, v43$1), 4615626668101337088), v43$1)), BV32_ADD($j.0, 1);
    $s0.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(FMUL64(FADD64(FMUL64(-4623305305659277312, v50$2), 4615626668101337088), v50$2), FMUL64(FADD64(FMUL64(-4623305305659277312, v49$2), 4615626668101337088), v49$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v48$2), 4615626668101337088), v48$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v47$2), 4615626668101337088), v47$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v46$2), 4615626668101337088), v46$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v45$2), 4615626668101337088), v45$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v44$2), 4615626668101337088), v44$2)), FMUL64(FADD64(FMUL64(-4623305305659277312, v43$2), 4615626668101337088), v43$2));
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
