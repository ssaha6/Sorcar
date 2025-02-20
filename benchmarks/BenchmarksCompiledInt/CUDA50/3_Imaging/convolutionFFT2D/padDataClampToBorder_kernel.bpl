type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Dst"} {:global} $$d_Dst: [int]int;

axiom {:array_info "$$d_Dst"} {:global} {:elem_width 32} {:source_name "d_Dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Dst: bool;

axiom {:array_info "$$d_Src"} {:global} {:elem_width 32} {:source_name "d_Src"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Src: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$texFloat"} {:global} {:elem_width 8} {:source_name "texFloat"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texFloat: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texFloat: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texFloat: bool;

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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "padDataClampToBorder_kernel"} {:kernel} $_Z27padDataClampToBorder_kernelPfS_iiiiiiii($fftH: int, $fftW: int, $dataH: int, $dataW: int, $kernelH: int, $kernelW: int, $kernelY: int, $kernelX: int);
  requires {:sourceloc_num 0} {:thread 1} (if $fftH == 2048 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $fftW == 2048 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Dst && !_WRITE_HAS_OCCURRED_$$d_Dst && !_ATOMIC_HAS_OCCURRED_$$d_Dst;
  requires !_READ_HAS_OCCURRED_$$d_Src && !_WRITE_HAS_OCCURRED_$$d_Src && !_ATOMIC_HAS_OCCURRED_$$d_Src;
  requires !_READ_HAS_OCCURRED_$$texFloat && !_WRITE_HAS_OCCURRED_$$texFloat && !_ATOMIC_HAS_OCCURRED_$$texFloat;
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
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:source_name "padDataClampToBorder_kernel"} {:kernel} $_Z27padDataClampToBorder_kernelPfS_iiiiiiii($fftH: int, $fftW: int, $dataH: int, $dataW: int, $kernelH: int, $kernelW: int, $kernelY: int, $kernelX: int)
{
  var $dy.1$1: int;
  var $dy.1$2: int;
  var $dx.1$1: int;
  var $dx.1$2: int;
  var $dy.2$1: int;
  var $dy.2$2: int;
  var $dx.2$1: int;
  var $dx.2$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v22$1: int;
  var v22$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2);
    v1$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v2 := BV32_ADD($dataH, $kernelY);
    v3 := BV32_ADD($dataW, $kernelX);
    v4$1 := BV32_SLT(v0$1, $fftH);
    v4$2 := BV32_SLT(v0$2, $fftH);
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
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    v5$1 := (if p0$1 then BV32_SLT(v1$1, $fftW) else v5$1);
    v5$2 := (if p0$2 then BV32_SLT(v1$2, $fftW) else v5$2);
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    v6$1 := (if p1$1 then BV32_SLT(v0$1, $dataH) else v6$1);
    v6$2 := (if p1$2 then BV32_SLT(v0$2, $dataH) else v6$2);
    v7$1 := (if p1$1 then BV32_SLT(v1$1, $dataW) else v7$1);
    v7$2 := (if p1$2 then BV32_SLT(v1$2, $dataW) else v7$2);
    v8$1 := (if p1$1 then BV32_SGE(v0$1, $dataH) else v8$1);
    v8$2 := (if p1$2 then BV32_SGE(v0$2, $dataH) else v8$2);
    p6$1 := (if p1$1 && v8$1 then v8$1 else p6$1);
    p6$2 := (if p1$2 && v8$2 then v8$2 else p6$2);
    p9$1 := (if p1$1 && !v8$1 then !v8$1 else p9$1);
    p9$2 := (if p1$2 && !v8$2 then !v8$2 else p9$2);
    v9$1 := (if p6$1 then BV32_SLT(v0$1, v2) else v9$1);
    v9$2 := (if p6$2 then BV32_SLT(v0$2, v2) else v9$2);
    p7$1 := (if p6$1 && v9$1 then v9$1 else p7$1);
    p7$2 := (if p6$2 && v9$2 then v9$2 else p7$2);
    p8$1 := (if p6$1 && !v9$1 then !v9$1 else p8$1);
    p8$2 := (if p6$2 && !v9$2 then !v9$2 else p8$2);
    $dy.1$1 := (if p7$1 then BV32_SUB($dataH, 1) else $dy.1$1);
    $dy.1$2 := (if p7$2 then BV32_SUB($dataH, 1) else $dy.1$2);
    $dy.1$1 := (if p8$1 then v0$1 else $dy.1$1);
    $dy.1$2 := (if p8$2 then v0$2 else $dy.1$2);
    $dy.1$1 := (if p9$1 then v0$1 else $dy.1$1);
    $dy.1$2 := (if p9$2 then v0$2 else $dy.1$2);
    v10$1 := (if p1$1 then BV32_SGE(v1$1, $dataW) else v10$1);
    v10$2 := (if p1$2 then BV32_SGE(v1$2, $dataW) else v10$2);
    p10$1 := (if p1$1 && v10$1 then v10$1 else p10$1);
    p10$2 := (if p1$2 && v10$2 then v10$2 else p10$2);
    p13$1 := (if p1$1 && !v10$1 then !v10$1 else p13$1);
    p13$2 := (if p1$2 && !v10$2 then !v10$2 else p13$2);
    v11$1 := (if p10$1 then BV32_SLT(v1$1, v3) else v11$1);
    v11$2 := (if p10$2 then BV32_SLT(v1$2, v3) else v11$2);
    p11$1 := (if p10$1 && v11$1 then v11$1 else p11$1);
    p11$2 := (if p10$2 && v11$2 then v11$2 else p11$2);
    p12$1 := (if p10$1 && !v11$1 then !v11$1 else p12$1);
    p12$2 := (if p10$2 && !v11$2 then !v11$2 else p12$2);
    $dx.1$1 := (if p11$1 then BV32_SUB($dataW, 1) else $dx.1$1);
    $dx.1$2 := (if p11$2 then BV32_SUB($dataW, 1) else $dx.1$2);
    $dx.1$1 := (if p12$1 then v1$1 else $dx.1$1);
    $dx.1$2 := (if p12$2 then v1$2 else $dx.1$2);
    $dx.1$1 := (if p13$1 then v1$1 else $dx.1$1);
    $dx.1$2 := (if p13$2 then v1$2 else $dx.1$2);
    v12$1 := (if p1$1 then BV32_SGE(v0$1, v2) else v12$1);
    v12$2 := (if p1$2 then BV32_SGE(v0$2, v2) else v12$2);
    p14$1 := (if p1$1 && v12$1 then v12$1 else p14$1);
    p14$2 := (if p1$2 && v12$2 then v12$2 else p14$2);
    p15$1 := (if p1$1 && !v12$1 then !v12$1 else p15$1);
    p15$2 := (if p1$2 && !v12$2 then !v12$2 else p15$2);
    $dy.2$1 := (if p14$1 then 0 else $dy.2$1);
    $dy.2$2 := (if p14$2 then 0 else $dy.2$2);
    $dy.2$1 := (if p15$1 then $dy.1$1 else $dy.2$1);
    $dy.2$2 := (if p15$2 then $dy.1$2 else $dy.2$2);
    v13$1 := (if p1$1 then BV32_SGE(v1$1, v3) else v13$1);
    v13$2 := (if p1$2 then BV32_SGE(v1$2, v3) else v13$2);
    p16$1 := (if p1$1 && v13$1 then v13$1 else p16$1);
    p16$2 := (if p1$2 && v13$2 then v13$2 else p16$2);
    p17$1 := (if p1$1 && !v13$1 then !v13$1 else p17$1);
    p17$2 := (if p1$2 && !v13$2 then !v13$2 else p17$2);
    $dx.2$1 := (if p16$1 then 0 else $dx.2$1);
    $dx.2$2 := (if p16$2 then 0 else $dx.2$2);
    $dx.2$1 := (if p17$1 then $dx.1$1 else $dx.2$1);
    $dx.2$2 := (if p17$2 then $dx.1$2 else $dx.2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p1$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p1$2 then _HAVOC_int$2 else v14$2);
    $$0$0$1 := (if p1$1 then v14$1 else $$0$0$1);
    $$0$0$2 := (if p1$2 then v14$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p1$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p1$2 then _HAVOC_int$2 else v15$2);
    $$0$1$1 := (if p1$1 then v15$1 else $$0$1$1);
    $$0$1$2 := (if p1$2 then v15$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p1$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p1$2 then _HAVOC_int$2 else v16$2);
    $$0$2$1 := (if p1$1 then v16$1 else $$0$2$1);
    $$0$2$2 := (if p1$2 then v16$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p1$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p1$2 then _HAVOC_int$2 else v17$2);
    $$0$3$1 := (if p1$1 then v17$1 else $$0$3$1);
    $$0$3$2 := (if p1$2 then v17$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p1$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p1$2 then _HAVOC_int$2 else v18$2);
    $$0$4$1 := (if p1$1 then v18$1 else $$0$4$1);
    $$0$4$2 := (if p1$2 then v18$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p1$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p1$2 then _HAVOC_int$2 else v19$2);
    $$0$5$1 := (if p1$1 then v19$1 else $$0$5$1);
    $$0$5$2 := (if p1$2 then v19$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p1$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p1$2 then _HAVOC_int$2 else v20$2);
    $$0$6$1 := (if p1$1 then v20$1 else $$0$6$1);
    $$0$6$2 := (if p1$2 then v20$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p1$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p1$2 then _HAVOC_int$2 else v21$2);
    $$0$7$1 := (if p1$1 then v21$1 else $$0$7$1);
    $$0$7$2 := (if p1$2 then v21$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v22$1 := (if p1$1 then _HAVOC_int$1 else v22$1);
    v22$2 := (if p1$2 then _HAVOC_int$2 else v22$2);
    $$0$8$1 := (if p1$1 then v22$1 else $$0$8$1);
    $$0$8$2 := (if p1$2 then v22$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p1$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p1$2 then _HAVOC_int$2 else v23$2);
    $$0$9$1 := (if p1$1 then v23$1 else $$0$9$1);
    $$0$9$2 := (if p1$2 then v23$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p1$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p1$2 then _HAVOC_int$2 else v24$2);
    $$0$10$1 := (if p1$1 then v24$1 else $$0$10$1);
    $$0$10$2 := (if p1$2 then v24$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p1$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p1$2 then _HAVOC_int$2 else v25$2);
    $$0$11$1 := (if p1$1 then v25$1 else $$0$11$1);
    $$0$11$2 := (if p1$2 then v25$2 else $$0$11$2);
    v26$1 := (if p1$1 then $$0$0$1 else v26$1);
    v26$2 := (if p1$2 then $$0$0$2 else v26$2);
    v27$1 := (if p1$1 then $$0$1$1 else v27$1);
    v27$2 := (if p1$2 then $$0$1$2 else v27$2);
    v28$1 := (if p1$1 then $$0$2$1 else v28$1);
    v28$2 := (if p1$2 then $$0$2$2 else v28$2);
    v29$1 := (if p1$1 then $$0$3$1 else v29$1);
    v29$2 := (if p1$2 then $$0$3$2 else v29$2);
    v30$1 := (if p1$1 then $$0$4$1 else v30$1);
    v30$2 := (if p1$2 then $$0$4$2 else v30$2);
    v31$1 := (if p1$1 then $$0$5$1 else v31$1);
    v31$2 := (if p1$2 then $$0$5$2 else v31$2);
    v32$1 := (if p1$1 then $$0$6$1 else v32$1);
    v32$2 := (if p1$2 then $$0$6$2 else v32$2);
    v33$1 := (if p1$1 then $$0$7$1 else v33$1);
    v33$2 := (if p1$2 then $$0$7$2 else v33$2);
    v34$1 := (if p1$1 then $$0$8$1 else v34$1);
    v34$2 := (if p1$2 then $$0$8$2 else v34$2);
    v35$1 := (if p1$1 then $$0$9$1 else v35$1);
    v35$2 := (if p1$2 then $$0$9$2 else v35$2);
    v36$1 := (if p1$1 then $$0$10$1 else v36$1);
    v36$2 := (if p1$2 then $$0$10$2 else v36$2);
    v37$1 := (if p1$1 then $$0$11$1 else v37$1);
    v37$2 := (if p1$2 then $$0$11$2 else v37$2);
    call {:sourceloc_num 55} v38$1, v38$2 := $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(p1$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$1, v28$1), v27$1), v26$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$1, v32$1), v31$1), v30$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v37$1, v36$1), v35$1), v34$1), BV32_ADD(BV32_MUL($dy.2$1, $dataW), $dx.2$1), p1$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$2, v28$2), v27$2), v26$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$2, v32$2), v31$2), v30$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v37$2, v36$2), v35$2), v34$2), BV32_ADD(BV32_MUL($dy.2$2, $dataW), $dx.2$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} true;
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$d_Dst(p1$1, BV32_ADD(BV32_MUL(v0$1, $fftW), v1$1), v38$1, $$d_Dst[BV32_ADD(BV32_MUL(v0$1, $fftW), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p1$2, BV32_ADD(BV32_MUL(v0$2, $fftW), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$d_Dst(p1$2, BV32_ADD(BV32_MUL(v0$2, $fftW), v1$2), v38$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$1, $fftW), v1$1)] := (if p1$1 then v38$1 else $$d_Dst[BV32_ADD(BV32_MUL(v0$1, $fftW), v1$1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(v0$2, $fftW), v1$2)] := (if p1$2 then v38$2 else $$d_Dst[BV32_ADD(BV32_MUL(v0$2, $fftW), v1$2)]);
    return;
}



procedure {:source_name "_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchIfET_7textureIS0_Li1EL19cudaTextureReadMode0EEi(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 256 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$d_Dst: int;

procedure {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _READ_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Dst);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _WRITE_HAS_OCCURRED_$$d_Dst);
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



procedure _CHECK_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



const _WATCHED_VALUE_$$d_Src: int;

procedure {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _READ_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Src);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Src: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Src, _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _WRITE_HAS_OCCURRED_$$d_Src);
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



procedure _CHECK_WRITE_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_ATOMIC_$$d_Src(_P: bool, _offset: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



const _WATCHED_VALUE_$$texFloat: int;

procedure {:inline 1} _LOG_READ_$$texFloat(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texFloat;



implementation {:inline 1} _LOG_READ_$$texFloat(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texFloat := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFloat == _value then true else _READ_HAS_OCCURRED_$$texFloat);
    return;
}



procedure _CHECK_READ_$$texFloat(_P: bool, _offset: int, _value: int);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texFloat);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texFloat: bool;

procedure {:inline 1} _LOG_WRITE_$$texFloat(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texFloat, _WRITE_READ_BENIGN_FLAG_$$texFloat;



implementation {:inline 1} _LOG_WRITE_$$texFloat(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texFloat := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFloat == _value then true else _WRITE_HAS_OCCURRED_$$texFloat);
    _WRITE_READ_BENIGN_FLAG_$$texFloat := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFloat == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texFloat);
    return;
}



procedure _CHECK_WRITE_$$texFloat(_P: bool, _offset: int, _value: int);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFloat != _value);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texFloat != _value);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texFloat(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texFloat;



implementation {:inline 1} _LOG_ATOMIC_$$texFloat(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texFloat := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texFloat);
    return;
}



procedure _CHECK_ATOMIC_$$texFloat(_P: bool, _offset: int);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset);
  requires {:source_name "texFloat"} {:array "$$texFloat"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texFloat(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texFloat;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texFloat(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texFloat := (if _P && _WRITE_HAS_OCCURRED_$$texFloat && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texFloat);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}
