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
 b0017: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "paths"} {:global} $$paths: [int]int;

axiom {:array_info "$$paths"} {:global} {:elem_width 32} {:source_name "paths"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$paths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$paths: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$paths: bool;

axiom {:array_info "$$rngStates"} {:global} {:elem_width 32} {:source_name "rngStates"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$rngStates: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$rngStates: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$rngStates: bool;

axiom {:array_info "$$option"} {:global} {:elem_width 8} {:source_name "option"} {:source_elem_width 288} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$option: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$option: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 288} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$option: bool;

axiom {:array_info "$$localState"} {:elem_width 32} {:source_name "localState"} {:source_elem_width 32} {:source_dimensions "1"} true;

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

function BV_CONCAT(int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSQRT64(int) : int;

function FSUB32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "generatePaths<float>"} {:kernel} $_Z13generatePathsIfEvPT_P17curandStateXORWOWPK11AsianOptionIS0_Ejj($numSims: int, $numTimesteps: int);
  requires {:sourceloc_num 0} {:thread 1} (if $numSims == 100000 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $numTimesteps == 87 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$paths && !_WRITE_HAS_OCCURRED_$$paths && !_ATOMIC_HAS_OCCURRED_$$paths;
  requires !_READ_HAS_OCCURRED_$$rngStates && !_WRITE_HAS_OCCURRED_$$rngStates && !_ATOMIC_HAS_OCCURRED_$$rngStates;
  requires !_READ_HAS_OCCURRED_$$option && !_WRITE_HAS_OCCURRED_$$option && !_ATOMIC_HAS_OCCURRED_$$option;
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
  modifies _WRITE_HAS_OCCURRED_$$paths, _WRITE_READ_BENIGN_FLAG_$$paths, _WRITE_READ_BENIGN_FLAG_$$paths;



implementation {:source_name "generatePaths<float>"} {:kernel} $_Z13generatePathsIfEvPT_P17curandStateXORWOWPK11AsianOptionIS0_Ejj($numSims: int, $numTimesteps: int)
{
  var $i.0$1: int;
  var $i.0$2: int;
  var $output.0$1: int;
  var $output.0$2: int;
  var $s.0$1: int;
  var $s.0$2: int;
  var $t.0$1: int;
  var $t.0$2: int;
  var v27$1: bool;
  var v27$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v1: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v21$1: int;
  var v21$2: int;
  var v28$1: bool;
  var v28$2: bool;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v26$1: int;
  var v26$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v25$1: int;
  var v25$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v13$1: int;
  var v13$2: int;
  var v6$1: int;
  var v6$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
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
  var _WRITE_HAS_OCCURRED_$$paths$ghost$$3: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV32_MUL(num_groups_x, group_size_x);
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    havoc v18$1, v18$2;
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    havoc v25$1, v25$2;
    havoc v26$1, v26$2;
    $$localState$0$1 := v26$1;
    $$localState$0$2 := v26$2;
    $i.0$1 := v0$1;
    $i.0$2 := v0$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $i.0$1 mod BV32_MUL(num_groups_x, group_size_x) == v0$1 mod BV32_MUL(num_groups_x, group_size_x) )  && ( p0$2 ==> $i.0$2 mod BV32_MUL(num_groups_x, group_size_x) == v0$2 mod BV32_MUL(num_groups_x, group_size_x) ) ,  ( p0$1 ==> BV32_SLE($i.0$1, v0$1) )  && ( p0$2 ==> BV32_SLE($i.0$2, v0$2) ) ,  ( p0$1 ==> BV32_SGE($i.0$1, v0$1) )  && ( p0$2 ==> BV32_SGE($i.0$2, v0$2) ) ,  ( p0$1 ==> BV32_ULE($i.0$1, v0$1) )  && ( p0$2 ==> BV32_ULE($i.0$2, v0$2) ) ,  ( p0$1 ==> BV32_UGE($i.0$1, v0$1) )  && ( p0$2 ==> BV32_UGE($i.0$2, v0$2) ) ,  (  BV32_ULT($i.0$1, $numSims) ==> p0$1 )  && (  BV32_ULT($i.0$2, $numSims) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$paths ==> _WATCHED_OFFSET mod $numSims == $i.0$1 mod $numSims ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 29} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 30} {:thread 1} (if BV32_UREM($i.0$1, v1) == v0$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 30} {:thread 2} (if BV32_UREM($i.0$2, v1) == v0$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 31} {:thread 1} (if _WRITE_HAS_OCCURRED_$$paths ==> BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $numSims), v1) == v0$1 then 1 else 0) != 0;
    v27$1 := (if p0$1 then BV32_ULT($i.0$1, $numSims) else v27$1);
    v27$2 := (if p0$2 then BV32_ULT($i.0$2, $numSims) else v27$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p4$1 := false;
    p4$2 := false;
    p1$1 := (if p0$1 && v27$1 then v27$1 else p1$1);
    p1$2 := (if p0$2 && v27$2 then v27$2 else p1$2);
    p0$1 := (if p0$1 && !v27$1 then v27$1 else p0$1);
    p0$2 := (if p0$2 && !v27$2 then v27$2 else p0$2);
    $output.0$1, $s.0$1, $t.0$1 := (if p1$1 then $i.0$1 else $output.0$1), (if p1$1 then 1065353216 else $s.0$1), (if p1$1 then 0 else $t.0$1);
    $output.0$2, $s.0$2, $t.0$2 := (if p1$2 then $i.0$2 else $output.0$2), (if p1$2 then 1065353216 else $s.0$2), (if p1$2 then 0 else $t.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$paths$ghost$$3 := _WRITE_HAS_OCCURRED_$$paths;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$paths ==> _WATCHED_OFFSET mod $numSims == $i.0$1 mod $numSims ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$paths$ghost$$3 == _WRITE_HAS_OCCURRED_$$paths )  ); 


    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> $output.0$1 mod $numSims == $i.0$1 mod $numSims )  && ( p2$2 ==> $output.0$2 mod $numSims == $i.0$2 mod $numSims ) ,  ( p2$1 ==> $t.0$1 mod 1 == 0 mod 1 )  && ( p2$2 ==> $t.0$2 mod 1 == 0 mod 1 ) ,  ( p2$1 ==> BV32_SLE($t.0$1, 0) )  && ( p2$2 ==> BV32_SLE($t.0$2, 0) ) ,  ( p2$1 ==> BV32_SGE($t.0$1, 0) )  && ( p2$2 ==> BV32_SGE($t.0$2, 0) ) ,  ( p2$1 ==> BV32_ULE($t.0$1, 0) )  && ( p2$2 ==> BV32_ULE($t.0$2, 0) ) ,  ( p2$1 ==> BV32_UGE($t.0$1, 0) )  && ( p2$2 ==> BV32_UGE($t.0$2, 0) ) ,  ( p2$1 ==> p2$1 ==> BV32_ULT($i.0$1, $numSims) )  && ( p2$2 ==> p2$2 ==> BV32_ULT($i.0$2, $numSims) ) ,  (  BV32_ULT($i.0$1, $numSims) && BV32_ULT($t.0$1, $numTimesteps) ==> p2$1 )  && (  BV32_ULT($i.0$2, $numSims) && BV32_ULT($t.0$2, $numTimesteps) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$paths ==> BV32_ULT($i.0$1, $numSims) ) ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 33} p2$1 ==> true;
    assert {:originated_from_invariant} {:sourceloc_num 34} {:thread 1} p2$1 ==> (if BV32_SUB(BV32_UDIV(BV32_MUL($output.0$1, 4), 4), $i.0$1) == BV32_MUL($t.0$1, $numSims) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 34} {:thread 2} p2$2 ==> (if BV32_SUB(BV32_UDIV(BV32_MUL($output.0$2, 4), 4), $i.0$2) == BV32_MUL($t.0$2, $numSims) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 35} {:thread 1} (if _WRITE_HAS_OCCURRED_$$paths ==> BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $numSims), v1) == v0$1 then 1 else 0) != 0;
    v28$1 := (if p2$1 then BV32_ULT($t.0$1, $numTimesteps) else v28$1);
    v28$2 := (if p2$2 then BV32_ULT($t.0$2, $numTimesteps) else v28$2);
    p3$1 := false;
    p3$2 := false;
    p3$1 := (if p2$1 && v28$1 then v28$1 else p3$1);
    p3$2 := (if p2$2 && v28$2 then v28$2 else p3$2);
    p2$1 := (if p2$1 && !v28$1 then v28$1 else p2$1);
    p2$2 := (if p2$2 && !v28$2 then v28$2 else p2$2);
    call {:sourceloc_num 37} v29$1, v29$2 := $_Z19__bugle_random_uintv(p3$1, p3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z19__bugle_random_uintv"} true;
    v30$1 := (if p3$1 then $$localState$0$1 else v30$1);
    v30$2 := (if p3$2 then $$localState$0$2 else v30$2);
    $$localState$0$1 := (if p3$1 then BV32_ADD(v30$1, v29$1) else $$localState$0$1);
    $$localState$0$2 := (if p3$2 then BV32_ADD(v30$2, v29$2) else $$localState$0$2);
    call {:sourceloc_num 40} v31$1, v31$2 := $_Z19__bugle_random_uintv(p3$1, p3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z19__bugle_random_uintv"} true;
    call {:sourceloc_num 41} v32$1, v32$2 := $_Z20__bugle_random_floatv(p3$1, p3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z20__bugle_random_floatv"} true;
    call {:sourceloc_num 42} v33$1, v33$2 := $expf(p3$1, FADD32(FMUL32(FSUB32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v5$1, v4$1), v3$1), v2$1), FMUL32(FMUL32(1056964608, BV_CONCAT(BV_CONCAT(BV_CONCAT(v9$1, v8$1), v7$1), v6$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v13$1, v12$1), v11$1), v10$1))), BV_CONCAT(BV_CONCAT(BV_CONCAT(v17$1, v16$1), v15$1), v14$1)), FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$1, v20$1), v19$1), v18$1)), FSQRT64(FP32_CONV64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$1, v24$1), v23$1), v22$1))))), v32$1)), p3$2, FADD32(FMUL32(FSUB32(BV_CONCAT(BV_CONCAT(BV_CONCAT(v5$2, v4$2), v3$2), v2$2), FMUL32(FMUL32(1056964608, BV_CONCAT(BV_CONCAT(BV_CONCAT(v9$2, v8$2), v7$2), v6$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v13$2, v12$2), v11$2), v10$2))), BV_CONCAT(BV_CONCAT(BV_CONCAT(v17$2, v16$2), v15$2), v14$2)), FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$2, v20$2), v19$2), v18$2)), FSQRT64(FP32_CONV64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$2, v24$2), v23$2), v22$2))))), v32$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$expf"} true;
    v34$1 := (if p3$1 then FMUL32($s.0$1, v33$1) else v34$1);
    v34$2 := (if p3$2 then FMUL32($s.0$2, v33$2) else v34$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$paths(p3$1, $output.0$1, v34$1, $$paths[$output.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$paths(p3$2, $output.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$paths(p3$2, $output.0$2, v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$paths"} true;
    $$paths[$output.0$1] := (if p3$1 then v34$1 else $$paths[$output.0$1]);
    $$paths[$output.0$2] := (if p3$2 then v34$2 else $$paths[$output.0$2]);
    $output.0$1, $s.0$1, $t.0$1 := (if p3$1 then BV32_ADD($output.0$1, $numSims) else $output.0$1), (if p3$1 then v34$1 else $s.0$1), (if p3$1 then BV32_ADD($t.0$1, 1) else $t.0$1);
    $output.0$2, $s.0$2, $t.0$2 := (if p3$2 then BV32_ADD($output.0$2, $numSims) else $output.0$2), (if p3$2 then v34$2 else $s.0$2), (if p3$2 then BV32_ADD($t.0$2, 1) else $t.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $i.0$1 := (if p1$1 then BV32_ADD($i.0$1, v1) else $i.0$1);
    $i.0$2 := (if p1$2 then BV32_ADD($i.0$2, v1) else $i.0$2);
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

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



procedure {:source_name "expf"} $expf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z20__bugle_random_floatv"} $_Z20__bugle_random_floatv(_P$1: bool, _P$2: bool) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z19__bugle_random_uintv"} $_Z19__bugle_random_uintv(_P$1: bool, _P$2: bool) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 195 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$localState$0$1: int;

var $$localState$0$2: int;



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























const _WATCHED_VALUE_$$paths: int;

procedure {:inline 1} _LOG_READ_$$paths(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$paths;



implementation {:inline 1} _LOG_READ_$$paths(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then true else _READ_HAS_OCCURRED_$$paths);
    return;
}



procedure _CHECK_READ_$$paths(_P: bool, _offset: int, _value: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$paths);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$paths: bool;

procedure {:inline 1} _LOG_WRITE_$$paths(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$paths, _WRITE_READ_BENIGN_FLAG_$$paths;



implementation {:inline 1} _LOG_WRITE_$$paths(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then true else _WRITE_HAS_OCCURRED_$$paths);
    _WRITE_READ_BENIGN_FLAG_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$paths);
    return;
}



procedure _CHECK_WRITE_$$paths(_P: bool, _offset: int, _value: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths != _value);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$paths != _value);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$paths(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$paths;



implementation {:inline 1} _LOG_ATOMIC_$$paths(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$paths := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$paths);
    return;
}



procedure _CHECK_ATOMIC_$$paths(_P: bool, _offset: int);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);
  requires {:source_name "paths"} {:array "$$paths"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$paths(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$paths;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$paths(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$paths := (if _P && _WRITE_HAS_OCCURRED_$$paths && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$paths);
    return;
}



const _WATCHED_VALUE_$$rngStates: int;

procedure {:inline 1} _LOG_READ_$$rngStates(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$rngStates;



implementation {:inline 1} _LOG_READ_$$rngStates(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then true else _READ_HAS_OCCURRED_$$rngStates);
    return;
}



procedure _CHECK_READ_$$rngStates(_P: bool, _offset: int, _value: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$rngStates);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$rngStates: bool;

procedure {:inline 1} _LOG_WRITE_$$rngStates(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$rngStates, _WRITE_READ_BENIGN_FLAG_$$rngStates;



implementation {:inline 1} _LOG_WRITE_$$rngStates(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then true else _WRITE_HAS_OCCURRED_$$rngStates);
    _WRITE_READ_BENIGN_FLAG_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$rngStates);
    return;
}



procedure _CHECK_WRITE_$$rngStates(_P: bool, _offset: int, _value: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates != _value);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rngStates != _value);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$rngStates(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$rngStates;



implementation {:inline 1} _LOG_ATOMIC_$$rngStates(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$rngStates := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$rngStates);
    return;
}



procedure _CHECK_ATOMIC_$$rngStates(_P: bool, _offset: int);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);
  requires {:source_name "rngStates"} {:array "$$rngStates"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rngStates(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$rngStates;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rngStates(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$rngStates := (if _P && _WRITE_HAS_OCCURRED_$$rngStates && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$rngStates);
    return;
}



const _WATCHED_VALUE_$$option: int;

procedure {:inline 1} _LOG_READ_$$option(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$option;



implementation {:inline 1} _LOG_READ_$$option(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then true else _READ_HAS_OCCURRED_$$option);
    return;
}



procedure _CHECK_READ_$$option(_P: bool, _offset: int, _value: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$option);
  requires {:source_name "option"} {:array "$$option"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$option: bool;

procedure {:inline 1} _LOG_WRITE_$$option(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$option, _WRITE_READ_BENIGN_FLAG_$$option;



implementation {:inline 1} _LOG_WRITE_$$option(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then true else _WRITE_HAS_OCCURRED_$$option);
    _WRITE_READ_BENIGN_FLAG_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$option);
    return;
}



procedure _CHECK_WRITE_$$option(_P: bool, _offset: int, _value: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option != _value);
  requires {:source_name "option"} {:array "$$option"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$option != _value);
  requires {:source_name "option"} {:array "$$option"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$option(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$option;



implementation {:inline 1} _LOG_ATOMIC_$$option(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$option := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$option);
    return;
}



procedure _CHECK_ATOMIC_$$option(_P: bool, _offset: int);
  requires {:source_name "option"} {:array "$$option"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);
  requires {:source_name "option"} {:array "$$option"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$option(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$option;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$option(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$option := (if _P && _WRITE_HAS_OCCURRED_$$option && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$option);
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






