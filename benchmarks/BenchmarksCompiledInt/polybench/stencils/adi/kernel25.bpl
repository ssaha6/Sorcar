type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$d"} {:global} {:elem_width 64} {:source_name "d"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d: bool;

axiom {:array_info "$$e"} {:global} {:elem_width 64} {:source_name "e"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$e: bool;

axiom {:array_info "$$f"} {:global} {:elem_width 64} {:source_name "f"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$f: bool;

var {:source_name "p"} {:global} $$p: [int]int;

axiom {:array_info "$$p"} {:global} {:elem_width 64} {:source_name "p"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "shared_d"} {:group_shared} $$kernel25.shared_d: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_d"} {:group_shared} {:elem_width 64} {:source_name "shared_d"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:source_name "shared_e"} {:group_shared} $$kernel25.shared_e: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_e"} {:group_shared} {:elem_width 64} {:source_name "shared_e"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:source_name "shared_f"} {:group_shared} $$kernel25.shared_f: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_f"} {:group_shared} {:elem_width 64} {:source_name "shared_f"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f: bool;

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

function FDIV64(int, int) : int;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

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

procedure {:source_name "kernel25"} {:kernel} $kernel25($n: int, $tsteps: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d && !_WRITE_HAS_OCCURRED_$$d && !_ATOMIC_HAS_OCCURRED_$$d;
  requires !_READ_HAS_OCCURRED_$$e && !_WRITE_HAS_OCCURRED_$$e && !_ATOMIC_HAS_OCCURRED_$$e;
  requires !_READ_HAS_OCCURRED_$$f && !_WRITE_HAS_OCCURRED_$$f && !_ATOMIC_HAS_OCCURRED_$$f;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_d && !_WRITE_HAS_OCCURRED_$$kernel25.shared_d && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_e && !_WRITE_HAS_OCCURRED_$$kernel25.shared_e && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_f && !_WRITE_HAS_OCCURRED_$$kernel25.shared_f && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
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
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, _WRITE_HAS_OCCURRED_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d, _WRITE_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e, _WRITE_HAS_OCCURRED_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f, $$p, _TRACKING, _READ_HAS_OCCURRED_$$kernel25.shared_f, _READ_HAS_OCCURRED_$$kernel25.shared_d, _READ_HAS_OCCURRED_$$p, _READ_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _TRACKING;



implementation {:source_name "kernel25"} {:kernel} $kernel25($n: int, $tsteps: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
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
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$p$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$p$ghost$$12: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0;
    v2$2 := v1$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$kernel25.shared_d(p0$1, 0, v3$1, $$kernel25.shared_d[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$kernel25.shared_d(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_d"} true;
    $$kernel25.shared_d[1bv1][0] := (if p0$1 then v3$1 else $$kernel25.shared_d[1bv1][0]);
    $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel25.shared_e(p0$1, 0, v4$1, $$kernel25.shared_e[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel25.shared_e(p0$2, 0, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_e"} true;
    $$kernel25.shared_e[1bv1][0] := (if p0$1 then v4$1 else $$kernel25.shared_e[1bv1][0]);
    $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v4$2 else $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$kernel25.shared_f(p0$1, 0, v5$1, $$kernel25.shared_f[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$kernel25.shared_f(p0$2, 0, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_f"} true;
    $$kernel25.shared_f[1bv1][0] := (if p0$1 then v5$1 else $$kernel25.shared_f[1bv1][0]);
    $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v5$2 else $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b72 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b71 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b70 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b69 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b68 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b67 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b66 ==> _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b65 ==> _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b64 ==> !_WRITE_HAS_OCCURRED_$$p;
    assert {:tag "noread"} _b63 ==> !_READ_HAS_OCCURRED_$$p;
    assert {:tag "predicatedEquality"} _b62 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b61 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b60 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b59 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b58 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b57 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b56 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b55 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b54 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b53 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b52 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b51 ==> p2$1 && p2$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b50 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b49 ==> p2$1 && p2$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b48 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b47 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b46 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b45 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 15} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p16$1 := false;
    p16$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    $c2.0$1 := (if p3$1 then 0 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$p$ghost$$5 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$5 := _WRITE_HAS_OCCURRED_$$p;
    _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_d;
    _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_e;
    _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b103 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b102 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b101 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assert {:tag "disabledMaintainsInstrumentation"} _b100 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b99 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b98 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assert {:tag "disabledMaintainsInstrumentation"} _b97 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b96 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b95 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assert {:tag "disabledMaintainsInstrumentation"} _b94 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$5 == _WRITE_HAS_OCCURRED_$$p;
    assert {:tag "disabledMaintainsInstrumentation"} _b93 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$5 == _READ_HAS_OCCURRED_$$p;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b92 ==> _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b91 ==> _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b90 ==> !_WRITE_HAS_OCCURRED_$$p;
    assert {:tag "noread"} _b89 ==> !_READ_HAS_OCCURRED_$$p;
    assert {:tag "predicatedEquality"} _b88 ==> p4$1 && p4$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b87 ==> p4$1 && p4$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b86 ==> p4$1 && p4$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b85 ==> p4$1 && p4$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b84 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b83 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b82 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b81 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b80 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b79 ==> p4$1 && p4$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b78 ==> p4$1 && p4$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b77 ==> p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b76 ==> p4$1 && p4$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b75 ==> p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "loopPredicateEquality"} _b74 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b73 ==> p4$1 == p4$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b11 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b11 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV32_UGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV32_UGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b9 ==> BV32_ULE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b9 ==> BV32_ULE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b8 ==> BV32_SGE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b8 ==> BV32_SGE($c2.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b7 ==> BV32_SLE($c2.0$1, 0);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b7 ==> BV32_SLE($c2.0$2, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b6 ==> $c2.0$1 mod 32 == 0 mod 32;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b6 ==> $c2.0$2 mod 32 == 0 mod 32;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 17} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v7$2);
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
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    v8$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2)) else v8$1);
    v8$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2)) else v8$2);
    p7$1 := (if p5$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p5$2 && v8$2 then v8$2 else p7$2);
    v9$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    v10$1 := (if p9$1 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$1), 1)) else v10$1);
    v10$2 := (if p9$2 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$2), 1)) else v10$2);
    p11$1 := (if p9$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p9$2 && v10$2 then v10$2 else p11$2);
    p10$1 := (if p9$1 && !v10$1 then !v10$1 else p10$1);
    p10$2 := (if p9$2 && !v10$2 then !v10$2 else p10$2);
    $0$1 := (if p10$1 then BV64_ADD(BV64_SUB(0, $c2.0$1), 1) else $0$1);
    $0$2 := (if p10$2 then BV64_ADD(BV64_SUB(0, $c2.0$2), 1) else $0$2);
    $0$1 := (if p11$1 then 0 else $0$1);
    $0$2 := (if p11$2 then 0 else $0$2);
    $c4.0$1 := (if p9$1 then $0$1 else $c4.0$1);
    $c4.0$2 := (if p9$2 then $0$2 else $c4.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$p$ghost$$12 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$12 := _WRITE_HAS_OCCURRED_$$p;
    _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_d;
    _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_e;
    _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b113 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b112 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b111 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_e;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b110 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b109 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_d;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b108 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0;
    assert {:tag "disabledMaintainsInstrumentation"} _b107 ==> !p9$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$12 == _WRITE_HAS_OCCURRED_$$p;
    assert {:tag "disabledMaintainsInstrumentation"} _b106 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$12 == _READ_HAS_OCCURRED_$$p;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b105 ==> _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b104 ==> _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p4$1;
    assert p12$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b26 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b25 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b24 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) && BV64_SLE($c4.0$1, $1$1) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b24 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1) && BV64_SLE($c4.0$2, $1$2) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b23 ==> p12$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b23 ==> p12$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b22 ==> BV32_UGE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b22 ==> BV32_UGE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b21 ==> BV32_ULE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b21 ==> BV32_ULE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b20 ==> BV32_SGE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b20 ==> BV32_SGE($c4.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b19 ==> BV32_SLE($c4.0$1, $0$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b19 ==> BV32_SLE($c4.0$2, $0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p12$1 ==> _b18 ==> $c4.0$1 mod 1 == $0$1 mod 1;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p12$2 ==> _b18 ==> $c4.0$2 mod 1 == $0$2 mod 1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 24} p12$1 ==> true;
    v11$1 := (if p12$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2)) else v11$1);
    v11$2 := (if p12$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2)) else v11$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p14$1 := (if p12$1 && v11$1 then v11$1 else p14$1);
    p14$2 := (if p12$2 && v11$2 then v11$2 else p14$2);
    p13$1 := (if p12$1 && !v11$1 then !v11$1 else p13$1);
    p13$2 := (if p12$2 && !v11$2 then !v11$2 else p13$2);
    $1$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2) else $1$1);
    $1$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2) else $1$2);
    $1$1 := (if p14$1 then 31 else $1$1);
    $1$2 := (if p14$2 then 31 else $1$2);
    v12$1 := (if p12$1 then BV64_SLE($c4.0$1, $1$1) else v12$1);
    v12$2 := (if p12$2 then BV64_SLE($c4.0$2, $1$2) else v12$2);
    p15$1 := (if p12$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p12$2 && v12$2 then v12$2 else p15$2);
    p12$1 := (if p12$1 && !v12$1 then v12$1 else p12$1);
    p12$2 := (if p12$2 && !v12$2 then v12$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$kernel25.shared_f(p15$1, 0, $$kernel25.shared_f[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$kernel25.shared_f(p15$2, 0, $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_f"} true;
    v13$1 := (if p15$1 then $$kernel25.shared_f[1bv1][0] else v13$1);
    v13$2 := (if p15$2 then $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v13$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$kernel25.shared_d(p15$1, 0, $$kernel25.shared_d[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$kernel25.shared_d(p15$2, 0, $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_d"} true;
    v14$1 := (if p15$1 then $$kernel25.shared_d[1bv1][0] else v14$1);
    v14$2 := (if p15$2 then $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v14$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$p(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$p"} true;
    v15$1 := (if p15$1 then $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)] else v15$1);
    v15$2 := (if p15$2 then $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)] else v15$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$kernel25.shared_e(p15$1, 0, $$kernel25.shared_e[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$kernel25.shared_e(p15$2, 0, $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_e"} true;
    v16$1 := (if p15$1 then $$kernel25.shared_e[1bv1][0] else v16$1);
    v16$2 := (if p15$2 then $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v16$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$p(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0), FDIV64(FSUB64(-9223372036854775808, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0), FDIV64(FSUB64(-9223372036854775808, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$p"} true;
    $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)] := (if p15$1 then FDIV64(FSUB64(-9223372036854775808, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)) else $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)] := (if p15$2 then FDIV64(FSUB64(-9223372036854775808, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)) else $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)]);
    $c4.0$1 := (if p15$1 then BV64_ADD($c4.0$1, 1) else $c4.0$1);
    $c4.0$2 := (if p15$2 then BV64_ADD($c4.0$2, 1) else $c4.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 37} $bugle_barrier_duplicated_1(-1, -1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $12;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, $$p, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, $$p, _TRACKING;



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

const _WATCHED_VALUE_$$d: int;

procedure {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _READ_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_READ_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d: bool;

procedure {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _WRITE_HAS_OCCURRED_$$d);
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



procedure _CHECK_WRITE_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_ATOMIC_$$d(_P: bool, _offset: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



const _WATCHED_VALUE_$$e: int;

procedure {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _READ_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_READ_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$e);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$e: bool;

procedure {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$e, _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _WRITE_HAS_OCCURRED_$$e);
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



procedure _CHECK_WRITE_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_ATOMIC_$$e(_P: bool, _offset: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



const _WATCHED_VALUE_$$f: int;

procedure {:inline 1} _LOG_READ_$$f(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_READ_$$f(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _READ_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_READ_$$f(_P: bool, _offset: int, _value: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$f);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$f: bool;

procedure {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$f, _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _WRITE_HAS_OCCURRED_$$f);
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



procedure _CHECK_WRITE_$$f(_P: bool, _offset: int, _value: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_ATOMIC_$$f(_P: bool, _offset: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



const _WATCHED_VALUE_$$p: int;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_ATOMIC_$$p(_P: bool, _offset: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_d: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_d;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_d);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_d);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_e: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_e;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_e);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_e);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_f: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_f;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_f);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_f);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_d;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_e;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_f;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel25.shared_d;
    goto anon5;

  anon5:
    havoc $$kernel25.shared_e;
    goto anon6;

  anon6:
    havoc $$kernel25.shared_f;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_d;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_e;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_f;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel25.shared_d;
    goto anon5;

  anon5:
    havoc $$kernel25.shared_e;
    goto anon6;

  anon6:
    havoc $$kernel25.shared_f;
    goto anon7;

  anon11_Then:
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

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;
