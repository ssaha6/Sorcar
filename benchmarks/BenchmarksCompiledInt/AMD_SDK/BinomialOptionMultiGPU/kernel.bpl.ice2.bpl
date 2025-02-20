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
 b0011: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "randArray"} {:global} $$randArray: [int]int;

axiom {:array_info "$$randArray"} {:global} {:elem_width 32} {:source_name "randArray"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$randArray: bool;

var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

var {:source_name "callA"} {:group_shared} $$callA: [bv1][int]int;

axiom {:array_info "$$callA"} {:group_shared} {:elem_width 32} {:source_name "callA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$callA: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$callA: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$callA: bool;

var {:source_name "callB"} {:group_shared} $$callB: [bv1][int]int;

axiom {:array_info "$$callB"} {:group_shared} {:elem_width 32} {:source_name "callB"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$callB: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$callB: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$callB: bool;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEXP32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "binomial_options"} {:kernel} $binomial_options($numSteps: int);
  requires !_READ_HAS_OCCURRED_$$randArray && !_WRITE_HAS_OCCURRED_$$randArray && !_ATOMIC_HAS_OCCURRED_$$randArray;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$callA && !_WRITE_HAS_OCCURRED_$$callA && !_ATOMIC_HAS_OCCURRED_$$callA;
  requires !_READ_HAS_OCCURRED_$$callB && !_WRITE_HAS_OCCURRED_$$callB && !_ATOMIC_HAS_OCCURRED_$$callB;
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
  modifies $$callA, $$callB, _READ_HAS_OCCURRED_$$callA, _WRITE_HAS_OCCURRED_$$callA, _WRITE_READ_BENIGN_FLAG_$$callA, _WRITE_READ_BENIGN_FLAG_$$callA, $$output, _TRACKING, _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_HAS_OCCURRED_$$callB, _WRITE_READ_BENIGN_FLAG_$$callB, _WRITE_READ_BENIGN_FLAG_$$callB, _TRACKING, _READ_HAS_OCCURRED_$$callB, _TRACKING;



implementation {:source_name "binomial_options"} {:kernel} $binomial_options($numSteps: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $j.0: int;
  var v1$1: int;
  var v1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var v30$1: int;
  var v30$2: int;
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
  var v48$1: bool;
  var v48$2: bool;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: bool;
  var v58$2: bool;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: bool;
  var v63$2: bool;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68: bool;
  var v69$1: bool;
  var v69$2: bool;
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
  var v77$1: int;
  var v77$2: int;
  var v78$1: bool;
  var v78$2: bool;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: int;
  var v81$2: int;
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
  var v87$1: bool;
  var v87$2: bool;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
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


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := group_id_x$1;
    v1$2 := group_id_x$2;
    v2$1 := $$randArray[BV32_MUL(v1$1, 4)];
    v2$2 := $$randArray[BV32_MUL(v1$2, 4)];
    v3$1 := $$randArray[BV32_ADD(BV32_MUL(v1$1, 4), 1)];
    v3$2 := $$randArray[BV32_ADD(BV32_MUL(v1$2, 4), 1)];
    v4$1 := $$randArray[BV32_ADD(BV32_MUL(v1$1, 4), 2)];
    v4$2 := $$randArray[BV32_ADD(BV32_MUL(v1$2, 4), 2)];
    v5$1 := $$randArray[BV32_ADD(BV32_MUL(v1$1, 4), 3)];
    v5$2 := $$randArray[BV32_ADD(BV32_MUL(v1$2, 4), 3)];
    v6 := FDIV32(1065353216, SI32_TO_FP32($numSteps));
    v7$1 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v2$1), 1048576000), FMUL32(v2$1, 1092616192)), v6);
    v7$2 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v2$2), 1048576000), FMUL32(v2$2, 1092616192)), v6);
    v8$1 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v3$1), 1048576000), FMUL32(v3$1, 1092616192)), v6);
    v8$2 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v3$2), 1048576000), FMUL32(v3$2, 1092616192)), v6);
    v9$1 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v4$1), 1048576000), FMUL32(v4$1, 1092616192)), v6);
    v9$2 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v4$2), 1048576000), FMUL32(v4$2, 1092616192)), v6);
    v10$1 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v5$1), 1048576000), FMUL32(v5$1, 1092616192)), v6);
    v10$2 := FMUL32(FADD32(FMUL32(FSUB32(1065353216, v5$2), 1048576000), FMUL32(v5$2, 1092616192)), v6);
    v11$1 := FMUL32(1050253722, FSQRT32(v7$1));
    v11$2 := FMUL32(1050253722, FSQRT32(v7$2));
    v12$1 := FMUL32(1050253722, FSQRT32(v8$1));
    v12$2 := FMUL32(1050253722, FSQRT32(v8$2));
    v13$1 := FMUL32(1050253722, FSQRT32(v9$1));
    v13$2 := FMUL32(1050253722, FSQRT32(v9$2));
    v14$1 := FMUL32(1050253722, FSQRT32(v10$1));
    v14$2 := FMUL32(1050253722, FSQRT32(v10$2));
    v15$1 := FEXP32(FMUL32(FMUL32(1017370378, v7$1), 1069066811));
    v15$2 := FEXP32(FMUL32(FMUL32(1017370378, v7$2), 1069066811));
    v16$1 := FEXP32(FMUL32(FMUL32(1017370378, v8$1), 1069066811));
    v16$2 := FEXP32(FMUL32(FMUL32(1017370378, v8$2), 1069066811));
    v17$1 := FEXP32(FMUL32(FMUL32(1017370378, v9$1), 1069066811));
    v17$2 := FEXP32(FMUL32(FMUL32(1017370378, v9$2), 1069066811));
    v18$1 := FEXP32(FMUL32(FMUL32(1017370378, v10$1), 1069066811));
    v18$2 := FEXP32(FMUL32(FMUL32(1017370378, v10$2), 1069066811));
    v19$1 := FDIV32(1065353216, v15$1);
    v19$2 := FDIV32(1065353216, v15$2);
    v20$1 := FDIV32(1065353216, v16$1);
    v20$2 := FDIV32(1065353216, v16$2);
    v21$1 := FDIV32(1065353216, v17$1);
    v21$2 := FDIV32(1065353216, v17$2);
    v22$1 := FDIV32(1065353216, v18$1);
    v22$2 := FDIV32(1065353216, v18$2);
    v23$1 := FEXP32(FMUL32(v11$1, 1069066811));
    v23$2 := FEXP32(FMUL32(v11$2, 1069066811));
    v24$1 := FEXP32(FMUL32(v12$1, 1069066811));
    v24$2 := FEXP32(FMUL32(v12$2, 1069066811));
    v25$1 := FEXP32(FMUL32(v13$1, 1069066811));
    v25$2 := FEXP32(FMUL32(v13$2, 1069066811));
    v26$1 := FEXP32(FMUL32(v14$1, 1069066811));
    v26$2 := FEXP32(FMUL32(v14$2, 1069066811));
    v27$1 := FDIV32(1065353216, v23$1);
    v27$2 := FDIV32(1065353216, v23$2);
    v28$1 := FDIV32(1065353216, v24$1);
    v28$2 := FDIV32(1065353216, v24$2);
    v29$1 := FDIV32(1065353216, v25$1);
    v29$2 := FDIV32(1065353216, v25$2);
    v30$1 := FDIV32(1065353216, v26$1);
    v30$2 := FDIV32(1065353216, v26$2);
    v31$1 := FDIV32(FSUB32(v15$1, v27$1), FSUB32(v23$1, v27$1));
    v31$2 := FDIV32(FSUB32(v15$2, v27$2), FSUB32(v23$2, v27$2));
    v32$1 := FDIV32(FSUB32(v16$1, v28$1), FSUB32(v24$1, v28$1));
    v32$2 := FDIV32(FSUB32(v16$2, v28$2), FSUB32(v24$2, v28$2));
    v33$1 := FDIV32(FSUB32(v17$1, v29$1), FSUB32(v25$1, v29$1));
    v33$2 := FDIV32(FSUB32(v17$2, v29$2), FSUB32(v25$2, v29$2));
    v34$1 := FDIV32(FSUB32(v18$1, v30$1), FSUB32(v26$1, v30$1));
    v34$2 := FDIV32(FSUB32(v18$2, v30$2), FSUB32(v26$2, v30$2));
    v35$1 := FMUL32(v31$1, v19$1);
    v35$2 := FMUL32(v31$2, v19$2);
    v36$1 := FMUL32(v32$1, v20$1);
    v36$2 := FMUL32(v32$2, v20$2);
    v37$1 := FMUL32(v33$1, v21$1);
    v37$2 := FMUL32(v33$2, v21$2);
    v38$1 := FMUL32(v34$1, v22$1);
    v38$2 := FMUL32(v34$2, v22$2);
    v39$1 := FMUL32(FSUB32(1065353216, v31$1), v19$1);
    v39$2 := FMUL32(FSUB32(1065353216, v31$2), v19$2);
    v40$1 := FMUL32(FSUB32(1065353216, v32$1), v20$1);
    v40$2 := FMUL32(FSUB32(1065353216, v32$2), v20$2);
    v41$1 := FMUL32(FSUB32(1065353216, v33$1), v21$1);
    v41$2 := FMUL32(FSUB32(1065353216, v33$2), v21$2);
    v42$1 := FMUL32(FSUB32(1065353216, v34$1), v22$1);
    v42$2 := FMUL32(FSUB32(1065353216, v34$2), v22$2);
    v43$1 := FADD32(FMUL32(1073741824, UI32_TO_FP32(v0$1)), FSUB32(-2147483648, SI32_TO_FP32($numSteps)));
    v43$2 := FADD32(FMUL32(1073741824, UI32_TO_FP32(v0$2)), FSUB32(-2147483648, SI32_TO_FP32($numSteps)));
    v44$1 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v2$1), 1084227584), FMUL32(v2$1, 1106247680)), FEXP32(FMUL32(FMUL32(v11$1, v43$1), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v2$1), 1065353216), FMUL32(v2$1, 1120403456))));
    v44$2 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v2$2), 1084227584), FMUL32(v2$2, 1106247680)), FEXP32(FMUL32(FMUL32(v11$2, v43$2), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v2$2), 1065353216), FMUL32(v2$2, 1120403456))));
    v45$1 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v3$1), 1084227584), FMUL32(v3$1, 1106247680)), FEXP32(FMUL32(FMUL32(v12$1, v43$1), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v3$1), 1065353216), FMUL32(v3$1, 1120403456))));
    v45$2 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v3$2), 1084227584), FMUL32(v3$2, 1106247680)), FEXP32(FMUL32(FMUL32(v12$2, v43$2), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v3$2), 1065353216), FMUL32(v3$2, 1120403456))));
    v46$1 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v4$1), 1084227584), FMUL32(v4$1, 1106247680)), FEXP32(FMUL32(FMUL32(v13$1, v43$1), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v4$1), 1065353216), FMUL32(v4$1, 1120403456))));
    v46$2 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v4$2), 1084227584), FMUL32(v4$2, 1106247680)), FEXP32(FMUL32(FMUL32(v13$2, v43$2), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v4$2), 1065353216), FMUL32(v4$2, 1120403456))));
    v47$1 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v5$1), 1084227584), FMUL32(v5$1, 1106247680)), FEXP32(FMUL32(FMUL32(v14$1, v43$1), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v5$1), 1065353216), FMUL32(v5$1, 1120403456))));
    v47$2 := FADD32(FMUL32(FADD32(FMUL32(FSUB32(1065353216, v5$2), 1084227584), FMUL32(v5$2, 1106247680)), FEXP32(FMUL32(FMUL32(v14$2, v43$2), 1069066811))), FSUB32(-2147483648, FADD32(FMUL32(FSUB32(1065353216, v5$2), 1065353216), FMUL32(v5$2, 1120403456))));
    v48$1 := FLT32(0, v44$1);
    v48$2 := FLT32(0, v44$2);
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
    p0$1 := (if v48$1 then v48$1 else p0$1);
    p0$2 := (if v48$2 then v48$2 else p0$2);
    p1$1 := (if !v48$1 then !v48$1 else p1$1);
    p1$2 := (if !v48$2 then !v48$2 else p1$2);
    $0$1 := (if p0$1 then v44$1 else $0$1);
    $0$2 := (if p0$2 then v44$2 else $0$2);
    $0$1 := (if p1$1 then 0 else $0$1);
    $0$2 := (if p1$2 then 0 else $0$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$callA(true, BV32_MUL(v0$1, 4), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$callA(true, BV32_MUL(v0$2, 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v49$1 := $$callA[1bv1][BV32_MUL(v0$1, 4)];
    v49$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)];
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v50$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v50$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v51$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v51$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v52$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v52$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$callA(true, BV32_MUL(v0$1, 4), $0$1, $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$callA(true, BV32_MUL(v0$2, 4), $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_MUL(v0$1, 4)] := $0$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := $0$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v50$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v50$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v50$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v50$2;
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v51$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v51$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v51$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v51$2;
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v52$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v52$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v52$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v52$2;
    v53$1 := FLT32(0, v45$1);
    v53$2 := FLT32(0, v45$2);
    p2$1 := (if v53$1 then v53$1 else p2$1);
    p2$2 := (if v53$2 then v53$2 else p2$2);
    p3$1 := (if !v53$1 then !v53$1 else p3$1);
    p3$2 := (if !v53$2 then !v53$2 else p3$2);
    $1$1 := (if p2$1 then v45$1 else $1$1);
    $1$2 := (if p2$2 then v45$2 else $1$2);
    $1$1 := (if p3$1 then 0 else $1$1);
    $1$2 := (if p3$2 then 0 else $1$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$callA(true, BV32_MUL(v0$1, 4), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$callA(true, BV32_MUL(v0$2, 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v54$1 := $$callA[1bv1][BV32_MUL(v0$1, 4)];
    v54$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)];
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v55$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v55$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v56$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v56$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v57$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v57$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$callA(true, BV32_MUL(v0$1, 4), v54$1, $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$callA(true, BV32_MUL(v0$2, 4), v54$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_MUL(v0$1, 4)] := v54$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := v54$2;
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $1$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := $1$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := $1$2;
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v56$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v56$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v56$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v56$2;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v57$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v57$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v57$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v57$2;
    v58$1 := FLT32(0, v46$1);
    v58$2 := FLT32(0, v46$2);
    p4$1 := (if v58$1 then v58$1 else p4$1);
    p4$2 := (if v58$2 then v58$2 else p4$2);
    p5$1 := (if !v58$1 then !v58$1 else p5$1);
    p5$2 := (if !v58$2 then !v58$2 else p5$2);
    $2$1 := (if p4$1 then v46$1 else $2$1);
    $2$2 := (if p4$2 then v46$2 else $2$2);
    $2$1 := (if p5$1 then 0 else $2$1);
    $2$2 := (if p5$2 then 0 else $2$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$callA(true, BV32_MUL(v0$1, 4), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$callA(true, BV32_MUL(v0$2, 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v59$1 := $$callA[1bv1][BV32_MUL(v0$1, 4)];
    v59$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)];
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v60$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v60$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v61$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v61$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v62$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v62$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$callA(true, BV32_MUL(v0$1, 4), v59$1, $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$callA(true, BV32_MUL(v0$2, 4), v59$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_MUL(v0$1, 4)] := v59$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := v59$2;
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v60$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v60$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v60$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v60$2;
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $2$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := $2$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := $2$2;
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v62$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v62$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v62$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v62$2;
    v63$1 := FLT32(0, v47$1);
    v63$2 := FLT32(0, v47$2);
    p6$1 := (if v63$1 then v63$1 else p6$1);
    p6$2 := (if v63$2 then v63$2 else p6$2);
    p7$1 := (if !v63$1 then !v63$1 else p7$1);
    p7$2 := (if !v63$2 then !v63$2 else p7$2);
    $3$1 := (if p6$1 then v47$1 else $3$1);
    $3$2 := (if p6$2 then v47$2 else $3$2);
    $3$1 := (if p7$1 then 0 else $3$1);
    $3$2 := (if p7$2 then 0 else $3$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$callA(true, BV32_MUL(v0$1, 4), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$callA(true, BV32_MUL(v0$2, 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v64$1 := $$callA[1bv1][BV32_MUL(v0$1, 4)];
    v64$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)];
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v65$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v65$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v66$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v66$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v67$1 := $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v67$2 := $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$callA(true, BV32_MUL(v0$1, 4), v64$1, $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$callA(true, BV32_MUL(v0$2, 4), v64$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_MUL(v0$1, 4)] := v64$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := v64$2;
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v65$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v65$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v65$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v65$2;
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v66$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v66$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v66$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v66$2;
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $3$1, $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$callA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := $3$1;
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := $3$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 49} $bugle_barrier_duplicated_0(-1, 0);
    $j.0 := $numSteps;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callB ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$callA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$callA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$callA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($j.0, $numSteps) ) ,  (  BV32_SGE($j.0, $numSteps) ) ,  (  BV32_ULE($j.0, $numSteps) ) ,  (  BV32_UGE($j.0, $numSteps) ) ,  (  !_READ_HAS_OCCURRED_$$callA ) ,  (  !_WRITE_HAS_OCCURRED_$$callA ) ,  (  _READ_HAS_OCCURRED_$$callA ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(local_id_x$1, 1), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 3) ) ,  (  _WRITE_HAS_OCCURRED_$$callA ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) ) ,  (  !_READ_HAS_OCCURRED_$$callB ) ,  (  !_WRITE_HAS_OCCURRED_$$callB ) ,  (  _READ_HAS_OCCURRED_$$callB ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(local_id_x$1, 1), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, 1), 4), 3) ) ,  (  _WRITE_HAS_OCCURRED_$$callB ==> _WATCHED_OFFSET == BV32_MUL(local_id_x$1, 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_x$1, 4), 3) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 50} true;
    v68 := BV32_SGT($j.0, 0);
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
    goto __partitioned_block_$truebb3_0, $falsebb3;

  $falsebb3:
    assume {:partition} !v68;
    v87$1 := v0$1 == 0;
    v87$2 := v0$2 == 0;
    p12$1 := (if v87$1 then v87$1 else p12$1);
    p12$2 := (if v87$2 then v87$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_READ_$$callA(p12$1, 0, $$callA[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 85} _CHECK_READ_$$callA(p12$2, 0, $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v88$1 := (if p12$1 then $$callA[1bv1][0] else v88$1);
    v88$2 := (if p12$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v88$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_READ_$$callA(p12$1, 1, $$callA[1bv1][1]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 86} _CHECK_READ_$$callA(p12$2, 1, $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v89$1 := (if p12$1 then $$callA[1bv1][1] else v89$1);
    v89$2 := (if p12$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][1] else v89$2);
    call {:sourceloc} {:sourceloc_num 87} _LOG_READ_$$callA(p12$1, 2, $$callA[1bv1][2]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 87} _CHECK_READ_$$callA(p12$2, 2, $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v90$1 := (if p12$1 then $$callA[1bv1][2] else v90$1);
    v90$2 := (if p12$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][2] else v90$2);
    call {:sourceloc} {:sourceloc_num 88} _LOG_READ_$$callA(p12$1, 3, $$callA[1bv1][3]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 88} _CHECK_READ_$$callA(p12$2, 3, $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v91$1 := (if p12$1 then $$callA[1bv1][3] else v91$1);
    v91$2 := (if p12$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][3] else v91$2);
    call {:sourceloc} {:sourceloc_num 89} _LOG_WRITE_$$output(p12$1, BV32_MUL(v1$1, 4), v88$1, $$output[BV32_MUL(v1$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p12$2, BV32_MUL(v1$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 89} _CHECK_WRITE_$$output(p12$2, BV32_MUL(v1$2, 4), v88$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(v1$1, 4)] := (if p12$1 then v88$1 else $$output[BV32_MUL(v1$1, 4)]);
    $$output[BV32_MUL(v1$2, 4)] := (if p12$2 then v88$2 else $$output[BV32_MUL(v1$2, 4)]);
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$output(p12$1, BV32_ADD(BV32_MUL(v1$1, 4), 1), v89$1, $$output[BV32_ADD(BV32_MUL(v1$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 1), v89$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v1$1, 4), 1)] := (if p12$1 then v89$1 else $$output[BV32_ADD(BV32_MUL(v1$1, 4), 1)]);
    $$output[BV32_ADD(BV32_MUL(v1$2, 4), 1)] := (if p12$2 then v89$2 else $$output[BV32_ADD(BV32_MUL(v1$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 91} _LOG_WRITE_$$output(p12$1, BV32_ADD(BV32_MUL(v1$1, 4), 2), v90$1, $$output[BV32_ADD(BV32_MUL(v1$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 91} _CHECK_WRITE_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 2), v90$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v1$1, 4), 2)] := (if p12$1 then v90$1 else $$output[BV32_ADD(BV32_MUL(v1$1, 4), 2)]);
    $$output[BV32_ADD(BV32_MUL(v1$2, 4), 2)] := (if p12$2 then v90$2 else $$output[BV32_ADD(BV32_MUL(v1$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$output(p12$1, BV32_ADD(BV32_MUL(v1$1, 4), 3), v91$1, $$output[BV32_ADD(BV32_MUL(v1$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$output(p12$2, BV32_ADD(BV32_MUL(v1$2, 4), 3), v91$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v1$1, 4), 3)] := (if p12$1 then v91$1 else $$output[BV32_ADD(BV32_MUL(v1$1, 4), 3)]);
    $$output[BV32_ADD(BV32_MUL(v1$2, 4), 3)] := (if p12$2 then v91$2 else $$output[BV32_ADD(BV32_MUL(v1$2, 4), 3)]);
    return;

  __partitioned_block_$truebb3_0:
    assume {:partition} v68;
    v69$1 := BV32_ULT(v0$1, $j.0);
    v69$2 := BV32_ULT(v0$2, $j.0);
    p9$1 := (if v69$1 then v69$1 else p9$1);
    p9$2 := (if v69$2 then v69$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$callA(p9$1, BV32_MUL(v0$1, 4), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$callA(p9$2, BV32_MUL(v0$2, 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v70$1 := (if p9$1 then $$callA[1bv1][BV32_MUL(v0$1, 4)] else v70$1);
    v70$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] else v70$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v71$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] else v71$1);
    v71$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] else v71$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v72$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] else v72$1);
    v72$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] else v72$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v73$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] else v73$1);
    v73$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] else v73$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$callA(p9$1, BV32_MUL(BV32_ADD(v0$1, 1), 4), $$callA[1bv1][BV32_MUL(BV32_ADD(v0$1, 1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$callA(p9$2, BV32_MUL(BV32_ADD(v0$2, 1), 4), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, 1), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v74$1 := (if p9$1 then $$callA[1bv1][BV32_MUL(BV32_ADD(v0$1, 1), 4)] else v74$1);
    v74$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, 1), 4)] else v74$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1), $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v75$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1)] else v75$1);
    v75$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1)] else v75$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2), $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v76$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2)] else v76$1);
    v76$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2)] else v76$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_READ_$$callA(p9$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3), $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 60} _CHECK_READ_$$callA(p9$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3), $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callA"} true;
    v77$1 := (if p9$1 then $$callA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3)] else v77$1);
    v77$2 := (if p9$2 then $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3)] else v77$2);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$callB(p9$1, BV32_MUL(v0$1, 4), FADD32(FMUL32(v35$1, v70$1), FMUL32(v39$1, v74$1)), $$callB[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(p9$2, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$callB(p9$2, BV32_MUL(v0$2, 4), FADD32(FMUL32(v35$2, v70$2), FMUL32(v39$2, v74$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callB"} true;
    $$callB[1bv1][BV32_MUL(v0$1, 4)] := (if p9$1 then FADD32(FMUL32(v35$1, v70$1), FMUL32(v39$1, v74$1)) else $$callB[1bv1][BV32_MUL(v0$1, 4)]);
    $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := (if p9$2 then FADD32(FMUL32(v35$2, v70$2), FMUL32(v39$2, v74$2)) else $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$callB(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 1), FADD32(FMUL32(v36$1, v71$1), FMUL32(v40$1, v75$1)), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 1), FADD32(FMUL32(v36$2, v71$2), FMUL32(v40$2, v75$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callB"} true;
    $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := (if p9$1 then FADD32(FMUL32(v36$1, v71$1), FMUL32(v40$1, v75$1)) else $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := (if p9$2 then FADD32(FMUL32(v36$2, v71$2), FMUL32(v40$2, v75$2)) else $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$callB(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 2), FADD32(FMUL32(v37$1, v72$1), FMUL32(v41$1, v76$1)), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 2), FADD32(FMUL32(v37$2, v72$2), FMUL32(v41$2, v76$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callB"} true;
    $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := (if p9$1 then FADD32(FMUL32(v37$1, v72$1), FMUL32(v41$1, v76$1)) else $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := (if p9$2 then FADD32(FMUL32(v37$2, v72$2), FMUL32(v41$2, v76$2)) else $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$callB(p9$1, BV32_ADD(BV32_MUL(v0$1, 4), 3), FADD32(FMUL32(v38$1, v73$1), FMUL32(v42$1, v77$1)), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$callB(p9$2, BV32_ADD(BV32_MUL(v0$2, 4), 3), FADD32(FMUL32(v38$2, v73$2), FMUL32(v42$2, v77$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callB"} true;
    $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := (if p9$1 then FADD32(FMUL32(v38$1, v73$1), FMUL32(v42$1, v77$1)) else $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := (if p9$2 then FADD32(FMUL32(v38$2, v73$2), FMUL32(v42$2, v77$2)) else $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    goto __partitioned_block_$truebb3_1;

  __partitioned_block_$truebb3_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_1(-1, 0);
    v78$1 := BV32_ULT(v0$1, BV32_SUB($j.0, 1));
    v78$2 := BV32_ULT(v0$2, BV32_SUB($j.0, 1));
    p11$1 := (if v78$1 then v78$1 else p11$1);
    p11$2 := (if v78$2 then v78$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$callB(p11$1, BV32_MUL(v0$1, 4), $$callB[1bv1][BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$callB(p11$2, BV32_MUL(v0$2, 4), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v79$1 := (if p11$1 then $$callB[1bv1][BV32_MUL(v0$1, 4)] else v79$1);
    v79$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] else v79$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v80$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] else v80$1);
    v80$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] else v80$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v81$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] else v81$1);
    v81$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] else v81$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v82$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] else v82$1);
    v82$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] else v82$2);
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$callB(p11$1, BV32_MUL(BV32_ADD(v0$1, 1), 4), $$callB[1bv1][BV32_MUL(BV32_ADD(v0$1, 1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$callB(p11$2, BV32_MUL(BV32_ADD(v0$2, 1), 4), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, 1), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v83$1 := (if p11$1 then $$callB[1bv1][BV32_MUL(BV32_ADD(v0$1, 1), 4)] else v83$1);
    v83$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, 1), 4)] else v83$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1), $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v84$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 1)] else v84$1);
    v84$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 1)] else v84$2);
    call {:sourceloc} {:sourceloc_num 74} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2), $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 74} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v85$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 2)] else v85$1);
    v85$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 2)] else v85$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$callB(p11$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3), $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$callB(p11$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3), $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$callB"} true;
    v86$1 := (if p11$1 then $$callB[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, 1), 4), 3)] else v86$1);
    v86$2 := (if p11$2 then $$callB[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, 1), 4), 3)] else v86$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$callA(p11$1, BV32_MUL(v0$1, 4), FADD32(FMUL32(v35$1, v79$1), FMUL32(v39$1, v83$1)), $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(p11$2, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$callA(p11$2, BV32_MUL(v0$2, 4), FADD32(FMUL32(v35$2, v79$2), FMUL32(v39$2, v83$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_MUL(v0$1, 4)] := (if p11$1 then FADD32(FMUL32(v35$1, v79$1), FMUL32(v39$1, v83$1)) else $$callA[1bv1][BV32_MUL(v0$1, 4)]);
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := (if p11$2 then FADD32(FMUL32(v35$2, v79$2), FMUL32(v39$2, v83$2)) else $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$callA(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 1), FADD32(FMUL32(v36$1, v80$1), FMUL32(v40$1, v84$1)), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 1), FADD32(FMUL32(v36$2, v80$2), FMUL32(v40$2, v84$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := (if p11$1 then FADD32(FMUL32(v36$1, v80$1), FMUL32(v40$1, v84$1)) else $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := (if p11$2 then FADD32(FMUL32(v36$2, v80$2), FMUL32(v40$2, v84$2)) else $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$callA(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 2), FADD32(FMUL32(v37$1, v81$1), FMUL32(v41$1, v85$1)), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 2), FADD32(FMUL32(v37$2, v81$2), FMUL32(v41$2, v85$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := (if p11$1 then FADD32(FMUL32(v37$1, v81$1), FMUL32(v41$1, v85$1)) else $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := (if p11$2 then FADD32(FMUL32(v37$2, v81$2), FMUL32(v41$2, v85$2)) else $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 79} _LOG_WRITE_$$callA(p11$1, BV32_ADD(BV32_MUL(v0$1, 4), 3), FADD32(FMUL32(v38$1, v82$1), FMUL32(v42$1, v86$1)), $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 79} _CHECK_WRITE_$$callA(p11$2, BV32_ADD(BV32_MUL(v0$2, 4), 3), FADD32(FMUL32(v38$2, v82$2), FMUL32(v42$2, v86$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$callA"} true;
    $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := (if p11$1 then FADD32(FMUL32(v38$1, v82$1), FMUL32(v42$1, v86$1)) else $$callA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := (if p11$2 then FADD32(FMUL32(v38$2, v82$2), FMUL32(v42$2, v86$2)) else $$callA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    goto __partitioned_block_$truebb3_2;

  __partitioned_block_$truebb3_2:
    call {:sourceloc_num 81} $bugle_barrier_duplicated_2(-1, 0);
    $j.0 := BV32_SUB($j.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $13;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 255 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

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
  modifies $$callA, $$callB, $$output, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$callA, $$callB, $$output, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  requires $1 == 0;
  modifies $$callA, $$callB, $$output, _TRACKING;



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



const _WATCHED_VALUE_$$randArray: int;

procedure {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _READ_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_READ_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$randArray);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$randArray: bool;

procedure {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$randArray, _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _WRITE_HAS_OCCURRED_$$randArray);
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



procedure _CHECK_WRITE_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_ATOMIC_$$randArray(_P: bool, _offset: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



const _WATCHED_VALUE_$$output: int;

procedure {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _READ_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_READ_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output: bool;

procedure {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _WRITE_HAS_OCCURRED_$$output);
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



procedure _CHECK_WRITE_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_ATOMIC_$$output(_P: bool, _offset: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



const _WATCHED_VALUE_$$callA: int;

procedure {:inline 1} _LOG_READ_$$callA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$callA;



implementation {:inline 1} _LOG_READ_$$callA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$callA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callA == _value then true else _READ_HAS_OCCURRED_$$callA);
    return;
}



procedure _CHECK_READ_$$callA(_P: bool, _offset: int, _value: int);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$callA && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$callA: bool;

procedure {:inline 1} _LOG_WRITE_$$callA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$callA, _WRITE_READ_BENIGN_FLAG_$$callA;



implementation {:inline 1} _LOG_WRITE_$$callA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$callA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callA == _value then true else _WRITE_HAS_OCCURRED_$$callA);
    _WRITE_READ_BENIGN_FLAG_$$callA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$callA);
    return;
}



procedure _CHECK_WRITE_$$callA(_P: bool, _offset: int, _value: int);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callA != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callA != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$callA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$callA;



implementation {:inline 1} _LOG_ATOMIC_$$callA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$callA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$callA);
    return;
}



procedure _CHECK_ATOMIC_$$callA(_P: bool, _offset: int);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callA"} {:array "$$callA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$callA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$callA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$callA := (if _P && _WRITE_HAS_OCCURRED_$$callA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$callA);
    return;
}



const _WATCHED_VALUE_$$callB: int;

procedure {:inline 1} _LOG_READ_$$callB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$callB;



implementation {:inline 1} _LOG_READ_$$callB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$callB := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callB == _value then true else _READ_HAS_OCCURRED_$$callB);
    return;
}



procedure _CHECK_READ_$$callB(_P: bool, _offset: int, _value: int);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$callB && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$callB: bool;

procedure {:inline 1} _LOG_WRITE_$$callB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$callB, _WRITE_READ_BENIGN_FLAG_$$callB;



implementation {:inline 1} _LOG_WRITE_$$callB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$callB := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callB == _value then true else _WRITE_HAS_OCCURRED_$$callB);
    _WRITE_READ_BENIGN_FLAG_$$callB := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$callB);
    return;
}



procedure _CHECK_WRITE_$$callB(_P: bool, _offset: int, _value: int);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callB != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$callB != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$callB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$callB;



implementation {:inline 1} _LOG_ATOMIC_$$callB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$callB := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$callB);
    return;
}



procedure _CHECK_ATOMIC_$$callB(_P: bool, _offset: int);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "callB"} {:array "$$callB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$callB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$callB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$callB := (if _P && _WRITE_HAS_OCCURRED_$$callB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$callB);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callA;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callB;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$output;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$callA;
    goto anon4;

  anon4:
    havoc $$callB;
    goto anon5;

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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callA;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callB;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$output;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$callA;
    goto anon4;

  anon4:
    havoc $$callB;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callA;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callA;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$callB;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$callB;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$output;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$callA;
    goto anon4;

  anon4:
    havoc $$callB;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}
















