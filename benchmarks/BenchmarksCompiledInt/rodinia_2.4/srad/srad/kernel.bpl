type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_iN"} {:global} $$d_iN: [int]int;

axiom {:array_info "$$d_iN"} {:global} {:elem_width 32} {:source_name "d_iN"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_iN: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_iN: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_iN: bool;

var {:source_name "d_iS"} {:global} $$d_iS: [int]int;

axiom {:array_info "$$d_iS"} {:global} {:elem_width 32} {:source_name "d_iS"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_iS: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_iS: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_iS: bool;

var {:source_name "d_jE"} {:global} $$d_jE: [int]int;

axiom {:array_info "$$d_jE"} {:global} {:elem_width 32} {:source_name "d_jE"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_jE: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_jE: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_jE: bool;

var {:source_name "d_jW"} {:global} $$d_jW: [int]int;

axiom {:array_info "$$d_jW"} {:global} {:elem_width 32} {:source_name "d_jW"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_jW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_jW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_jW: bool;

var {:source_name "d_dN"} {:global} $$d_dN: [int]int;

axiom {:array_info "$$d_dN"} {:global} {:elem_width 32} {:source_name "d_dN"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_dN: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_dN: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_dN: bool;

var {:source_name "d_dS"} {:global} $$d_dS: [int]int;

axiom {:array_info "$$d_dS"} {:global} {:elem_width 32} {:source_name "d_dS"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_dS: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_dS: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_dS: bool;

var {:source_name "d_dE"} {:global} $$d_dE: [int]int;

axiom {:array_info "$$d_dE"} {:global} {:elem_width 32} {:source_name "d_dE"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_dE: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_dE: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_dE: bool;

var {:source_name "d_dW"} {:global} $$d_dW: [int]int;

axiom {:array_info "$$d_dW"} {:global} {:elem_width 32} {:source_name "d_dW"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_dW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_dW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_dW: bool;

var {:source_name "d_c"} {:global} $$d_c: [int]int;

axiom {:array_info "$$d_c"} {:global} {:elem_width 32} {:source_name "d_c"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_c: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_c: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_c: bool;

var {:source_name "d_I"} {:global} $$d_I: [int]int;

axiom {:array_info "$$d_I"} {:global} {:elem_width 32} {:source_name "d_I"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_I: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_I: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_I: bool;

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

function BV32_SEXT64(int) : int;

function FADD32(int, int) : int;

function FADD64(int, int) : int;

function FDIV32(int, int) : int;

function FDIV64(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSUB32(int, int) : int;

function FSUB64(int, int) : int;

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

function {:inline true} BV32_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "srad_kernel"} {:kernel} $srad_kernel($d_lambda: int, $d_Nr: int, $d_Nc: int, $d_Ne: int, $d_q0sqr: int);
  requires !_READ_HAS_OCCURRED_$$d_iN && !_WRITE_HAS_OCCURRED_$$d_iN && !_ATOMIC_HAS_OCCURRED_$$d_iN;
  requires !_READ_HAS_OCCURRED_$$d_iS && !_WRITE_HAS_OCCURRED_$$d_iS && !_ATOMIC_HAS_OCCURRED_$$d_iS;
  requires !_READ_HAS_OCCURRED_$$d_jE && !_WRITE_HAS_OCCURRED_$$d_jE && !_ATOMIC_HAS_OCCURRED_$$d_jE;
  requires !_READ_HAS_OCCURRED_$$d_jW && !_WRITE_HAS_OCCURRED_$$d_jW && !_ATOMIC_HAS_OCCURRED_$$d_jW;
  requires !_READ_HAS_OCCURRED_$$d_dN && !_WRITE_HAS_OCCURRED_$$d_dN && !_ATOMIC_HAS_OCCURRED_$$d_dN;
  requires !_READ_HAS_OCCURRED_$$d_dS && !_WRITE_HAS_OCCURRED_$$d_dS && !_ATOMIC_HAS_OCCURRED_$$d_dS;
  requires !_READ_HAS_OCCURRED_$$d_dE && !_WRITE_HAS_OCCURRED_$$d_dE && !_ATOMIC_HAS_OCCURRED_$$d_dE;
  requires !_READ_HAS_OCCURRED_$$d_dW && !_WRITE_HAS_OCCURRED_$$d_dW && !_ATOMIC_HAS_OCCURRED_$$d_dW;
  requires !_READ_HAS_OCCURRED_$$d_c && !_WRITE_HAS_OCCURRED_$$d_c && !_ATOMIC_HAS_OCCURRED_$$d_c;
  requires !_READ_HAS_OCCURRED_$$d_I && !_WRITE_HAS_OCCURRED_$$d_I && !_ATOMIC_HAS_OCCURRED_$$d_I;
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
  modifies _WRITE_HAS_OCCURRED_$$d_dN, _WRITE_READ_BENIGN_FLAG_$$d_dN, _WRITE_READ_BENIGN_FLAG_$$d_dN, _WRITE_HAS_OCCURRED_$$d_dS, _WRITE_READ_BENIGN_FLAG_$$d_dS, _WRITE_READ_BENIGN_FLAG_$$d_dS, _WRITE_HAS_OCCURRED_$$d_dW, _WRITE_READ_BENIGN_FLAG_$$d_dW, _WRITE_READ_BENIGN_FLAG_$$d_dW, _WRITE_HAS_OCCURRED_$$d_dE, _WRITE_READ_BENIGN_FLAG_$$d_dE, _WRITE_READ_BENIGN_FLAG_$$d_dE, _WRITE_HAS_OCCURRED_$$d_c, _WRITE_READ_BENIGN_FLAG_$$d_c, _WRITE_READ_BENIGN_FLAG_$$d_c;



implementation {:source_name "srad_kernel"} {:kernel} $srad_kernel($d_lambda: int, $d_Nr: int, $d_Nc: int, $d_Ne: int, $d_q0sqr: int)
{
  var $row.0$1: int;
  var $row.0$2: int;
  var $col.0$1: int;
  var $col.0$2: int;
  var $d_c_loc.1$1: int;
  var $d_c_loc.1$2: int;
  var $d_c_loc.0$1: int;
  var $d_c_loc.0$2: int;
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
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bool;
  var v21$2: bool;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 512), local_id_x$2);
    v1$1 := BV32_SUB(BV32_ADD(BV32_SDIV(BV32_ADD(v0$1, 1), $d_Nr), 1), 1);
    v1$2 := BV32_SUB(BV32_ADD(BV32_SDIV(BV32_ADD(v0$2, 1), $d_Nr), 1), 1);
    v2$1 := BV32_SREM(BV32_ADD(v0$1, 1), $d_Nr) == 0;
    v2$2 := BV32_SREM(BV32_ADD(v0$2, 1), $d_Nr) == 0;
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    $row.0$1, $col.0$1 := (if p0$1 then BV32_SUB($d_Nr, 1) else $row.0$1), (if p0$1 then BV32_SUB(v1$1, 1) else $col.0$1);
    $row.0$2, $col.0$2 := (if p0$2 then BV32_SUB($d_Nr, 1) else $row.0$2), (if p0$2 then BV32_SUB(v1$2, 1) else $col.0$2);
    $row.0$1, $col.0$1 := (if p1$1 then BV32_SUB(BV32_SREM(BV32_ADD(v0$1, 1), $d_Nr), 1) else $row.0$1), (if p1$1 then v1$1 else $col.0$1);
    $row.0$2, $col.0$2 := (if p1$2 then BV32_SUB(BV32_SREM(BV32_ADD(v0$2, 1), $d_Nr), 1) else $row.0$2), (if p1$2 then v1$2 else $col.0$2);
    v3$1 := BV64_SLT(BV32_SEXT64(v0$1), $d_Ne);
    v3$2 := BV64_SLT(BV32_SEXT64(v0$2), $d_Ne);
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    v4$1 := (if p2$1 then $$d_I[v0$1] else v4$1);
    v4$2 := (if p2$2 then $$d_I[v0$2] else v4$2);
    v5$1 := (if p2$1 then $$d_iN[$row.0$1] else v5$1);
    v5$2 := (if p2$2 then $$d_iN[$row.0$2] else v5$2);
    v6$1 := (if p2$1 then $$d_I[BV32_ADD(v5$1, BV32_MUL($d_Nr, $col.0$1))] else v6$1);
    v6$2 := (if p2$2 then $$d_I[BV32_ADD(v5$2, BV32_MUL($d_Nr, $col.0$2))] else v6$2);
    v7$1 := (if p2$1 then FSUB32(v6$1, v4$1) else v7$1);
    v7$2 := (if p2$2 then FSUB32(v6$2, v4$2) else v7$2);
    v8$1 := (if p2$1 then $$d_iS[$row.0$1] else v8$1);
    v8$2 := (if p2$2 then $$d_iS[$row.0$2] else v8$2);
    v9$1 := (if p2$1 then $$d_I[BV32_ADD(v8$1, BV32_MUL($d_Nr, $col.0$1))] else v9$1);
    v9$2 := (if p2$2 then $$d_I[BV32_ADD(v8$2, BV32_MUL($d_Nr, $col.0$2))] else v9$2);
    v10$1 := (if p2$1 then FSUB32(v9$1, v4$1) else v10$1);
    v10$2 := (if p2$2 then FSUB32(v9$2, v4$2) else v10$2);
    v11$1 := (if p2$1 then $$d_jW[$col.0$1] else v11$1);
    v11$2 := (if p2$2 then $$d_jW[$col.0$2] else v11$2);
    v12$1 := (if p2$1 then $$d_I[BV32_ADD($row.0$1, BV32_MUL($d_Nr, v11$1))] else v12$1);
    v12$2 := (if p2$2 then $$d_I[BV32_ADD($row.0$2, BV32_MUL($d_Nr, v11$2))] else v12$2);
    v13$1 := (if p2$1 then FSUB32(v12$1, v4$1) else v13$1);
    v13$2 := (if p2$2 then FSUB32(v12$2, v4$2) else v13$2);
    v14$1 := (if p2$1 then $$d_jE[$col.0$1] else v14$1);
    v14$2 := (if p2$2 then $$d_jE[$col.0$2] else v14$2);
    v15$1 := (if p2$1 then $$d_I[BV32_ADD($row.0$1, BV32_MUL($d_Nr, v14$1))] else v15$1);
    v15$2 := (if p2$2 then $$d_I[BV32_ADD($row.0$2, BV32_MUL($d_Nr, v14$2))] else v15$2);
    v16$1 := (if p2$1 then FSUB32(v15$1, v4$1) else v16$1);
    v16$2 := (if p2$2 then FSUB32(v15$2, v4$2) else v16$2);
    v17$1 := (if p2$1 then FDIV32(FADD32(FADD32(FADD32(v7$1, v10$1), v13$1), v16$1), v4$1) else v17$1);
    v17$2 := (if p2$2 then FDIV32(FADD32(FADD32(FADD32(v7$2, v10$2), v13$2), v16$2), v4$2) else v17$2);
    v18$1 := (if p2$1 then FP64_CONV32(FADD64(FMUL64(4598175219545276416, FP32_CONV64(v17$1)), 4607182418800017408)) else v18$1);
    v18$2 := (if p2$2 then FP64_CONV32(FADD64(FMUL64(4598175219545276416, FP32_CONV64(v17$2)), 4607182418800017408)) else v18$2);
    v19$1 := (if p2$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FDIV32(FSUB32(FDIV32(FP64_CONV32(FADD64(FMUL64(4602678819172646912, FP32_CONV64(FDIV32(FADD32(FMUL32(v16$1, v16$1), FADD32(FMUL32(v13$1, v13$1), FADD32(FMUL32(v7$1, v7$1), FMUL32(v10$1, v10$1)))), FMUL32(v4$1, v4$1)))), FSUB64(-9223372036854775808, FMUL64(4589168020290535424, FP32_CONV64(FMUL32(v17$1, v17$1)))))), FMUL32(v18$1, v18$1)), $d_q0sqr), FMUL32($d_q0sqr, FADD32(1065353216, $d_q0sqr))))))) else v19$1);
    v19$2 := (if p2$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FDIV32(FSUB32(FDIV32(FP64_CONV32(FADD64(FMUL64(4602678819172646912, FP32_CONV64(FDIV32(FADD32(FMUL32(v16$2, v16$2), FADD32(FMUL32(v13$2, v13$2), FADD32(FMUL32(v7$2, v7$2), FMUL32(v10$2, v10$2)))), FMUL32(v4$2, v4$2)))), FSUB64(-9223372036854775808, FMUL64(4589168020290535424, FP32_CONV64(FMUL32(v17$2, v17$2)))))), FMUL32(v18$2, v18$2)), $d_q0sqr), FMUL32($d_q0sqr, FADD32(1065353216, $d_q0sqr))))))) else v19$2);
    v20$1 := (if p2$1 then FLT32(v19$1, 0) else v20$1);
    v20$2 := (if p2$2 then FLT32(v19$2, 0) else v20$2);
    p3$1 := (if p2$1 && v20$1 then v20$1 else p3$1);
    p3$2 := (if p2$2 && v20$2 then v20$2 else p3$2);
    p4$1 := (if p2$1 && !v20$1 then !v20$1 else p4$1);
    p4$2 := (if p2$2 && !v20$2 then !v20$2 else p4$2);
    $d_c_loc.1$1 := (if p3$1 then 0 else $d_c_loc.1$1);
    $d_c_loc.1$2 := (if p3$2 then 0 else $d_c_loc.1$2);
    v21$1 := (if p4$1 then FLT32(1065353216, v19$1) else v21$1);
    v21$2 := (if p4$2 then FLT32(1065353216, v19$2) else v21$2);
    p5$1 := (if p4$1 && v21$1 then v21$1 else p5$1);
    p5$2 := (if p4$2 && v21$2 then v21$2 else p5$2);
    p6$1 := (if p4$1 && !v21$1 then !v21$1 else p6$1);
    p6$2 := (if p4$2 && !v21$2 then !v21$2 else p6$2);
    $d_c_loc.0$1 := (if p5$1 then 1065353216 else $d_c_loc.0$1);
    $d_c_loc.0$2 := (if p5$2 then 1065353216 else $d_c_loc.0$2);
    $d_c_loc.0$1 := (if p6$1 then v19$1 else $d_c_loc.0$1);
    $d_c_loc.0$2 := (if p6$2 then v19$2 else $d_c_loc.0$2);
    $d_c_loc.1$1 := (if p4$1 then $d_c_loc.0$1 else $d_c_loc.1$1);
    $d_c_loc.1$2 := (if p4$2 then $d_c_loc.0$2 else $d_c_loc.1$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$d_dN(p2$1, v0$1, v7$1, $$d_dN[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dN(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$d_dN(p2$2, v0$2, v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_dN"} true;
    $$d_dN[v0$1] := (if p2$1 then v7$1 else $$d_dN[v0$1]);
    $$d_dN[v0$2] := (if p2$2 then v7$2 else $$d_dN[v0$2]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$d_dS(p2$1, v0$1, v10$1, $$d_dS[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dS(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$d_dS(p2$2, v0$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_dS"} true;
    $$d_dS[v0$1] := (if p2$1 then v10$1 else $$d_dS[v0$1]);
    $$d_dS[v0$2] := (if p2$2 then v10$2 else $$d_dS[v0$2]);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$d_dW(p2$1, v0$1, v13$1, $$d_dW[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dW(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$d_dW(p2$2, v0$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_dW"} true;
    $$d_dW[v0$1] := (if p2$1 then v13$1 else $$d_dW[v0$1]);
    $$d_dW[v0$2] := (if p2$2 then v13$2 else $$d_dW[v0$2]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$d_dE(p2$1, v0$1, v16$1, $$d_dE[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dE(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$d_dE(p2$2, v0$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_dE"} true;
    $$d_dE[v0$1] := (if p2$1 then v16$1 else $$d_dE[v0$1]);
    $$d_dE[v0$2] := (if p2$2 then v16$2 else $$d_dE[v0$2]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$d_c(p2$1, v0$1, $d_c_loc.1$1, $$d_c[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_c(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$d_c(p2$2, v0$2, $d_c_loc.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_c"} true;
    $$d_c[v0$1] := (if p2$1 then $d_c_loc.1$1 else $$d_c[v0$1]);
    $$d_c[v0$2] := (if p2$2 then $d_c_loc.1$2 else $$d_c[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 450 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$d_iN: int;

procedure {:inline 1} _LOG_READ_$$d_iN(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_iN;



implementation {:inline 1} _LOG_READ_$$d_iN(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_iN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iN == _value then true else _READ_HAS_OCCURRED_$$d_iN);
    return;
}



procedure _CHECK_READ_$$d_iN(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_iN);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_iN: bool;

procedure {:inline 1} _LOG_WRITE_$$d_iN(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_iN, _WRITE_READ_BENIGN_FLAG_$$d_iN;



implementation {:inline 1} _LOG_WRITE_$$d_iN(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_iN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iN == _value then true else _WRITE_HAS_OCCURRED_$$d_iN);
    _WRITE_READ_BENIGN_FLAG_$$d_iN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iN == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_iN);
    return;
}



procedure _CHECK_WRITE_$$d_iN(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iN != _value);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iN != _value);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_iN(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_iN;



implementation {:inline 1} _LOG_ATOMIC_$$d_iN(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_iN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_iN);
    return;
}



procedure _CHECK_ATOMIC_$$d_iN(_P: bool, _offset: int);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_iN"} {:array "$$d_iN"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_iN(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_iN;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_iN(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_iN := (if _P && _WRITE_HAS_OCCURRED_$$d_iN && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_iN);
    return;
}



const _WATCHED_VALUE_$$d_iS: int;

procedure {:inline 1} _LOG_READ_$$d_iS(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_iS;



implementation {:inline 1} _LOG_READ_$$d_iS(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_iS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iS == _value then true else _READ_HAS_OCCURRED_$$d_iS);
    return;
}



procedure _CHECK_READ_$$d_iS(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_iS);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_iS: bool;

procedure {:inline 1} _LOG_WRITE_$$d_iS(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_iS, _WRITE_READ_BENIGN_FLAG_$$d_iS;



implementation {:inline 1} _LOG_WRITE_$$d_iS(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_iS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iS == _value then true else _WRITE_HAS_OCCURRED_$$d_iS);
    _WRITE_READ_BENIGN_FLAG_$$d_iS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iS == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_iS);
    return;
}



procedure _CHECK_WRITE_$$d_iS(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iS != _value);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_iS != _value);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_iS(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_iS;



implementation {:inline 1} _LOG_ATOMIC_$$d_iS(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_iS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_iS);
    return;
}



procedure _CHECK_ATOMIC_$$d_iS(_P: bool, _offset: int);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_iS"} {:array "$$d_iS"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_iS(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_iS;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_iS(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_iS := (if _P && _WRITE_HAS_OCCURRED_$$d_iS && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_iS);
    return;
}



const _WATCHED_VALUE_$$d_jE: int;

procedure {:inline 1} _LOG_READ_$$d_jE(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_jE;



implementation {:inline 1} _LOG_READ_$$d_jE(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_jE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jE == _value then true else _READ_HAS_OCCURRED_$$d_jE);
    return;
}



procedure _CHECK_READ_$$d_jE(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_jE);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_jE: bool;

procedure {:inline 1} _LOG_WRITE_$$d_jE(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_jE, _WRITE_READ_BENIGN_FLAG_$$d_jE;



implementation {:inline 1} _LOG_WRITE_$$d_jE(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_jE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jE == _value then true else _WRITE_HAS_OCCURRED_$$d_jE);
    _WRITE_READ_BENIGN_FLAG_$$d_jE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jE == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_jE);
    return;
}



procedure _CHECK_WRITE_$$d_jE(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jE != _value);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jE != _value);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_jE(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_jE;



implementation {:inline 1} _LOG_ATOMIC_$$d_jE(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_jE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_jE);
    return;
}



procedure _CHECK_ATOMIC_$$d_jE(_P: bool, _offset: int);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_jE"} {:array "$$d_jE"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_jE(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_jE;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_jE(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_jE := (if _P && _WRITE_HAS_OCCURRED_$$d_jE && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_jE);
    return;
}



const _WATCHED_VALUE_$$d_jW: int;

procedure {:inline 1} _LOG_READ_$$d_jW(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_jW;



implementation {:inline 1} _LOG_READ_$$d_jW(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_jW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jW == _value then true else _READ_HAS_OCCURRED_$$d_jW);
    return;
}



procedure _CHECK_READ_$$d_jW(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_jW);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_jW: bool;

procedure {:inline 1} _LOG_WRITE_$$d_jW(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_jW, _WRITE_READ_BENIGN_FLAG_$$d_jW;



implementation {:inline 1} _LOG_WRITE_$$d_jW(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_jW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jW == _value then true else _WRITE_HAS_OCCURRED_$$d_jW);
    _WRITE_READ_BENIGN_FLAG_$$d_jW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jW == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_jW);
    return;
}



procedure _CHECK_WRITE_$$d_jW(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jW != _value);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_jW != _value);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_jW(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_jW;



implementation {:inline 1} _LOG_ATOMIC_$$d_jW(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_jW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_jW);
    return;
}



procedure _CHECK_ATOMIC_$$d_jW(_P: bool, _offset: int);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_jW"} {:array "$$d_jW"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_jW(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_jW;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_jW(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_jW := (if _P && _WRITE_HAS_OCCURRED_$$d_jW && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_jW);
    return;
}



const _WATCHED_VALUE_$$d_dN: int;

procedure {:inline 1} _LOG_READ_$$d_dN(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_dN;



implementation {:inline 1} _LOG_READ_$$d_dN(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_dN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dN == _value then true else _READ_HAS_OCCURRED_$$d_dN);
    return;
}



procedure _CHECK_READ_$$d_dN(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_dN);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_dN: bool;

procedure {:inline 1} _LOG_WRITE_$$d_dN(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_dN, _WRITE_READ_BENIGN_FLAG_$$d_dN;



implementation {:inline 1} _LOG_WRITE_$$d_dN(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_dN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dN == _value then true else _WRITE_HAS_OCCURRED_$$d_dN);
    _WRITE_READ_BENIGN_FLAG_$$d_dN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dN == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_dN);
    return;
}



procedure _CHECK_WRITE_$$d_dN(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dN != _value);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dN != _value);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_dN(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_dN;



implementation {:inline 1} _LOG_ATOMIC_$$d_dN(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_dN := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_dN);
    return;
}



procedure _CHECK_ATOMIC_$$d_dN(_P: bool, _offset: int);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_dN"} {:array "$$d_dN"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dN(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_dN;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dN(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_dN := (if _P && _WRITE_HAS_OCCURRED_$$d_dN && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_dN);
    return;
}



const _WATCHED_VALUE_$$d_dS: int;

procedure {:inline 1} _LOG_READ_$$d_dS(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_dS;



implementation {:inline 1} _LOG_READ_$$d_dS(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_dS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dS == _value then true else _READ_HAS_OCCURRED_$$d_dS);
    return;
}



procedure _CHECK_READ_$$d_dS(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_dS);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_dS: bool;

procedure {:inline 1} _LOG_WRITE_$$d_dS(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_dS, _WRITE_READ_BENIGN_FLAG_$$d_dS;



implementation {:inline 1} _LOG_WRITE_$$d_dS(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_dS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dS == _value then true else _WRITE_HAS_OCCURRED_$$d_dS);
    _WRITE_READ_BENIGN_FLAG_$$d_dS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dS == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_dS);
    return;
}



procedure _CHECK_WRITE_$$d_dS(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dS != _value);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dS != _value);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_dS(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_dS;



implementation {:inline 1} _LOG_ATOMIC_$$d_dS(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_dS := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_dS);
    return;
}



procedure _CHECK_ATOMIC_$$d_dS(_P: bool, _offset: int);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_dS"} {:array "$$d_dS"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dS(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_dS;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dS(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_dS := (if _P && _WRITE_HAS_OCCURRED_$$d_dS && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_dS);
    return;
}



const _WATCHED_VALUE_$$d_dE: int;

procedure {:inline 1} _LOG_READ_$$d_dE(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_dE;



implementation {:inline 1} _LOG_READ_$$d_dE(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_dE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dE == _value then true else _READ_HAS_OCCURRED_$$d_dE);
    return;
}



procedure _CHECK_READ_$$d_dE(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_dE);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_dE: bool;

procedure {:inline 1} _LOG_WRITE_$$d_dE(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_dE, _WRITE_READ_BENIGN_FLAG_$$d_dE;



implementation {:inline 1} _LOG_WRITE_$$d_dE(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_dE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dE == _value then true else _WRITE_HAS_OCCURRED_$$d_dE);
    _WRITE_READ_BENIGN_FLAG_$$d_dE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dE == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_dE);
    return;
}



procedure _CHECK_WRITE_$$d_dE(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dE != _value);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dE != _value);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_dE(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_dE;



implementation {:inline 1} _LOG_ATOMIC_$$d_dE(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_dE := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_dE);
    return;
}



procedure _CHECK_ATOMIC_$$d_dE(_P: bool, _offset: int);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_dE"} {:array "$$d_dE"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dE(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_dE;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dE(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_dE := (if _P && _WRITE_HAS_OCCURRED_$$d_dE && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_dE);
    return;
}



const _WATCHED_VALUE_$$d_dW: int;

procedure {:inline 1} _LOG_READ_$$d_dW(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_dW;



implementation {:inline 1} _LOG_READ_$$d_dW(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_dW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dW == _value then true else _READ_HAS_OCCURRED_$$d_dW);
    return;
}



procedure _CHECK_READ_$$d_dW(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_dW);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_dW: bool;

procedure {:inline 1} _LOG_WRITE_$$d_dW(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_dW, _WRITE_READ_BENIGN_FLAG_$$d_dW;



implementation {:inline 1} _LOG_WRITE_$$d_dW(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_dW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dW == _value then true else _WRITE_HAS_OCCURRED_$$d_dW);
    _WRITE_READ_BENIGN_FLAG_$$d_dW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dW == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_dW);
    return;
}



procedure _CHECK_WRITE_$$d_dW(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dW != _value);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_dW != _value);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_dW(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_dW;



implementation {:inline 1} _LOG_ATOMIC_$$d_dW(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_dW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_dW);
    return;
}



procedure _CHECK_ATOMIC_$$d_dW(_P: bool, _offset: int);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_dW"} {:array "$$d_dW"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dW(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_dW;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_dW(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_dW := (if _P && _WRITE_HAS_OCCURRED_$$d_dW && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_dW);
    return;
}



const _WATCHED_VALUE_$$d_c: int;

procedure {:inline 1} _LOG_READ_$$d_c(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_c;



implementation {:inline 1} _LOG_READ_$$d_c(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_c == _value then true else _READ_HAS_OCCURRED_$$d_c);
    return;
}



procedure _CHECK_READ_$$d_c(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_c);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_c: bool;

procedure {:inline 1} _LOG_WRITE_$$d_c(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_c, _WRITE_READ_BENIGN_FLAG_$$d_c;



implementation {:inline 1} _LOG_WRITE_$$d_c(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_c == _value then true else _WRITE_HAS_OCCURRED_$$d_c);
    _WRITE_READ_BENIGN_FLAG_$$d_c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_c == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_c);
    return;
}



procedure _CHECK_WRITE_$$d_c(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_c != _value);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_c != _value);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_c(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_c;



implementation {:inline 1} _LOG_ATOMIC_$$d_c(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_c);
    return;
}



procedure _CHECK_ATOMIC_$$d_c(_P: bool, _offset: int);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_c"} {:array "$$d_c"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_c(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_c;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_c(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_c := (if _P && _WRITE_HAS_OCCURRED_$$d_c && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_c);
    return;
}



const _WATCHED_VALUE_$$d_I: int;

procedure {:inline 1} _LOG_READ_$$d_I(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_I;



implementation {:inline 1} _LOG_READ_$$d_I(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then true else _READ_HAS_OCCURRED_$$d_I);
    return;
}



procedure _CHECK_READ_$$d_I(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_I);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_I: bool;

procedure {:inline 1} _LOG_WRITE_$$d_I(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_I, _WRITE_READ_BENIGN_FLAG_$$d_I;



implementation {:inline 1} _LOG_WRITE_$$d_I(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then true else _WRITE_HAS_OCCURRED_$$d_I);
    _WRITE_READ_BENIGN_FLAG_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_I);
    return;
}



procedure _CHECK_WRITE_$$d_I(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I != _value);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I != _value);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_I(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_I;



implementation {:inline 1} _LOG_ATOMIC_$$d_I(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_I);
    return;
}



procedure _CHECK_ATOMIC_$$d_I(_P: bool, _offset: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_I(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_I;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_I(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_I := (if _P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_I);
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
