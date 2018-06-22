type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "infront"} $$infront$1: [int]int;

var {:source_name "infront"} $$infront$2: [int]int;

axiom {:array_info "$$infront"} {:elem_width 32} {:source_name "infront"} {:source_elem_width 32} {:source_dimensions "4"} true;

var {:source_name "behind"} $$behind$1: [int]int;

var {:source_name "behind"} $$behind$2: [int]int;

axiom {:array_info "$$behind"} {:elem_width 32} {:source_name "behind"} {:source_elem_width 32} {:source_dimensions "4"} true;

var {:source_name "tile"} {:group_shared} $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: [bv1][int]int;

axiom {:array_info "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:group_shared} {:elem_width 32} {:source_name "tile"} {:source_elem_width 32} {:source_dimensions "24,40"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,40"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,40"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,40"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: bool;

var {:source_name "stencil"} {:constant} $$stencil$1: [int]int;

var {:source_name "stencil"} {:constant} $$stencil$2: [int]int;

axiom {:array_info "$$stencil"} {:constant} {:elem_width 32} {:source_name "stencil"} {:source_elem_width 32} {:source_dimensions "5"} true;

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

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

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

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "FiniteDifferencesKernel"} {:kernel} $_Z23FiniteDifferencesKernelPfPKfiii($dimx: int, $dimy: int, $dimz: int);
  requires {:sourceloc_num 0} {:thread 1} (if $dimx == 96 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $dimy == 96 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $dimz == 96 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && !_WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && !_ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
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
  modifies $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, $$output, _TRACKING, _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, _TRACKING, _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;



implementation {:source_name "FiniteDifferencesKernel"} {:kernel} $_Z23FiniteDifferencesKernelPfPKfiii($dimx: int, $dimy: int, $dimz: int)
{
  var $validr.0$1: int;
  var $validr.0$2: int;
  var $validw.0$1: int;
  var $validw.0$2: int;
  var $inputIndex.0$1: int;
  var $inputIndex.0$2: int;
  var $i.0: int;
  var $current.0$1: int;
  var $current.0$2: int;
  var $inputIndex.1$1: int;
  var $inputIndex.1$2: int;
  var $i1.0: int;
  var $inputIndex.2$1: int;
  var $inputIndex.2$2: int;
  var $outputIndex.0$1: int;
  var $outputIndex.0$2: int;
  var $current.1$1: int;
  var $current.1$2: int;
  var $iz.0: int;
  var $i2.0: int;
  var $i3.0: int;
  var $value.0$1: int;
  var $value.0$2: int;
  var $i4.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v43$1: int;
  var v43$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: int;
  var v17$2: int;
  var v18: bool;
  var v19: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22: bool;
  var v23$1: int;
  var v23$2: int;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: bool;
  var v27$2: bool;
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
  var v34: bool;
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
  var v42$1: bool;
  var v42$2: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2 := BV32_ADD($dimx, 8);
    v3 := BV32_MUL(v2, BV32_ADD($dimy, 8));
    v4$1 := BV32_ADD(local_id_x$1, 4);
    v4$2 := BV32_ADD(local_id_x$2, 4);
    v5$1 := BV32_ADD(local_id_y$1, 4);
    v5$2 := BV32_ADD(local_id_y$2, 4);
    v6$1 := BV32_SGE(v0$1, BV32_ADD($dimx, 4));
    v6$2 := BV32_SGE(v0$2, BV32_ADD($dimx, 4));
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
    p3$1 := (if v6$1 then v6$1 else p3$1);
    p3$2 := (if v6$2 then v6$2 else p3$2);
    p1$1 := (if !v6$1 then !v6$1 else p1$1);
    p1$2 := (if !v6$2 then !v6$2 else p1$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    v7$1 := (if p1$1 then BV32_SGE(v1$1, BV32_ADD($dimy, 4)) else v7$1);
    v7$2 := (if p1$2 then BV32_SGE(v1$2, BV32_ADD($dimy, 4)) else v7$2);
    p3$1 := (if p1$1 && v7$1 then v7$1 else p3$1);
    p3$2 := (if p1$2 && v7$2 then v7$2 else p3$2);
    p4$1 := (if p1$1 && !v7$1 then !v7$1 else p4$1);
    p4$2 := (if p1$2 && !v7$2 then !v7$2 else p4$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    $validr.0$1 := (if p3$1 then 0 else $validr.0$1);
    $validr.0$2 := (if p3$2 then 0 else $validr.0$2);
    $validr.0$1 := (if p4$1 then 1 else $validr.0$1);
    $validr.0$2 := (if p4$2 then 1 else $validr.0$2);
    v8$1 := BV32_SGE(v0$1, $dimx);
    v8$2 := BV32_SGE(v0$2, $dimx);
    p8$1 := (if v8$1 then v8$1 else p8$1);
    p8$2 := (if v8$2 then v8$2 else p8$2);
    p6$1 := (if !v8$1 then !v8$1 else p6$1);
    p6$2 := (if !v8$2 then !v8$2 else p6$2);
    p8$1 := (if p5$1 then true else p8$1);
    p8$2 := (if p5$2 then true else p8$2);
    v9$1 := (if p6$1 then BV32_SGE(v1$1, $dimy) else v9$1);
    v9$2 := (if p6$2 then BV32_SGE(v1$2, $dimy) else v9$2);
    p8$1 := (if p6$1 && v9$1 then v9$1 else p8$1);
    p8$2 := (if p6$2 && v9$2 then v9$2 else p8$2);
    p9$1 := (if p6$1 && !v9$1 then !v9$1 else p9$1);
    p9$2 := (if p6$2 && !v9$2 then !v9$2 else p9$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    $validw.0$1 := (if p8$1 then 0 else $validw.0$1);
    $validw.0$2 := (if p8$2 then 0 else $validw.0$2);
    $validw.0$1 := (if p9$1 then 1 else $validw.0$1);
    $validw.0$2 := (if p9$2 then 1 else $validw.0$2);
    $inputIndex.0$1, $i.0 := BV32_ADD(BV32_ADD(BV32_MUL(4, v2), 4), BV32_ADD(BV32_MUL(v1$1, v2), v0$1)), 2;
    $inputIndex.0$2 := BV32_ADD(BV32_ADD(BV32_MUL(4, v2), 4), BV32_ADD(BV32_MUL(v1$2, v2), v0$2));
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_UGE($i.0, 2);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_ULE($i.0, 2);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_SGE($i.0, 2);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SLE($i.0, 2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b1 ==> $i.0 mod -1 == 2 mod -1;
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $inputIndex.0$1 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == BV32_ADD(BV32_ADD(BV32_MUL(4, v2), 4), BV32_ADD(BV32_MUL(v1$1, v2), v0$1)) mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b0 ==> $inputIndex.0$2 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == BV32_ADD(BV32_ADD(BV32_MUL(4, v2), 4), BV32_ADD(BV32_MUL(v1$2, v2), v0$2)) mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:block_sourceloc} {:sourceloc_num 10} true;
    assert {:originated_from_invariant} {:sourceloc_num 11} {:thread 1} (if BV32_SUB($inputIndex.0$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(4, v1$1), v2), 4), v0$1)) == BV32_MUL(v3, BV32_SUB(2, $i.0)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 11} {:thread 2} (if BV32_SUB($inputIndex.0$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(4, v1$2), v2), 4), v0$2)) == BV32_MUL(v3, BV32_SUB(2, $i.0)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 12} {:thread 1} (if BV32_SGE($i.0, -1) then 1 else 0) != 0;
    v10 := BV32_SGE($i.0, 0);
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} !v10;
    v13$1 := BV_EXTRACT($validr.0$1, 1, 0) == 1;
    v13$2 := BV_EXTRACT($validr.0$2, 1, 0) == 1;
    p12$1 := (if v13$1 then v13$1 else p12$1);
    p12$2 := (if v13$2 then v13$2 else p12$2);
    p13$1 := (if !v13$1 then !v13$1 else p13$1);
    p13$2 := (if !v13$2 then !v13$2 else p13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p12$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p12$2 then _HAVOC_int$2 else v14$2);
    $current.0$1 := (if p12$1 then v14$1 else $current.0$1);
    $current.0$2 := (if p12$2 then v14$2 else $current.0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p13$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p13$2 then _HAVOC_int$2 else v43$2);
    $current.0$1 := (if p13$1 then v43$1 else $current.0$1);
    $current.0$2 := (if p13$2 then v43$2 else $current.0$2);
    $inputIndex.1$1, $i1.0 := BV32_ADD($inputIndex.0$1, v3), 0;
    $inputIndex.1$2 := BV32_ADD($inputIndex.0$2, v3);
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 23} true;
    v15 := BV32_SLT($i1.0, 4);
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    goto $truebb6, $falsebb6;

  $falsebb6:
    assume {:partition} !v15;
    $inputIndex.2$1, $outputIndex.0$1, $current.1$1, $iz.0 := $inputIndex.1$1, $inputIndex.0$1, $current.0$1, 0;
    $inputIndex.2$2, $outputIndex.0$2, $current.1$2 := $inputIndex.1$2, $inputIndex.0$2, $current.0$2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b23 ==> _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 40), BV32_ADD(local_id_x$1, 4)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$1, group_size_y), 4), 40), BV32_ADD(local_id_x$1, 4)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, 4), 40), local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, 4), 40), BV32_ADD(BV32_ADD(local_id_x$1, group_size_x), 4)) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_y$1, 4), 40), BV32_ADD(local_id_x$1, 4));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b22 ==> _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> _WATCHED_OFFSET mod BV32_MUL(1, 40) == BV32_ADD(BV32_MUL(0, 40), BV32_ADD(local_id_x$1, 4)) mod BV32_MUL(1, 40) || _WATCHED_OFFSET mod BV32_MUL(1, 40) == BV32_ADD(BV32_MUL(BV32_ADD(1, BV32_ADD(local_id_y$1, 4)), 40), BV32_ADD(local_id_x$1, 4)) mod BV32_MUL(1, 40) || _WATCHED_OFFSET mod 1 == BV32_ADD(0, BV32_MUL(BV32_ADD(local_id_y$1, 4), 40)) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(BV32_ADD(1, BV32_ADD(local_id_x$1, 4)), BV32_MUL(BV32_ADD(local_id_y$1, 4), 40)) mod 1;
    assert {:tag "nowrite"} _b21 ==> !_WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assert {:tag "noread"} _b20 ==> !_READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b19 ==> _WRITE_HAS_OCCURRED_$$output ==> _WATCHED_OFFSET mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == BV32_ADD($inputIndex.0$1, BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8))) mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:tag "nowrite"} _b18 ==> !_WRITE_HAS_OCCURRED_$$output;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_UGE($iz.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_ULE($iz.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_SGE($iz.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_SLE($iz.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b8 ==> $iz.0 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b7 ==> $outputIndex.0$1 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == $inputIndex.0$1 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b7 ==> $outputIndex.0$2 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == $inputIndex.0$2 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b6 ==> $inputIndex.2$1 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == $inputIndex.1$1 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b6 ==> $inputIndex.2$2 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8)) == $inputIndex.1$2 mod BV32_MUL(BV32_ADD($dimx, 8), BV32_ADD($dimy, 8));
    assert {:block_sourceloc} {:sourceloc_num 31} true;
    assert {:originated_from_invariant} {:sourceloc_num 32} {:thread 1} (if BV32_SUB($outputIndex.0$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(4, v1$1), v2), 4), v0$1)) == BV32_MUL(v3, BV32_ADD(3, $iz.0)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 32} {:thread 2} (if BV32_SUB($outputIndex.0$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(4, v1$2), v2), 4), v0$2)) == BV32_MUL(v3, BV32_ADD(3, $iz.0)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 33} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(4, v1$1), v2), 4), v0$1)), v3) == 0 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 34} {:thread 1} (if BV32_SGE(v0$1, $dimx) ==> BV1_XOR((if _WRITE_HAS_OCCURRED_$$output then 1 else 0), -1) == 1 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 35} {:thread 1} (if BV32_SGE(v1$1, $dimy) ==> BV1_XOR((if _WRITE_HAS_OCCURRED_$$output then 1 else 0), -1) == 1 then 1 else 0) != 0;
    v18 := BV32_SLT($iz.0, $dimz);
    goto $truebb8, $falsebb8;

  $falsebb8:
    assume {:partition} !v18;
    return;

  $truebb8:
    assume {:partition} v18;
    $i2.0 := 3;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $23;

  $23:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 37} true;
    v19 := BV32_SGT($i2.0, 0);
    goto $truebb9, $falsebb9;

  $falsebb9:
    assume {:partition} !v19;
    $$behind$1[0] := $current.1$1;
    $$behind$2[0] := $current.1$2;
    v21$1 := $$infront$1[0];
    v21$2 := $$infront$2[0];
    $i3.0 := 0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $27;

  $27:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 45} true;
    v22 := BV32_SLT($i3.0, 3);
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
    goto $truebb10, __partitioned_block_$falsebb10_0;

  __partitioned_block_$falsebb10_0:
    assume {:partition} !v22;
    v24$1 := BV_EXTRACT($validr.0$1, 1, 0) == 1;
    v24$2 := BV_EXTRACT($validr.0$2, 1, 0) == 1;
    p17$1 := (if v24$1 then v24$1 else p17$1);
    p17$2 := (if v24$2 then v24$2 else p17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p17$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p17$2 then _HAVOC_int$2 else v25$2);
    $$infront$1[3] := (if p17$1 then v25$1 else $$infront$1[3]);
    $$infront$2[3] := (if p17$2 then v25$2 else $$infront$2[3]);
    v26$1 := BV32_ADD($outputIndex.0$1, v3);
    v26$2 := BV32_ADD($outputIndex.0$2, v3);
    goto __partitioned_block_$falsebb10_1;

  __partitioned_block_$falsebb10_1:
    call {:sourceloc_num 55} $bugle_barrier_duplicated_0(-1, -1);
    v27$1 := BV32_SLT(local_id_y$1, 4);
    v27$2 := BV32_SLT(local_id_y$2, 4);
    p19$1 := (if v27$1 then v27$1 else p19$1);
    p19$2 := (if v27$2 then v27$2 else p19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p19$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p19$2 then _HAVOC_int$2 else v28$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$1, BV32_ADD(BV32_MUL(local_id_y$1, 40), v4$1), v28$1, $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 40), v4$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$2, BV32_ADD(BV32_MUL(local_id_y$2, 40), v4$2));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$2, BV32_ADD(BV32_MUL(local_id_y$2, 40), v4$2), v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 40), v4$1)] := (if p19$1 then v28$1 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 40), v4$1)]);
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 40), v4$2)] := (if p19$2 then v28$2 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 40), v4$2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p19$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p19$2 then _HAVOC_int$2 else v29$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$1, group_size_y), 4), 40), v4$1), v29$1, $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$1, group_size_y), 4), 40), v4$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$2, group_size_y), 4), 40), v4$2));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p19$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$2, group_size_y), 4), 40), v4$2), v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$1, group_size_y), 4), 40), v4$1)] := (if p19$1 then v29$1 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$1, group_size_y), 4), 40), v4$1)]);
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$2, group_size_y), 4), 40), v4$2)] := (if p19$2 then v29$2 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_y$2, group_size_y), 4), 40), v4$2)]);
    v30$1 := BV32_SLT(local_id_x$1, 4);
    v30$2 := BV32_SLT(local_id_x$2, 4);
    p21$1 := (if v30$1 then v30$1 else p21$1);
    p21$2 := (if v30$2 then v30$2 else p21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p21$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p21$2 then _HAVOC_int$2 else v31$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$1, BV32_ADD(BV32_MUL(v5$1, 40), local_id_x$1), v31$1, $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$2, BV32_ADD(BV32_MUL(v5$2, 40), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$2, BV32_ADD(BV32_MUL(v5$2, 40), local_id_x$2), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), local_id_x$1)] := (if p21$1 then v31$1 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), local_id_x$1)]);
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), local_id_x$2)] := (if p21$2 then v31$2 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), local_id_x$2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p21$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p21$2 then _HAVOC_int$2 else v32$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$1, BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(BV32_ADD(local_id_x$1, group_size_x), 4)), v32$1, $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(BV32_ADD(local_id_x$1, group_size_x), 4))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$2, BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(BV32_ADD(local_id_x$2, group_size_x), 4)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(p21$2, BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(BV32_ADD(local_id_x$2, group_size_x), 4)), v32$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(BV32_ADD(local_id_x$1, group_size_x), 4))] := (if p21$1 then v32$1 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(BV32_ADD(local_id_x$1, group_size_x), 4))]);
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(BV32_ADD(local_id_x$2, group_size_x), 4))] := (if p21$2 then v32$2 else $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(BV32_ADD(local_id_x$2, group_size_x), 4))]);
    call {:sourceloc} {:sourceloc_num 68} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$1, 40), v4$1), v21$1, $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), v4$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$2, 40), v4$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 68} _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$2, 40), v4$2), v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), v4$1)] := v21$1;
    $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), v4$2)] := v21$2;
    goto __partitioned_block_$falsebb10_2;

  __partitioned_block_$falsebb10_2:
    call {:sourceloc_num 69} $bugle_barrier_duplicated_1(-1, -1);
    v33$1 := $$stencil$1[0];
    v33$2 := $$stencil$2[0];
    $value.0$1, $i4.0 := FMUL32(v33$1, v21$1), 1;
    $value.0$2 := FMUL32(v33$2, v21$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $37;

  $37:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b24 ==> _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> _WATCHED_OFFSET mod BV32_MUL(1, 40) == BV32_ADD(BV32_MUL(0, 40), BV32_ADD(local_id_x$1, 4)) mod BV32_MUL(1, 40) || _WATCHED_OFFSET mod BV32_MUL(1, 40) == BV32_ADD(BV32_MUL(BV32_ADD(1, BV32_ADD(local_id_y$1, 4)), 40), BV32_ADD(local_id_x$1, 4)) mod BV32_MUL(1, 40) || _WATCHED_OFFSET mod 1 == BV32_ADD(0, BV32_MUL(BV32_ADD(local_id_y$1, 4), 40)) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(BV32_ADD(1, BV32_ADD(local_id_x$1, 4)), BV32_MUL(BV32_ADD(local_id_y$1, 4), 40)) mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b17 ==> BV32_UGE($i4.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b16 ==> BV32_ULE($i4.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b15 ==> BV32_SGE($i4.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b14 ==> BV32_SLE($i4.0, 1);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b13 ==> $i4.0 mod 1 == 1 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 71} true;
    v34 := BV32_SLE($i4.0, 4);
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    goto $truebb14, $falsebb14;

  $falsebb14:
    assume {:partition} !v34;
    v42$1 := BV_EXTRACT($validw.0$1, 1, 0) == 1;
    v42$2 := BV_EXTRACT($validw.0$2, 1, 0) == 1;
    p23$1 := (if v42$1 then v42$1 else p23$1);
    p23$2 := (if v42$2 then v42$2 else p23$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$output(p23$1, v26$1, $value.0$1, $$output[v26$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p23$2, v26$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$output(p23$2, v26$2, $value.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[v26$1] := (if p23$1 then $value.0$1 else $$output[v26$1]);
    $$output[v26$2] := (if p23$2 then $value.0$2 else $$output[v26$2]);
    $inputIndex.2$1, $outputIndex.0$1, $current.1$1, $iz.0 := BV32_ADD($inputIndex.2$1, v3), v26$1, v21$1, BV32_ADD($iz.0, 1);
    $inputIndex.2$2, $outputIndex.0$2, $current.1$2 := BV32_ADD($inputIndex.2$2, v3), v26$2, v21$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $21;

  $truebb14:
    assume {:partition} v34;
    v35$1 := $$stencil$1[$i4.0];
    v35$2 := $$stencil$2[$i4.0];
    v36$1 := $$infront$1[BV32_SUB($i4.0, 1)];
    v36$2 := $$infront$2[BV32_SUB($i4.0, 1)];
    v37$1 := $$behind$1[BV32_SUB($i4.0, 1)];
    v37$2 := $$behind$2[BV32_SUB($i4.0, 1)];
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(BV32_SUB(v5$1, $i4.0), 40), v4$1), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_SUB(v5$1, $i4.0), 40), v4$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(BV32_SUB(v5$2, $i4.0), 40), v4$2), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_SUB(v5$2, $i4.0), 40), v4$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    v38$1 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_SUB(v5$1, $i4.0), 40), v4$1)];
    v38$2 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_SUB(v5$2, $i4.0), 40), v4$2)];
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(BV32_ADD(v5$1, $i4.0), 40), v4$1), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v5$1, $i4.0), 40), v4$1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(BV32_ADD(v5$2, $i4.0), 40), v4$2), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v5$2, $i4.0), 40), v4$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    v39$1 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v5$1, $i4.0), 40), v4$1)];
    v39$2 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v5$2, $i4.0), 40), v4$2)];
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$1, 40), BV32_SUB(v4$1, $i4.0)), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_SUB(v4$1, $i4.0))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$2, 40), BV32_SUB(v4$2, $i4.0)), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_SUB(v4$2, $i4.0))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    v40$1 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_SUB(v4$1, $i4.0))];
    v40$2 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_SUB(v4$2, $i4.0))];
    call {:sourceloc} {:sourceloc_num 79} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(v4$1, $i4.0)), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(v4$1, $i4.0))]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 79} _CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(true, BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(v4$2, $i4.0)), $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(v4$2, $i4.0))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} true;
    v41$1 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[1bv1][BV32_ADD(BV32_MUL(v5$1, 40), BV32_ADD(v4$1, $i4.0))];
    v41$2 := $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v5$2, 40), BV32_ADD(v4$2, $i4.0))];
    $value.0$1, $i4.0 := FADD32($value.0$1, FMUL32(v35$1, FADD32(FADD32(FADD32(FADD32(FADD32(v36$1, v37$1), v38$1), v39$1), v40$1), v41$1))), BV32_ADD($i4.0, 1);
    $value.0$2 := FADD32($value.0$2, FMUL32(v35$2, FADD32(FADD32(FADD32(FADD32(FADD32(v36$2, v37$2), v38$2), v39$2), v40$2), v41$2)));
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $37;

  $truebb10:
    assume {:partition} v22;
    v23$1 := $$infront$1[BV32_ADD($i3.0, 1)];
    v23$2 := $$infront$2[BV32_ADD($i3.0, 1)];
    $$infront$1[$i3.0] := v23$1;
    $$infront$2[$i3.0] := v23$2;
    $i3.0 := BV32_ADD($i3.0, 1);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $27;

  $truebb9:
    assume {:partition} v19;
    v20$1 := $$behind$1[BV32_SUB($i2.0, 1)];
    v20$2 := $$behind$2[BV32_SUB($i2.0, 1)];
    $$behind$1[$i2.0] := v20$1;
    $$behind$2[$i2.0] := v20$2;
    $i2.0 := BV32_ADD($i2.0, -1);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $23;

  $truebb6:
    assume {:partition} v15;
    v16$1 := BV_EXTRACT($validr.0$1, 1, 0) == 1;
    v16$2 := BV_EXTRACT($validr.0$2, 1, 0) == 1;
    p15$1 := (if v16$1 then v16$1 else p15$1);
    p15$2 := (if v16$2 then v16$2 else p15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p15$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p15$2 then _HAVOC_int$2 else v17$2);
    $$infront$1[$i1.0] := (if p15$1 then v17$1 else $$infront$1[$i1.0]);
    $$infront$2[$i1.0] := (if p15$2 then v17$2 else $$infront$2[$i1.0]);
    $inputIndex.1$1, $i1.0 := BV32_ADD($inputIndex.1$1, v3), BV32_ADD($i1.0, 1);
    $inputIndex.1$2 := BV32_ADD($inputIndex.1$2, v3);
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $15;

  $truebb3:
    assume {:partition} v10;
    v11$1 := BV_EXTRACT($validr.0$1, 1, 0) == 1;
    v11$2 := BV_EXTRACT($validr.0$2, 1, 0) == 1;
    p11$1 := (if v11$1 then v11$1 else p11$1);
    p11$2 := (if v11$2 then v11$2 else p11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p11$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p11$2 then _HAVOC_int$2 else v12$2);
    $$behind$1[$i.0] := (if p11$1 then v12$1 else $$behind$1[$i.0]);
    $$behind$2[$i.0] := (if p11$2 then v12$2 else $$behind$2[$i.0]);
    $inputIndex.0$1, $i.0 := BV32_ADD($inputIndex.0$1, v3), BV32_ADD($i.0, -1);
    $inputIndex.0$2 := BV32_ADD($inputIndex.0$2, v3);
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $7;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 12 then 1 else 0) != 0;

axiom (if num_groups_y == 24 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, $$output, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, $$output, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b4: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

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



const _WATCHED_VALUE_$$input: int;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: int;

procedure {:inline 1} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;



implementation {:inline 1} _LOG_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile == _value then true else _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile);
    return;
}



procedure _CHECK_READ_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;



implementation {:inline 1} _LOG_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile);
    return;
}



procedure _CHECK_WRITE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int, _value: int);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "tile"} {:array "$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;
