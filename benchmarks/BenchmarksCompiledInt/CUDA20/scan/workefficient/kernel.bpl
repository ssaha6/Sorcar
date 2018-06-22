type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_odata"} {:global} $$g_odata: [int]int;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

axiom {:array_info "$$g_idata"} {:global} {:elem_width 32} {:source_name "g_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_idata: bool;

var {:source_name "temp"} {:group_shared} $$_ZZ25scan_workefficient_kernelPfS_iE4temp: [bv1][int]int;

axiom {:array_info "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:group_shared} {:elem_width 32} {:source_name "temp"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp: bool;

const _WATCHED_OFFSET: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_ASHR(int, int) : int;

function FADD32(int, int) : int;

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

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "scan_workefficient_kernel"} {:kernel} $_Z25scan_workefficient_kernelPfS_i($n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == BV32_MUL(group_size_x, 2) then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND($n, BV32_SUB($n, 1)) == 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$g_idata && !_WRITE_HAS_OCCURRED_$$g_idata && !_ATOMIC_HAS_OCCURRED_$$g_idata;
  requires !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && !_ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
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
  modifies $$_ZZ25scan_workefficient_kernelPfS_iE4temp, _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp, $$g_odata, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _TRACKING, _TRACKING;



implementation {:source_name "scan_workefficient_kernel"} {:kernel} $_Z25scan_workefficient_kernelPfS_i($n: int)
{
  var $offset.0: int;
  var $d.0: int;
  var $offset.1: int;
  var $d1.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3: int;
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
  var v9: bool;
  var v10: int;
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
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
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


  $0:
    havoc v0$1, v0$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_MUL(2, local_id_x$1), v0$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_MUL(2, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_MUL(2, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_MUL(2, local_id_x$2), v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_MUL(2, local_id_x$1)] := v0$1;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(2, local_id_x$2)] := v0$2;
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(2, local_id_x$1), 1), v1$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1), v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)] := v1$1;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2, local_id_x$2), 1)] := v1$2;
    $offset.0, $d.0 := 1, BV32_ASHR($n, 1);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b49 ==> _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b48 ==> _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b47 ==> !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assert {:tag "noread"} _b46 ==> !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assert {:tag "relationalPow2"} _b45 ==> ($d.0 == 0 && $offset.0 == 2) || BV32_MUL($offset.0, $d.0) == 1;
    assert {:tag "relationalPow2"} _b44 ==> BV32_MUL($offset.0, $d.0) == 1;
    assert {:tag "relationalPow2"} _b43 ==> ($d.0 == 0 && $offset.0 == 4) || BV32_MUL($offset.0, $d.0) == 2;
    assert {:tag "relationalPow2"} _b42 ==> BV32_MUL($offset.0, $d.0) == 2;
    assert {:tag "relationalPow2"} _b41 ==> ($d.0 == 0 && $offset.0 == 8) || BV32_MUL($offset.0, $d.0) == 4;
    assert {:tag "relationalPow2"} _b40 ==> BV32_MUL($offset.0, $d.0) == 4;
    assert {:tag "relationalPow2"} _b39 ==> ($d.0 == 0 && $offset.0 == 16) || BV32_MUL($offset.0, $d.0) == 8;
    assert {:tag "relationalPow2"} _b38 ==> BV32_MUL($offset.0, $d.0) == 8;
    assert {:tag "relationalPow2"} _b37 ==> ($d.0 == 0 && $offset.0 == 32) || BV32_MUL($offset.0, $d.0) == 16;
    assert {:tag "relationalPow2"} _b36 ==> BV32_MUL($offset.0, $d.0) == 16;
    assert {:tag "relationalPow2"} _b35 ==> ($d.0 == 0 && $offset.0 == 64) || BV32_MUL($offset.0, $d.0) == 32;
    assert {:tag "relationalPow2"} _b34 ==> BV32_MUL($offset.0, $d.0) == 32;
    assert {:tag "relationalPow2"} _b33 ==> ($d.0 == 0 && $offset.0 == 128) || BV32_MUL($offset.0, $d.0) == 64;
    assert {:tag "relationalPow2"} _b32 ==> BV32_MUL($offset.0, $d.0) == 64;
    assert {:tag "relationalPow2"} _b31 ==> ($d.0 == 0 && $offset.0 == 256) || BV32_MUL($offset.0, $d.0) == 128;
    assert {:tag "relationalPow2"} _b30 ==> BV32_MUL($offset.0, $d.0) == 128;
    assert {:tag "relationalPow2"} _b29 ==> ($d.0 == 0 && $offset.0 == 512) || BV32_MUL($offset.0, $d.0) == 256;
    assert {:tag "relationalPow2"} _b28 ==> BV32_MUL($offset.0, $d.0) == 256;
    assert {:tag "relationalPow2"} _b27 ==> ($d.0 == 0 && $offset.0 == 1024) || BV32_MUL($offset.0, $d.0) == 512;
    assert {:tag "relationalPow2"} _b26 ==> BV32_MUL($offset.0, $d.0) == 512;
    assert {:tag "relationalPow2"} _b25 ==> ($d.0 == 0 && $offset.0 == 2048) || BV32_MUL($offset.0, $d.0) == 1024;
    assert {:tag "relationalPow2"} _b24 ==> BV32_MUL($offset.0, $d.0) == 1024;
    assert {:tag "relationalPow2"} _b23 ==> ($d.0 == 0 && $offset.0 == 4096) || BV32_MUL($offset.0, $d.0) == 2048;
    assert {:tag "relationalPow2"} _b22 ==> BV32_MUL($offset.0, $d.0) == 2048;
    assert {:tag "relationalPow2"} _b21 ==> ($d.0 == 0 && $offset.0 == 8192) || BV32_MUL($offset.0, $d.0) == 4096;
    assert {:tag "relationalPow2"} _b20 ==> BV32_MUL($offset.0, $d.0) == 4096;
    assert {:tag "relationalPow2"} _b19 ==> ($d.0 == 0 && $offset.0 == 16384) || BV32_MUL($offset.0, $d.0) == 8192;
    assert {:tag "relationalPow2"} _b18 ==> BV32_MUL($offset.0, $d.0) == 8192;
    assert {:tag "relationalPow2"} _b17 ==> ($d.0 == 0 && $offset.0 == 32768) || BV32_MUL($offset.0, $d.0) == 16384;
    assert {:tag "relationalPow2"} _b16 ==> BV32_MUL($offset.0, $d.0) == 16384;
    assert {:tag "relationalPow2"} _b15 ==> ($d.0 == 0 && $offset.0 == 65536) || BV32_MUL($offset.0, $d.0) == 32768;
    assert {:tag "relationalPow2"} _b14 ==> BV32_MUL($offset.0, $d.0) == 32768;
    assert {:tag "pow2NotZero"} _b13 ==> v3 != 0;
    assert {:tag "pow2"} _b12 ==> v3 == 0 || BV32_AND(v3, BV32_SUB(v3, 1)) == 0;
    assert {:tag "pow2NotZero"} _b11 ==> $d.0 != 0;
    assert {:tag "pow2"} _b10 ==> $d.0 == 0 || BV32_AND($d.0, BV32_SUB($d.0, 1)) == 0;
    assert {:tag "pow2NotZero"} _b9 ==> $offset.0 != 0;
    assert {:tag "pow2"} _b8 ==> $offset.0 == 0 || BV32_AND($offset.0, BV32_SUB($offset.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($d.0, BV32_ASHR($n, 1));
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($d.0, BV32_ASHR($n, 1));
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($d.0, BV32_ASHR($n, 1));
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($d.0, BV32_ASHR($n, 1));
    assert {:block_sourceloc} {:sourceloc_num 7} true;
    assert {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if BV32_AND(BV1_ZEXT32((if $d.0 == 0 then 1 else 0)), BV1_ZEXT32((if _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 1} (if BV32_AND(BV1_ZEXT32((if $d.0 == 0 then 1 else 0)), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    v2 := BV32_SGT($d.0, 0);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    v8$1 := local_id_x$1 == 0;
    v8$2 := local_id_x$2 == 0;
    p2$1 := (if v8$1 then v8$1 else p2$1);
    p2$2 := (if v8$2 then v8$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p2$1, BV32_SUB($n, 1), 0, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_SUB($n, 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p2$2, BV32_SUB($n, 1));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p2$2, BV32_SUB($n, 1), 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_SUB($n, 1)] := (if p2$1 then 0 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_SUB($n, 1)]);
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB($n, 1)] := (if p2$2 then 0 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB($n, 1)]);
    $offset.1, $d1.0 := $offset.0, 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b91 ==> _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b90 ==> _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b89 ==> !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assert {:tag "noread"} _b88 ==> !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assert {:tag "relationalPow2"} _b87 ==> ($offset.1 == 0 && $d1.0 == 2) || BV32_MUL($d1.0, $offset.1) == 1;
    assert {:tag "relationalPow2"} _b86 ==> BV32_MUL($d1.0, $offset.1) == 1;
    assert {:tag "relationalPow2"} _b85 ==> ($offset.1 == 0 && $d1.0 == 4) || BV32_MUL($d1.0, $offset.1) == 2;
    assert {:tag "relationalPow2"} _b84 ==> BV32_MUL($d1.0, $offset.1) == 2;
    assert {:tag "relationalPow2"} _b83 ==> ($offset.1 == 0 && $d1.0 == 8) || BV32_MUL($d1.0, $offset.1) == 4;
    assert {:tag "relationalPow2"} _b82 ==> BV32_MUL($d1.0, $offset.1) == 4;
    assert {:tag "relationalPow2"} _b81 ==> ($offset.1 == 0 && $d1.0 == 16) || BV32_MUL($d1.0, $offset.1) == 8;
    assert {:tag "relationalPow2"} _b80 ==> BV32_MUL($d1.0, $offset.1) == 8;
    assert {:tag "relationalPow2"} _b79 ==> ($offset.1 == 0 && $d1.0 == 32) || BV32_MUL($d1.0, $offset.1) == 16;
    assert {:tag "relationalPow2"} _b78 ==> BV32_MUL($d1.0, $offset.1) == 16;
    assert {:tag "relationalPow2"} _b77 ==> ($offset.1 == 0 && $d1.0 == 64) || BV32_MUL($d1.0, $offset.1) == 32;
    assert {:tag "relationalPow2"} _b76 ==> BV32_MUL($d1.0, $offset.1) == 32;
    assert {:tag "relationalPow2"} _b75 ==> ($offset.1 == 0 && $d1.0 == 128) || BV32_MUL($d1.0, $offset.1) == 64;
    assert {:tag "relationalPow2"} _b74 ==> BV32_MUL($d1.0, $offset.1) == 64;
    assert {:tag "relationalPow2"} _b73 ==> ($offset.1 == 0 && $d1.0 == 256) || BV32_MUL($d1.0, $offset.1) == 128;
    assert {:tag "relationalPow2"} _b72 ==> BV32_MUL($d1.0, $offset.1) == 128;
    assert {:tag "relationalPow2"} _b71 ==> ($offset.1 == 0 && $d1.0 == 512) || BV32_MUL($d1.0, $offset.1) == 256;
    assert {:tag "relationalPow2"} _b70 ==> BV32_MUL($d1.0, $offset.1) == 256;
    assert {:tag "relationalPow2"} _b69 ==> ($offset.1 == 0 && $d1.0 == 1024) || BV32_MUL($d1.0, $offset.1) == 512;
    assert {:tag "relationalPow2"} _b68 ==> BV32_MUL($d1.0, $offset.1) == 512;
    assert {:tag "relationalPow2"} _b67 ==> ($offset.1 == 0 && $d1.0 == 2048) || BV32_MUL($d1.0, $offset.1) == 1024;
    assert {:tag "relationalPow2"} _b66 ==> BV32_MUL($d1.0, $offset.1) == 1024;
    assert {:tag "relationalPow2"} _b65 ==> ($offset.1 == 0 && $d1.0 == 4096) || BV32_MUL($d1.0, $offset.1) == 2048;
    assert {:tag "relationalPow2"} _b64 ==> BV32_MUL($d1.0, $offset.1) == 2048;
    assert {:tag "relationalPow2"} _b63 ==> ($offset.1 == 0 && $d1.0 == 8192) || BV32_MUL($d1.0, $offset.1) == 4096;
    assert {:tag "relationalPow2"} _b62 ==> BV32_MUL($d1.0, $offset.1) == 4096;
    assert {:tag "relationalPow2"} _b61 ==> ($offset.1 == 0 && $d1.0 == 16384) || BV32_MUL($d1.0, $offset.1) == 8192;
    assert {:tag "relationalPow2"} _b60 ==> BV32_MUL($d1.0, $offset.1) == 8192;
    assert {:tag "relationalPow2"} _b59 ==> ($offset.1 == 0 && $d1.0 == 32768) || BV32_MUL($d1.0, $offset.1) == 16384;
    assert {:tag "relationalPow2"} _b58 ==> BV32_MUL($d1.0, $offset.1) == 16384;
    assert {:tag "relationalPow2"} _b57 ==> ($offset.1 == 0 && $d1.0 == 65536) || BV32_MUL($d1.0, $offset.1) == 32768;
    assert {:tag "relationalPow2"} _b56 ==> BV32_MUL($d1.0, $offset.1) == 32768;
    assert {:tag "pow2NotZero"} _b55 ==> v10 != 0;
    assert {:tag "pow2"} _b54 ==> v10 == 0 || BV32_AND(v10, BV32_SUB(v10, 1)) == 0;
    assert {:tag "pow2NotZero"} _b53 ==> $d1.0 != 0;
    assert {:tag "pow2"} _b52 ==> $d1.0 == 0 || BV32_AND($d1.0, BV32_SUB($d1.0, 1)) == 0;
    assert {:tag "pow2NotZero"} _b51 ==> $offset.1 != 0;
    assert {:tag "pow2"} _b50 ==> $offset.1 == 0 || BV32_AND($offset.1, BV32_SUB($offset.1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_UGE($d1.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_ULE($d1.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SGE($d1.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_SLE($d1.0, 1);
    assert {:block_sourceloc} {:sourceloc_num 23} true;
    v9 := BV32_SLT($d1.0, $n);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    goto __partitioned_block_$truebb2_0, __partitioned_block_$falsebb2_0;

  __partitioned_block_$falsebb2_0:
    assume {:partition} !v9;
    goto __partitioned_block_$falsebb2_1;

  __partitioned_block_$falsebb2_1:
    call {:sourceloc_num 35} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_MUL(2, local_id_x$1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_MUL(2, local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_MUL(2, local_id_x$2), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(2, local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v17$1 := $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_MUL(2, local_id_x$1)];
    v17$2 := $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(2, local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$g_odata(true, BV32_MUL(2, local_id_x$1), v17$1, $$g_odata[BV32_MUL(2, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(true, BV32_MUL(2, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$g_odata(true, BV32_MUL(2, local_id_x$2), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[BV32_MUL(2, local_id_x$1)] := v17$1;
    $$g_odata[BV32_MUL(2, local_id_x$2)] := v17$2;
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(2, local_id_x$1), 1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2, local_id_x$2), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v18$1 := $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)];
    v18$2 := $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2, local_id_x$2), 1)];
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(2, local_id_x$1), 1), v18$1, $$g_odata[BV32_ADD(BV32_MUL(2, local_id_x$1), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1), v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[BV32_ADD(BV32_MUL(2, local_id_x$1), 1)] := v18$1;
    $$g_odata[BV32_ADD(BV32_MUL(2, local_id_x$2), 1)] := v18$2;
    return;

  __partitioned_block_$truebb2_0:
    assume {:partition} v9;
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_1(-1, -1);
    v10 := BV32_ASHR($offset.1, 1);
    v11$1 := BV32_SLT(local_id_x$1, $d1.0);
    v11$2 := BV32_SLT(local_id_x$2, $d1.0);
    p5$1 := (if v11$1 then v11$1 else p5$1);
    p5$2 := (if v11$2 then v11$2 else p5$2);
    v12$1 := (if p5$1 then BV32_SUB(BV32_MUL(v10, BV32_ADD(BV32_MUL(2, local_id_x$1), 1)), 1) else v12$1);
    v12$2 := (if p5$2 then BV32_SUB(BV32_MUL(v10, BV32_ADD(BV32_MUL(2, local_id_x$2), 1)), 1) else v12$2);
    v13$1 := (if p5$1 then BV32_SUB(BV32_MUL(v10, BV32_ADD(BV32_MUL(2, local_id_x$1), 2)), 1) else v13$1);
    v13$2 := (if p5$2 then BV32_SUB(BV32_MUL(v10, BV32_ADD(BV32_MUL(2, local_id_x$2), 2)), 1) else v13$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$1, v12$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v12$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v12$2, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v12$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v14$1 := (if p5$1 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v12$1] else v14$1);
    v14$2 := (if p5$2 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v12$2] else v14$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$1, v13$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v13$2, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v15$1 := (if p5$1 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1] else v15$1);
    v15$2 := (if p5$2 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2] else v15$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$1, v12$1, v15$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v12$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v12$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v12$2, v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v12$1] := (if p5$1 then v15$1 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v12$1]);
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v12$2] := (if p5$2 then v15$2 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v12$2]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$1, v13$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v13$2, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v16$1 := (if p5$1 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1] else v16$1);
    v16$2 := (if p5$2 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2] else v16$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$1, v13$1, FADD32(v16$1, v14$1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v13$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p5$2, v13$2, FADD32(v16$2, v14$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1] := (if p5$1 then FADD32(v16$1, v14$1) else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v13$1]);
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2] := (if p5$2 then FADD32(v16$2, v14$2) else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v13$2]);
    $offset.1, $d1.0 := v10, BV32_MUL($d1.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $9;

  __partitioned_block_$truebb_0:
    assume {:partition} v2;
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_2(-1, -1);
    v3 := BV32_MUL($offset.0, 2);
    v4$1 := BV32_SLT(local_id_x$1, $d.0);
    v4$2 := BV32_SLT(local_id_x$2, $d.0);
    p1$1 := (if v4$1 then v4$1 else p1$1);
    p1$2 := (if v4$2 then v4$2 else p1$2);
    v5$1 := (if p1$1 then BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$1), 2)), 1) else v5$1);
    v5$2 := (if p1$2 then BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$2), 2)), 1) else v5$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$1, v5$1, 1065353216, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, v5$2, 1065353216);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1] := (if p1$1 then 1065353216 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1]);
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p1$2 then 1065353216 else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$1, BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$1), 1)), 1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$1), 1)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$2), 1)), 1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$2), 1)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v6$1 := (if p1$1 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$1), 1)), 1)] else v6$1);
    v6$2 := (if p1$2 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(BV32_MUL(BV32_SDIV(v3, 2), BV32_ADD(BV32_MUL(2, local_id_x$2), 1)), 1)] else v6$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$1, v5$1, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, v5$2, $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    v7$1 := (if p1$1 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1] else v7$1);
    v7$2 := (if p1$2 then $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v7$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$1, v5$1, FADD32(v7$1, v6$1), $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(p1$2, v5$2, FADD32(v7$2, v6$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} true;
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1] := (if p1$1 then FADD32(v7$1, v6$1) else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[1bv1][v5$1]);
    $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p1$2 then FADD32(v7$2, v6$2) else $$_ZZ25scan_workefficient_kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    $offset.0, $d.0 := v3, BV32_ASHR($d.0, 1);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ25scan_workefficient_kernelPfS_iE4temp, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ25scan_workefficient_kernelPfS_iE4temp, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$_ZZ25scan_workefficient_kernelPfS_iE4temp, $$g_odata, _TRACKING;



function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b0: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

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

const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$g_idata: int;

procedure {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _READ_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_idata);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_idata, _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _WRITE_HAS_OCCURRED_$$g_idata);
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



procedure _CHECK_WRITE_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_ATOMIC_$$g_idata(_P: bool, _offset: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



const _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp: int;

procedure {:inline 1} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;



implementation {:inline 1} _LOG_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp == _value then true else _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp);
    return;
}



procedure _CHECK_READ_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;



implementation {:inline 1} _LOG_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp);
    return;
}



procedure _CHECK_WRITE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ25scan_workefficient_kernelPfS_iE4temp != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ25scan_workefficient_kernelPfS_iE4temp"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ25scan_workefficient_kernelPfS_iE4temp);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ25scan_workefficient_kernelPfS_iE4temp;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ25scan_workefficient_kernelPfS_iE4temp;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



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
