type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$L"} {:global} {:elem_width 64} {:source_name "L"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$L: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$L: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$L: bool;

var {:source_name "x"} {:global} $$x: [int]int;

axiom {:array_info "$$x"} {:global} {:elem_width 64} {:source_name "x"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$x: bool;

var {:source_name "shared_x_0"} {:group_shared} $$kernel0.shared_x_0: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_x_0"} {:group_shared} {:elem_width 64} {:source_name "shared_x_0"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel0.shared_x_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0: bool;

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

function FMUL64(int, int) : int;

function FSUB64(int, int) : int;

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

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
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

function {:inline true} BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SGT(x: int, y: int) : bool
{
  x > y
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

procedure {:source_name "kernel0"} {:kernel} $kernel0($n: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, 2) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(2, $n)), BV64_ADD($c0, 2)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 32), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 32))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 62)), BV64_ADD(BV64_MUL(2, BV32_ZEXT64(local_id_x$1)), $c0)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 32), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$L ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$L && !_WRITE_HAS_OCCURRED_$$L && !_ATOMIC_HAS_OCCURRED_$$L;
  requires !_READ_HAS_OCCURRED_$$x && !_WRITE_HAS_OCCURRED_$$x && !_ATOMIC_HAS_OCCURRED_$$x;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_x_0 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0;
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
  modifies $$kernel0.shared_x_0, _READ_HAS_OCCURRED_$$x, _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0, $$x, _TRACKING, _READ_HAS_OCCURRED_$$kernel0.shared_x_0, _TRACKING, _WRITE_HAS_OCCURRED_$$x, _WRITE_READ_BENIGN_FLAG_$$x, _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:source_name "kernel0"} {:kernel} $kernel0($n: int, $c0: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v3$1: bool;
  var v3$2: bool;
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
  var v9$1: int;
  var v9$2: int;
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
  var v15$1: int;
  var v15$2: int;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: int;
  var v18$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
    v3$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32), 0);
    v3$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32), 0);
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
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    p1$1 := (if !v3$1 then !v3$1 else p1$1);
    p1$2 := (if !v3$2 then !v3$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32)), 1048576), 1), 1048576)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32)), 1048576), 1), 1048576)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32), 1048576) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32), 1048576) else $0$2);
    v4$1 := BV64_SGT(BV64_MUL(32, v0$1), BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, $0$1)), 1048576));
    v4$2 := BV64_SGT(BV64_MUL(32, v0$2), BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, $0$2)), 1048576));
    p2$1 := (if v4$1 then v4$1 else p2$1);
    p2$2 := (if v4$2 then v4$2 else p2$2);
    p3$1 := (if !v4$1 then !v4$1 else p3$1);
    p3$2 := (if !v4$2 then !v4$2 else p3$2);
    $1$1 := (if p2$1 then BV64_MUL(32, v0$1) else $1$1);
    $1$2 := (if p2$2 then BV64_MUL(32, v0$2) else $1$2);
    v5$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32), 0) else v5$1);
    v5$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32), 0) else v5$2);
    p4$1 := (if p3$1 && v5$1 then v5$1 else p4$1);
    p4$2 := (if p3$2 && v5$2 then v5$2 else p4$2);
    p5$1 := (if p3$1 && !v5$1 then !v5$1 else p5$1);
    p5$2 := (if p3$2 && !v5$2 then !v5$2 else p5$2);
    $2$1 := (if p4$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32)), 1048576), 1), 1048576)) else $2$1);
    $2$2 := (if p4$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32)), 1048576), 1), 1048576)) else $2$2);
    $2$1 := (if p5$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$1)), $c0), 32), 1048576) else $2$1);
    $2$2 := (if p5$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(32, v0$2)), $c0), 32), 1048576) else $2$2);
    $1$1 := (if p3$1 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, $2$1)), 1048576) else $1$1);
    $1$2 := (if p3$2 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, $2$2)), 1048576) else $1$2);
    $c1.0$1 := $1$1;
    $c1.0$2 := $1$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$10_0;

  __partitioned_block_$10_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b29 ==> _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV_EXTRACT(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), 31), 32, 0);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b28 ==> _READ_HAS_OCCURRED_$$kernel0.shared_x_0 ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV_EXTRACT(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), 31), 32, 0);
    assert {:tag "nowrite"} _b27 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_x_0;
    assert {:tag "noread"} _b26 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_x_0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b25 ==> _WRITE_HAS_OCCURRED_$$x ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b24 ==> _READ_HAS_OCCURRED_$$x ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b23 ==> !_WRITE_HAS_OCCURRED_$$x;
    assert {:tag "noread"} _b22 ==> !_READ_HAS_OCCURRED_$$x;
    assert {:tag "predicatedEquality"} _b21 ==> p6$1 && p6$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b20 ==> p6$1 && p6$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b19 ==> p6$1 && p6$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b18 ==> p6$1 && p6$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b17 ==> p6$1 && p6$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b16 ==> p6$1 && p6$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b15 ==> p6$1 && p6$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b14 ==> p6$1 && p6$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b13 ==> p6$1 && p6$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b12 ==> p6$1 && p6$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b11 ==> p6$1 && p6$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b10 ==> p6$1 && p6$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b9 ==> p6$1 && p6$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b8 ==> p6$1 && p6$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b7 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2;
    assert {:tag "loopPredicateEquality"} _b6 ==> p6$1 == p6$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_x_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV64_SDIV($c0, 2)) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV64_SDIV($c0, 2)) ==> p6$2;
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b4 ==> BV32_UGE($c1.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b4 ==> BV32_UGE($c1.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b3 ==> BV32_ULE($c1.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b3 ==> BV32_ULE($c1.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b2 ==> BV32_SGE($c1.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b2 ==> BV32_SGE($c1.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b1 ==> BV32_SLE($c1.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b1 ==> BV32_SLE($c1.0$2, $1$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b0 ==> $c1.0$1 mod 1048576 == $1$1 mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b0 ==> $c1.0$2 mod 1048576 == $1$2 mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$L ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$x ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 2))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 32))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n)), 62)), BV64_ADD(BV64_MUL(2, BV32_ZEXT64(local_id_x$1)), $c0)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 32), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))), $c0), 32), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 15} p6$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 16} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel0.shared_x_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8)) == v2$1 then 1 else 0) != 0;
    v6$1 := (if p6$1 then BV64_SLT($c1.0$1, BV64_SDIV($c0, 2)) else v6$1);
    v6$2 := (if p6$2 then BV64_SLT($c1.0$2, BV64_SDIV($c0, 2)) else v6$2);
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
    p7$1 := (if p6$1 && v6$1 then v6$1 else p7$1);
    p7$2 := (if p6$2 && v6$2 then v6$2 else p7$2);
    p6$1 := (if p6$1 && !v6$1 then v6$1 else p6$1);
    p6$2 := (if p6$2 && !v6$2 then v6$2 else p6$2);
    v7$1 := (if p7$1 then BV64_SGE(BV64_ADD(v2$1, $c0), BV64_ADD($c1.0$1, 32)) else v7$1);
    v7$2 := (if p7$2 then BV64_SGE(BV64_ADD(v2$2, $c0), BV64_ADD($c1.0$2, 32)) else v7$2);
    p9$1 := (if p7$1 && v7$1 then v7$1 else p9$1);
    p9$2 := (if p7$2 && v7$2 then v7$2 else p9$2);
    v8$1 := (if p9$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), 31), BV64_ADD(v2$1, $c0)) else v8$1);
    v8$2 := (if p9$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), 31), BV64_ADD(v2$2, $c0)) else v8$2);
    p11$1 := (if p9$1 && v8$1 then v8$1 else p11$1);
    p11$2 := (if p9$2 && v8$2 then v8$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$x(p11$1, BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0), $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$x(p11$2, BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0), $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$x"} true;
    v9$1 := (if p11$1 then $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0)] else v9$1);
    v9$2 := (if p11$2 then $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0)] else v9$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$kernel0.shared_x_0(p11$1, v1$1, v9$1, $$kernel0.shared_x_0[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0(p11$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$kernel0.shared_x_0(p11$2, v1$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_x_0"} true;
    $$kernel0.shared_x_0[1bv1][v1$1] := (if p11$1 then v9$1 else $$kernel0.shared_x_0[1bv1][v1$1]);
    $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p11$2 then v9$2 else $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    goto __partitioned_block_$10_1;

  __partitioned_block_$10_1:
    call {:sourceloc_num 23} $bugle_barrier_duplicated_0(-1, -1, p7$1, p7$2);
    v10$1 := (if p7$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), v2$1), $c1.0$1), $c0) else v10$1);
    v10$2 := (if p7$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), v2$2), $c1.0$2), $c0) else v10$2);
    p13$1 := (if p7$1 && v10$1 then v10$1 else p13$1);
    p13$2 := (if p7$2 && v10$2 then v10$2 else p13$2);
    v11$1 := (if p13$1 then BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(2, v2$1), BV64_MUL(2, $c1.0$1)), 2)) else v11$1);
    v11$2 := (if p13$2 then BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(2, v2$2), BV64_MUL(2, $c1.0$2)), 2)) else v11$2);
    p15$1 := (if p13$1 && v11$1 then v11$1 else p15$1);
    p15$2 := (if p13$2 && v11$2 then v11$2 else p15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p15$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p15$2 then _HAVOC_int$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$x(p15$1, BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0), $$x[BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$x(p15$2, BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0), $$x[BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$x"} true;
    v13$1 := (if p15$1 then $$x[BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0)] else v13$1);
    v13$2 := (if p15$2 then $$x[BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0)] else v13$2);
    v14$1 := (if p15$1 then BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$1), 31), 32, 0) else v14$1);
    v14$2 := (if p15$2 then BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$2), 31), 32, 0) else v14$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$kernel0.shared_x_0(p15$1, v14$1, $$kernel0.shared_x_0[1bv1][v14$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$kernel0.shared_x_0(p15$2, v14$2, $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v14$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_x_0"} true;
    v15$1 := (if p15$1 then $$kernel0.shared_x_0[1bv1][v14$1] else v15$1);
    v15$2 := (if p15$2 then $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v14$2] else v15$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel0.shared_x_0(p15$1, v14$1, FSUB64(v15$1, FMUL64(v12$1, v13$1)), $$kernel0.shared_x_0[1bv1][v14$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0(p15$2, v14$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel0.shared_x_0(p15$2, v14$2, FSUB64(v15$2, FMUL64(v12$2, v13$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_x_0"} true;
    $$kernel0.shared_x_0[1bv1][v14$1] := (if p15$1 then FSUB64(v15$1, FMUL64(v12$1, v13$1)) else $$kernel0.shared_x_0[1bv1][v14$1]);
    $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v14$2] := (if p15$2 then FSUB64(v15$2, FMUL64(v12$2, v13$2)) else $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v14$2]);
    goto __partitioned_block_$10_2;

  __partitioned_block_$10_2:
    call {:sourceloc_num 31} $bugle_barrier_duplicated_1(-1, -1, p7$1, p7$2);
    v16$1 := (if p7$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), 31), BV64_ADD(v2$1, $c0)) else v16$1);
    v16$2 := (if p7$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), 31), BV64_ADD(v2$2, $c0)) else v16$2);
    p17$1 := (if p7$1 && v16$1 then v16$1 else p17$1);
    p17$2 := (if p7$2 && v16$2 then v16$2 else p17$2);
    v17$1 := (if p17$1 then BV64_SGE(BV64_ADD(BV64_MUL(2, v2$1), $c0), BV64_ADD(BV64_MUL(2, $c1.0$1), 64)) else v17$1);
    v17$2 := (if p17$2 then BV64_SGE(BV64_ADD(BV64_MUL(2, v2$2), $c0), BV64_ADD(BV64_MUL(2, $c1.0$2), 64)) else v17$2);
    p19$1 := (if p17$1 && v17$1 then v17$1 else p19$1);
    p19$2 := (if p17$2 && v17$2 then v17$2 else p19$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$kernel0.shared_x_0(p19$1, v1$1, $$kernel0.shared_x_0[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$kernel0.shared_x_0(p19$2, v1$2, $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_x_0"} true;
    v18$1 := (if p19$1 then $$kernel0.shared_x_0[1bv1][v1$1] else v18$1);
    v18$2 := (if p19$2 then $$kernel0.shared_x_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v18$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$x(p19$1, BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0), v18$1, $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(p19$2, BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$x(p19$2, BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0), v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$x"} true;
    $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0)] := (if p19$1 then v18$1 else $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$1, $c0), $c1.0$1), 32), 32, 0)]);
    $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0)] := (if p19$2 then v18$2 else $$x[BV_EXTRACT(BV64_SUB(BV64_SUB(BV64_ADD(v2$2, $c0), $c1.0$2), 32), 32, 0)]);
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p6$1 && !p6$2;
    return;

  $10.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$10_0;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

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
  modifies $$kernel0.shared_x_0, $$x, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel0.shared_x_0, $$x, _TRACKING;



