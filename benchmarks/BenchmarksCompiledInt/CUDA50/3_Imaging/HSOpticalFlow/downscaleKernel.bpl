type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "out"} {:global} $$out: [int]int;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$texFine"} {:global} {:elem_width 8} {:source_name "texFine"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texFine: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texFine: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texFine: bool;

const _WATCHED_OFFSET: int;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "DownscaleKernel"} {:kernel} $_Z15DownscaleKerneliiiPf($width: int, $height: int, $stride: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 320 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $height == 240 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $stride == 320 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
  requires !_READ_HAS_OCCURRED_$$texFine && !_WRITE_HAS_OCCURRED_$$texFine && !_ATOMIC_HAS_OCCURRED_$$texFine;
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
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:source_name "DownscaleKernel"} {:kernel} $_Z15DownscaleKerneliiiPf($width: int, $height: int, $stride: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v11$1: int;
  var v11$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v19$1: int;
  var v19$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
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
  var v38$1: int;
  var v38$2: int;
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
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
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
  var v48$1: int;
  var v48$2: int;
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
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
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
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v107$1: int;
  var v107$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(local_id_x$1, BV32_MUL(group_id_x$1, group_size_x));
    v0$2 := BV32_ADD(local_id_x$2, BV32_MUL(group_id_x$2, group_size_x));
    v1$1 := BV32_ADD(local_id_y$1, BV32_MUL(group_id_y$1, group_size_y));
    v1$2 := BV32_ADD(local_id_y$2, BV32_MUL(group_id_y$2, group_size_y));
    v2$1 := BV32_SGE(v0$1, $width);
    v2$2 := BV32_SGE(v0$2, $width);
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
    p3$1 := (if v2$1 then v2$1 else p3$1);
    p3$2 := (if v2$2 then v2$2 else p3$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    v3$1 := (if p1$1 then BV32_SGE(v1$1, $height) else v3$1);
    v3$2 := (if p1$2 then BV32_SGE(v1$2, $height) else v3$2);
    p3$1 := (if p1$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p1$2 && v3$2 then v3$2 else p3$2);
    p4$1 := (if p1$1 && !v3$1 then !v3$1 else p4$1);
    p4$2 := (if p1$2 && !v3$2 then !v3$2 else p4$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    v4$1 := (if p4$1 then FDIV32(1065353216, SI32_TO_FP32($width)) else v4$1);
    v4$2 := (if p4$2 then FDIV32(1065353216, SI32_TO_FP32($width)) else v4$2);
    v5$1 := (if p4$1 then FDIV32(1065353216, SI32_TO_FP32($height)) else v5$1);
    v5$2 := (if p4$2 then FDIV32(1065353216, SI32_TO_FP32($height)) else v5$2);
    v6$1 := (if p4$1 then FMUL32(FADD32(SI32_TO_FP32(v0$1), 1056964608), v4$1) else v6$1);
    v6$2 := (if p4$2 then FMUL32(FADD32(SI32_TO_FP32(v0$2), 1056964608), v4$2) else v6$2);
    v7$1 := (if p4$1 then FMUL32(FADD32(SI32_TO_FP32(v1$1), 1056964608), v5$1) else v7$1);
    v7$2 := (if p4$2 then FMUL32(FADD32(SI32_TO_FP32(v1$2), 1056964608), v5$2) else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p4$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p4$2 then _HAVOC_int$2 else v8$2);
    $$0$0$1 := (if p4$1 then v8$1 else $$0$0$1);
    $$0$0$2 := (if p4$2 then v8$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p4$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p4$2 then _HAVOC_int$2 else v9$2);
    $$0$1$1 := (if p4$1 then v9$1 else $$0$1$1);
    $$0$1$2 := (if p4$2 then v9$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p4$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p4$2 then _HAVOC_int$2 else v10$2);
    $$0$2$1 := (if p4$1 then v10$1 else $$0$2$1);
    $$0$2$2 := (if p4$2 then v10$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p4$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p4$2 then _HAVOC_int$2 else v11$2);
    $$0$3$1 := (if p4$1 then v11$1 else $$0$3$1);
    $$0$3$2 := (if p4$2 then v11$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p4$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p4$2 then _HAVOC_int$2 else v12$2);
    $$0$4$1 := (if p4$1 then v12$1 else $$0$4$1);
    $$0$4$2 := (if p4$2 then v12$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p4$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p4$2 then _HAVOC_int$2 else v13$2);
    $$0$5$1 := (if p4$1 then v13$1 else $$0$5$1);
    $$0$5$2 := (if p4$2 then v13$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p4$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p4$2 then _HAVOC_int$2 else v14$2);
    $$0$6$1 := (if p4$1 then v14$1 else $$0$6$1);
    $$0$6$2 := (if p4$2 then v14$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p4$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p4$2 then _HAVOC_int$2 else v15$2);
    $$0$7$1 := (if p4$1 then v15$1 else $$0$7$1);
    $$0$7$2 := (if p4$2 then v15$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p4$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p4$2 then _HAVOC_int$2 else v16$2);
    $$0$8$1 := (if p4$1 then v16$1 else $$0$8$1);
    $$0$8$2 := (if p4$2 then v16$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p4$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p4$2 then _HAVOC_int$2 else v17$2);
    $$0$9$1 := (if p4$1 then v17$1 else $$0$9$1);
    $$0$9$2 := (if p4$2 then v17$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p4$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p4$2 then _HAVOC_int$2 else v18$2);
    $$0$10$1 := (if p4$1 then v18$1 else $$0$10$1);
    $$0$10$2 := (if p4$2 then v18$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p4$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p4$2 then _HAVOC_int$2 else v19$2);
    $$0$11$1 := (if p4$1 then v19$1 else $$0$11$1);
    $$0$11$2 := (if p4$2 then v19$2 else $$0$11$2);
    v20$1 := (if p4$1 then $$0$0$1 else v20$1);
    v20$2 := (if p4$2 then $$0$0$2 else v20$2);
    v21$1 := (if p4$1 then $$0$1$1 else v21$1);
    v21$2 := (if p4$2 then $$0$1$2 else v21$2);
    v22$1 := (if p4$1 then $$0$2$1 else v22$1);
    v22$2 := (if p4$2 then $$0$2$2 else v22$2);
    v23$1 := (if p4$1 then $$0$3$1 else v23$1);
    v23$2 := (if p4$2 then $$0$3$2 else v23$2);
    v24$1 := (if p4$1 then $$0$4$1 else v24$1);
    v24$2 := (if p4$2 then $$0$4$2 else v24$2);
    v25$1 := (if p4$1 then $$0$5$1 else v25$1);
    v25$2 := (if p4$2 then $$0$5$2 else v25$2);
    v26$1 := (if p4$1 then $$0$6$1 else v26$1);
    v26$2 := (if p4$2 then $$0$6$2 else v26$2);
    v27$1 := (if p4$1 then $$0$7$1 else v27$1);
    v27$2 := (if p4$2 then $$0$7$2 else v27$2);
    v28$1 := (if p4$1 then $$0$8$1 else v28$1);
    v28$2 := (if p4$2 then $$0$8$2 else v28$2);
    v29$1 := (if p4$1 then $$0$9$1 else v29$1);
    v29$2 := (if p4$2 then $$0$9$2 else v29$2);
    v30$1 := (if p4$1 then $$0$10$1 else v30$1);
    v30$2 := (if p4$2 then $$0$10$2 else v30$2);
    v31$1 := (if p4$1 then $$0$11$1 else v31$1);
    v31$2 := (if p4$2 then $$0$11$2 else v31$2);
    call {:sourceloc_num 43} v32$1, v32$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$1, v22$1), v21$1), v20$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$1, v26$1), v25$1), v24$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$1, v30$1), v29$1), v28$1), FSUB32(v6$1, FMUL32(v4$1, 1048576000)), v7$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$2, v22$2), v21$2), v20$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$2, v26$2), v25$2), v24$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$2, v30$2), v29$2), v28$2), FSUB32(v6$2, FMUL32(v4$2, 1048576000)), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p4$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p4$2 then _HAVOC_int$2 else v33$2);
    $$1$0$1 := (if p4$1 then v33$1 else $$1$0$1);
    $$1$0$2 := (if p4$2 then v33$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p4$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p4$2 then _HAVOC_int$2 else v34$2);
    $$1$1$1 := (if p4$1 then v34$1 else $$1$1$1);
    $$1$1$2 := (if p4$2 then v34$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p4$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p4$2 then _HAVOC_int$2 else v35$2);
    $$1$2$1 := (if p4$1 then v35$1 else $$1$2$1);
    $$1$2$2 := (if p4$2 then v35$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p4$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p4$2 then _HAVOC_int$2 else v36$2);
    $$1$3$1 := (if p4$1 then v36$1 else $$1$3$1);
    $$1$3$2 := (if p4$2 then v36$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p4$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p4$2 then _HAVOC_int$2 else v37$2);
    $$1$4$1 := (if p4$1 then v37$1 else $$1$4$1);
    $$1$4$2 := (if p4$2 then v37$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p4$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p4$2 then _HAVOC_int$2 else v38$2);
    $$1$5$1 := (if p4$1 then v38$1 else $$1$5$1);
    $$1$5$2 := (if p4$2 then v38$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p4$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p4$2 then _HAVOC_int$2 else v39$2);
    $$1$6$1 := (if p4$1 then v39$1 else $$1$6$1);
    $$1$6$2 := (if p4$2 then v39$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p4$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p4$2 then _HAVOC_int$2 else v40$2);
    $$1$7$1 := (if p4$1 then v40$1 else $$1$7$1);
    $$1$7$2 := (if p4$2 then v40$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p4$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p4$2 then _HAVOC_int$2 else v41$2);
    $$1$8$1 := (if p4$1 then v41$1 else $$1$8$1);
    $$1$8$2 := (if p4$2 then v41$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p4$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p4$2 then _HAVOC_int$2 else v42$2);
    $$1$9$1 := (if p4$1 then v42$1 else $$1$9$1);
    $$1$9$2 := (if p4$2 then v42$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p4$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p4$2 then _HAVOC_int$2 else v43$2);
    $$1$10$1 := (if p4$1 then v43$1 else $$1$10$1);
    $$1$10$2 := (if p4$2 then v43$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p4$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p4$2 then _HAVOC_int$2 else v44$2);
    $$1$11$1 := (if p4$1 then v44$1 else $$1$11$1);
    $$1$11$2 := (if p4$2 then v44$2 else $$1$11$2);
    v45$1 := (if p4$1 then $$1$0$1 else v45$1);
    v45$2 := (if p4$2 then $$1$0$2 else v45$2);
    v46$1 := (if p4$1 then $$1$1$1 else v46$1);
    v46$2 := (if p4$2 then $$1$1$2 else v46$2);
    v47$1 := (if p4$1 then $$1$2$1 else v47$1);
    v47$2 := (if p4$2 then $$1$2$2 else v47$2);
    v48$1 := (if p4$1 then $$1$3$1 else v48$1);
    v48$2 := (if p4$2 then $$1$3$2 else v48$2);
    v49$1 := (if p4$1 then $$1$4$1 else v49$1);
    v49$2 := (if p4$2 then $$1$4$2 else v49$2);
    v50$1 := (if p4$1 then $$1$5$1 else v50$1);
    v50$2 := (if p4$2 then $$1$5$2 else v50$2);
    v51$1 := (if p4$1 then $$1$6$1 else v51$1);
    v51$2 := (if p4$2 then $$1$6$2 else v51$2);
    v52$1 := (if p4$1 then $$1$7$1 else v52$1);
    v52$2 := (if p4$2 then $$1$7$2 else v52$2);
    v53$1 := (if p4$1 then $$1$8$1 else v53$1);
    v53$2 := (if p4$2 then $$1$8$2 else v53$2);
    v54$1 := (if p4$1 then $$1$9$1 else v54$1);
    v54$2 := (if p4$2 then $$1$9$2 else v54$2);
    v55$1 := (if p4$1 then $$1$10$1 else v55$1);
    v55$2 := (if p4$2 then $$1$10$2 else v55$2);
    v56$1 := (if p4$1 then $$1$11$1 else v56$1);
    v56$2 := (if p4$2 then $$1$11$2 else v56$2);
    call {:sourceloc_num 80} v57$1, v57$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$1, v47$1), v46$1), v45$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v52$1, v51$1), v50$1), v49$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v56$1, v55$1), v54$1), v53$1), FADD32(v6$1, FMUL32(v4$1, 1048576000)), v7$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$2, v47$2), v46$2), v45$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v52$2, v51$2), v50$2), v49$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v56$2, v55$2), v54$2), v53$2), FADD32(v6$2, FMUL32(v4$2, 1048576000)), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v58$1 := (if p4$1 then _HAVOC_int$1 else v58$1);
    v58$2 := (if p4$2 then _HAVOC_int$2 else v58$2);
    $$2$0$1 := (if p4$1 then v58$1 else $$2$0$1);
    $$2$0$2 := (if p4$2 then v58$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p4$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p4$2 then _HAVOC_int$2 else v59$2);
    $$2$1$1 := (if p4$1 then v59$1 else $$2$1$1);
    $$2$1$2 := (if p4$2 then v59$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v60$1 := (if p4$1 then _HAVOC_int$1 else v60$1);
    v60$2 := (if p4$2 then _HAVOC_int$2 else v60$2);
    $$2$2$1 := (if p4$1 then v60$1 else $$2$2$1);
    $$2$2$2 := (if p4$2 then v60$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v61$1 := (if p4$1 then _HAVOC_int$1 else v61$1);
    v61$2 := (if p4$2 then _HAVOC_int$2 else v61$2);
    $$2$3$1 := (if p4$1 then v61$1 else $$2$3$1);
    $$2$3$2 := (if p4$2 then v61$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v62$1 := (if p4$1 then _HAVOC_int$1 else v62$1);
    v62$2 := (if p4$2 then _HAVOC_int$2 else v62$2);
    $$2$4$1 := (if p4$1 then v62$1 else $$2$4$1);
    $$2$4$2 := (if p4$2 then v62$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v63$1 := (if p4$1 then _HAVOC_int$1 else v63$1);
    v63$2 := (if p4$2 then _HAVOC_int$2 else v63$2);
    $$2$5$1 := (if p4$1 then v63$1 else $$2$5$1);
    $$2$5$2 := (if p4$2 then v63$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v64$1 := (if p4$1 then _HAVOC_int$1 else v64$1);
    v64$2 := (if p4$2 then _HAVOC_int$2 else v64$2);
    $$2$6$1 := (if p4$1 then v64$1 else $$2$6$1);
    $$2$6$2 := (if p4$2 then v64$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v65$1 := (if p4$1 then _HAVOC_int$1 else v65$1);
    v65$2 := (if p4$2 then _HAVOC_int$2 else v65$2);
    $$2$7$1 := (if p4$1 then v65$1 else $$2$7$1);
    $$2$7$2 := (if p4$2 then v65$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v66$1 := (if p4$1 then _HAVOC_int$1 else v66$1);
    v66$2 := (if p4$2 then _HAVOC_int$2 else v66$2);
    $$2$8$1 := (if p4$1 then v66$1 else $$2$8$1);
    $$2$8$2 := (if p4$2 then v66$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v67$1 := (if p4$1 then _HAVOC_int$1 else v67$1);
    v67$2 := (if p4$2 then _HAVOC_int$2 else v67$2);
    $$2$9$1 := (if p4$1 then v67$1 else $$2$9$1);
    $$2$9$2 := (if p4$2 then v67$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v68$1 := (if p4$1 then _HAVOC_int$1 else v68$1);
    v68$2 := (if p4$2 then _HAVOC_int$2 else v68$2);
    $$2$10$1 := (if p4$1 then v68$1 else $$2$10$1);
    $$2$10$2 := (if p4$2 then v68$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v69$1 := (if p4$1 then _HAVOC_int$1 else v69$1);
    v69$2 := (if p4$2 then _HAVOC_int$2 else v69$2);
    $$2$11$1 := (if p4$1 then v69$1 else $$2$11$1);
    $$2$11$2 := (if p4$2 then v69$2 else $$2$11$2);
    v70$1 := (if p4$1 then $$2$0$1 else v70$1);
    v70$2 := (if p4$2 then $$2$0$2 else v70$2);
    v71$1 := (if p4$1 then $$2$1$1 else v71$1);
    v71$2 := (if p4$2 then $$2$1$2 else v71$2);
    v72$1 := (if p4$1 then $$2$2$1 else v72$1);
    v72$2 := (if p4$2 then $$2$2$2 else v72$2);
    v73$1 := (if p4$1 then $$2$3$1 else v73$1);
    v73$2 := (if p4$2 then $$2$3$2 else v73$2);
    v74$1 := (if p4$1 then $$2$4$1 else v74$1);
    v74$2 := (if p4$2 then $$2$4$2 else v74$2);
    v75$1 := (if p4$1 then $$2$5$1 else v75$1);
    v75$2 := (if p4$2 then $$2$5$2 else v75$2);
    v76$1 := (if p4$1 then $$2$6$1 else v76$1);
    v76$2 := (if p4$2 then $$2$6$2 else v76$2);
    v77$1 := (if p4$1 then $$2$7$1 else v77$1);
    v77$2 := (if p4$2 then $$2$7$2 else v77$2);
    v78$1 := (if p4$1 then $$2$8$1 else v78$1);
    v78$2 := (if p4$2 then $$2$8$2 else v78$2);
    v79$1 := (if p4$1 then $$2$9$1 else v79$1);
    v79$2 := (if p4$2 then $$2$9$2 else v79$2);
    v80$1 := (if p4$1 then $$2$10$1 else v80$1);
    v80$2 := (if p4$2 then $$2$10$2 else v80$2);
    v81$1 := (if p4$1 then $$2$11$1 else v81$1);
    v81$2 := (if p4$2 then $$2$11$2 else v81$2);
    call {:sourceloc_num 117} v82$1, v82$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$1, v72$1), v71$1), v70$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$1, v76$1), v75$1), v74$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v81$1, v80$1), v79$1), v78$1), v6$1, FSUB32(v7$1, FMUL32(v5$1, 1048576000)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$2, v72$2), v71$2), v70$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$2, v76$2), v75$2), v74$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v81$2, v80$2), v79$2), v78$2), v6$2, FSUB32(v7$2, FMUL32(v5$2, 1048576000)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v83$1 := (if p4$1 then _HAVOC_int$1 else v83$1);
    v83$2 := (if p4$2 then _HAVOC_int$2 else v83$2);
    $$3$0$1 := (if p4$1 then v83$1 else $$3$0$1);
    $$3$0$2 := (if p4$2 then v83$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v84$1 := (if p4$1 then _HAVOC_int$1 else v84$1);
    v84$2 := (if p4$2 then _HAVOC_int$2 else v84$2);
    $$3$1$1 := (if p4$1 then v84$1 else $$3$1$1);
    $$3$1$2 := (if p4$2 then v84$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v85$1 := (if p4$1 then _HAVOC_int$1 else v85$1);
    v85$2 := (if p4$2 then _HAVOC_int$2 else v85$2);
    $$3$2$1 := (if p4$1 then v85$1 else $$3$2$1);
    $$3$2$2 := (if p4$2 then v85$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v86$1 := (if p4$1 then _HAVOC_int$1 else v86$1);
    v86$2 := (if p4$2 then _HAVOC_int$2 else v86$2);
    $$3$3$1 := (if p4$1 then v86$1 else $$3$3$1);
    $$3$3$2 := (if p4$2 then v86$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v87$1 := (if p4$1 then _HAVOC_int$1 else v87$1);
    v87$2 := (if p4$2 then _HAVOC_int$2 else v87$2);
    $$3$4$1 := (if p4$1 then v87$1 else $$3$4$1);
    $$3$4$2 := (if p4$2 then v87$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v88$1 := (if p4$1 then _HAVOC_int$1 else v88$1);
    v88$2 := (if p4$2 then _HAVOC_int$2 else v88$2);
    $$3$5$1 := (if p4$1 then v88$1 else $$3$5$1);
    $$3$5$2 := (if p4$2 then v88$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v89$1 := (if p4$1 then _HAVOC_int$1 else v89$1);
    v89$2 := (if p4$2 then _HAVOC_int$2 else v89$2);
    $$3$6$1 := (if p4$1 then v89$1 else $$3$6$1);
    $$3$6$2 := (if p4$2 then v89$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v90$1 := (if p4$1 then _HAVOC_int$1 else v90$1);
    v90$2 := (if p4$2 then _HAVOC_int$2 else v90$2);
    $$3$7$1 := (if p4$1 then v90$1 else $$3$7$1);
    $$3$7$2 := (if p4$2 then v90$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v91$1 := (if p4$1 then _HAVOC_int$1 else v91$1);
    v91$2 := (if p4$2 then _HAVOC_int$2 else v91$2);
    $$3$8$1 := (if p4$1 then v91$1 else $$3$8$1);
    $$3$8$2 := (if p4$2 then v91$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v92$1 := (if p4$1 then _HAVOC_int$1 else v92$1);
    v92$2 := (if p4$2 then _HAVOC_int$2 else v92$2);
    $$3$9$1 := (if p4$1 then v92$1 else $$3$9$1);
    $$3$9$2 := (if p4$2 then v92$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v93$1 := (if p4$1 then _HAVOC_int$1 else v93$1);
    v93$2 := (if p4$2 then _HAVOC_int$2 else v93$2);
    $$3$10$1 := (if p4$1 then v93$1 else $$3$10$1);
    $$3$10$2 := (if p4$2 then v93$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v94$1 := (if p4$1 then _HAVOC_int$1 else v94$1);
    v94$2 := (if p4$2 then _HAVOC_int$2 else v94$2);
    $$3$11$1 := (if p4$1 then v94$1 else $$3$11$1);
    $$3$11$2 := (if p4$2 then v94$2 else $$3$11$2);
    v95$1 := (if p4$1 then $$3$0$1 else v95$1);
    v95$2 := (if p4$2 then $$3$0$2 else v95$2);
    v96$1 := (if p4$1 then $$3$1$1 else v96$1);
    v96$2 := (if p4$2 then $$3$1$2 else v96$2);
    v97$1 := (if p4$1 then $$3$2$1 else v97$1);
    v97$2 := (if p4$2 then $$3$2$2 else v97$2);
    v98$1 := (if p4$1 then $$3$3$1 else v98$1);
    v98$2 := (if p4$2 then $$3$3$2 else v98$2);
    v99$1 := (if p4$1 then $$3$4$1 else v99$1);
    v99$2 := (if p4$2 then $$3$4$2 else v99$2);
    v100$1 := (if p4$1 then $$3$5$1 else v100$1);
    v100$2 := (if p4$2 then $$3$5$2 else v100$2);
    v101$1 := (if p4$1 then $$3$6$1 else v101$1);
    v101$2 := (if p4$2 then $$3$6$2 else v101$2);
    v102$1 := (if p4$1 then $$3$7$1 else v102$1);
    v102$2 := (if p4$2 then $$3$7$2 else v102$2);
    v103$1 := (if p4$1 then $$3$8$1 else v103$1);
    v103$2 := (if p4$2 then $$3$8$2 else v103$2);
    v104$1 := (if p4$1 then $$3$9$1 else v104$1);
    v104$2 := (if p4$2 then $$3$9$2 else v104$2);
    v105$1 := (if p4$1 then $$3$10$1 else v105$1);
    v105$2 := (if p4$2 then $$3$10$2 else v105$2);
    v106$1 := (if p4$1 then $$3$11$1 else v106$1);
    v106$2 := (if p4$2 then $$3$11$2 else v106$2);
    call {:sourceloc_num 154} v107$1, v107$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v98$1, v97$1), v96$1), v95$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v102$1, v101$1), v100$1), v99$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v106$1, v105$1), v104$1), v103$1), v6$1, FADD32(v7$1, FMUL32(v5$1, 1048576000)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v98$2, v97$2), v96$2), v95$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v102$2, v101$2), v100$2), v99$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v106$2, v105$2), v104$2), v103$2), v6$2, FADD32(v7$2, FMUL32(v5$2, 1048576000)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 155} _LOG_WRITE_$$out(p4$1, BV32_ADD(v0$1, BV32_MUL(v1$1, $stride)), FMUL32(1048576000, FADD32(FADD32(FADD32(v32$1, v57$1), v82$1), v107$1)), $$out[BV32_ADD(v0$1, BV32_MUL(v1$1, $stride))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p4$2, BV32_ADD(v0$2, BV32_MUL(v1$2, $stride)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 155} _CHECK_WRITE_$$out(p4$2, BV32_ADD(v0$2, BV32_MUL(v1$2, $stride)), FMUL32(1048576000, FADD32(FADD32(FADD32(v32$2, v57$2), v82$2), v107$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(v0$1, BV32_MUL(v1$1, $stride))] := (if p4$1 then FMUL32(1048576000, FADD32(FADD32(FADD32(v32$1, v57$1), v82$1), v107$1)) else $$out[BV32_ADD(v0$1, BV32_MUL(v1$1, $stride))]);
    $$out[BV32_ADD(v0$2, BV32_MUL(v1$2, $stride))] := (if p4$2 then FMUL32(1048576000, FADD32(FADD32(FADD32(v32$2, v57$2), v82$2), v107$2)) else $$out[BV32_ADD(v0$2, BV32_MUL(v1$2, $stride))]);
    return;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 10 then 1 else 0) != 0;

axiom (if num_groups_y == 30 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$0$4$1: int;

var $$0$4$2: int;

var $$0$5$1: int;

var $$0$5$2: int;

var $$0$6$1: int;

var $$0$6$2: int;

var $$0$7$1: int;

var $$0$7$2: int;

var $$0$8$1: int;

var $$0$8$2: int;

var $$0$9$1: int;

var $$0$9$2: int;

var $$0$10$1: int;

var $$0$10$2: int;

var $$0$11$1: int;

var $$0$11$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$1$4$1: int;

var $$1$4$2: int;

var $$1$5$1: int;

var $$1$5$2: int;

var $$1$6$1: int;

var $$1$6$2: int;

var $$1$7$1: int;

var $$1$7$2: int;

var $$1$8$1: int;

var $$1$8$2: int;

var $$1$9$1: int;

var $$1$9$2: int;

var $$1$10$1: int;

var $$1$10$2: int;

var $$1$11$1: int;

var $$1$11$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$2$4$1: int;

var $$2$4$2: int;

var $$2$5$1: int;

var $$2$5$2: int;

var $$2$6$1: int;

var $$2$6$2: int;

var $$2$7$1: int;

var $$2$7$2: int;

var $$2$8$1: int;

var $$2$8$2: int;

var $$2$9$1: int;

var $$2$9$2: int;

var $$2$10$1: int;

var $$2$10$2: int;

var $$2$11$1: int;

var $$2$11$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$3$4$1: int;

var $$3$4$2: int;

var $$3$5$1: int;

var $$3$5$2: int;

var $$3$6$1: int;

var $$3$6$2: int;

var $$3$7$1: int;

var $$3$7$2: int;

var $$3$8$1: int;

var $$3$8$2: int;

var $$3$9$1: int;

var $$3$9$2: int;

var $$3$10$1: int;

var $$3$10$2: int;

var $$3$11$1: int;

var $$3$11$2: int;

const _WATCHED_VALUE_$$out: int;

procedure {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _READ_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_READ_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$out);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$out: bool;

procedure {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _WRITE_HAS_OCCURRED_$$out);
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



procedure _CHECK_WRITE_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_ATOMIC_$$out(_P: bool, _offset: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



const _WATCHED_VALUE_$$texFine: int;

procedure {:inline 1} _LOG_READ_$$texFine(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texFine;



implementation {:inline 1} _LOG_READ_$$texFine(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texFine := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFine == _value then true else _READ_HAS_OCCURRED_$$texFine);
    return;
}



procedure _CHECK_READ_$$texFine(_P: bool, _offset: int, _value: int);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texFine);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texFine: bool;

procedure {:inline 1} _LOG_WRITE_$$texFine(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texFine, _WRITE_READ_BENIGN_FLAG_$$texFine;



implementation {:inline 1} _LOG_WRITE_$$texFine(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texFine := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFine == _value then true else _WRITE_HAS_OCCURRED_$$texFine);
    _WRITE_READ_BENIGN_FLAG_$$texFine := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFine == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texFine);
    return;
}



procedure _CHECK_WRITE_$$texFine(_P: bool, _offset: int, _value: int);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFine != _value);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFine != _value);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texFine(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texFine;



implementation {:inline 1} _LOG_ATOMIC_$$texFine(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texFine := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texFine);
    return;
}



procedure _CHECK_ATOMIC_$$texFine(_P: bool, _offset: int);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset);
  requires {:source_name "texFine"} {:array "$$texFine"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texFine(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texFine;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texFine(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texFine := (if _P && _WRITE_HAS_OCCURRED_$$texFine && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texFine);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
