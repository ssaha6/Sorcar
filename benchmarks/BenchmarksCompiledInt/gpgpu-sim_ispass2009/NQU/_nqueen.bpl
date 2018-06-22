type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$total_masks"} {:global} {:elem_width 32} {:source_name "total_masks"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$total_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$total_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$total_masks: bool;

axiom {:array_info "$$total_l_masks"} {:global} {:elem_width 32} {:source_name "total_l_masks"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$total_l_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$total_l_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$total_l_masks: bool;

axiom {:array_info "$$total_r_masks"} {:global} {:elem_width 32} {:source_name "total_r_masks"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$total_r_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$total_r_masks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$total_r_masks: bool;

var {:source_name "results"} {:global} $$results: [int]int;

axiom {:array_info "$$results"} {:global} {:elem_width 32} {:source_name "results"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$results: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$results: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$results: bool;

var {:source_name "mask"} {:group_shared} $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: [bv1][int]int;

axiom {:array_info "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:group_shared} {:elem_width 32} {:source_name "mask"} {:source_elem_width 32} {:source_dimensions "96,10"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: bool;

var {:source_name "l_mask"} {:group_shared} $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: [bv1][int]int;

axiom {:array_info "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:group_shared} {:elem_width 32} {:source_name "l_mask"} {:source_elem_width 32} {:source_dimensions "96,10"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: bool;

var {:source_name "r_mask"} {:group_shared} $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: [bv1][int]int;

axiom {:array_info "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:group_shared} {:elem_width 32} {:source_name "r_mask"} {:source_elem_width 32} {:source_dimensions "96,10"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: bool;

var {:source_name "m"} {:group_shared} $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: [bv1][int]int;

axiom {:array_info "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:group_shared} {:elem_width 32} {:source_name "m"} {:source_elem_width 32} {:source_dimensions "96,10"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,10"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: bool;

var {:source_name "sum"} {:group_shared} $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: [bv1][int]int;

axiom {:array_info "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:group_shared} {:elem_width 32} {:source_name "sum"} {:source_elem_width 32} {:source_dimensions "96"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: bool;

const _WATCHED_OFFSET: int;

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

function BV32_LSHR(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "solve_nqueen_cuda_kernel"} {:kernel} $_Z24solve_nqueen_cuda_kerneliiPjS_S_S_i($n: int, $mark: int, $total_conditions: int);
  requires !_READ_HAS_OCCURRED_$$total_masks && !_WRITE_HAS_OCCURRED_$$total_masks && !_ATOMIC_HAS_OCCURRED_$$total_masks;
  requires !_READ_HAS_OCCURRED_$$total_l_masks && !_WRITE_HAS_OCCURRED_$$total_l_masks && !_ATOMIC_HAS_OCCURRED_$$total_l_masks;
  requires !_READ_HAS_OCCURRED_$$total_r_masks && !_WRITE_HAS_OCCURRED_$$total_r_masks && !_ATOMIC_HAS_OCCURRED_$$total_r_masks;
  requires !_READ_HAS_OCCURRED_$$results && !_WRITE_HAS_OCCURRED_$$results && !_ATOMIC_HAS_OCCURRED_$$results;
  requires !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
  requires !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
  requires !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
  requires !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
  requires !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
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
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$results, _WRITE_READ_BENIGN_FLAG_$$results, _WRITE_READ_BENIGN_FLAG_$$results;



implementation {:source_name "solve_nqueen_cuda_kernel"} {:kernel} $_Z24solve_nqueen_cuda_kerneliiPjS_S_S_i($n: int, $mark: int, $total_conditions: int)
{
  var $total.0$1: int;
  var $total.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $total.3$1: int;
  var $total.3$2: int;
  var $i.3$1: int;
  var $i.3$2: int;
  var $total.1$1: int;
  var $total.1$2: int;
  var $i.1$1: int;
  var $i.1$2: int;
  var $total.2$1: int;
  var $total.2$2: int;
  var $i.2$1: int;
  var $i.2$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v1: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v10$1: int;
  var v10$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
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
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: bool;
  var v34$2: bool;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: bool;
  var v40$2: bool;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: bool;
  var v43$2: bool;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: bool;
  var v46$2: bool;
  var v47$1: int;
  var v47$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2: bool;
  var _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2: bool;
  var _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2: bool;
  var _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV32_SUB(BV32_SHL(1, $n), 1);
    v2$1 := BV32_SLT(v0$1, $total_conditions);
    v2$2 := BV32_SLT(v0$2, $total_conditions);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p9$1 := (if !v2$1 then !v2$1 else p9$1);
    p9$2 := (if !v2$2 then !v2$2 else p9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p0$1, BV32_MUL(local_id_x$1, 10), v3$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p0$2, BV32_MUL(local_id_x$2, 10));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p0$2, BV32_MUL(local_id_x$2, 10), v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_MUL(local_id_x$1, 10)] := (if p0$1 then v3$1 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] := (if p0$2 then v3$2 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p0$1, BV32_MUL(local_id_x$1, 10), v4$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p0$2, BV32_MUL(local_id_x$2, 10));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p0$2, BV32_MUL(local_id_x$2, 10), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_MUL(local_id_x$1, 10)] := (if p0$1 then v4$1 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] := (if p0$2 then v4$2 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p0$1, BV32_MUL(local_id_x$1, 10), v5$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p0$2, BV32_MUL(local_id_x$2, 10));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p0$2, BV32_MUL(local_id_x$2, 10), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_MUL(local_id_x$1, 10)] := (if p0$1 then v5$1 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] := (if p0$2 then v5$2 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p0$1, BV32_MUL(local_id_x$1, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p0$2, BV32_MUL(local_id_x$2, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} true;
    v6$1 := (if p0$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_MUL(local_id_x$1, 10)] else v6$1);
    v6$2 := (if p0$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] else v6$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p0$1, BV32_MUL(local_id_x$1, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p0$2, BV32_MUL(local_id_x$2, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} true;
    v7$1 := (if p0$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_MUL(local_id_x$1, 10)] else v7$1);
    v7$2 := (if p0$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] else v7$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p0$1, BV32_MUL(local_id_x$1, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_MUL(local_id_x$1, 10)]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p0$2, BV32_MUL(local_id_x$2, 10), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} true;
    v8$1 := (if p0$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_MUL(local_id_x$1, 10)] else v8$1);
    v8$2 := (if p0$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] else v8$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p0$1, BV32_MUL(local_id_x$1, 10), BV32_OR(BV32_OR(v6$1, v7$1), v8$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_MUL(local_id_x$1, 10)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p0$2, BV32_MUL(local_id_x$2, 10));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p0$2, BV32_MUL(local_id_x$2, 10), BV32_OR(BV32_OR(v6$2, v7$2), v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_MUL(local_id_x$1, 10)] := (if p0$1 then BV32_OR(BV32_OR(v6$1, v7$1), v8$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_MUL(local_id_x$1, 10)]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)] := (if p0$2 then BV32_OR(BV32_OR(v6$2, v7$2), v8$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(local_id_x$2, 10)]);
    $total.0$1, $i.0$1 := (if p0$1 then 0 else $total.0$1), (if p0$1 then 0 else $i.0$1);
    $total.0$2, $i.0$2 := (if p0$2 then 0 else $total.0$2), (if p0$2 then 0 else $i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2 := _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2 := _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2 := _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2 := _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2 := _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2 := _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2 := _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2 := _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b21 ==> !p0$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2 == _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assert {:tag "disabledMaintainsInstrumentation"} _b20 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m$ghost$$2 == _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assert {:tag "disabledMaintainsInstrumentation"} _b19 ==> !p0$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2 == _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assert {:tag "disabledMaintainsInstrumentation"} _b18 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask$ghost$$2 == _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assert {:tag "disabledMaintainsInstrumentation"} _b17 ==> !p0$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2 == _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assert {:tag "disabledMaintainsInstrumentation"} _b16 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask$ghost$$2 == _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assert {:tag "disabledMaintainsInstrumentation"} _b15 ==> !p0$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2 == _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assert {:tag "disabledMaintainsInstrumentation"} _b14 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask$ghost$$2 == _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b12 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b11 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b10 ==> _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b9 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b6 ==> _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions) && BV32_SGE($i.0$1, 0) ==> p1$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $total_conditions) && BV32_SGE($i.0$2, 0) ==> p1$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p1$1 ==> _b4 ==> p1$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $total_conditions);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p1$2 ==> _b4 ==> p1$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $total_conditions);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b3 ==> BV32_UGE($i.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b3 ==> BV32_UGE($i.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b2 ==> BV32_ULE($i.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b2 ==> BV32_ULE($i.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b1 ==> BV32_SGE($i.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b1 ==> BV32_SGE($i.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b0 ==> BV32_SLE($i.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b0 ==> BV32_SLE($i.0$2, 0);
    assert {:block_sourceloc} {:sourceloc_num 12} p1$1 ==> true;
    v9$1 := (if p1$1 then BV32_SGE($i.0$1, 0) else v9$1);
    v9$2 := (if p1$2 then BV32_SGE($i.0$2, 0) else v9$2);
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
    p2$1 := (if p1$1 && v9$1 then v9$1 else p2$1);
    p2$2 := (if p1$2 && v9$2 then v9$2 else p2$2);
    p1$1 := (if p1$1 && !v9$1 then v9$1 else p1$1);
    p1$2 := (if p1$2 && !v9$2 then v9$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p2$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p2$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    v10$1 := (if p2$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v10$1);
    v10$2 := (if p2$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v10$2);
    v11$1 := (if p2$1 then BV32_AND(v10$1, v1) == v1 else v11$1);
    v11$2 := (if p2$2 then BV32_AND(v10$2, v1) == v1 else v11$2);
    p3$1 := (if p2$1 && v11$1 then v11$1 else p3$1);
    p3$2 := (if p2$2 && v11$2 then v11$2 else p3$2);
    p4$1 := (if p2$1 && !v11$1 then !v11$1 else p4$1);
    p4$2 := (if p2$2 && !v11$2 then !v11$2 else p4$2);
    $total.3$1, $i.3$1 := (if p3$1 then $total.0$1 else $total.3$1), (if p3$1 then BV32_ADD($i.0$1, -1) else $i.3$1);
    $total.3$2, $i.3$2 := (if p3$2 then $total.0$2 else $total.3$2), (if p3$2 then BV32_ADD($i.0$2, -1) else $i.3$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    v12$1 := (if p4$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v12$1);
    v12$2 := (if p4$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v12$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    v13$1 := (if p4$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v13$1);
    v13$2 := (if p4$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v13$2);
    v14$1 := (if p4$1 then BV32_AND(BV32_ADD(v12$1, 1), BV32_XOR(v13$1, -1)) else v14$1);
    v14$2 := (if p4$2 then BV32_AND(BV32_ADD(v12$2, 1), BV32_XOR(v13$2, -1)) else v14$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    v15$1 := (if p4$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v15$1);
    v15$2 := (if p4$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v15$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), BV32_OR(v15$1, v14$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p4$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), BV32_OR(v15$2, v14$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] := (if p4$1 then BV32_OR(v15$1, v14$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] := (if p4$2 then BV32_OR(v15$2, v14$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    v16$1 := (if p4$1 then BV32_AND(v14$1, v1) != 0 else v16$1);
    v16$2 := (if p4$2 then BV32_AND(v14$2, v1) != 0 else v16$2);
    p6$1 := (if p4$1 && v16$1 then v16$1 else p6$1);
    p6$2 := (if p4$2 && v16$2 then v16$2 else p6$2);
    p5$1 := (if p4$1 && !v16$1 then !v16$1 else p5$1);
    p5$2 := (if p4$2 && !v16$2 then !v16$2 else p5$2);
    $total.2$1, $i.2$1 := (if p5$1 then $total.0$1 else $total.2$1), (if p5$1 then BV32_ADD($i.0$1, -1) else $i.2$1);
    $total.2$2, $i.2$2 := (if p5$2 then $total.0$2 else $total.2$2), (if p5$2 then BV32_ADD($i.0$2, -1) else $i.2$2);
    v17$1 := (if p6$1 then BV32_ADD($i.0$1, 1) == $mark else v17$1);
    v17$2 := (if p6$2 then BV32_ADD($i.0$2, 1) == $mark else v17$2);
    p8$1 := (if p6$1 && v17$1 then v17$1 else p8$1);
    p8$2 := (if p6$2 && v17$2 then v17$2 else p8$2);
    p7$1 := (if p6$1 && !v17$1 then !v17$1 else p7$1);
    p7$2 := (if p6$2 && !v17$2 then !v17$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} true;
    v18$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v18$1);
    v18$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v18$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), BV32_OR(v18$1, v14$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), BV32_OR(v18$2, v14$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] := (if p7$1 then BV32_OR(v18$1, v14$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] := (if p7$2 then BV32_OR(v18$2, v14$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} true;
    v19$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v19$1);
    v19$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v19$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), BV32_SHL(BV32_OR(v19$1, v14$1), 1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), BV32_SHL(BV32_OR(v19$2, v14$2), 1));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] := (if p7$1 then BV32_SHL(BV32_OR(v19$1, v14$1), 1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] := (if p7$2 then BV32_SHL(BV32_OR(v19$2, v14$2), 1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} true;
    v20$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), $i.0$1)] else v20$1);
    v20$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), $i.0$2)] else v20$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), BV32_LSHR(BV32_OR(v20$1, v14$1), 1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)));
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), BV32_LSHR(BV32_OR(v20$2, v14$2), 1));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] := (if p7$1 then BV32_LSHR(BV32_OR(v20$1, v14$1), 1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] := (if p7$2 then BV32_LSHR(BV32_OR(v20$2, v14$2), 1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} true;
    v21$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] else v21$1);
    v21$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] else v21$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} true;
    v22$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] else v22$1);
    v22$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] else v22$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} true;
    v23$1 := (if p7$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] else v23$1);
    v23$2 := (if p7$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] else v23$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p7$1, BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1)), BV32_OR(BV32_OR(v21$1, v22$1), v23$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)));
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(p7$2, BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1)), BV32_OR(BV32_OR(v21$2, v22$2), v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))] := (if p7$1 then BV32_OR(BV32_OR(v21$1, v22$1), v23$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[1bv1][BV32_ADD(BV32_MUL(local_id_x$1, 10), BV32_ADD($i.0$1, 1))]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))] := (if p7$2 then BV32_OR(BV32_OR(v21$2, v22$2), v23$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_x$2, 10), BV32_ADD($i.0$2, 1))]);
    $total.1$1, $i.1$1 := (if p7$1 then $total.0$1 else $total.1$1), (if p7$1 then BV32_ADD($i.0$1, 1) else $i.1$1);
    $total.1$2, $i.1$2 := (if p7$2 then $total.0$2 else $total.1$2), (if p7$2 then BV32_ADD($i.0$2, 1) else $i.1$2);
    $total.1$1, $i.1$1 := (if p8$1 then BV32_ADD($total.0$1, 1) else $total.1$1), (if p8$1 then BV32_ADD($i.0$1, -1) else $i.1$1);
    $total.1$2, $i.1$2 := (if p8$2 then BV32_ADD($total.0$2, 1) else $total.1$2), (if p8$2 then BV32_ADD($i.0$2, -1) else $i.1$2);
    $total.2$1, $i.2$1 := (if p6$1 then $total.1$1 else $total.2$1), (if p6$1 then $i.1$1 else $i.2$1);
    $total.2$2, $i.2$2 := (if p6$2 then $total.1$2 else $total.2$2), (if p6$2 then $i.1$2 else $i.2$2);
    $total.3$1, $i.3$1 := (if p4$1 then $total.2$1 else $total.3$1), (if p4$1 then $i.2$1 else $i.3$1);
    $total.3$2, $i.3$2 := (if p4$2 then $total.2$2 else $total.3$2), (if p4$2 then $i.2$2 else $i.3$2);
    $total.0$1, $i.0$1 := (if p2$1 then $total.3$1 else $total.0$1), (if p2$1 then $i.3$1 else $i.0$1);
    $total.0$2, $i.0$2 := (if p2$2 then $total.3$2 else $total.0$2), (if p2$2 then $i.3$2 else $i.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p0$1, local_id_x$1, $total.0$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p0$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p0$2, local_id_x$2, $total.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p0$1 then $total.0$1 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p0$2 then $total.0$2 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p9$1, local_id_x$1, 0, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p9$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p9$2, local_id_x$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p9$1 then 0 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p9$2 then 0 else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 42} $bugle_barrier_duplicated_0(-1, -1);
    v24$1 := BV32_SLT(local_id_x$1, 64);
    v24$2 := BV32_SLT(local_id_x$2, 64);
    p10$1 := (if v24$1 then v24$1 else p10$1);
    p10$2 := (if v24$2 then v24$2 else p10$2);
    v25$1 := (if p10$1 then BV32_SLT(BV32_ADD(local_id_x$1, 64), 96) else v25$1);
    v25$2 := (if p10$2 then BV32_SLT(BV32_ADD(local_id_x$2, 64), 96) else v25$2);
    p11$1 := (if p10$1 && v25$1 then v25$1 else p11$1);
    p11$2 := (if p10$2 && v25$2 then v25$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$1, BV32_ADD(local_id_x$1, 64), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 64)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$2, BV32_ADD(local_id_x$2, 64), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v26$1 := (if p11$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 64)] else v26$1);
    v26$2 := (if p11$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)] else v26$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v27$1 := (if p11$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v27$1);
    v27$2 := (if p11$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v27$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$1, local_id_x$1, BV32_ADD(v27$1, v26$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p11$2, local_id_x$2, BV32_ADD(v27$2, v26$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p11$1 then BV32_ADD(v27$1, v26$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p11$2 then BV32_ADD(v27$2, v26$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_2;

  __partitioned_block_$2.tail_2:
    call {:sourceloc_num 49} $bugle_barrier_duplicated_1(-1, -1);
    v28$1 := BV32_SLT(local_id_x$1, 32);
    v28$2 := BV32_SLT(local_id_x$2, 32);
    p14$1 := (if v28$1 then v28$1 else p14$1);
    p14$2 := (if v28$2 then v28$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$1, BV32_ADD(local_id_x$1, 32), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 32)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$2, BV32_ADD(local_id_x$2, 32), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v29$1 := (if p14$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 32)] else v29$1);
    v29$2 := (if p14$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)] else v29$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v30$1 := (if p14$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v30$1);
    v30$2 := (if p14$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v30$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$1, local_id_x$1, BV32_ADD(v30$1, v29$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p14$2, local_id_x$2, BV32_ADD(v30$2, v29$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p14$1 then BV32_ADD(v30$1, v29$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p14$2 then BV32_ADD(v30$2, v29$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_3;

  __partitioned_block_$2.tail_3:
    call {:sourceloc_num 55} $bugle_barrier_duplicated_2(-1, -1);
    v31$1 := BV32_SLT(local_id_x$1, 16);
    v31$2 := BV32_SLT(local_id_x$2, 16);
    p16$1 := (if v31$1 then v31$1 else p16$1);
    p16$2 := (if v31$2 then v31$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$1, BV32_ADD(local_id_x$1, 16), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 16)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$2, BV32_ADD(local_id_x$2, 16), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v32$1 := (if p16$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 16)] else v32$1);
    v32$2 := (if p16$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)] else v32$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v33$1 := (if p16$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v33$1);
    v33$2 := (if p16$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v33$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$1, local_id_x$1, BV32_ADD(v33$1, v32$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p16$2, local_id_x$2, BV32_ADD(v33$2, v32$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p16$1 then BV32_ADD(v33$1, v32$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p16$2 then BV32_ADD(v33$2, v32$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_4;

  __partitioned_block_$2.tail_4:
    call {:sourceloc_num 61} $bugle_barrier_duplicated_3(-1, -1);
    v34$1 := BV32_SLT(local_id_x$1, 8);
    v34$2 := BV32_SLT(local_id_x$2, 8);
    p18$1 := (if v34$1 then v34$1 else p18$1);
    p18$2 := (if v34$2 then v34$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$1, BV32_ADD(local_id_x$1, 8), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 8)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$2, BV32_ADD(local_id_x$2, 8), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v35$1 := (if p18$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 8)] else v35$1);
    v35$2 := (if p18$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)] else v35$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v36$1 := (if p18$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v36$1);
    v36$2 := (if p18$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v36$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$1, local_id_x$1, BV32_ADD(v36$1, v35$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p18$2, local_id_x$2, BV32_ADD(v36$2, v35$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p18$1 then BV32_ADD(v36$1, v35$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p18$2 then BV32_ADD(v36$2, v35$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_5;

  __partitioned_block_$2.tail_5:
    call {:sourceloc_num 67} $bugle_barrier_duplicated_4(-1, -1);
    v37$1 := BV32_SLT(local_id_x$1, 4);
    v37$2 := BV32_SLT(local_id_x$2, 4);
    p20$1 := (if v37$1 then v37$1 else p20$1);
    p20$2 := (if v37$2 then v37$2 else p20$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$1, BV32_ADD(local_id_x$1, 4), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$2, BV32_ADD(local_id_x$2, 4), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v38$1 := (if p20$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 4)] else v38$1);
    v38$2 := (if p20$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)] else v38$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v39$1 := (if p20$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v39$1);
    v39$2 := (if p20$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v39$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$1, local_id_x$1, BV32_ADD(v39$1, v38$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p20$2, local_id_x$2, BV32_ADD(v39$2, v38$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p20$1 then BV32_ADD(v39$1, v38$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p20$2 then BV32_ADD(v39$2, v38$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_6;

  __partitioned_block_$2.tail_6:
    call {:sourceloc_num 73} $bugle_barrier_duplicated_5(-1, -1);
    v40$1 := BV32_SLT(local_id_x$1, 2);
    v40$2 := BV32_SLT(local_id_x$2, 2);
    p22$1 := (if v40$1 then v40$1 else p22$1);
    p22$2 := (if v40$2 then v40$2 else p22$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$1, BV32_ADD(local_id_x$1, 2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$2, BV32_ADD(local_id_x$2, 2), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v41$1 := (if p22$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 2)] else v41$1);
    v41$2 := (if p22$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)] else v41$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v42$1 := (if p22$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v42$1);
    v42$2 := (if p22$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v42$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$1, local_id_x$1, BV32_ADD(v42$1, v41$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p22$2, local_id_x$2, BV32_ADD(v42$2, v41$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p22$1 then BV32_ADD(v42$1, v41$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p22$2 then BV32_ADD(v42$2, v41$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_7;

  __partitioned_block_$2.tail_7:
    call {:sourceloc_num 79} $bugle_barrier_duplicated_6(-1, -1);
    v43$1 := BV32_SLT(local_id_x$1, 1);
    v43$2 := BV32_SLT(local_id_x$2, 1);
    p24$1 := (if v43$1 then v43$1 else p24$1);
    p24$2 := (if v43$2 then v43$2 else p24$2);
    call {:sourceloc} {:sourceloc_num 81} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$1, BV32_ADD(local_id_x$1, 1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 81} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$2, BV32_ADD(local_id_x$2, 1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v44$1 := (if p24$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][BV32_ADD(local_id_x$1, 1)] else v44$1);
    v44$2 := (if p24$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)] else v44$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$1, local_id_x$1, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 82} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$2, local_id_x$2, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v45$1 := (if p24$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] else v45$1);
    v45$2 := (if p24$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v45$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$1, local_id_x$1, BV32_ADD(v45$1, v44$1), $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p24$2, local_id_x$2, BV32_ADD(v45$2, v44$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1] := (if p24$1 then BV32_ADD(v45$1, v44$1) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][local_id_x$1]);
    $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p24$2 then BV32_ADD(v45$2, v44$2) else $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$2.tail_8;

  __partitioned_block_$2.tail_8:
    call {:sourceloc_num 85} $bugle_barrier_duplicated_7(-1, -1);
    v46$1 := local_id_x$1 == 0;
    v46$2 := local_id_x$2 == 0;
    p26$1 := (if v46$1 then v46$1 else p26$1);
    p26$2 := (if v46$2 then v46$2 else p26$2);
    call {:sourceloc} {:sourceloc_num 87} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p26$1, 0, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 87} _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(p26$2, 0, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} true;
    v47$1 := (if p26$1 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[1bv1][0] else v47$1);
    v47$2 := (if p26$2 then $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v47$2);
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$results(p26$1, group_id_x$1, v47$1, $$results[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$results(p26$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$results(p26$2, group_id_x$2, v47$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$results"} true;
    $$results[group_id_x$1] := (if p26$1 then v47$1 else $$results[group_id_x$1]);
    $$results[group_id_x$2] := (if p26$2 then v47$2 else $$results[group_id_x$2]);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 96 then 1 else 0) != 0;

axiom (if num_groups_x == 96 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: int, $1: int);
  modifies $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, $$results, _TRACKING;



function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const _WATCHED_VALUE_$$total_masks: int;

procedure {:inline 1} _LOG_READ_$$total_masks(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$total_masks;



implementation {:inline 1} _LOG_READ_$$total_masks(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$total_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_masks == _value then true else _READ_HAS_OCCURRED_$$total_masks);
    return;
}



procedure _CHECK_READ_$$total_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$total_masks);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$total_masks: bool;

procedure {:inline 1} _LOG_WRITE_$$total_masks(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$total_masks, _WRITE_READ_BENIGN_FLAG_$$total_masks;



implementation {:inline 1} _LOG_WRITE_$$total_masks(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$total_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_masks == _value then true else _WRITE_HAS_OCCURRED_$$total_masks);
    _WRITE_READ_BENIGN_FLAG_$$total_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_masks == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$total_masks);
    return;
}



procedure _CHECK_WRITE_$$total_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_masks != _value);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_masks != _value);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$total_masks(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$total_masks;



implementation {:inline 1} _LOG_ATOMIC_$$total_masks(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$total_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$total_masks);
    return;
}



procedure _CHECK_ATOMIC_$$total_masks(_P: bool, _offset: int);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset);
  requires {:source_name "total_masks"} {:array "$$total_masks"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_masks(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$total_masks;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_masks(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$total_masks := (if _P && _WRITE_HAS_OCCURRED_$$total_masks && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$total_masks);
    return;
}



const _WATCHED_VALUE_$$total_l_masks: int;

procedure {:inline 1} _LOG_READ_$$total_l_masks(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$total_l_masks;



implementation {:inline 1} _LOG_READ_$$total_l_masks(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$total_l_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_l_masks == _value then true else _READ_HAS_OCCURRED_$$total_l_masks);
    return;
}



procedure _CHECK_READ_$$total_l_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$total_l_masks);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$total_l_masks: bool;

procedure {:inline 1} _LOG_WRITE_$$total_l_masks(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$total_l_masks, _WRITE_READ_BENIGN_FLAG_$$total_l_masks;



implementation {:inline 1} _LOG_WRITE_$$total_l_masks(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$total_l_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_l_masks == _value then true else _WRITE_HAS_OCCURRED_$$total_l_masks);
    _WRITE_READ_BENIGN_FLAG_$$total_l_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_l_masks == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$total_l_masks);
    return;
}



procedure _CHECK_WRITE_$$total_l_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_l_masks != _value);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_l_masks != _value);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$total_l_masks(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$total_l_masks;



implementation {:inline 1} _LOG_ATOMIC_$$total_l_masks(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$total_l_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$total_l_masks);
    return;
}



procedure _CHECK_ATOMIC_$$total_l_masks(_P: bool, _offset: int);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset);
  requires {:source_name "total_l_masks"} {:array "$$total_l_masks"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_l_masks(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$total_l_masks;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_l_masks(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$total_l_masks := (if _P && _WRITE_HAS_OCCURRED_$$total_l_masks && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$total_l_masks);
    return;
}



const _WATCHED_VALUE_$$total_r_masks: int;

procedure {:inline 1} _LOG_READ_$$total_r_masks(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$total_r_masks;



implementation {:inline 1} _LOG_READ_$$total_r_masks(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$total_r_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_r_masks == _value then true else _READ_HAS_OCCURRED_$$total_r_masks);
    return;
}



procedure _CHECK_READ_$$total_r_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$total_r_masks);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$total_r_masks: bool;

procedure {:inline 1} _LOG_WRITE_$$total_r_masks(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$total_r_masks, _WRITE_READ_BENIGN_FLAG_$$total_r_masks;



implementation {:inline 1} _LOG_WRITE_$$total_r_masks(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$total_r_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_r_masks == _value then true else _WRITE_HAS_OCCURRED_$$total_r_masks);
    _WRITE_READ_BENIGN_FLAG_$$total_r_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_r_masks == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$total_r_masks);
    return;
}



procedure _CHECK_WRITE_$$total_r_masks(_P: bool, _offset: int, _value: int);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_r_masks != _value);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$total_r_masks != _value);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$total_r_masks(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$total_r_masks;



implementation {:inline 1} _LOG_ATOMIC_$$total_r_masks(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$total_r_masks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$total_r_masks);
    return;
}



procedure _CHECK_ATOMIC_$$total_r_masks(_P: bool, _offset: int);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset);
  requires {:source_name "total_r_masks"} {:array "$$total_r_masks"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_r_masks(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$total_r_masks;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$total_r_masks(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$total_r_masks := (if _P && _WRITE_HAS_OCCURRED_$$total_r_masks && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$total_r_masks);
    return;
}



const _WATCHED_VALUE_$$results: int;

procedure {:inline 1} _LOG_READ_$$results(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$results;



implementation {:inline 1} _LOG_READ_$$results(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$results := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$results == _value then true else _READ_HAS_OCCURRED_$$results);
    return;
}



procedure _CHECK_READ_$$results(_P: bool, _offset: int, _value: int);
  requires {:source_name "results"} {:array "$$results"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$results);
  requires {:source_name "results"} {:array "$$results"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$results: bool;

procedure {:inline 1} _LOG_WRITE_$$results(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$results, _WRITE_READ_BENIGN_FLAG_$$results;



implementation {:inline 1} _LOG_WRITE_$$results(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$results := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$results == _value then true else _WRITE_HAS_OCCURRED_$$results);
    _WRITE_READ_BENIGN_FLAG_$$results := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$results == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$results);
    return;
}



procedure _CHECK_WRITE_$$results(_P: bool, _offset: int, _value: int);
  requires {:source_name "results"} {:array "$$results"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$results != _value);
  requires {:source_name "results"} {:array "$$results"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$results != _value);
  requires {:source_name "results"} {:array "$$results"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$results(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$results;



implementation {:inline 1} _LOG_ATOMIC_$$results(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$results := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$results);
    return;
}



procedure _CHECK_ATOMIC_$$results(_P: bool, _offset: int);
  requires {:source_name "results"} {:array "$$results"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset);
  requires {:source_name "results"} {:array "$$results"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$results(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$results;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$results(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$results := (if _P && _WRITE_HAS_OCCURRED_$$results && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$results);
    return;
}



const _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: int;

procedure {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;



implementation {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask == _value then true else _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask);
    return;
}



procedure _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask);
    return;
}



const _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: int;

procedure {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;



implementation {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask == _value then true else _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask);
    return;
}



procedure _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask);
    return;
}



const _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: int;

procedure {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;



implementation {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask == _value then true else _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask);
    return;
}



procedure _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "r_mask"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask);
    return;
}



const _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: int;

procedure {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;



implementation {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m == _value then true else _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m);
    return;
}



procedure _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int, _value: int);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "m"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m);
    return;
}



const _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: int;

procedure {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;



implementation {:inline 1} _LOG_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum == _value then true else _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum);
    return;
}



procedure _CHECK_READ_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;



implementation {:inline 1} _LOG_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum);
    return;
}



procedure _CHECK_WRITE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sum"} {:array "$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon4;

  anon4:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon5;

  anon5:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon11;

  anon11:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$results;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$results;
    goto anon12;

  anon12:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$results;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask;
    goto anon7;

  anon7:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask;
    goto anon8;

  anon8:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask;
    goto anon9;

  anon9:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m;
    goto anon10;

  anon10:
    havoc $$_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum;
    goto anon11;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;