const {:existential true} _b0: bool;

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

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const _WATCHED_VALUE_$$L: int;

procedure {:inline 1} _LOG_READ_$$L(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$L;



implementation {:inline 1} _LOG_READ_$$L(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$L := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$L == _value then true else _READ_HAS_OCCURRED_$$L);
    return;
}



procedure _CHECK_READ_$$L(_P: bool, _offset: int, _value: int);
  requires {:source_name "L"} {:array "$$L"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$L);
  requires {:source_name "L"} {:array "$$L"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$L: bool;

procedure {:inline 1} _LOG_WRITE_$$L(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$L, _WRITE_READ_BENIGN_FLAG_$$L;



implementation {:inline 1} _LOG_WRITE_$$L(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$L := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$L == _value then true else _WRITE_HAS_OCCURRED_$$L);
    _WRITE_READ_BENIGN_FLAG_$$L := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$L == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$L);
    return;
}



procedure _CHECK_WRITE_$$L(_P: bool, _offset: int, _value: int);
  requires {:source_name "L"} {:array "$$L"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$L != _value);
  requires {:source_name "L"} {:array "$$L"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$L != _value);
  requires {:source_name "L"} {:array "$$L"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$L(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$L;



implementation {:inline 1} _LOG_ATOMIC_$$L(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$L := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$L);
    return;
}



procedure _CHECK_ATOMIC_$$L(_P: bool, _offset: int);
  requires {:source_name "L"} {:array "$$L"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset);
  requires {:source_name "L"} {:array "$$L"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$L(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$L;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$L(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$L := (if _P && _WRITE_HAS_OCCURRED_$$L && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$L);
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



const _WATCHED_VALUE_$$kernel0.shared_x_0: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_x_0;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_x_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_x_0 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_x_0);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_x_0 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_x_0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_x_0(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_x_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_x_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_x_0(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_x_0(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_x_0(_P: bool, _offset: int);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_x_0"} {:array "$$kernel0.shared_x_0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_x_0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_x_0);
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_x_0;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_x_0;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0;
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
    havoc $$kernel0.shared_x_0;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_x_0;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_x_0;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_x_0;
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
    havoc $$kernel0.shared_x_0;
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

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;
