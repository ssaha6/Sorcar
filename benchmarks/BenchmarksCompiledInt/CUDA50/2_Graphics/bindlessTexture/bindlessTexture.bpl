type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_output"} {:global} $$d_output: [int]int;

axiom {:array_info "$$d_output"} {:global} {:elem_width 8} {:source_name "d_output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_output: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_output: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_output: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$vec.i"} {:elem_width 32} {:source_name "vec.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$obj.i"} {:elem_width 32} {:source_name "obj.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$texCoded"} {:elem_width 32} {:source_name "texCoded"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$color"} {:elem_width 32} {:source_name "color"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$atlasTexture"} {:global} {:elem_width 8} {:source_name "atlasTexture"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$atlasTexture: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$atlasTexture: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$atlasTexture: bool;

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

function BV_EXTRACT(int, int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FP32_TO_UI8(int) : int;

function FSUB32(int, int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ZEXT64(x: int) : int
{
  x
}

function {:inline true} BV64_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV64_OR_UF(x, y))))
}

function BV64_OR_UF(int, int) : int;

function {:inline true} BV64_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV64_SHL_UF(x, y))
}

function BV64_SHL_UF(int, int) : int;

procedure {:source_name "d_render"} {:kernel} $_Z8d_renderP6uchar4jjf($imageW: int, $imageH: int, $lod: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_output && !_WRITE_HAS_OCCURRED_$$d_output && !_ATOMIC_HAS_OCCURRED_$$d_output;
  requires !_READ_HAS_OCCURRED_$$atlasTexture && !_WRITE_HAS_OCCURRED_$$atlasTexture && !_ATOMIC_HAS_OCCURRED_$$atlasTexture;
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
  modifies _WRITE_HAS_OCCURRED_$$d_output, _WRITE_READ_BENIGN_FLAG_$$d_output, _WRITE_READ_BENIGN_FLAG_$$d_output;



implementation {:source_name "d_render"} {:kernel} $_Z8d_renderP6uchar4jjf($imageW: int, $imageH: int, $lod: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
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
  var v14$1: int;
  var v14$2: int;
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
  var v41$1: int;
  var v41$2: int;
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
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := FDIV32(UI32_TO_FP32(v0$1), UI32_TO_FP32($imageW));
    v2$2 := FDIV32(UI32_TO_FP32(v0$2), UI32_TO_FP32($imageW));
    v3$1 := FDIV32(UI32_TO_FP32(v1$1), UI32_TO_FP32($imageH));
    v3$2 := FDIV32(UI32_TO_FP32(v1$2), UI32_TO_FP32($imageH));
    v4$1 := BV32_ULT(v0$1, $imageW);
    v4$2 := BV32_ULT(v0$2, $imageW);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    v5$1 := (if p0$1 then BV32_ULT(v1$1, $imageH) else v5$1);
    v5$2 := (if p0$2 then BV32_ULT(v1$2, $imageH) else v5$2);
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p1$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p1$2 then _HAVOC_int$2 else v6$2);
    $$4$0$1 := (if p1$1 then v6$1 else $$4$0$1);
    $$4$0$2 := (if p1$2 then v6$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p1$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p1$2 then _HAVOC_int$2 else v7$2);
    $$4$1$1 := (if p1$1 then v7$1 else $$4$1$1);
    $$4$1$2 := (if p1$2 then v7$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p1$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p1$2 then _HAVOC_int$2 else v8$2);
    $$4$2$1 := (if p1$1 then v8$1 else $$4$2$1);
    $$4$2$2 := (if p1$2 then v8$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p1$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p1$2 then _HAVOC_int$2 else v9$2);
    $$4$3$1 := (if p1$1 then v9$1 else $$4$3$1);
    $$4$3$2 := (if p1$2 then v9$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p1$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p1$2 then _HAVOC_int$2 else v10$2);
    $$4$4$1 := (if p1$1 then v10$1 else $$4$4$1);
    $$4$4$2 := (if p1$2 then v10$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p1$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p1$2 then _HAVOC_int$2 else v11$2);
    $$4$5$1 := (if p1$1 then v11$1 else $$4$5$1);
    $$4$5$2 := (if p1$2 then v11$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p1$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p1$2 then _HAVOC_int$2 else v12$2);
    $$4$6$1 := (if p1$1 then v12$1 else $$4$6$1);
    $$4$6$2 := (if p1$2 then v12$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p1$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p1$2 then _HAVOC_int$2 else v13$2);
    $$4$7$1 := (if p1$1 then v13$1 else $$4$7$1);
    $$4$7$2 := (if p1$2 then v13$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p1$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p1$2 then _HAVOC_int$2 else v14$2);
    $$4$8$1 := (if p1$1 then v14$1 else $$4$8$1);
    $$4$8$2 := (if p1$2 then v14$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p1$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p1$2 then _HAVOC_int$2 else v15$2);
    $$4$9$1 := (if p1$1 then v15$1 else $$4$9$1);
    $$4$9$2 := (if p1$2 then v15$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p1$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p1$2 then _HAVOC_int$2 else v16$2);
    $$4$10$1 := (if p1$1 then v16$1 else $$4$10$1);
    $$4$10$2 := (if p1$2 then v16$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p1$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p1$2 then _HAVOC_int$2 else v17$2);
    $$4$11$1 := (if p1$1 then v17$1 else $$4$11$1);
    $$4$11$2 := (if p1$2 then v17$2 else $$4$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p1$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p1$2 then _HAVOC_int$2 else v18$2);
    $$4$12$1 := (if p1$1 then v18$1 else $$4$12$1);
    $$4$12$2 := (if p1$2 then v18$2 else $$4$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p1$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p1$2 then _HAVOC_int$2 else v19$2);
    $$4$13$1 := (if p1$1 then v19$1 else $$4$13$1);
    $$4$13$2 := (if p1$2 then v19$2 else $$4$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p1$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p1$2 then _HAVOC_int$2 else v20$2);
    $$4$14$1 := (if p1$1 then v20$1 else $$4$14$1);
    $$4$14$2 := (if p1$2 then v20$2 else $$4$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p1$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p1$2 then _HAVOC_int$2 else v21$2);
    $$4$15$1 := (if p1$1 then v21$1 else $$4$15$1);
    $$4$15$2 := (if p1$2 then v21$2 else $$4$15$2);
    v22$1 := (if p1$1 then $$4$0$1 else v22$1);
    v22$2 := (if p1$2 then $$4$0$2 else v22$2);
    v23$1 := (if p1$1 then $$4$1$1 else v23$1);
    v23$2 := (if p1$2 then $$4$1$2 else v23$2);
    v24$1 := (if p1$1 then $$4$2$1 else v24$1);
    v24$2 := (if p1$2 then $$4$2$2 else v24$2);
    v25$1 := (if p1$1 then $$4$3$1 else v25$1);
    v25$2 := (if p1$2 then $$4$3$2 else v25$2);
    v26$1 := (if p1$1 then $$4$4$1 else v26$1);
    v26$2 := (if p1$2 then $$4$4$2 else v26$2);
    v27$1 := (if p1$1 then $$4$5$1 else v27$1);
    v27$2 := (if p1$2 then $$4$5$2 else v27$2);
    v28$1 := (if p1$1 then $$4$6$1 else v28$1);
    v28$2 := (if p1$2 then $$4$6$2 else v28$2);
    v29$1 := (if p1$1 then $$4$7$1 else v29$1);
    v29$2 := (if p1$2 then $$4$7$2 else v29$2);
    v30$1 := (if p1$1 then $$4$8$1 else v30$1);
    v30$2 := (if p1$2 then $$4$8$2 else v30$2);
    v31$1 := (if p1$1 then $$4$9$1 else v31$1);
    v31$2 := (if p1$2 then $$4$9$2 else v31$2);
    v32$1 := (if p1$1 then $$4$10$1 else v32$1);
    v32$2 := (if p1$2 then $$4$10$2 else v32$2);
    v33$1 := (if p1$1 then $$4$11$1 else v33$1);
    v33$2 := (if p1$2 then $$4$11$2 else v33$2);
    v34$1 := (if p1$1 then $$4$12$1 else v34$1);
    v34$2 := (if p1$2 then $$4$12$2 else v34$2);
    v35$1 := (if p1$1 then $$4$13$1 else v35$1);
    v35$2 := (if p1$2 then $$4$13$2 else v35$2);
    v36$1 := (if p1$1 then $$4$14$1 else v36$1);
    v36$2 := (if p1$2 then $$4$14$2 else v36$2);
    v37$1 := (if p1$1 then $$4$15$1 else v37$1);
    v37$2 := (if p1$2 then $$4$15$2 else v37$2);
    call {:sourceloc_num 52} v38$1, v38$2 := $_Z5tex2DI5uint2ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p1$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$1, v28$1), v27$1), v26$1), v25$1), v24$1), v23$1), v22$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$1, v32$1), v31$1), v30$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v37$1, v36$1), v35$1), v34$1), v2$1, v3$1, p1$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$2, v28$2), v27$2), v26$2), v25$2), v24$2), v23$2), v22$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$2, v32$2), v31$2), v30$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v37$2, v36$2), v35$2), v34$2), v2$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI5uint2ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$texCoded$0$1 := (if p1$1 then BV_EXTRACT(v38$1, 32, 0) else $$texCoded$0$1);
    $$texCoded$0$2 := (if p1$2 then BV_EXTRACT(v38$2, 32, 0) else $$texCoded$0$2);
    $$texCoded$1$1 := (if p1$1 then BV_EXTRACT(v38$1, 64, 32) else $$texCoded$1$1);
    $$texCoded$1$2 := (if p1$2 then BV_EXTRACT(v38$2, 64, 32) else $$texCoded$1$2);
    v39$1 := (if p1$1 then $$texCoded$0$1 else v39$1);
    v39$2 := (if p1$2 then $$texCoded$0$2 else v39$2);
    $$5$0$1 := (if p1$1 then v39$1 else $$5$0$1);
    $$5$0$2 := (if p1$2 then v39$2 else $$5$0$2);
    v40$1 := (if p1$1 then $$texCoded$1$1 else v40$1);
    v40$2 := (if p1$2 then $$texCoded$1$2 else v40$2);
    $$5$1$1 := (if p1$1 then v40$1 else $$5$1$1);
    $$5$1$2 := (if p1$2 then v40$2 else $$5$1$2);
    v41$1 := (if p1$1 then $$5$0$1 else v41$1);
    v41$2 := (if p1$2 then $$5$0$2 else v41$2);
    v42$1 := (if p1$1 then $$5$1$1 else v42$1);
    v42$2 := (if p1$2 then $$5$1$2 else v42$2);
    $$obj.i$0$1 := (if p1$1 then v41$1 else $$obj.i$0$1);
    $$obj.i$0$2 := (if p1$2 then v41$2 else $$obj.i$0$2);
    $$obj.i$1$1 := (if p1$1 then v42$1 else $$obj.i$1$1);
    $$obj.i$1$2 := (if p1$2 then v42$2 else $$obj.i$1$2);
    v43$1 := (if p1$1 then $$obj.i$0$1 else v43$1);
    v43$2 := (if p1$2 then $$obj.i$0$2 else v43$2);
    v44$1 := (if p1$1 then $$obj.i$1$1 else v44$1);
    v44$2 := (if p1$2 then $$obj.i$1$2 else v44$2);
    call {:sourceloc_num 65} v45$1, v45$2 := $_Z8tex2DLodI6float4ET_yfff($lod, p1$1, BV64_OR(BV32_ZEXT64(v43$1), BV64_SHL(BV32_ZEXT64(v44$1), 32)), v2$1, FSUB32(1065353216, v3$1), p1$2, BV64_OR(BV32_ZEXT64(v43$2), BV64_SHL(BV32_ZEXT64(v44$2), 32)), v2$2, FSUB32(1065353216, v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z8tex2DLodI6float4ET_yfff"} true;
    $$color$0$1 := (if p1$1 then BV_EXTRACT(v45$1, 32, 0) else $$color$0$1);
    $$color$0$2 := (if p1$2 then BV_EXTRACT(v45$2, 32, 0) else $$color$0$2);
    $$color$1$1 := (if p1$1 then BV_EXTRACT(v45$1, 64, 32) else $$color$1$1);
    $$color$1$2 := (if p1$2 then BV_EXTRACT(v45$2, 64, 32) else $$color$1$2);
    $$color$2$1 := (if p1$1 then BV_EXTRACT(v45$1, 96, 64) else $$color$2$1);
    $$color$2$2 := (if p1$2 then BV_EXTRACT(v45$2, 96, 64) else $$color$2$2);
    $$color$3$1 := (if p1$1 then BV_EXTRACT(v45$1, 128, 96) else $$color$3$1);
    $$color$3$2 := (if p1$2 then BV_EXTRACT(v45$2, 128, 96) else $$color$3$2);
    v46$1 := (if p1$1 then $$color$0$1 else v46$1);
    v46$2 := (if p1$2 then $$color$0$2 else v46$2);
    $$8$0$1 := (if p1$1 then v46$1 else $$8$0$1);
    $$8$0$2 := (if p1$2 then v46$2 else $$8$0$2);
    v47$1 := (if p1$1 then $$color$1$1 else v47$1);
    v47$2 := (if p1$2 then $$color$1$2 else v47$2);
    $$8$1$1 := (if p1$1 then v47$1 else $$8$1$1);
    $$8$1$2 := (if p1$2 then v47$2 else $$8$1$2);
    v48$1 := (if p1$1 then $$color$2$1 else v48$1);
    v48$2 := (if p1$2 then $$color$2$2 else v48$2);
    $$8$2$1 := (if p1$1 then v48$1 else $$8$2$1);
    $$8$2$2 := (if p1$2 then v48$2 else $$8$2$2);
    v49$1 := (if p1$1 then $$color$3$1 else v49$1);
    v49$2 := (if p1$2 then $$color$3$2 else v49$2);
    $$8$3$1 := (if p1$1 then v49$1 else $$8$3$1);
    $$8$3$2 := (if p1$2 then v49$2 else $$8$3$2);
    v50$1 := (if p1$1 then $$8$0$1 else v50$1);
    v50$2 := (if p1$2 then $$8$0$2 else v50$2);
    v51$1 := (if p1$1 then $$8$1$1 else v51$1);
    v51$2 := (if p1$2 then $$8$1$2 else v51$2);
    v52$1 := (if p1$1 then $$8$2$1 else v52$1);
    v52$2 := (if p1$2 then $$8$2$2 else v52$2);
    v53$1 := (if p1$1 then $$8$3$1 else v53$1);
    v53$2 := (if p1$2 then $$8$3$2 else v53$2);
    $$a.i$0$1 := (if p1$1 then v50$1 else $$a.i$0$1);
    $$a.i$0$2 := (if p1$2 then v50$2 else $$a.i$0$2);
    $$a.i$1$1 := (if p1$1 then v51$1 else $$a.i$1$1);
    $$a.i$1$2 := (if p1$2 then v51$2 else $$a.i$1$2);
    $$a.i$2$1 := (if p1$1 then v52$1 else $$a.i$2$1);
    $$a.i$2$2 := (if p1$2 then v52$2 else $$a.i$2$2);
    $$a.i$3$1 := (if p1$1 then v53$1 else $$a.i$3$1);
    $$a.i$3$2 := (if p1$2 then v53$2 else $$a.i$3$2);
    v54$1 := (if p1$1 then $$a.i$0$1 else v54$1);
    v54$2 := (if p1$2 then $$a.i$0$2 else v54$2);
    v55$1 := (if p1$1 then $$a.i$1$1 else v55$1);
    v55$2 := (if p1$2 then $$a.i$1$2 else v55$2);
    v56$1 := (if p1$1 then $$a.i$2$1 else v56$1);
    v56$2 := (if p1$2 then $$a.i$2$2 else v56$2);
    v57$1 := (if p1$1 then $$a.i$3$1 else v57$1);
    v57$2 := (if p1$2 then $$a.i$3$2 else v57$2);
    $$0$0$1 := (if p1$1 then FMUL32(v54$1, 1132396544) else $$0$0$1);
    $$0$0$2 := (if p1$2 then FMUL32(v54$2, 1132396544) else $$0$0$2);
    $$0$1$1 := (if p1$1 then FMUL32(v55$1, 1132396544) else $$0$1$1);
    $$0$1$2 := (if p1$2 then FMUL32(v55$2, 1132396544) else $$0$1$2);
    $$0$2$1 := (if p1$1 then FMUL32(v56$1, 1132396544) else $$0$2$1);
    $$0$2$2 := (if p1$2 then FMUL32(v56$2, 1132396544) else $$0$2$2);
    $$0$3$1 := (if p1$1 then FMUL32(v57$1, 1132396544) else $$0$3$1);
    $$0$3$2 := (if p1$2 then FMUL32(v57$2, 1132396544) else $$0$3$2);
    v58$1 := (if p1$1 then $$0$0$1 else v58$1);
    v58$2 := (if p1$2 then $$0$0$2 else v58$2);
    v59$1 := (if p1$1 then $$0$1$1 else v59$1);
    v59$2 := (if p1$2 then $$0$1$2 else v59$2);
    v60$1 := (if p1$1 then $$0$2$1 else v60$1);
    v60$2 := (if p1$2 then $$0$2$2 else v60$2);
    v61$1 := (if p1$1 then $$0$3$1 else v61$1);
    v61$2 := (if p1$2 then $$0$3$2 else v61$2);
    $$1$0$1 := (if p1$1 then v58$1 else $$1$0$1);
    $$1$0$2 := (if p1$2 then v58$2 else $$1$0$2);
    $$1$1$1 := (if p1$1 then v59$1 else $$1$1$1);
    $$1$1$2 := (if p1$2 then v59$2 else $$1$1$2);
    $$1$2$1 := (if p1$1 then v60$1 else $$1$2$1);
    $$1$2$2 := (if p1$2 then v60$2 else $$1$2$2);
    $$1$3$1 := (if p1$1 then v61$1 else $$1$3$1);
    $$1$3$2 := (if p1$2 then v61$2 else $$1$3$2);
    v62$1 := (if p1$1 then $$1$0$1 else v62$1);
    v62$2 := (if p1$2 then $$1$0$2 else v62$2);
    v63$1 := (if p1$1 then $$1$1$1 else v63$1);
    v63$2 := (if p1$2 then $$1$1$2 else v63$2);
    v64$1 := (if p1$1 then $$1$2$1 else v64$1);
    v64$2 := (if p1$2 then $$1$2$2 else v64$2);
    v65$1 := (if p1$1 then $$1$3$1 else v65$1);
    v65$2 := (if p1$2 then $$1$3$2 else v65$2);
    $$7$0$1 := (if p1$1 then v62$1 else $$7$0$1);
    $$7$0$2 := (if p1$2 then v62$2 else $$7$0$2);
    $$7$1$1 := (if p1$1 then v63$1 else $$7$1$1);
    $$7$1$2 := (if p1$2 then v63$2 else $$7$1$2);
    $$7$2$1 := (if p1$1 then v64$1 else $$7$2$1);
    $$7$2$2 := (if p1$2 then v64$2 else $$7$2$2);
    $$7$3$1 := (if p1$1 then v65$1 else $$7$3$1);
    $$7$3$2 := (if p1$2 then v65$2 else $$7$3$2);
    v66$1 := (if p1$1 then $$7$0$1 else v66$1);
    v66$2 := (if p1$2 then $$7$0$2 else v66$2);
    v67$1 := (if p1$1 then $$7$1$1 else v67$1);
    v67$2 := (if p1$2 then $$7$1$2 else v67$2);
    v68$1 := (if p1$1 then $$7$2$1 else v68$1);
    v68$2 := (if p1$2 then $$7$2$2 else v68$2);
    v69$1 := (if p1$1 then $$7$3$1 else v69$1);
    v69$2 := (if p1$2 then $$7$3$2 else v69$2);
    $$vec.i$0$1 := (if p1$1 then v66$1 else $$vec.i$0$1);
    $$vec.i$0$2 := (if p1$2 then v66$2 else $$vec.i$0$2);
    $$vec.i$1$1 := (if p1$1 then v67$1 else $$vec.i$1$1);
    $$vec.i$1$2 := (if p1$2 then v67$2 else $$vec.i$1$2);
    $$vec.i$2$1 := (if p1$1 then v68$1 else $$vec.i$2$1);
    $$vec.i$2$2 := (if p1$2 then v68$2 else $$vec.i$2$2);
    $$vec.i$3$1 := (if p1$1 then v69$1 else $$vec.i$3$1);
    $$vec.i$3$2 := (if p1$2 then v69$2 else $$vec.i$3$2);
    v70$1 := (if p1$1 then $$vec.i$0$1 else v70$1);
    v70$2 := (if p1$2 then $$vec.i$0$2 else v70$2);
    v71$1 := (if p1$1 then $$vec.i$1$1 else v71$1);
    v71$2 := (if p1$2 then $$vec.i$1$2 else v71$2);
    v72$1 := (if p1$1 then $$vec.i$2$1 else v72$1);
    v72$2 := (if p1$2 then $$vec.i$2$2 else v72$2);
    v73$1 := (if p1$1 then $$vec.i$3$1 else v73$1);
    v73$2 := (if p1$2 then $$vec.i$3$2 else v73$2);
    $$2$0$1 := (if p1$1 then FP32_TO_UI8(v70$1) else $$2$0$1);
    $$2$0$2 := (if p1$2 then FP32_TO_UI8(v70$2) else $$2$0$2);
    $$2$1$1 := (if p1$1 then FP32_TO_UI8(v71$1) else $$2$1$1);
    $$2$1$2 := (if p1$2 then FP32_TO_UI8(v71$2) else $$2$1$2);
    $$2$2$1 := (if p1$1 then FP32_TO_UI8(v72$1) else $$2$2$1);
    $$2$2$2 := (if p1$2 then FP32_TO_UI8(v72$2) else $$2$2$2);
    $$2$3$1 := (if p1$1 then FP32_TO_UI8(v73$1) else $$2$3$1);
    $$2$3$2 := (if p1$2 then FP32_TO_UI8(v73$2) else $$2$3$2);
    v74$1 := (if p1$1 then $$2$0$1 else v74$1);
    v74$2 := (if p1$2 then $$2$0$2 else v74$2);
    v75$1 := (if p1$1 then $$2$1$1 else v75$1);
    v75$2 := (if p1$2 then $$2$1$2 else v75$2);
    v76$1 := (if p1$1 then $$2$2$1 else v76$1);
    v76$2 := (if p1$2 then $$2$2$2 else v76$2);
    v77$1 := (if p1$1 then $$2$3$1 else v77$1);
    v77$2 := (if p1$2 then $$2$3$2 else v77$2);
    $$3$0$1 := (if p1$1 then v74$1 else $$3$0$1);
    $$3$0$2 := (if p1$2 then v74$2 else $$3$0$2);
    $$3$1$1 := (if p1$1 then v75$1 else $$3$1$1);
    $$3$1$2 := (if p1$2 then v75$2 else $$3$1$2);
    $$3$2$1 := (if p1$1 then v76$1 else $$3$2$1);
    $$3$2$2 := (if p1$2 then v76$2 else $$3$2$2);
    $$3$3$1 := (if p1$1 then v77$1 else $$3$3$1);
    $$3$3$2 := (if p1$2 then v77$2 else $$3$3$2);
    v78$1 := (if p1$1 then $$3$0$1 else v78$1);
    v78$2 := (if p1$2 then $$3$0$2 else v78$2);
    v79$1 := (if p1$1 then $$3$1$1 else v79$1);
    v79$2 := (if p1$2 then $$3$1$2 else v79$2);
    v80$1 := (if p1$1 then $$3$2$1 else v80$1);
    v80$2 := (if p1$2 then $$3$2$2 else v80$2);
    v81$1 := (if p1$1 then $$3$3$1 else v81$1);
    v81$2 := (if p1$2 then $$3$3$2 else v81$2);
    $$6$0$1 := (if p1$1 then v78$1 else $$6$0$1);
    $$6$0$2 := (if p1$2 then v78$2 else $$6$0$2);
    $$6$1$1 := (if p1$1 then v79$1 else $$6$1$1);
    $$6$1$2 := (if p1$2 then v79$2 else $$6$1$2);
    $$6$2$1 := (if p1$1 then v80$1 else $$6$2$1);
    $$6$2$2 := (if p1$2 then v80$2 else $$6$2$2);
    $$6$3$1 := (if p1$1 then v81$1 else $$6$3$1);
    $$6$3$2 := (if p1$2 then v81$2 else $$6$3$2);
    v82$1 := (if p1$1 then $$6$0$1 else v82$1);
    v82$2 := (if p1$2 then $$6$0$2 else v82$2);
    call {:sourceloc} {:sourceloc_num 143} _LOG_WRITE_$$d_output(p1$1, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), v82$1, $$d_output[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(p1$2, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 143} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 143} _CHECK_WRITE_$$d_output(p1$2, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), v82$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_output"} true;
    $$d_output[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4)] := (if p1$1 then v82$1 else $$d_output[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4)]);
    $$d_output[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4)] := (if p1$2 then v82$2 else $$d_output[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4)]);
    v83$1 := (if p1$1 then $$6$1$1 else v83$1);
    v83$2 := (if p1$2 then $$6$1$2 else v83$2);
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$d_output(p1$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 1), v83$1, $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 1), v83$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_output"} true;
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 1)] := (if p1$1 then v83$1 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 1)]);
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 1)] := (if p1$2 then v83$2 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 1)]);
    v84$1 := (if p1$1 then $$6$2$1 else v84$1);
    v84$2 := (if p1$2 then $$6$2$2 else v84$2);
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$d_output(p1$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 2), v84$1, $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 2), v84$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_output"} true;
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 2)] := (if p1$1 then v84$1 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 2)]);
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 2)] := (if p1$2 then v84$2 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 2)]);
    v85$1 := (if p1$1 then $$6$3$1 else v85$1);
    v85$2 := (if p1$2 then $$6$3$2 else v85$2);
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$d_output(p1$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 3), v85$1, $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$d_output(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 3), v85$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_output"} true;
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 3)] := (if p1$1 then v85$1 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $imageW), v0$1), 4), 3)]);
    $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 3)] := (if p1$2 then v85$2 else $$d_output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $imageW), v0$2), 4), 3)]);
    return;
}



