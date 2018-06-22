function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool,
 b0016: bool,
 b0017: bool,
 b0018: bool,
 b0019: bool,
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool,
 b0024: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

var {:source_name "isums"} {:global} $$isums: [int]int;

axiom {:array_info "$$isums"} {:global} {:elem_width 32} {:source_name "isums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$isums: bool;

var {:source_name "lmem"} {:group_shared} $$lmem: [bv1][int]int;

axiom {:array_info "$$lmem"} {:group_shared} {:elem_width 32} {:source_name "lmem"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lmem: bool;

var {:source_name "digit_counts"} $$digit_counts$1: [int]int;

var {:source_name "digit_counts"} $$digit_counts$2: [int]int;

axiom {:array_info "$$digit_counts"} {:elem_width 32} {:source_name "digit_counts"} {:source_elem_width 32} {:source_dimensions "16"} true;

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

function BV32_LSHR(int, int) : int;

function  BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

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

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "reduce"} {:kernel} $reduce($n: int, $shift: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 262144 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$isums && !_WRITE_HAS_OCCURRED_$$isums && !_ATOMIC_HAS_OCCURRED_$$isums;
  requires !_READ_HAS_OCCURRED_$$lmem && !_WRITE_HAS_OCCURRED_$$lmem && !_ATOMIC_HAS_OCCURRED_$$lmem;
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
  modifies $$lmem, _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, $$isums, _TRACKING, _READ_HAS_OCCURRED_$$lmem, _WRITE_HAS_OCCURRED_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums, _TRACKING;



implementation {:source_name "reduce"} {:kernel} $reduce($n: int, $shift: int)
{
  var $0$1: int;
  var $0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $d.0: int;
  var $s.0: int;
  var v0: int;
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
  var v8: bool;
  var v9$1: int;
  var v9$2: int;
  var v10: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0 := BV32_MUL(BV32_UDIV(BV32_SDIV($n, 4), num_groups_x), 4);
    v1$1 := BV32_MUL(group_id_x$1, v0);
    v1$2 := BV32_MUL(group_id_x$2, v0);
    v2$1 := group_id_x$1 == BV32_SUB(num_groups_x, 1);
    v2$2 := group_id_x$2 == BV32_SUB(num_groups_x, 1);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    $0$1 := (if p0$1 then $n else $0$1);
    $0$2 := (if p0$2 then $n else $0$2);
    $0$1 := (if p1$1 then BV32_ADD(v1$1, v0) else $0$1);
    $0$2 := (if p1$2 then BV32_ADD(v1$2, v0) else $0$2);
    v3$1 := local_id_x$1;
    v3$2 := local_id_x$2;
    $$digit_counts$1[0] := 0;
    $$digit_counts$2[0] := 0;
    $$digit_counts$1[1] := 0;
    $$digit_counts$2[1] := 0;
    $$digit_counts$1[2] := 0;
    $$digit_counts$2[2] := 0;
    $$digit_counts$1[3] := 0;
    $$digit_counts$2[3] := 0;
    $$digit_counts$1[4] := 0;
    $$digit_counts$2[4] := 0;
    $$digit_counts$1[5] := 0;
    $$digit_counts$2[5] := 0;
    $$digit_counts$1[6] := 0;
    $$digit_counts$2[6] := 0;
    $$digit_counts$1[7] := 0;
    $$digit_counts$2[7] := 0;
    $$digit_counts$1[8] := 0;
    $$digit_counts$2[8] := 0;
    $$digit_counts$1[9] := 0;
    $$digit_counts$2[9] := 0;
    $$digit_counts$1[10] := 0;
    $$digit_counts$2[10] := 0;
    $$digit_counts$1[11] := 0;
    $$digit_counts$2[11] := 0;
    $$digit_counts$1[12] := 0;
    $$digit_counts$2[12] := 0;
    $$digit_counts$1[13] := 0;
    $$digit_counts$2[13] := 0;
    $$digit_counts$1[14] := 0;
    $$digit_counts$2[14] := 0;
    $$digit_counts$1[15] := 0;
    $$digit_counts$2[15] := 0;
    $i.0$1 := BV32_ADD(v1$1, v3$1);
    $i.0$2 := BV32_ADD(v1$2, v3$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 21} p2$1 ==> true;
    v4$1 := (if p2$1 then BV32_SLT($i.0$1, $0$1) else v4$1);
    v4$2 := (if p2$2 then BV32_SLT($i.0$2, $0$2) else v4$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p3$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p3$2 then _HAVOC_int$2 else v5$2);
    v6$1 := (if p3$1 then BV32_AND(BV32_LSHR(v5$1, BV32_AND($shift, 31)), 15) else v6$1);
    v6$2 := (if p3$2 then BV32_AND(BV32_LSHR(v5$2, BV32_AND($shift, 31)), 15) else v6$2);
    v7$1 := (if p3$1 then $$digit_counts$1[v6$1] else v7$1);
    v7$2 := (if p3$2 then $$digit_counts$2[v6$2] else v7$2);
    $$digit_counts$1[v6$1] := (if p3$1 then BV32_ADD(v7$1, 1) else $$digit_counts$1[v6$1]);
    $$digit_counts$2[v6$2] := (if p3$2 then BV32_ADD(v7$2, 1) else $$digit_counts$2[v6$2]);
    $i.0$1 := (if p3$1 then BV32_ADD($i.0$1, group_size_x) else $i.0$1);
    $i.0$2 := (if p3$2 then BV32_ADD($i.0$2, group_size_x) else $i.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p2$1 && !p2$2;
    $d.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  $d.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($d.0, 0) ) ,  (  BV32_SGE($d.0, 0) ) ,  (  BV32_ULE($d.0, 0) ) ,  (  BV32_UGE($d.0, 0) ) ,  true ,  true ,  true ,  true ,  (  $s.0 == 0 || BV32_AND($s.0, BV32_SUB($s.0, 1)) == 0 ) ,  (  $s.0 != 0 ) ,  (  !_WRITE_HAS_OCCURRED_$$isums ) ,  (  _WRITE_HAS_OCCURRED_$$isums ==> BV32_SLE(group_id_x$1, _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$isums ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(group_id_x$1, 1)) ) ,  (  _WRITE_HAS_OCCURRED_$$isums ==> _WATCHED_OFFSET mod BV32_MUL(1, num_groups_x) == BV32_ADD(BV32_MUL(0, num_groups_x), group_id_x$1) mod BV32_MUL(1, num_groups_x) ) ,  (  !_READ_HAS_OCCURRED_$$lmem ) ,  (  !_WRITE_HAS_OCCURRED_$$lmem ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 ) ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 27} true;
    assert {:originated_from_invariant} {:sourceloc_num 28} {:thread 1} (if v3$1 != 0 ==> BV1_XOR((if _WRITE_HAS_OCCURRED_$$isums then 1 else 0), -1) == 1 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 29} {:thread 1} (if v3$1 != 0 ==> BV1_XOR((if _READ_HAS_OCCURRED_$$lmem then 1 else 0), -1) == 1 then 1 else 0) != 0;
    v8 := BV32_SLT($d.0, 16);
    goto __partitioned_block_$truebb1_0, $falsebb1;

  $falsebb1:
    assume {:partition} !v8;
    return;

  __partitioned_block_$truebb1_0:
    assume {:partition} v8;
    v9$1 := $$digit_counts$1[$d.0];
    v9$2 := $$digit_counts$2[$d.0];
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$lmem(true, v3$1, v9$1, $$lmem[1bv1][v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$lmem(true, v3$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v3$1] := v9$1;
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] := v9$2;
    goto __partitioned_block_$truebb1_1;

  __partitioned_block_$truebb1_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_0(-1, 0);
    $s.0 := BV32_UDIV(group_size_x, 2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  (  BV32_SLE($s.0, BV32_UDIV(group_size_x, 2)) ) ,  (  BV32_SGE($s.0, BV32_UDIV(group_size_x, 2)) ) ,  (  BV32_ULE($s.0, BV32_UDIV(group_size_x, 2)) ) ,  (  BV32_UGE($s.0, BV32_UDIV(group_size_x, 2)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $s.0 == 0 || BV32_AND($s.0, BV32_SUB($s.0, 1)) == 0 ) ,  (  $s.0 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$lmem ) ,  (  !_WRITE_HAS_OCCURRED_$$lmem ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == local_id_x$1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 34} true;
    v10 := BV32_UGT($s.0, 0);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    goto __partitioned_block_$truebb2_0, $falsebb2;

  $falsebb2:
    assume {:partition} !v10;
    v14$1 := v3$1 == 0;
    v14$2 := v3$2 == 0;
    p8$1 := (if v14$1 then v14$1 else p8$1);
    p8$2 := (if v14$2 then v14$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$lmem(p8$1, 0, $$lmem[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$lmem(p8$2, 0, $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v15$1 := (if p8$1 then $$lmem[1bv1][0] else v15$1);
    v15$2 := (if p8$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v15$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$isums(p8$1, BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$1), v15$1, $$isums[BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(p8$2, BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$isums(p8$2, BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$2), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$isums"} true;
    $$isums[BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$1)] := (if p8$1 then v15$1 else $$isums[BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$1)]);
    $$isums[BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$2)] := (if p8$2 then v15$2 else $$isums[BV32_ADD(BV32_MUL($d.0, num_groups_x), group_id_x$2)]);
    $d.0 := BV32_ADD($d.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $7;

  __partitioned_block_$truebb2_0:
    assume {:partition} v10;
    v11$1 := BV32_ULT(v3$1, $s.0);
    v11$2 := BV32_ULT(v3$2, $s.0);
    p6$1 := (if v11$1 then v11$1 else p6$1);
    p6$2 := (if v11$2 then v11$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$lmem(p6$1, BV32_ADD(v3$1, $s.0), $$lmem[1bv1][BV32_ADD(v3$1, $s.0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$lmem(p6$2, BV32_ADD(v3$2, $s.0), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v3$2, $s.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v12$1 := (if p6$1 then $$lmem[1bv1][BV32_ADD(v3$1, $s.0)] else v12$1);
    v12$2 := (if p6$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v3$2, $s.0)] else v12$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$lmem(p6$1, v3$1, $$lmem[1bv1][v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$lmem(p6$2, v3$2, $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v13$1 := (if p6$1 then $$lmem[1bv1][v3$1] else v13$1);
    v13$2 := (if p6$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] else v13$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$lmem(p6$1, v3$1, BV32_ADD(v13$1, v12$1), $$lmem[1bv1][v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p6$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$lmem(p6$2, v3$2, BV32_ADD(v13$2, v12$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v3$1] := (if p6$1 then BV32_ADD(v13$1, v12$1) else $$lmem[1bv1][v3$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] := (if p6$2 then BV32_ADD(v13$2, v12$2) else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 41} $bugle_barrier_duplicated_1(-1, 0);
    $s.0 := BV32_LSHR($s.0, 1);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $9;

  $4.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $4;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

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
  requires $1 == 0;
  modifies $$lmem, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$isums, _TRACKING;





function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}











const _WATCHED_VALUE_$$in: int;

procedure {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _READ_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_READ_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$in);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$in: bool;

procedure {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$in, _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _WRITE_HAS_OCCURRED_$$in);
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



procedure _CHECK_WRITE_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_ATOMIC_$$in(_P: bool, _offset: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



const _WATCHED_VALUE_$$isums: int;

procedure {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _READ_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_READ_$$isums(_P: bool, _offset: int, _value: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$isums);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$isums: bool;

procedure {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _WRITE_HAS_OCCURRED_$$isums);
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



procedure _CHECK_WRITE_$$isums(_P: bool, _offset: int, _value: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_ATOMIC_$$isums(_P: bool, _offset: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



const _WATCHED_VALUE_$$lmem: int;

procedure {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _READ_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_READ_$$lmem(_P: bool, _offset: int, _value: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$lmem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$lmem: bool;

procedure {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _WRITE_HAS_OCCURRED_$$lmem);
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$lmem);
    return;
}



procedure _CHECK_WRITE_$$lmem(_P: bool, _offset: int, _value: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_ATOMIC_$$lmem(_P: bool, _offset: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$lmem);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
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
    havoc $$isums;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
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
    havoc $$isums;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}
































