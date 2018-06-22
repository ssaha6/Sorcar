type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "x"} {:global} $$x: [int]int;

axiom {:array_info "$$x"} {:global} {:elem_width 64} {:source_name "x"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$x: bool;

axiom {:array_info "$$y"} {:global} {:elem_width 64} {:source_name "y"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y: bool;

axiom {:array_info "$$z"} {:global} {:elem_width 64} {:source_name "z"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$z: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$z: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$z: bool;

axiom {:array_info "$$private_x"} {:elem_width 64} {:source_name "private_x"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:source_name "shared_y"} {:group_shared} $$kernel1.shared_y: [bv1][int]int;

axiom {:array_info "$$kernel1.shared_y"} {:group_shared} {:elem_width 64} {:source_name "shared_y"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel1.shared_y: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel1.shared_y: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y: bool;

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

function BV_EXTRACT(int, int, int) : int;

function FADD64(int, int) : int;

function FMUL64(int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_ZEXT64(x: int) : int
{
  x
}

function {:inline true} BV64_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV64_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel1"} {:kernel} $kernel1($beta: int, $n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 4096 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 32) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$x && !_WRITE_HAS_OCCURRED_$$x && !_ATOMIC_HAS_OCCURRED_$$x;
  requires !_READ_HAS_OCCURRED_$$y && !_WRITE_HAS_OCCURRED_$$y && !_ATOMIC_HAS_OCCURRED_$$y;
  requires !_READ_HAS_OCCURRED_$$z && !_WRITE_HAS_OCCURRED_$$z && !_ATOMIC_HAS_OCCURRED_$$z;
  requires !_READ_HAS_OCCURRED_$$kernel1.shared_y && !_WRITE_HAS_OCCURRED_$$kernel1.shared_y && !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_y;
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
  modifies $$kernel1.shared_y, _READ_HAS_OCCURRED_$$x, _WRITE_HAS_OCCURRED_$$kernel1.shared_y, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y, $$x, _TRACKING, _READ_HAS_OCCURRED_$$kernel1.shared_y, _TRACKING, _WRITE_HAS_OCCURRED_$$x, _WRITE_READ_BENIGN_FLAG_$$x, _WRITE_READ_BENIGN_FLAG_$$x, _TRACKING;



implementation {:source_name "kernel1"} {:kernel} $kernel1($beta: int, $n: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$$10: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
    $c0.0$1 := BV64_MUL(32, v0$1);
    $c0.0$2 := BV64_MUL(32, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b55 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b54 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b53 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "noread"} _b52 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b51 ==> _WRITE_HAS_OCCURRED_$$x ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b50 ==> _READ_HAS_OCCURRED_$$x ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b49 ==> !_WRITE_HAS_OCCURRED_$$x;
    assert {:tag "noread"} _b48 ==> !_READ_HAS_OCCURRED_$$x;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b40 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b39 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b38 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b37 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b36 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b35 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b34 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b33 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b32 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b31 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b30 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b29 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b28 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b27 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b26 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b25 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $c0.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $c0.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 32) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v3$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($n)) else v3$1);
    v3$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($n)) else v3$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p18$1 := false;
    p18$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    v4$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v4$1);
    v4$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v4$2);
    p3$1 := (if p1$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p1$2 && v4$2 then v4$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$x(p3$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), $$x[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$x(p3$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), $$x[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$x"} true;
    v5$1 := (if p3$1 then $$x[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] else v5$1);
    v5$2 := (if p3$2 then $$x[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] else v5$2);
    $$private_x$0$1 := (if p3$1 then v5$1 else $$private_x$0$1);
    $$private_x$0$2 := (if p3$2 then v5$2 else $$private_x$0$2);
    $c1.0$1 := (if p1$1 then 0 else $c1.0$1);
    $c1.0$2 := (if p1$2 then 0 else $c1.0$2);
    p4$1 := (if p1$1 then true else p4$1);
    p4$2 := (if p1$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0 := _READ_HAS_OCCURRED_$$kernel1.shared_y;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0 := _WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$5_0;

  __partitioned_block_$5_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b78 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0 == _WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "disabledMaintainsInstrumentation"} _b77 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$__partitioned_block_$5_0 == _READ_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b76 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b75 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b74 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "noread"} _b73 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "predicatedEquality"} _b72 ==> p4$1 && p4$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b71 ==> p4$1 && p4$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b70 ==> p4$1 && p4$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b69 ==> p4$1 && p4$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b68 ==> p4$1 && p4$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b67 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b66 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b65 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b64 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b63 ==> p4$1 && p4$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b62 ==> p4$1 && p4$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b61 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b60 ==> p4$1 && p4$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b59 ==> p4$1 && p4$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b58 ==> p4$1 && p4$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b57 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b56 ==> p4$1 == p4$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p1"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($n)) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($n)) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b11 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b11 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV32_UGE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV32_UGE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b9 ==> BV32_ULE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b9 ==> BV32_ULE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b8 ==> BV32_SGE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b8 ==> BV32_SGE($c1.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b7 ==> BV32_SLE($c1.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b7 ==> BV32_SLE($c1.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b6 ==> $c1.0$1 mod 32 == 0 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b6 ==> $c1.0$2 mod 32 == 0 mod 32;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 32) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 14} p4$1 ==> true;
    v6$1 := (if p4$1 then BV64_SLE($c1.0$1, BV32_SEXT64($n)) else v6$1);
    v6$2 := (if p4$2 then BV64_SLE($c1.0$2, BV32_SEXT64($n)) else v6$2);
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
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p5$1 := (if p4$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p4$2 && v6$2 then v6$2 else p5$2);
    p4$1 := (if p4$1 && !v6$1 then v6$1 else p4$1);
    p4$2 := (if p4$2 && !v6$2 then v6$2 else p4$2);
    v7$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c1.0$1), 1)) else v7$1);
    v7$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c1.0$2), 1)) else v7$2);
    p7$1 := (if p5$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p5$2 && v7$2 then v7$2 else p7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p7$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p7$2 then _HAVOC_int$2 else v8$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$kernel1.shared_y(p7$1, v1$1, v8$1, $$kernel1.shared_y[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y(p7$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$kernel1.shared_y(p7$2, v1$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel1.shared_y"} true;
    $$kernel1.shared_y[1bv1][v1$1] := (if p7$1 then v8$1 else $$kernel1.shared_y[1bv1][v1$1]);
    $$kernel1.shared_y[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p7$2 then v8$2 else $$kernel1.shared_y[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    goto __partitioned_block_$5_1;

  __partitioned_block_$5_1:
    call {:sourceloc_num 20} $bugle_barrier_duplicated_1(-1, -1, p5$1, p5$2);
    v9$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v9$1);
    v9$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v9$2);
    p9$1 := (if p5$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p5$2 && v9$2 then v9$2 else p9$2);
    $c3.0$1 := (if p9$1 then 0 else $c3.0$1);
    $c3.0$2 := (if p9$2 then 0 else $c3.0$2);
    p10$1 := (if p9$1 then true else p10$1);
    p10$2 := (if p9$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$$10 := _READ_HAS_OCCURRED_$$kernel1.shared_y;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b80 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y$ghost$$10 == _READ_HAS_OCCURRED_$$kernel1.shared_y;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b79 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_y ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p9"} true;
    assert p10$1 ==> p4$1;
    assert p10$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b24 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b23 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> BV64_SLE($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _READ_HAS_OCCURRED_$$kernel1.shared_y ==> BV64_SLT($c0.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b21 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1)) && BV64_SLE($c3.0$1, $0$1) ==> p10$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b21 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1)) && BV64_SLE($c3.0$2, $0$2) ==> p10$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p10$1 ==> _b20 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p10$2 ==> _b20 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1));
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b19 ==> BV32_UGE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b19 ==> BV32_UGE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b18 ==> BV32_ULE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b18 ==> BV32_ULE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b17 ==> BV32_SGE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b17 ==> BV32_SGE($c3.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b16 ==> BV32_SLE($c3.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b16 ==> BV32_SLE($c3.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p10$1 ==> _b15 ==> $c3.0$1 mod 1 == 0 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p10$2 ==> _b15 ==> $c3.0$2 mod 1 == 0 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_x$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 32) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 22} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1)) else v10$2);
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
    p12$1 := (if p10$1 && v10$1 then v10$1 else p12$1);
    p12$2 := (if p10$2 && v10$2 then v10$2 else p12$2);
    p11$1 := (if p10$1 && !v10$1 then !v10$1 else p11$1);
    p11$2 := (if p10$2 && !v10$2 then !v10$2 else p11$2);
    $0$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1) else $0$1);
    $0$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1) else $0$2);
    $0$1 := (if p12$1 then 31 else $0$1);
    $0$2 := (if p12$2 then 31 else $0$2);
    v11$1 := (if p10$1 then BV64_SLE($c3.0$1, $0$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c3.0$2, $0$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    v12$1 := (if p13$1 then $$private_x$0$1 else v12$1);
    v12$2 := (if p13$2 then $$private_x$0$2 else v12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p13$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p13$2 then _HAVOC_int$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$kernel1.shared_y(p13$1, BV_EXTRACT($c3.0$1, 32, 0), $$kernel1.shared_y[1bv1][BV_EXTRACT($c3.0$1, 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$kernel1.shared_y(p13$2, BV_EXTRACT($c3.0$2, 32, 0), $$kernel1.shared_y[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_y"} true;
    v14$1 := (if p13$1 then $$kernel1.shared_y[1bv1][BV_EXTRACT($c3.0$1, 32, 0)] else v14$1);
    v14$2 := (if p13$2 then $$kernel1.shared_y[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT($c3.0$2, 32, 0)] else v14$2);
    $$private_x$0$1 := (if p13$1 then FADD64(FMUL64(FMUL64($beta, v13$1), v14$1), v12$1) else $$private_x$0$1);
    $$private_x$0$2 := (if p13$2 then FADD64(FMUL64(FMUL64($beta, v13$2), v14$2), v12$2) else $$private_x$0$2);
    $c3.0$1 := (if p13$1 then BV64_ADD($c3.0$1, 1) else $c3.0$1);
    $c3.0$2 := (if p13$2 then BV64_ADD($c3.0$2, 1) else $c3.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $10.backedge, __partitioned_block_$10.tail_0;

  __partitioned_block_$10.tail_0:
    assume !p10$1 && !p10$2;
    v15$1 := (if p9$1 then BV64_SGE(BV64_ADD($c1.0$1, 31), BV32_SEXT64($n)) else v15$1);
    v15$2 := (if p9$2 then BV64_SGE(BV64_ADD($c1.0$2, 31), BV32_SEXT64($n)) else v15$2);
    p15$1 := (if p9$1 && v15$1 then v15$1 else p15$1);
    p15$2 := (if p9$2 && v15$2 then v15$2 else p15$2);
    v16$1 := (if p15$1 then $$private_x$0$1 else v16$1);
    v16$2 := (if p15$2 then $$private_x$0$2 else v16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p15$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p15$2 then _HAVOC_int$2 else v17$2);
    $$private_x$0$1 := (if p15$1 then FADD64(v16$1, v17$1) else $$private_x$0$1);
    $$private_x$0$2 := (if p15$2 then FADD64(v16$2, v17$2) else $$private_x$0$2);
    goto __partitioned_block_$10.tail_1;

  __partitioned_block_$10.tail_1:
    call {:sourceloc_num 39} $bugle_barrier_duplicated_2(-1, -1, p5$1, p5$2);
    $c1.0$1 := (if p5$1 then BV64_ADD($c1.0$1, 32) else $c1.0$1);
    $c1.0$2 := (if p5$2 then BV64_ADD($c1.0$2, 32) else $c1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, __partitioned_block_$5.tail_0;

  __partitioned_block_$5.tail_0:
    assume !p4$1 && !p4$2;
    v18$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1)) else v18$1);
    v18$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1)) else v18$2);
    p17$1 := (if p1$1 && v18$1 then v18$1 else p17$1);
    p17$2 := (if p1$2 && v18$2 then v18$2 else p17$2);
    v19$1 := (if p17$1 then $$private_x$0$1 else v19$1);
    v19$2 := (if p17$2 then $$private_x$0$2 else v19$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$x(p17$1, BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0), v19$1, $$x[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(p17$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$x(p17$2, BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0), v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$x"} true;
    $$x[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)] := (if p17$1 then v19$1 else $$x[BV_EXTRACT(BV64_ADD(v2$1, $c0.0$1), 32, 0)]);
    $$x[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)] := (if p17$2 then v19$2 else $$x[BV_EXTRACT(BV64_ADD(v2$2, $c0.0$2), 32, 0)]);
    goto __partitioned_block_$5.tail_1;

  __partitioned_block_$5.tail_1:
    call {:sourceloc_num 46} $bugle_barrier_duplicated_0(-1, -1, p1$1, p1$2);
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 1048576) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 1048576) else $c0.0$2);
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

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$5_0;

  $10.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $10;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel1.shared_y, $$x, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel1.shared_y, $$x, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel1.shared_y, $$x, _TRACKING;



var $$private_x$0$1: int;

var $$private_x$0$2: int;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
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

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const _WATCHED_VALUE_$$A: int;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$x: int;

procedure {:inline 1} _LOG_READ_$$x(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$x;



implementation {:inline 1} _LOG_READ_$$x(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then true else _READ_HAS_OCCURRED_$$x);
    return;
}



procedure _CHECK_READ_$$x(_P: bool, _offset: int, _value: int);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$x);
  requires {:source_name "x"} {:array "$$x"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$x: bool;

procedure {:inline 1} _LOG_WRITE_$$x(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$x, _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:inline 1} _LOG_WRITE_$$x(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then true else _WRITE_HAS_OCCURRED_$$x);
    _WRITE_READ_BENIGN_FLAG_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$x);
    return;
}



