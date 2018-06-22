function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "table"} {:global} $$table: [int]int;

axiom {:array_info "$$table"} {:global} {:elem_width 32} {:source_name "table"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$table: bool;

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

function  BV1_ZEXT32(x: int) : int
{
  x
}

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function  BV32_ZEXT64(x: int) : int
{
  x
}

function  BV64_ADD(x: int, y: int) : int
{
  x + y
}

function  BV64_MUL(x: int, y: int) : int
{
  x * y
}

function  BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV64_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel0"} {:kernel} $kernel0($n: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 64 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, 5) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(4, $n)), BV64_ADD($c0, 3)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$table ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$table ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 4)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$table && !_WRITE_HAS_OCCURRED_$$table && !_ATOMIC_HAS_OCCURRED_$$table;
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
  modifies _READ_HAS_OCCURRED_$$table, _WRITE_HAS_OCCURRED_$$table, _WRITE_READ_BENIGN_FLAG_$$table, _WRITE_READ_BENIGN_FLAG_$$table;



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
  var $3$1: int;
  var $3$2: int;
  var v1$1: int;
  var v1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2: bool;
  var v3: bool;
  var v4: bool;
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
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
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
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2 := BV64_SGE(BV32_SEXT64(BV32_ADD($n, 3)), $c0);
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
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    v3 := BV64_SGE($c0, BV32_SEXT64(BV32_ADD($n, 4)));
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v3;
    goto $24;

  $24:
    return;

  $truebb0:
    assume {:partition} v3;
    v4 := BV64_SGE(BV64_MUL(4, BV64_SDIV(BV64_ADD(BV32_SEXT64($n), BV64_MUL(2, $c0)), 3)), BV64_ADD(BV64_MUL(3, $c0), 1));
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v4;
    goto $24;

  $truebb1:
    assume {:partition} v4;
    goto $3;

  $3:
    v5$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94), 0);
    v5$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94), 0);
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    p1$1 := (if !v5$1 then !v5$1 else p1$1);
    p1$2 := (if !v5$2 then !v5$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94)), 3145728), 1), 3145728)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94)), 3145728), 1), 3145728)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94), 3145728) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94), 3145728) else $0$2);
    v6$1 := BV64_SGT(BV64_MUL(32, v0$1), BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, $0$1)), 1048576));
    v6$2 := BV64_SGT(BV64_MUL(32, v0$2), BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, $0$2)), 1048576));
    p2$1 := (if v6$1 then v6$1 else p2$1);
    p2$2 := (if v6$2 then v6$2 else p2$2);
    p3$1 := (if !v6$1 then !v6$1 else p3$1);
    p3$2 := (if !v6$2 then !v6$2 else p3$2);
    $1$1 := (if p2$1 then BV64_MUL(32, v0$1) else $1$1);
    $1$2 := (if p2$2 then BV64_MUL(32, v0$2) else $1$2);
    v7$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94), 0) else v7$1);
    v7$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94), 0) else v7$2);
    p4$1 := (if p3$1 && v7$1 then v7$1 else p4$1);
    p4$2 := (if p3$2 && v7$2 then v7$2 else p4$2);
    p5$1 := (if p3$1 && !v7$1 then !v7$1 else p5$1);
    p5$2 := (if p3$2 && !v7$2 then !v7$2 else p5$2);
    $2$1 := (if p4$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94)), 3145728), 1), 3145728)) else $2$1);
    $2$2 := (if p4$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94)), 3145728), 1), 3145728)) else $2$2);
    $2$1 := (if p5$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$1)), $c0), 94), 3145728) else $2$1);
    $2$2 := (if p5$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0, $n)), BV64_MUL(96, v0$2)), $c0), 94), 3145728) else $2$2);
    $1$1 := (if p3$1 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, $2$1)), 1048576) else $1$1);
    $1$2 := (if p3$2 then BV64_ADD(BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, $2$2)), 1048576) else $1$2);
    $c1.0$1 := $1$1;
    $c1.0$2 := $1$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p6$1 ==> $c1.0$1 mod 1048576 == $1$1 mod 1048576 )  && ( p6$2 ==> $c1.0$2 mod 1048576 == $1$2 mod 1048576 ) ,  ( p6$1 ==> BV32_SLE($c1.0$1, $1$1) )  && ( p6$2 ==> BV32_SLE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV32_SGE($c1.0$1, $1$1) )  && ( p6$2 ==> BV32_SGE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV32_ULE($c1.0$1, $1$1) )  && ( p6$2 ==> BV32_ULE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV32_UGE($c1.0$1, $1$1) )  && ( p6$2 ==> BV32_UGE($c1.0$2, $1$2) ) ,  (  BV64_SLE($c1.0$1, BV64_SDIV(BV64_SUB($c0, 1), 4)) ==> p6$1 )  && (  BV64_SLE($c1.0$2, BV64_SDIV(BV64_SUB($c0, 1), 4)) ==> p6$2 ) ,  (  _READ_HAS_OCCURRED_$$table ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$table ==> _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$table ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 4)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048575), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$table ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_MUL(3, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), $c0) == BV32_ZEXT64(BV32_ADD(BV32_MUL(4, BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n)), 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 17} p6$1 ==> true;
    v8$1 := (if p6$1 then BV64_SLE($c1.0$1, BV64_SDIV(BV64_SUB($c0, 1), 4)) else v8$1);
    v8$2 := (if p6$2 then BV64_SLE($c1.0$2, BV64_SDIV(BV64_SUB($c0, 1), 4)) else v8$2);
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
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    v9$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    v10$1 := (if p9$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(3, v1$1)), BV64_MUL(3, $c1.0$1)), $c0) else v10$1);
    v10$2 := (if p9$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), BV64_MUL(3, v1$2)), BV64_MUL(3, $c1.0$2)), $c0) else v10$2);
    p11$1 := (if p9$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p9$2 && v10$2 then v10$2 else p11$2);
    v11$1 := (if p11$1 then BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(4, v1$1), BV64_MUL(4, $c1.0$1)), 1)) else v11$1);
    v11$2 := (if p11$2 then BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(4, v1$2), BV64_MUL(4, $c1.0$2)), 1)) else v11$2);
    p13$1 := (if p11$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p11$2 && v11$2 then v11$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$table(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$table(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v12$1 := (if p13$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)] else v12$1);
    v12$2 := (if p13$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)] else v12$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$table(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$table(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v13$1 := (if p13$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)] else v13$1);
    v13$2 := (if p13$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)] else v13$2);
    v14$1 := (if p13$1 then BV32_SGE(v12$1, v13$1) else v14$1);
    v14$2 := (if p13$2 then BV32_SGE(v12$2, v13$2) else v14$2);
    p15$1 := (if p13$1 && v14$1 then v14$1 else p15$1);
    p15$2 := (if p13$2 && v14$2 then v14$2 else p15$2);
    p14$1 := (if p13$1 && !v14$1 then !v14$1 else p14$1);
    p14$2 := (if p13$2 && !v14$2 then !v14$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$table(p14$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$table(p14$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v16$1 := (if p14$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)] else v16$1);
    v16$2 := (if p14$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)] else v16$2);
    $3$1 := (if p14$1 then v16$1 else $3$1);
    $3$2 := (if p14$2 then v16$2 else $3$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$table(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$table(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v15$1 := (if p15$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)] else v15$1);
    v15$2 := (if p15$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)] else v15$2);
    $3$1 := (if p15$1 then v15$1 else $3$1);
    $3$2 := (if p15$2 then v15$2 else $3$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$table(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0), $3$1, $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$table(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0), $3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$table"} true;
    $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)] := (if p13$1 then $3$1 else $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$1), $c0), BV64_MUL(4, $c1.0$1)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$1), $c0), BV64_MUL(3, $c1.0$1)), 1)), 32, 0)]);
    $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)] := (if p13$2 then $3$2 else $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-4, v1$2), $c0), BV64_MUL(4, $c1.0$2)), 1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB(BV64_ADD(BV64_MUL(-3, v1$2), $c0), BV64_MUL(3, $c1.0$2)), 1)), 32, 0)]);
    $c1.0$1 := (if p7$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p7$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p6$1 && !p6$2;
    goto $24;

  $13.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $13;

  $truebb:
    assume {:partition} v2;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

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







function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}







const _WATCHED_VALUE_$$table: int;

procedure {:inline 1} _LOG_READ_$$table(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$table;



implementation {:inline 1} _LOG_READ_$$table(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then true else _READ_HAS_OCCURRED_$$table);
    return;
}



procedure _CHECK_READ_$$table(_P: bool, _offset: int, _value: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$table);
  requires {:source_name "table"} {:array "$$table"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$table: bool;

procedure {:inline 1} _LOG_WRITE_$$table(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$table, _WRITE_READ_BENIGN_FLAG_$$table;



implementation {:inline 1} _LOG_WRITE_$$table(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then true else _WRITE_HAS_OCCURRED_$$table);
    _WRITE_READ_BENIGN_FLAG_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$table);
    return;
}



procedure _CHECK_WRITE_$$table(_P: bool, _offset: int, _value: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table != _value);
  requires {:source_name "table"} {:array "$$table"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table != _value);
  requires {:source_name "table"} {:array "$$table"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$table(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$table;



implementation {:inline 1} _LOG_ATOMIC_$$table(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$table);
    return;
}



procedure _CHECK_ATOMIC_$$table(_P: bool, _offset: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);
  requires {:source_name "table"} {:array "$$table"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$table;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$table := (if _P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$table);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}