procedure {:source_name "_Z5tex2DI5uint2ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DI5uint2ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z8tex2DLodI6float4ET_yfff"} $_Z8tex2DLodI6float4ET_yfff($3: int, _P$1: bool, $0$1: int, $1$1: int, $2$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

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

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$a.i$3$1: int;

var $$a.i$3$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$vec.i$0$1: int;

var $$vec.i$0$2: int;

var $$vec.i$1$1: int;

var $$vec.i$1$2: int;

var $$vec.i$2$1: int;

var $$vec.i$2$2: int;

var $$vec.i$3$1: int;

var $$vec.i$3$2: int;

var $$obj.i$0$1: int;

var $$obj.i$0$2: int;

var $$obj.i$1$1: int;

var $$obj.i$1$2: int;

var $$texCoded$0$1: int;

var $$texCoded$0$2: int;

var $$texCoded$1$1: int;

var $$texCoded$1$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$4$4$1: int;

var $$4$4$2: int;

var $$4$5$1: int;

var $$4$5$2: int;

var $$4$6$1: int;

var $$4$6$2: int;

var $$4$7$1: int;

var $$4$7$2: int;

var $$4$8$1: int;

var $$4$8$2: int;

var $$4$9$1: int;

var $$4$9$2: int;

var $$4$10$1: int;

var $$4$10$2: int;

var $$4$11$1: int;

var $$4$11$2: int;

var $$4$12$1: int;

var $$4$12$2: int;

var $$4$13$1: int;

var $$4$13$2: int;

var $$4$14$1: int;

var $$4$14$2: int;

var $$4$15$1: int;

var $$4$15$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$color$0$1: int;

var $$color$0$2: int;

var $$color$1$1: int;

var $$color$1$2: int;

var $$color$2$1: int;

var $$color$2$2: int;

var $$color$3$1: int;

var $$color$3$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$7$3$1: int;

var $$7$3$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$8$3$1: int;

var $$8$3$2: int;

const _WATCHED_VALUE_$$d_output: int;

procedure {:inline 1} _LOG_READ_$$d_output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_output;



implementation {:inline 1} _LOG_READ_$$d_output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_output == _value then true else _READ_HAS_OCCURRED_$$d_output);
    return;
}