procedure _CHECK_WRITE_$$x(_P: bool, _offset: int, _value: int);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x != _value);
  requires {:source_name "x"} {:array "$$x"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x != _value);
  requires {:source_name "x"} {:array "$$x"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$x(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$x;



implementation {:inline 1} _LOG_ATOMIC_$$x(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$x);
    return;
}



procedure _CHECK_ATOMIC_$$x(_P: bool, _offset: int);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);
  requires {:source_name "x"} {:array "$$x"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$x := (if _P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$x);
    return;
}



const _WATCHED_VALUE_$$y: int;

procedure {:inline 1} _LOG_READ_$$y(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$y;



implementation {:inline 1} _LOG_READ_$$y(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then true else _READ_HAS_OCCURRED_$$y);
    return;
}



procedure _CHECK_READ_$$y(_P: bool, _offset: int, _value: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y);
  requires {:source_name "y"} {:array "$$y"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y: bool;

procedure {:inline 1} _LOG_WRITE_$$y(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$y, _WRITE_READ_BENIGN_FLAG_$$y;



implementation {:inline 1} _LOG_WRITE_$$y(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then true else _WRITE_HAS_OCCURRED_$$y);
    _WRITE_READ_BENIGN_FLAG_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y);
    return;
}



procedure _CHECK_WRITE_$$y(_P: bool, _offset: int, _value: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y != _value);
  requires {:source_name "y"} {:array "$$y"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y != _value);
  requires {:source_name "y"} {:array "$$y"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$y;



implementation {:inline 1} _LOG_ATOMIC_$$y(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y);
    return;
}



