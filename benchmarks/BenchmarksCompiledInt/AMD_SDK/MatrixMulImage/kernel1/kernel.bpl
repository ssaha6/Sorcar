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

var {:source_name "imageSampler"} {:constant} $$imageSampler$1: [int]int;

var {:source_name "imageSampler"} {:constant} $$imageSampler$2: [int]int;

axiom {:array_info "$$imageSampler"} {:constant} {:elem_width 32} {:source_name "imageSampler"} {:source_elem_width 32} {:source_dimensions "1"} true;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mmmKernel"} {:kernel} $mmmKernel($widthA: int, $widthB: int);
  requires $$imageSampler$1[0] == 7;
  requires $$imageSampler$2[0] == 7;
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
  var $0: int;
  var $1: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $4: int;
  var $5: int;
  var $6$1: int;
  var $6$2: int;
  var $7$1: int;
  var $7$2: int;
  var $8: int;
  var $9: int;
  var $10$1: int;
  var $10$2: int;
  var $11$1: int;
  var $11$2: int;
  var $12: int;
  var $13: int;
  var $14$1: int;
  var $14$2: int;
  var $15$1: int;
  var $15$2: int;
  var $16$1: int;
  var $16$2: int;
  var $17$1: int;
  var $17$2: int;
  var $18: int;
  var $19: int;
  var $20$1: int;
  var $20$2: int;
  var $21$1: int;
  var $21$2: int;
  var $22: int;
  var $23: int;
  var $24$1: int;
  var $24$2: int;
  var $25$1: int;
  var $25$2: int;
  var $26: int;
  var $27: int;
  var $28$1: int;
  var $28$2: int;
  var $29$1: int;
  var $29$2: int;
  var $30: int;
  var $31: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4: int;
  var v5$1: int;
  var v5$2: int;
  var v6: bool;
  var v7: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
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
  var v15: int;
  var v16$1: int;
  var v16$2: int;
  var v17: bool;
  var v18: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bool;
  var v20$2: bool;
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
  var v26: int;
  var v27$1: int;
  var v27$2: int;
  var v28: bool;
  var v29: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
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
  var v37: int;
  var v38$1: int;
  var v38$2: int;
  var v39: bool;
  var v40: bool;
  var v41$1: bool;
  var v41$2: bool;
  var v42$1: bool;
  var v42$2: bool;
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
  var v48$1: bool;
  var v48$2: bool;
  var v49$1: bool;
  var v49$2: bool;
  var v50: bool;
  var v51: bool;
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
  var v57: int;
  var v58$1: bool;
  var v58$2: bool;
  var v59$1: bool;
  var v59$2: bool;
  var v60: bool;
  var v61: bool;
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
  var v67: int;
  var v68$1: bool;
  var v68$2: bool;
  var v69$1: bool;
  var v69$2: bool;
  var v70: bool;
  var v71: bool;
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
  var v77: int;
  var v78$1: bool;
  var v78$2: bool;
  var v79$1: bool;
  var v79$2: bool;
  var v80: bool;
  var v81: bool;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := 0, 0, 0, 0, 0;
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := 0, 0, 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v2 := BV32_ULT($i.0, $widthA);
    p0$1 := false;
    p0$2 := false;
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
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
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
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 141} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), BV_EXTRACT($sum0.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 141} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 141} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), BV_EXTRACT($sum0.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4)] := BV_EXTRACT($sum0.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4)] := BV_EXTRACT($sum0.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 142} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 1), BV_EXTRACT($sum0.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 142} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 1), BV_EXTRACT($sum0.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum0.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum0.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 143} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 2), BV_EXTRACT($sum0.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 143} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 143} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 2), BV_EXTRACT($sum0.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum0.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum0.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 144} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 3), BV_EXTRACT($sum0.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 144} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 144} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 3), BV_EXTRACT($sum0.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 4), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum0.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 4), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum0.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), BV_EXTRACT($sum1.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), BV_EXTRACT($sum1.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4)] := BV_EXTRACT($sum1.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4)] := BV_EXTRACT($sum1.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 1), BV_EXTRACT($sum1.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 1), BV_EXTRACT($sum1.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum1.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum1.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 2), BV_EXTRACT($sum1.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 2), BV_EXTRACT($sum1.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum1.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum1.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 3), BV_EXTRACT($sum1.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 3), BV_EXTRACT($sum1.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 1), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum1.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 1), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum1.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), BV_EXTRACT($sum2.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), BV_EXTRACT($sum2.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4)] := BV_EXTRACT($sum2.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4)] := BV_EXTRACT($sum2.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 1), BV_EXTRACT($sum2.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 1), BV_EXTRACT($sum2.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum2.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum2.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 151} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 2), BV_EXTRACT($sum2.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 151} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 2), BV_EXTRACT($sum2.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum2.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum2.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 152} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 3), BV_EXTRACT($sum2.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 152} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 3), BV_EXTRACT($sum2.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 2), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum2.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 2), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum2.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 153} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), BV_EXTRACT($sum3.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 153} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), BV_EXTRACT($sum3.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4)] := BV_EXTRACT($sum3.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4)] := BV_EXTRACT($sum3.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 154} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 1), BV_EXTRACT($sum3.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 154} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 154} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 1), BV_EXTRACT($sum3.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum3.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum3.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 155} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 2), BV_EXTRACT($sum3.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 155} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 2), BV_EXTRACT($sum3.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum3.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum3.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 156} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 3), BV_EXTRACT($sum3.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 156} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 3), BV_EXTRACT($sum3.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 4), 3), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum3.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 4), 3), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum3.0$2, 128, 96);
    return;

  $truebb:
    assume {:partition} v2;
    v3$1 := $$imageSampler$1[0];
    v3$2 := $$imageSampler$2[0];
    v4 := BV32_SDIV($i.0, 4);
    v5$1 := BV32_SHL(v1$1, 2);
    v5$2 := BV32_SHL(v1$2, 2);
    v6 := BV32_SLT(v4, 0);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    v7 := BV32_SGE(v4, 8192);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v7;
    $1 := v4;
    goto $7;

  $7:
    $0 := $1;
    goto $8;

  $8:
    v8$1 := BV32_SLT(v5$1, 0);
    v8$2 := BV32_SLT(v5$2, 0);
    p0$1 := (if v8$1 then v8$1 else p0$1);
    p0$2 := (if v8$2 then v8$2 else p0$2);
    p1$1 := (if !v8$1 then !v8$1 else p1$1);
    p1$2 := (if !v8$2 then !v8$2 else p1$2);
    $2$1 := (if p0$1 then 0 else $2$1);
    $2$2 := (if p0$2 then 0 else $2$2);
    v9$1 := (if p1$1 then BV32_SGE(v5$1, 8192) else v9$1);
    v9$2 := (if p1$2 then BV32_SGE(v5$2, 8192) else v9$2);
    p3$1 := (if p1$1 && v9$1 then v9$1 else p3$1);
    p3$2 := (if p1$2 && v9$2 then v9$2 else p3$2);
    p2$1 := (if p1$1 && !v9$1 then !v9$1 else p2$1);
    p2$2 := (if p1$2 && !v9$2 then !v9$2 else p2$2);
    $3$1 := (if p2$1 then v5$1 else $3$1);
    $3$2 := (if p2$2 then v5$2 else $3$2);
    $3$1 := (if p3$1 then 8191 else $3$1);
    $3$2 := (if p3$2 then 8191 else $3$2);
    $2$1 := (if p1$1 then $3$1 else $2$1);
    $2$2 := (if p1$2 then $3$2 else $2$2);
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    v14$1 := $$imageSampler$1[0];
    v14$2 := $$imageSampler$2[0];
    v15 := BV32_SDIV($i.0, 4);
    v16$1 := BV32_ADD(BV32_SHL(v1$1, 2), 1);
    v16$2 := BV32_ADD(BV32_SHL(v1$2, 2), 1);
    v17 := BV32_SLT(v15, 0);
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v17;
    v18 := BV32_SGE(v15, 8192);
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v18;
    $5 := v15;
    goto $18;

  $18:
    $4 := $5;
    goto $19;

  $19:
    v19$1 := BV32_SLT(v16$1, 0);
    v19$2 := BV32_SLT(v16$2, 0);
    p4$1 := (if v19$1 then v19$1 else p4$1);
    p4$2 := (if v19$2 then v19$2 else p4$2);
    p5$1 := (if !v19$1 then !v19$1 else p5$1);
    p5$2 := (if !v19$2 then !v19$2 else p5$2);
    $6$1 := (if p4$1 then 0 else $6$1);
    $6$2 := (if p4$2 then 0 else $6$2);
    v20$1 := (if p5$1 then BV32_SGE(v16$1, 8192) else v20$1);
    v20$2 := (if p5$2 then BV32_SGE(v16$2, 8192) else v20$2);
    p7$1 := (if p5$1 && v20$1 then v20$1 else p7$1);
    p7$2 := (if p5$2 && v20$2 then v20$2 else p7$2);
    p6$1 := (if p5$1 && !v20$1 then !v20$1 else p6$1);
    p6$2 := (if p5$2 && !v20$2 then !v20$2 else p6$2);
    $7$1 := (if p6$1 then v16$1 else $7$1);
    $7$2 := (if p6$2 then v16$2 else $7$2);
    $7$1 := (if p7$1 then 8191 else $7$1);
    $7$2 := (if p7$2 then 8191 else $7$2);
    $6$1 := (if p5$1 then $7$1 else $6$1);
    $6$2 := (if p5$2 then $7$2 else $6$2);
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    v25$1 := $$imageSampler$1[0];
    v25$2 := $$imageSampler$2[0];
    v26 := BV32_SDIV($i.0, 4);
    v27$1 := BV32_ADD(BV32_SHL(v1$1, 2), 2);
    v27$2 := BV32_ADD(BV32_SHL(v1$2, 2), 2);
    v28 := BV32_SLT(v26, 0);
    goto $truebb8, $falsebb8;

  $falsebb8:
    assume {:partition} !v28;
    v29 := BV32_SGE(v26, 8192);
    goto $truebb9, $falsebb9;

  $falsebb9:
    assume {:partition} !v29;
    $9 := v26;
    goto $29;

  $29:
    $8 := $9;
    goto $30;

  $30:
    v30$1 := BV32_SLT(v27$1, 0);
    v30$2 := BV32_SLT(v27$2, 0);
    p8$1 := (if v30$1 then v30$1 else p8$1);
    p8$2 := (if v30$2 then v30$2 else p8$2);
    p9$1 := (if !v30$1 then !v30$1 else p9$1);
    p9$2 := (if !v30$2 then !v30$2 else p9$2);
    $10$1 := (if p8$1 then 0 else $10$1);
    $10$2 := (if p8$2 then 0 else $10$2);
    v31$1 := (if p9$1 then BV32_SGE(v27$1, 8192) else v31$1);
    v31$2 := (if p9$2 then BV32_SGE(v27$2, 8192) else v31$2);
    p11$1 := (if p9$1 && v31$1 then v31$1 else p11$1);
    p11$2 := (if p9$2 && v31$2 then v31$2 else p11$2);
    p10$1 := (if p9$1 && !v31$1 then !v31$1 else p10$1);
    p10$2 := (if p9$2 && !v31$2 then !v31$2 else p10$2);
    $11$1 := (if p10$1 then v27$1 else $11$1);
    $11$2 := (if p10$2 then v27$2 else $11$2);
    $11$1 := (if p11$1 then 8191 else $11$1);
    $11$2 := (if p11$2 then 8191 else $11$2);
    $10$1 := (if p9$1 then $11$1 else $10$1);
    $10$2 := (if p9$2 then $11$2 else $10$2);
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    havoc v35$1, v35$2;
    v36$1 := $$imageSampler$1[0];
    v36$2 := $$imageSampler$2[0];
    v37 := BV32_SDIV($i.0, 4);
    v38$1 := BV32_ADD(BV32_SHL(v1$1, 2), 3);
    v38$2 := BV32_ADD(BV32_SHL(v1$2, 2), 3);
    v39 := BV32_SLT(v37, 0);
    goto $truebb12, $falsebb12;

  $falsebb12:
    assume {:partition} !v39;
    v40 := BV32_SGE(v37, 8192);
    goto $truebb13, $falsebb13;

  $falsebb13:
    assume {:partition} !v40;
    $13 := v37;
    goto $40;

  $40:
    $12 := $13;
    goto $41;

  $41:
    v41$1 := BV32_SLT(v38$1, 0);
    v41$2 := BV32_SLT(v38$2, 0);
    p12$1 := (if v41$1 then v41$1 else p12$1);
    p12$2 := (if v41$2 then v41$2 else p12$2);
    p13$1 := (if !v41$1 then !v41$1 else p13$1);
    p13$2 := (if !v41$2 then !v41$2 else p13$2);
    $14$1 := (if p12$1 then 0 else $14$1);
    $14$2 := (if p12$2 then 0 else $14$2);
    v42$1 := (if p13$1 then BV32_SGE(v38$1, 8192) else v42$1);
    v42$2 := (if p13$2 then BV32_SGE(v38$2, 8192) else v42$2);
    p15$1 := (if p13$1 && v42$1 then v42$1 else p15$1);
    p15$2 := (if p13$2 && v42$2 then v42$2 else p15$2);
    p14$1 := (if p13$1 && !v42$1 then !v42$1 else p14$1);
    p14$2 := (if p13$2 && !v42$2 then !v42$2 else p14$2);
    $15$1 := (if p14$1 then v38$1 else $15$1);
    $15$2 := (if p14$2 then v38$2 else $15$2);
    $15$1 := (if p15$1 then 8191 else $15$1);
    $15$2 := (if p15$2 then 8191 else $15$2);
    $14$1 := (if p13$1 then $15$1 else $14$1);
    $14$2 := (if p13$2 then $15$2 else $14$2);
    havoc v43$1, v43$2;
    havoc v44$1, v44$2;
    havoc v45$1, v45$2;
    havoc v46$1, v46$2;
    v47$1 := $$imageSampler$1[0];
    v47$2 := $$imageSampler$2[0];
    v48$1 := BV32_SLT(v0$1, 0);
    v48$2 := BV32_SLT(v0$2, 0);
    p16$1 := (if v48$1 then v48$1 else p16$1);
    p16$2 := (if v48$2 then v48$2 else p16$2);
    p17$1 := (if !v48$1 then !v48$1 else p17$1);
    p17$2 := (if !v48$2 then !v48$2 else p17$2);
    $16$1 := (if p16$1 then 0 else $16$1);
    $16$2 := (if p16$2 then 0 else $16$2);
    v49$1 := (if p17$1 then BV32_SGE(v0$1, 8192) else v49$1);
    v49$2 := (if p17$2 then BV32_SGE(v0$2, 8192) else v49$2);
    p19$1 := (if p17$1 && v49$1 then v49$1 else p19$1);
    p19$2 := (if p17$2 && v49$2 then v49$2 else p19$2);
    p18$1 := (if p17$1 && !v49$1 then !v49$1 else p18$1);
    p18$2 := (if p17$2 && !v49$2 then !v49$2 else p18$2);
    $17$1 := (if p18$1 then v0$1 else $17$1);
    $17$2 := (if p18$2 then v0$2 else $17$2);
    $17$1 := (if p19$1 then 8191 else $17$1);
    $17$2 := (if p19$2 then 8191 else $17$2);
    $16$1 := (if p17$1 then $17$1 else $16$1);
    $16$2 := (if p17$2 then $17$2 else $16$2);
    v50 := BV32_SLT($i.0, 0);
    goto $truebb18, $falsebb18;

  $falsebb18:
    assume {:partition} !v50;
    v51 := BV32_SGE($i.0, 8192);
    goto $truebb19, $falsebb19;

  $falsebb19:
    assume {:partition} !v51;
    $19 := $i.0;
    goto $57;

  $57:
    $18 := $19;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit12;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit12:
    havoc v52$1, v52$2;
    havoc v53$1, v53$2;
    havoc v54$1, v54$2;
    havoc v55$1, v55$2;
    v56$1 := $$imageSampler$1[0];
    v56$2 := $$imageSampler$2[0];
    v57 := BV32_ADD($i.0, 1);
    v58$1 := BV32_SLT(v0$1, 0);
    v58$2 := BV32_SLT(v0$2, 0);
    p20$1 := (if v58$1 then v58$1 else p20$1);
    p20$2 := (if v58$2 then v58$2 else p20$2);
    p21$1 := (if !v58$1 then !v58$1 else p21$1);
    p21$2 := (if !v58$2 then !v58$2 else p21$2);
    $20$1 := (if p20$1 then 0 else $20$1);
    $20$2 := (if p20$2 then 0 else $20$2);
    v59$1 := (if p21$1 then BV32_SGE(v0$1, 8192) else v59$1);
    v59$2 := (if p21$2 then BV32_SGE(v0$2, 8192) else v59$2);
    p23$1 := (if p21$1 && v59$1 then v59$1 else p23$1);
    p23$2 := (if p21$2 && v59$2 then v59$2 else p23$2);
    p22$1 := (if p21$1 && !v59$1 then !v59$1 else p22$1);
    p22$2 := (if p21$2 && !v59$2 then !v59$2 else p22$2);
    $21$1 := (if p22$1 then v0$1 else $21$1);
    $21$2 := (if p22$2 then v0$2 else $21$2);
    $21$1 := (if p23$1 then 8191 else $21$1);
    $21$2 := (if p23$2 then 8191 else $21$2);
    $20$1 := (if p21$1 then $21$1 else $20$1);
    $20$2 := (if p21$2 then $21$2 else $20$2);
    v60 := BV32_SLT(v57, 0);
    goto $truebb22, $falsebb22;

  $falsebb22:
    assume {:partition} !v60;
    v61 := BV32_SGE(v57, 8192);
    goto $truebb23, $falsebb23;

  $falsebb23:
    assume {:partition} !v61;
    $23 := v57;
    goto $68;

  $68:
    $22 := $23;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21:
    havoc v62$1, v62$2;
    havoc v63$1, v63$2;
    havoc v64$1, v64$2;
    havoc v65$1, v65$2;
    v66$1 := $$imageSampler$1[0];
    v66$2 := $$imageSampler$2[0];
    v67 := BV32_ADD($i.0, 2);
    v68$1 := BV32_SLT(v0$1, 0);
    v68$2 := BV32_SLT(v0$2, 0);
    p24$1 := (if v68$1 then v68$1 else p24$1);
    p24$2 := (if v68$2 then v68$2 else p24$2);
    p25$1 := (if !v68$1 then !v68$1 else p25$1);
    p25$2 := (if !v68$2 then !v68$2 else p25$2);
    $24$1 := (if p24$1 then 0 else $24$1);
    $24$2 := (if p24$2 then 0 else $24$2);
    v69$1 := (if p25$1 then BV32_SGE(v0$1, 8192) else v69$1);
    v69$2 := (if p25$2 then BV32_SGE(v0$2, 8192) else v69$2);
    p27$1 := (if p25$1 && v69$1 then v69$1 else p27$1);
    p27$2 := (if p25$2 && v69$2 then v69$2 else p27$2);
    p26$1 := (if p25$1 && !v69$1 then !v69$1 else p26$1);
    p26$2 := (if p25$2 && !v69$2 then !v69$2 else p26$2);
    $25$1 := (if p26$1 then v0$1 else $25$1);
    $25$2 := (if p26$2 then v0$2 else $25$2);
    $25$1 := (if p27$1 then 8191 else $25$1);
    $25$2 := (if p27$2 then 8191 else $25$2);
    $24$1 := (if p25$1 then $25$1 else $24$1);
    $24$2 := (if p25$2 then $25$2 else $24$2);
    v70 := BV32_SLT(v67, 0);
    goto $truebb26, $falsebb26;

  $falsebb26:
    assume {:partition} !v70;
    v71 := BV32_SGE(v67, 8192);
    goto $truebb27, $falsebb27;

  $falsebb27:
    assume {:partition} !v71;
    $27 := v67;
    goto $79;

  $79:
    $26 := $27;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18:
    havoc v72$1, v72$2;
    havoc v73$1, v73$2;
    havoc v74$1, v74$2;
    havoc v75$1, v75$2;
    v76$1 := $$imageSampler$1[0];
    v76$2 := $$imageSampler$2[0];
    v77 := BV32_ADD($i.0, 3);
    v78$1 := BV32_SLT(v0$1, 0);
    v78$2 := BV32_SLT(v0$2, 0);
    p28$1 := (if v78$1 then v78$1 else p28$1);
    p28$2 := (if v78$2 then v78$2 else p28$2);
    p29$1 := (if !v78$1 then !v78$1 else p29$1);
    p29$2 := (if !v78$2 then !v78$2 else p29$2);
    $28$1 := (if p28$1 then 0 else $28$1);
    $28$2 := (if p28$2 then 0 else $28$2);
    v79$1 := (if p29$1 then BV32_SGE(v0$1, 8192) else v79$1);
    v79$2 := (if p29$2 then BV32_SGE(v0$2, 8192) else v79$2);
    p31$1 := (if p29$1 && v79$1 then v79$1 else p31$1);
    p31$2 := (if p29$2 && v79$2 then v79$2 else p31$2);
    p30$1 := (if p29$1 && !v79$1 then !v79$1 else p30$1);
    p30$2 := (if p29$2 && !v79$2 then !v79$2 else p30$2);
    $29$1 := (if p30$1 then v0$1 else $29$1);
    $29$2 := (if p30$2 then v0$2 else $29$2);
    $29$1 := (if p31$1 then 8191 else $29$1);
    $29$2 := (if p31$2 then 8191 else $29$2);
    $28$1 := (if p29$1 then $29$1 else $28$1);
    $28$2 := (if p29$2 then $29$2 else $28$2);
    v80 := BV32_SLT(v77, 0);
    goto $truebb30, $falsebb30;

  $falsebb30:
    assume {:partition} !v80;
    v81 := BV32_SGE(v77, 8192);
    goto $truebb31, $falsebb31;

  $falsebb31:
    assume {:partition} !v81;
    $31 := v77;
    goto $90;

  $90:
    $30 := $31;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15:
    havoc v82$1, v82$2;
    havoc v83$1, v83$2;
    havoc v84$1, v84$2;
    havoc v85$1, v85$2;
    v86$1 := BV_EXTRACT($sum0.0$1, 64, 32);
    v86$2 := BV_EXTRACT($sum0.0$2, 64, 32);
    v87$1 := BV_EXTRACT($sum0.0$1, 96, 64);
    v87$2 := BV_EXTRACT($sum0.0$2, 96, 64);
    v88$1 := BV_EXTRACT($sum0.0$1, 128, 96);
    v88$2 := BV_EXTRACT($sum0.0$2, 128, 96);
    v89$1 := BV_EXTRACT($sum1.0$1, 64, 32);
    v89$2 := BV_EXTRACT($sum1.0$2, 64, 32);
    v90$1 := BV_EXTRACT($sum1.0$1, 96, 64);
    v90$2 := BV_EXTRACT($sum1.0$2, 96, 64);
    v91$1 := BV_EXTRACT($sum1.0$1, 128, 96);
    v91$2 := BV_EXTRACT($sum1.0$2, 128, 96);
    v92$1 := BV_EXTRACT($sum2.0$1, 64, 32);
    v92$2 := BV_EXTRACT($sum2.0$2, 64, 32);
    v93$1 := BV_EXTRACT($sum2.0$1, 96, 64);
    v93$2 := BV_EXTRACT($sum2.0$2, 96, 64);
    v94$1 := BV_EXTRACT($sum2.0$1, 128, 96);
    v94$2 := BV_EXTRACT($sum2.0$2, 128, 96);
    v95$1 := BV_EXTRACT($sum3.0$1, 64, 32);
    v95$2 := BV_EXTRACT($sum3.0$2, 64, 32);
    v96$1 := BV_EXTRACT($sum3.0$1, 96, 64);
    v96$2 := BV_EXTRACT($sum3.0$2, 96, 64);
    v97$1 := BV_EXTRACT($sum3.0$1, 128, 96);
    v97$2 := BV_EXTRACT($sum3.0$2, 128, 96);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v88$1, FADD32(FMUL32(v13$1, v85$1), FADD32(FMUL32(v12$1, v75$1), FADD32(FMUL32(v10$1, v55$1), FMUL32(v11$1, v65$1))))), FADD32(v87$1, FADD32(FMUL32(v13$1, v84$1), FADD32(FMUL32(v12$1, v74$1), FADD32(FMUL32(v10$1, v54$1), FMUL32(v11$1, v64$1)))))), FADD32(v86$1, FADD32(FMUL32(v13$1, v83$1), FADD32(FMUL32(v12$1, v73$1), FADD32(FMUL32(v10$1, v53$1), FMUL32(v11$1, v63$1)))))), FADD32(BV_EXTRACT($sum0.0$1, 32, 0), FADD32(FMUL32(v13$1, v82$1), FADD32(FMUL32(v12$1, v72$1), FADD32(FMUL32(v10$1, v52$1), FMUL32(v11$1, v62$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v91$1, FADD32(FMUL32(v24$1, v85$1), FADD32(FMUL32(v23$1, v75$1), FADD32(FMUL32(v21$1, v55$1), FMUL32(v22$1, v65$1))))), FADD32(v90$1, FADD32(FMUL32(v24$1, v84$1), FADD32(FMUL32(v23$1, v74$1), FADD32(FMUL32(v21$1, v54$1), FMUL32(v22$1, v64$1)))))), FADD32(v89$1, FADD32(FMUL32(v24$1, v83$1), FADD32(FMUL32(v23$1, v73$1), FADD32(FMUL32(v21$1, v53$1), FMUL32(v22$1, v63$1)))))), FADD32(BV_EXTRACT($sum1.0$1, 32, 0), FADD32(FMUL32(v24$1, v82$1), FADD32(FMUL32(v23$1, v72$1), FADD32(FMUL32(v21$1, v52$1), FMUL32(v22$1, v62$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v94$1, FADD32(FMUL32(v35$1, v85$1), FADD32(FMUL32(v34$1, v75$1), FADD32(FMUL32(v32$1, v55$1), FMUL32(v33$1, v65$1))))), FADD32(v93$1, FADD32(FMUL32(v35$1, v84$1), FADD32(FMUL32(v34$1, v74$1), FADD32(FMUL32(v32$1, v54$1), FMUL32(v33$1, v64$1)))))), FADD32(v92$1, FADD32(FMUL32(v35$1, v83$1), FADD32(FMUL32(v34$1, v73$1), FADD32(FMUL32(v32$1, v53$1), FMUL32(v33$1, v63$1)))))), FADD32(BV_EXTRACT($sum2.0$1, 32, 0), FADD32(FMUL32(v35$1, v82$1), FADD32(FMUL32(v34$1, v72$1), FADD32(FMUL32(v32$1, v52$1), FMUL32(v33$1, v62$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v97$1, FADD32(FMUL32(v46$1, v85$1), FADD32(FMUL32(v45$1, v75$1), FADD32(FMUL32(v43$1, v55$1), FMUL32(v44$1, v65$1))))), FADD32(v96$1, FADD32(FMUL32(v46$1, v84$1), FADD32(FMUL32(v45$1, v74$1), FADD32(FMUL32(v43$1, v54$1), FMUL32(v44$1, v64$1)))))), FADD32(v95$1, FADD32(FMUL32(v46$1, v83$1), FADD32(FMUL32(v45$1, v73$1), FADD32(FMUL32(v43$1, v53$1), FMUL32(v44$1, v63$1)))))), FADD32(BV_EXTRACT($sum3.0$1, 32, 0), FADD32(FMUL32(v46$1, v82$1), FADD32(FMUL32(v45$1, v72$1), FADD32(FMUL32(v43$1, v52$1), FMUL32(v44$1, v62$1)))))), BV32_ADD($i.0, 4);
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v88$2, FADD32(FMUL32(v13$2, v85$2), FADD32(FMUL32(v12$2, v75$2), FADD32(FMUL32(v10$2, v55$2), FMUL32(v11$2, v65$2))))), FADD32(v87$2, FADD32(FMUL32(v13$2, v84$2), FADD32(FMUL32(v12$2, v74$2), FADD32(FMUL32(v10$2, v54$2), FMUL32(v11$2, v64$2)))))), FADD32(v86$2, FADD32(FMUL32(v13$2, v83$2), FADD32(FMUL32(v12$2, v73$2), FADD32(FMUL32(v10$2, v53$2), FMUL32(v11$2, v63$2)))))), FADD32(BV_EXTRACT($sum0.0$2, 32, 0), FADD32(FMUL32(v13$2, v82$2), FADD32(FMUL32(v12$2, v72$2), FADD32(FMUL32(v10$2, v52$2), FMUL32(v11$2, v62$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v91$2, FADD32(FMUL32(v24$2, v85$2), FADD32(FMUL32(v23$2, v75$2), FADD32(FMUL32(v21$2, v55$2), FMUL32(v22$2, v65$2))))), FADD32(v90$2, FADD32(FMUL32(v24$2, v84$2), FADD32(FMUL32(v23$2, v74$2), FADD32(FMUL32(v21$2, v54$2), FMUL32(v22$2, v64$2)))))), FADD32(v89$2, FADD32(FMUL32(v24$2, v83$2), FADD32(FMUL32(v23$2, v73$2), FADD32(FMUL32(v21$2, v53$2), FMUL32(v22$2, v63$2)))))), FADD32(BV_EXTRACT($sum1.0$2, 32, 0), FADD32(FMUL32(v24$2, v82$2), FADD32(FMUL32(v23$2, v72$2), FADD32(FMUL32(v21$2, v52$2), FMUL32(v22$2, v62$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v94$2, FADD32(FMUL32(v35$2, v85$2), FADD32(FMUL32(v34$2, v75$2), FADD32(FMUL32(v32$2, v55$2), FMUL32(v33$2, v65$2))))), FADD32(v93$2, FADD32(FMUL32(v35$2, v84$2), FADD32(FMUL32(v34$2, v74$2), FADD32(FMUL32(v32$2, v54$2), FMUL32(v33$2, v64$2)))))), FADD32(v92$2, FADD32(FMUL32(v35$2, v83$2), FADD32(FMUL32(v34$2, v73$2), FADD32(FMUL32(v32$2, v53$2), FMUL32(v33$2, v63$2)))))), FADD32(BV_EXTRACT($sum2.0$2, 32, 0), FADD32(FMUL32(v35$2, v82$2), FADD32(FMUL32(v34$2, v72$2), FADD32(FMUL32(v32$2, v52$2), FMUL32(v33$2, v62$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v97$2, FADD32(FMUL32(v46$2, v85$2), FADD32(FMUL32(v45$2, v75$2), FADD32(FMUL32(v43$2, v55$2), FMUL32(v44$2, v65$2))))), FADD32(v96$2, FADD32(FMUL32(v46$2, v84$2), FADD32(FMUL32(v45$2, v74$2), FADD32(FMUL32(v43$2, v54$2), FMUL32(v44$2, v64$2)))))), FADD32(v95$2, FADD32(FMUL32(v46$2, v83$2), FADD32(FMUL32(v45$2, v73$2), FADD32(FMUL32(v43$2, v53$2), FMUL32(v44$2, v63$2)))))), FADD32(BV_EXTRACT($sum3.0$2, 32, 0), FADD32(FMUL32(v46$2, v82$2), FADD32(FMUL32(v45$2, v72$2), FADD32(FMUL32(v43$2, v52$2), FMUL32(v44$2, v62$2))))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb31:
    assume {:partition} v81;
    $31 := 8191;
    goto $90;

  $truebb30:
    assume {:partition} v80;
    $30 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15;

  $truebb27:
    assume {:partition} v71;
    $27 := 8191;
    goto $79;

  $truebb26:
    assume {:partition} v70;
    $26 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18;

  $truebb23:
    assume {:partition} v61;
    $23 := 8191;
    goto $68;

  $truebb22:
    assume {:partition} v60;
    $22 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21;

  $truebb19:
    assume {:partition} v51;
    $19 := 8191;
    goto $57;

  $truebb18:
    assume {:partition} v50;
    $18 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit12;

  $truebb13:
    assume {:partition} v40;
    $13 := 8191;
    goto $40;

  $truebb12:
    assume {:partition} v39;
    $12 := 0;
    goto $41;

  $truebb9:
    assume {:partition} v29;
    $9 := 8191;
    goto $29;

  $truebb8:
    assume {:partition} v28;
    $8 := 0;
    goto $30;

  $truebb5:
    assume {:partition} v18;
    $5 := 8191;
    goto $18;

  $truebb4:
    assume {:partition} v17;
    $4 := 0;
    goto $19;

  $truebb1:
    assume {:partition} v7;
    $1 := 8191;
    goto $7;

  $truebb0:
    assume {:partition} v6;
    $0 := 0;
    goto $8;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

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