procedure _CHECK_READ_$$d_output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_output);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_output: bool;

procedure {:inline 1} _LOG_WRITE_$$d_output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_output, _WRITE_READ_BENIGN_FLAG_$$d_output;



implementation {:inline 1} _LOG_WRITE_$$d_output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_output == _value then true else _WRITE_HAS_OCCURRED_$$d_output);
    _WRITE_READ_BENIGN_FLAG_$$d_output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_output);
    return;
}



procedure _CHECK_WRITE_$$d_output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_output != _value);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_output != _value);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_output;



implementation {:inline 1} _LOG_ATOMIC_$$d_output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_output);
    return;
}



procedure _CHECK_ATOMIC_$$d_output(_P: bool, _offset: int);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_output"} {:array "$$d_output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_output := (if _P && _WRITE_HAS_OCCURRED_$$d_output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_output);
    return;
}



const _WATCHED_VALUE_$$atlasTexture: int;

procedure {:inline 1} _LOG_READ_$$atlasTexture(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$atlasTexture;



implementation {:inline 1} _LOG_READ_$$atlasTexture(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$atlasTexture := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$atlasTexture == _value then true else _READ_HAS_OCCURRED_$$atlasTexture);
    return;
}



procedure _CHECK_READ_$$atlasTexture(_P: bool, _offset: int, _value: int);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$atlasTexture);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$atlasTexture: bool;

procedure {:inline 1} _LOG_WRITE_$$atlasTexture(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$atlasTexture, _WRITE_READ_BENIGN_FLAG_$$atlasTexture;



implementation {:inline 1} _LOG_WRITE_$$atlasTexture(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$atlasTexture := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$atlasTexture == _value then true else _WRITE_HAS_OCCURRED_$$atlasTexture);
    _WRITE_READ_BENIGN_FLAG_$$atlasTexture := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$atlasTexture == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$atlasTexture);
    return;
}



procedure _CHECK_WRITE_$$atlasTexture(_P: bool, _offset: int, _value: int);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$atlasTexture != _value);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$atlasTexture != _value);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$atlasTexture(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$atlasTexture;



implementation {:inline 1} _LOG_ATOMIC_$$atlasTexture(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$atlasTexture := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$atlasTexture);
    return;
}



procedure _CHECK_ATOMIC_$$atlasTexture(_P: bool, _offset: int);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset);
  requires {:source_name "atlasTexture"} {:array "$$atlasTexture"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$atlasTexture(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$atlasTexture;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$atlasTexture(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$atlasTexture := (if _P && _WRITE_HAS_OCCURRED_$$atlasTexture && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$atlasTexture);
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
