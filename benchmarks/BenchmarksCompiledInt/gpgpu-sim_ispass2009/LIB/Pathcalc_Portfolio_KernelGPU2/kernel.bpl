type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_v"} {:global} $$d_v: [int]int;

axiom {:array_info "$$d_v"} {:global} {:elem_width 32} {:source_name "d_v"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_v: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_v: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_v: bool;

var {:source_name "B.i"} $$B.i$1: [int]int;

var {:source_name "B.i"} $$B.i$2: [int]int;

axiom {:array_info "$$B.i"} {:elem_width 32} {:source_name "B.i"} {:source_elem_width 32} {:source_dimensions "40"} true;

var {:source_name "S.i"} $$S.i$1: [int]int;

var {:source_name "S.i"} $$S.i$2: [int]int;

axiom {:array_info "$$S.i"} {:elem_width 32} {:source_name "S.i"} {:source_elem_width 32} {:source_dimensions "40"} true;

var {:source_name "L"} $$L$1: [int]int;

var {:source_name "L"} $$L$2: [int]int;

axiom {:array_info "$$L"} {:elem_width 32} {:source_name "L"} {:source_elem_width 32} {:source_dimensions "80"} true;

var {:source_name "z"} $$z$1: [int]int;

var {:source_name "z"} $$z$2: [int]int;

axiom {:array_info "$$z"} {:elem_width 32} {:source_name "z"} {:source_elem_width 32} {:source_dimensions "80"} true;

var {:source_name "N"} {:constant} $$N$1: [int]int;

var {:source_name "N"} {:constant} $$N$2: [int]int;

axiom {:array_info "$$N"} {:constant} {:elem_width 32} {:source_name "N"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "Nmat"} {:constant} $$Nmat$1: [int]int;

var {:source_name "Nmat"} {:constant} $$Nmat$2: [int]int;

axiom {:array_info "$$Nmat"} {:constant} {:elem_width 32} {:source_name "Nmat"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "delta"} {:constant} $$delta$1: [int]int;

var {:source_name "delta"} {:constant} $$delta$2: [int]int;

axiom {:array_info "$$delta"} {:constant} {:elem_width 32} {:source_name "delta"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "lambda"} {:constant} $$lambda$1: [int]int;

var {:source_name "lambda"} {:constant} $$lambda$2: [int]int;

axiom {:array_info "$$lambda"} {:constant} {:elem_width 32} {:source_name "lambda"} {:source_elem_width 32} {:source_dimensions "80"} true;

var {:source_name "Nopt"} {:constant} $$Nopt$1: [int]int;

var {:source_name "Nopt"} {:constant} $$Nopt$2: [int]int;

axiom {:array_info "$$Nopt"} {:constant} {:elem_width 32} {:source_name "Nopt"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "maturities"} {:constant} $$maturities$1: [int]int;

var {:source_name "maturities"} {:constant} $$maturities$2: [int]int;

axiom {:array_info "$$maturities"} {:constant} {:elem_width 32} {:source_name "maturities"} {:source_elem_width 32} {:source_dimensions "15"} true;

var {:source_name "swaprates"} {:constant} $$swaprates$1: [int]int;

var {:source_name "swaprates"} {:constant} $$swaprates$2: [int]int;

axiom {:array_info "$$swaprates"} {:constant} {:elem_width 32} {:source_name "swaprates"} {:source_elem_width 32} {:source_dimensions "15"} true;

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

function FADD32(int, int) : int;

function FADD64(int, int) : int;

function FDIV64(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSQRT32(int) : int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "Pathcalc_Portfolio_KernelGPU2"} {:kernel} $_Z29Pathcalc_Portfolio_KernelGPU2Pf();
  requires !_READ_HAS_OCCURRED_$$d_v && !_WRITE_HAS_OCCURRED_$$d_v && !_ATOMIC_HAS_OCCURRED_$$d_v;
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
  modifies _WRITE_HAS_OCCURRED_$$d_v, _WRITE_READ_BENIGN_FLAG_$$d_v, _WRITE_READ_BENIGN_FLAG_$$d_v;



implementation {:source_name "Pathcalc_Portfolio_KernelGPU2"} {:kernel} $_Z29Pathcalc_Portfolio_KernelGPU2Pf()
{
  var $path.0$1: int;
  var $path.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $n.i.0$1: int;
  var $n.i.0$2: int;
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $v.i.0$1: int;
  var $v.i.0$2: int;
  var $s.i.0$1: int;
  var $s.i.0$2: int;
  var $b.i.0$1: int;
  var $b.i.0$2: int;
  var $n.i1.0$1: int;
  var $n.i1.0$2: int;
  var $v.i3.0$1: int;
  var $v.i3.0$2: int;
  var $i.i2.0$1: int;
  var $i.i2.0$2: int;
  var $v.i3.1$1: int;
  var $v.i3.1$2: int;
  var $b.i.1$1: int;
  var $b.i.1$2: int;
  var $n.i1.1$1: int;
  var $n.i1.1$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: bool;
  var v8$2: bool;
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
  var v20$1: int;
  var v20$2: int;
  var v21$1: bool;
  var v21$2: bool;
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
  var v30$1: bool;
  var v30$2: bool;
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
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: int;
  var v38$2: int;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
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


  $0:
    $path.0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    $path.0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b6 ==> _WRITE_HAS_OCCURRED_$$d_v ==> _WATCHED_OFFSET mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1) mod BV32_MUL(group_size_x, num_groups_x);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($path.0$1, 4096) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($path.0$2, 4096) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($path.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($path.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($path.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($path.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($path.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($path.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($path.0$1, BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($path.0$2, BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $path.0$1 mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1) mod BV32_MUL(group_size_x, num_groups_x);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $path.0$2 mod BV32_MUL(group_size_x, num_groups_x) == BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2) mod BV32_MUL(group_size_x, num_groups_x);
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_SLT($path.0$1, 4096) else v0$1);
    v0$2 := (if p0$2 then BV32_SLT($path.0$2, 4096) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p4$1 := false;
    p4$2 := false;
    p8$1 := false;
    p8$2 := false;
    p10$1 := false;
    p10$2 := false;
    p14$1 := false;
    p14$2 := false;
    p16$1 := false;
    p16$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    $i.0$1 := (if p1$1 then 0 else $i.0$1);
    $i.0$2 := (if p1$2 then 0 else $i.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_6"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 3} p2$1 ==> true;
    v1$1 := (if p2$1 then $$N$1[0] else v1$1);
    v1$2 := (if p2$2 then $$N$2[0] else v1$2);
    v2$1 := (if p2$1 then BV32_SLT($i.0$1, v1$1) else v2$1);
    v2$2 := (if p2$2 then BV32_SLT($i.0$2, v1$2) else v2$2);
    p3$1 := false;
    p3$2 := false;
    p3$1 := (if p2$1 && v2$1 then v2$1 else p3$1);
    p3$2 := (if p2$2 && v2$2 then v2$2 else p3$2);
    p2$1 := (if p2$1 && !v2$1 then v2$1 else p2$1);
    p2$2 := (if p2$2 && !v2$2 then v2$2 else p2$2);
    $$z$1[$i.0$1] := (if p3$1 then 1050253722 else $$z$1[$i.0$1]);
    $$z$2[$i.0$2] := (if p3$2 then 1050253722 else $$z$2[$i.0$2]);
    $$L$1[$i.0$1] := (if p3$1 then 1028443341 else $$L$1[$i.0$1]);
    $$L$2[$i.0$2] := (if p3$2 then 1028443341 else $$L$2[$i.0$2]);
    $i.0$1 := (if p3$1 then BV32_ADD($i.0$1, 1) else $i.0$1);
    $i.0$2 := (if p3$2 then BV32_ADD($i.0$2, 1) else $i.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $n.i.0$1 := (if p1$1 then 0 else $n.i.0$1);
    $n.i.0$2 := (if p1$2 then 0 else $n.i.0$2);
    p4$1 := (if p1$1 then true else p4$1);
    p4$2 := (if p1$2 then true else p4$2);
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p4"} {:dominator_predicate "p1"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 10} p4$1 ==> true;
    v3$1 := (if p4$1 then $$Nmat$1[0] else v3$1);
    v3$2 := (if p4$2 then $$Nmat$2[0] else v3$2);
    v4$1 := (if p4$1 then BV32_SLT($n.i.0$1, v3$1) else v4$1);
    v4$2 := (if p4$2 then BV32_SLT($n.i.0$2, v3$2) else v4$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p5$1 := (if p4$1 && v4$1 then v4$1 else p5$1);
    p5$2 := (if p4$2 && v4$2 then v4$2 else p5$2);
    p4$1 := (if p4$1 && !v4$1 then v4$1 else p4$1);
    p4$2 := (if p4$2 && !v4$2 then v4$2 else p4$2);
    v5$1 := (if p5$1 then $$delta$1[0] else v5$1);
    v5$2 := (if p5$2 then $$delta$2[0] else v5$2);
    v6$1 := (if p5$1 then $$z$1[$n.i.0$1] else v6$1);
    v6$2 := (if p5$2 then $$z$2[$n.i.0$2] else v6$2);
    $i.i.0$1, $v.i.0$1 := (if p5$1 then BV32_ADD($n.i.0$1, 1) else $i.i.0$1), (if p5$1 then 0 else $v.i.0$1);
    $i.i.0$2, $v.i.0$2 := (if p5$2 then BV32_ADD($n.i.0$2, 1) else $i.i.0$2), (if p5$2 then 0 else $v.i.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_5"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 15} p6$1 ==> true;
    v7$1 := (if p6$1 then $$N$1[0] else v7$1);
    v7$2 := (if p6$2 then $$N$2[0] else v7$2);
    v8$1 := (if p6$1 then BV32_SLT($i.i.0$1, v7$1) else v8$1);
    v8$2 := (if p6$2 then BV32_SLT($i.i.0$2, v7$2) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    v9$1 := (if p7$1 then $$lambda$1[BV32_SUB(BV32_SUB($i.i.0$1, $n.i.0$1), 1)] else v9$1);
    v9$2 := (if p7$2 then $$lambda$2[BV32_SUB(BV32_SUB($i.i.0$2, $n.i.0$2), 1)] else v9$2);
    v10$1 := (if p7$1 then $$delta$1[0] else v10$1);
    v10$2 := (if p7$2 then $$delta$2[0] else v10$2);
    v11$1 := (if p7$1 then FMUL32(v10$1, v9$1) else v11$1);
    v11$2 := (if p7$2 then FMUL32(v10$2, v9$2) else v11$2);
    v12$1 := (if p7$1 then $$L$1[$i.i.0$1] else v12$1);
    v12$2 := (if p7$2 then $$L$2[$i.i.0$2] else v12$2);
    v13$1 := (if p7$1 then $$delta$1[0] else v13$1);
    v13$2 := (if p7$2 then $$delta$2[0] else v13$2);
    v14$1 := (if p7$1 then $$L$1[$i.i.0$1] else v14$1);
    v14$2 := (if p7$2 then $$L$2[$i.i.0$2] else v14$2);
    call {:sourceloc_num 23} v15$1, v15$2 := $__fdividef(p7$1, FMUL32(v11$1, v12$1), FP64_CONV32(FADD64(4607182418800017408, FP32_CONV64(FMUL32(v13$1, v14$1)))), p7$2, FMUL32(v11$2, v12$2), FP64_CONV32(FADD64(4607182418800017408, FP32_CONV64(FMUL32(v13$2, v14$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "$__fdividef"} true;
    v16$1 := (if p7$1 then FADD32($v.i.0$1, v15$1) else v16$1);
    v16$2 := (if p7$2 then FADD32($v.i.0$2, v15$2) else v16$2);
    call {:sourceloc_num 24} v17$1, v17$2 := $__expf(p7$1, FP64_CONV32(FADD64(FP32_CONV64(FMUL32(v11$1, v16$1)), FMUL64(FP32_CONV64(v9$1), FSUB64(FP32_CONV64(FMUL32(FSQRT32(v5$1), v6$1)), FMUL64(4602678819172646912, FP32_CONV64(v11$1)))))), p7$2, FP64_CONV32(FADD64(FP32_CONV64(FMUL32(v11$2, v16$2)), FMUL64(FP32_CONV64(v9$2), FSUB64(FP32_CONV64(FMUL32(FSQRT32(v5$2), v6$2)), FMUL64(4602678819172646912, FP32_CONV64(v11$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    v18$1 := (if p7$1 then $$L$1[$i.i.0$1] else v18$1);
    v18$2 := (if p7$2 then $$L$2[$i.i.0$2] else v18$2);
    $$L$1[$i.i.0$1] := (if p7$1 then FMUL32(v18$1, v17$1) else $$L$1[$i.i.0$1]);
    $$L$2[$i.i.0$2] := (if p7$2 then FMUL32(v18$2, v17$2) else $$L$2[$i.i.0$2]);
    $i.i.0$1, $v.i.0$1 := (if p7$1 then BV32_ADD($i.i.0$1, 1) else $i.i.0$1), (if p7$1 then v16$1 else $v.i.0$1);
    $i.i.0$2, $v.i.0$2 := (if p7$2 then BV32_ADD($i.i.0$2, 1) else $i.i.0$2), (if p7$2 then v16$2 else $v.i.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $9.backedge, $9.tail;

  $9.tail:
    assume !p6$1 && !p6$2;
    $n.i.0$1 := (if p5$1 then BV32_ADD($n.i.0$1, 1) else $n.i.0$1);
    $n.i.0$2 := (if p5$2 then BV32_ADD($n.i.0$2, 1) else $n.i.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p4$1 && !p4$2;
    v19$1 := (if p1$1 then $$Nmat$1[0] else v19$1);
    v19$2 := (if p1$2 then $$Nmat$2[0] else v19$2);
    $s.i.0$1, $b.i.0$1, $n.i1.0$1 := (if p1$1 then 0 else $s.i.0$1), (if p1$1 then 1065353216 else $b.i.0$1), (if p1$1 then v19$1 else $n.i1.0$1);
    $s.i.0$2, $b.i.0$2, $n.i1.0$2 := (if p1$2 then 0 else $s.i.0$2), (if p1$2 then 1065353216 else $b.i.0$2), (if p1$2 then v19$2 else $n.i1.0$2);
    p8$1 := (if p1$1 then true else p8$1);
    p8$2 := (if p1$2 then true else p8$2);
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p8"} {:dominator_predicate "p1"} true;
    assert p8$1 ==> p0$1;
    assert p8$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 30} p8$1 ==> true;
    v20$1 := (if p8$1 then $$N$1[0] else v20$1);
    v20$2 := (if p8$2 then $$N$2[0] else v20$2);
    v21$1 := (if p8$1 then BV32_SLT($n.i1.0$1, v20$1) else v21$1);
    v21$2 := (if p8$2 then BV32_SLT($n.i1.0$2, v20$2) else v21$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v21$1 then v21$1 else p9$1);
    p9$2 := (if p8$2 && v21$2 then v21$2 else p9$2);
    p8$1 := (if p8$1 && !v21$1 then v21$1 else p8$1);
    p8$2 := (if p8$2 && !v21$2 then v21$2 else p8$2);
    v22$1 := (if p9$1 then $$delta$1[0] else v22$1);
    v22$2 := (if p9$2 then $$delta$2[0] else v22$2);
    v23$1 := (if p9$1 then $$L$1[$n.i1.0$1] else v23$1);
    v23$2 := (if p9$2 then $$L$2[$n.i1.0$2] else v23$2);
    v24$1 := (if p9$1 then FP64_CONV32(FDIV64(FP32_CONV64($b.i.0$1), FADD64(4607182418800017408, FP32_CONV64(FMUL32(v22$1, v23$1))))) else v24$1);
    v24$2 := (if p9$2 then FP64_CONV32(FDIV64(FP32_CONV64($b.i.0$2), FADD64(4607182418800017408, FP32_CONV64(FMUL32(v22$2, v23$2))))) else v24$2);
    v25$1 := (if p9$1 then $$delta$1[0] else v25$1);
    v25$2 := (if p9$2 then $$delta$2[0] else v25$2);
    v26$1 := (if p9$1 then FADD32($s.i.0$1, FMUL32(v25$1, v24$1)) else v26$1);
    v26$2 := (if p9$2 then FADD32($s.i.0$2, FMUL32(v25$2, v24$2)) else v26$2);
    v27$1 := (if p9$1 then $$Nmat$1[0] else v27$1);
    v27$2 := (if p9$2 then $$Nmat$2[0] else v27$2);
    $$B.i$1[BV32_SUB($n.i1.0$1, v27$1)] := (if p9$1 then v24$1 else $$B.i$1[BV32_SUB($n.i1.0$1, v27$1)]);
    $$B.i$2[BV32_SUB($n.i1.0$2, v27$2)] := (if p9$2 then v24$2 else $$B.i$2[BV32_SUB($n.i1.0$2, v27$2)]);
    v28$1 := (if p9$1 then $$Nmat$1[0] else v28$1);
    v28$2 := (if p9$2 then $$Nmat$2[0] else v28$2);
    $$S.i$1[BV32_SUB($n.i1.0$1, v28$1)] := (if p9$1 then v26$1 else $$S.i$1[BV32_SUB($n.i1.0$1, v28$1)]);
    $$S.i$2[BV32_SUB($n.i1.0$2, v28$2)] := (if p9$2 then v26$2 else $$S.i$2[BV32_SUB($n.i1.0$2, v28$2)]);
    $s.i.0$1, $b.i.0$1, $n.i1.0$1 := (if p9$1 then v26$1 else $s.i.0$1), (if p9$1 then v24$1 else $b.i.0$1), (if p9$1 then BV32_ADD($n.i1.0$1, 1) else $n.i1.0$1);
    $s.i.0$2, $b.i.0$2, $n.i1.0$2 := (if p9$2 then v26$2 else $s.i.0$2), (if p9$2 then v24$2 else $b.i.0$2), (if p9$2 then BV32_ADD($n.i1.0$2, 1) else $n.i1.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $12.backedge, $12.tail;

  $12.tail:
    assume !p8$1 && !p8$2;
    $v.i3.0$1, $i.i2.0$1 := (if p1$1 then 0 else $v.i3.0$1), (if p1$1 then 0 else $i.i2.0$1);
    $v.i3.0$2, $i.i2.0$2 := (if p1$2 then 0 else $v.i3.0$2), (if p1$2 then 0 else $i.i2.0$2);
    p10$1 := (if p1$1 then true else p10$1);
    p10$2 := (if p1$2 then true else p10$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p10"} {:dominator_predicate "p1"} true;
    assert p10$1 ==> p0$1;
    assert p10$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 41} p10$1 ==> true;
    v29$1 := (if p10$1 then $$Nopt$1[0] else v29$1);
    v29$2 := (if p10$2 then $$Nopt$2[0] else v29$2);
    v30$1 := (if p10$1 then BV32_SLT($i.i2.0$1, v29$1) else v30$1);
    v30$2 := (if p10$2 then BV32_SLT($i.i2.0$2, v29$2) else v30$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p11$1 := (if p10$1 && v30$1 then v30$1 else p11$1);
    p11$2 := (if p10$2 && v30$2 then v30$2 else p11$2);
    p10$1 := (if p10$1 && !v30$1 then v30$1 else p10$1);
    p10$2 := (if p10$2 && !v30$2 then v30$2 else p10$2);
    v31$1 := (if p11$1 then $$maturities$1[$i.i2.0$1] else v31$1);
    v31$2 := (if p11$2 then $$maturities$2[$i.i2.0$2] else v31$2);
    v32$1 := (if p11$1 then BV32_SUB(v31$1, 1) else v32$1);
    v32$2 := (if p11$2 then BV32_SUB(v31$2, 1) else v32$2);
    v33$1 := (if p11$1 then $$B.i$1[v32$1] else v33$1);
    v33$2 := (if p11$2 then $$B.i$2[v32$2] else v33$2);
    v34$1 := (if p11$1 then $$swaprates$1[$i.i2.0$1] else v34$1);
    v34$2 := (if p11$2 then $$swaprates$2[$i.i2.0$2] else v34$2);
    v35$1 := (if p11$1 then $$S.i$1[v32$1] else v35$1);
    v35$2 := (if p11$2 then $$S.i$2[v32$2] else v35$2);
    v36$1 := (if p11$1 then FP64_CONV32(FSUB64(FP32_CONV64(FADD32(v33$1, FMUL32(v34$1, v35$1))), 4607182418800017408)) else v36$1);
    v36$2 := (if p11$2 then FP64_CONV32(FSUB64(FP32_CONV64(FADD32(v33$2, FMUL32(v34$2, v35$2))), 4607182418800017408)) else v36$2);
    v37$1 := (if p11$1 then FLT32(v36$1, 0) else v37$1);
    v37$2 := (if p11$2 then FLT32(v36$2, 0) else v37$2);
    p13$1 := (if p11$1 && v37$1 then v37$1 else p13$1);
    p13$2 := (if p11$2 && v37$2 then v37$2 else p13$2);
    p12$1 := (if p11$1 && !v37$1 then !v37$1 else p12$1);
    p12$2 := (if p11$2 && !v37$2 then !v37$2 else p12$2);
    $v.i3.1$1 := (if p12$1 then $v.i3.0$1 else $v.i3.1$1);
    $v.i3.1$2 := (if p12$2 then $v.i3.0$2 else $v.i3.1$2);
    $v.i3.1$1 := (if p13$1 then FP64_CONV32(FADD64(FP32_CONV64($v.i3.0$1), FMUL64(-4586634745500139520, FP32_CONV64(v36$1)))) else $v.i3.1$1);
    $v.i3.1$2 := (if p13$2 then FP64_CONV32(FADD64(FP32_CONV64($v.i3.0$2), FMUL64(-4586634745500139520, FP32_CONV64(v36$2)))) else $v.i3.1$2);
    $v.i3.0$1, $i.i2.0$1 := (if p11$1 then $v.i3.1$1 else $v.i3.0$1), (if p11$1 then BV32_ADD($i.i2.0$1, 1) else $i.i2.0$1);
    $v.i3.0$2, $i.i2.0$2 := (if p11$2 then $v.i3.1$2 else $v.i3.0$2), (if p11$2 then BV32_ADD($i.i2.0$2, 1) else $i.i2.0$2);
    p10$1 := (if p11$1 then true else p10$1);
    p10$2 := (if p11$2 then true else p10$2);
    goto $15.backedge, $15.tail;

  $15.tail:
    assume !p10$1 && !p10$2;
    $b.i.1$1, $n.i1.1$1 := (if p1$1 then 1065353216 else $b.i.1$1), (if p1$1 then 0 else $n.i1.1$1);
    $b.i.1$2, $n.i1.1$2 := (if p1$2 then 1065353216 else $b.i.1$2), (if p1$2 then 0 else $n.i1.1$2);
    p14$1 := (if p1$1 then true else p14$1);
    p14$2 := (if p1$2 then true else p14$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $20;

  $20:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p14"} {:dominator_predicate "p1"} true;
    assert p14$1 ==> p0$1;
    assert p14$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 51} p14$1 ==> true;
    v38$1 := (if p14$1 then $$Nmat$1[0] else v38$1);
    v38$2 := (if p14$2 then $$Nmat$2[0] else v38$2);
    v39$1 := (if p14$1 then BV32_SLT($n.i1.1$1, v38$1) else v39$1);
    v39$2 := (if p14$2 then BV32_SLT($n.i1.1$2, v38$2) else v39$2);
    p15$1 := false;
    p15$2 := false;
    p15$1 := (if p14$1 && v39$1 then v39$1 else p15$1);
    p15$2 := (if p14$2 && v39$2 then v39$2 else p15$2);
    p14$1 := (if p14$1 && !v39$1 then v39$1 else p14$1);
    p14$2 := (if p14$2 && !v39$2 then v39$2 else p14$2);
    v40$1 := (if p15$1 then $$delta$1[0] else v40$1);
    v40$2 := (if p15$2 then $$delta$2[0] else v40$2);
    v41$1 := (if p15$1 then $$L$1[$n.i1.1$1] else v41$1);
    v41$2 := (if p15$2 then $$L$2[$n.i1.1$2] else v41$2);
    $b.i.1$1, $n.i1.1$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64($b.i.1$1), FADD64(4607182418800017408, FP32_CONV64(FMUL32(v40$1, v41$1))))) else $b.i.1$1), (if p15$1 then BV32_ADD($n.i1.1$1, 1) else $n.i1.1$1);
    $b.i.1$2, $n.i1.1$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64($b.i.1$2), FADD64(4607182418800017408, FP32_CONV64(FMUL32(v40$2, v41$2))))) else $b.i.1$2), (if p15$2 then BV32_ADD($n.i1.1$2, 1) else $n.i1.1$2);
    p14$1 := (if p15$1 then true else p14$1);
    p14$2 := (if p15$2 then true else p14$2);
    goto $20.backedge, $20.tail;

  $20.tail:
    assume !p14$1 && !p14$2;
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$d_v(p1$1, $path.0$1, FMUL32($b.i.1$1, $v.i3.0$1), $$d_v[$path.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_v(p1$2, $path.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$d_v(p1$2, $path.0$2, FMUL32($b.i.1$2, $v.i3.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_v"} true;
    $$d_v[$path.0$1] := (if p1$1 then FMUL32($b.i.1$1, $v.i3.0$1) else $$d_v[$path.0$1]);
    $$d_v[$path.0$2] := (if p1$2 then FMUL32($b.i.1$2, $v.i3.0$2) else $$d_v[$path.0$2]);
    $path.0$1 := (if p1$1 then BV32_ADD($path.0$1, BV32_MUL(group_size_x, num_groups_x)) else $path.0$1);
    $path.0$2 := (if p1$2 then BV32_ADD($path.0$2, BV32_MUL(group_size_x, num_groups_x)) else $path.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $20.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $20;

  $15.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $15;

  $12.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $12;

  $7.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $7;

  $9.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $9;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $3;
}



procedure {:source_name "__fdividef"} $__fdividef(_P$1: bool, $0$1: int, $1$1: int, _P$2: bool, $0$2: int, $1$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "__expf"} $__expf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const _WATCHED_VALUE_$$d_v: int;

procedure {:inline 1} _LOG_READ_$$d_v(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_v;



implementation {:inline 1} _LOG_READ_$$d_v(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_v == _value then true else _READ_HAS_OCCURRED_$$d_v);
    return;
}



procedure _CHECK_READ_$$d_v(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_v);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_v: bool;

procedure {:inline 1} _LOG_WRITE_$$d_v(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_v, _WRITE_READ_BENIGN_FLAG_$$d_v;



implementation {:inline 1} _LOG_WRITE_$$d_v(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_v == _value then true else _WRITE_HAS_OCCURRED_$$d_v);
    _WRITE_READ_BENIGN_FLAG_$$d_v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_v == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_v);
    return;
}



procedure _CHECK_WRITE_$$d_v(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_v != _value);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_v != _value);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_v(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_v;



implementation {:inline 1} _LOG_ATOMIC_$$d_v(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_v := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_v);
    return;
}



procedure _CHECK_ATOMIC_$$d_v(_P: bool, _offset: int);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_v"} {:array "$$d_v"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_v(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_v;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_v(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_v := (if _P && _WRITE_HAS_OCCURRED_$$d_v && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_v);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b6: bool;