procedure _CHECK_ATOMIC_$$y(_P: bool, _offset: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);
  requires {:source_name "y"} {:array "$$y"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$y;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y := (if _P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y);
    return;
}



const _WATCHED_VALUE_$$z: int;

procedure {:inline 1} _LOG_READ_$$z(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$z;



implementation {:inline 1} _LOG_READ_$$z(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then true else _READ_HAS_OCCURRED_$$z);
    return;
}



procedure _CHECK_READ_$$z(_P: bool, _offset: int, _value: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$z);
  requires {:source_name "z"} {:array "$$z"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$z: bool;

procedure {:inline 1} _LOG_WRITE_$$z(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$z, _WRITE_READ_BENIGN_FLAG_$$z;



implementation {:inline 1} _LOG_WRITE_$$z(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then true else _WRITE_HAS_OCCURRED_$$z);
    _WRITE_READ_BENIGN_FLAG_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$z);
    return;
}



procedure _CHECK_WRITE_$$z(_P: bool, _offset: int, _value: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z != _value);
  requires {:source_name "z"} {:array "$$z"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z != _value);
  requires {:source_name "z"} {:array "$$z"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$z(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$z;



implementation {:inline 1} _LOG_ATOMIC_$$z(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$z);
    return;
}



procedure _CHECK_ATOMIC_$$z(_P: bool, _offset: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);
  requires {:source_name "z"} {:array "$$z"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$z(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$z;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$z(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$z := (if _P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$z);
    return;
}



const _WATCHED_VALUE_$$kernel1.shared_y: int;

procedure {:inline 1} _LOG_READ_$$kernel1.shared_y(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel1.shared_y;



implementation {:inline 1} _LOG_READ_$$kernel1.shared_y(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel1.shared_y := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_y == _value then true else _READ_HAS_OCCURRED_$$kernel1.shared_y);
    return;
}



procedure _CHECK_READ_$$kernel1.shared_y(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel1.shared_y(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel1.shared_y, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y;



implementation {:inline 1} _LOG_WRITE_$$kernel1.shared_y(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel1.shared_y := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_y == _value then true else _WRITE_HAS_OCCURRED_$$kernel1.shared_y);
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_y == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y);
    return;
}



procedure _CHECK_WRITE_$$kernel1.shared_y(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_y != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_y != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel1.shared_y(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y;



implementation {:inline 1} _LOG_ATOMIC_$$kernel1.shared_y(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel1.shared_y);
    return;
}



procedure _CHECK_ATOMIC_$$kernel1.shared_y(_P: bool, _offset: int);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y"} {:array "$$kernel1.shared_y"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y := (if _P && _WRITE_HAS_OCCURRED_$$kernel1.shared_y && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_y);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_y;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$x;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$x;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel1.shared_y;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_y;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$x;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$x;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel1.shared_y;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_y;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_y;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$x;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$x;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$x;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel1.shared_y;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;
