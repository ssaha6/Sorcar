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



var {:source_name "d_CallResult"} {:global} $$d_CallResult: [int]int;

axiom {:array_info "$$d_CallResult"} {:global} {:elem_width 32} {:source_name "d_CallResult"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_CallResult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_CallResult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_CallResult: bool;

var {:source_name "d_PutResult"} {:global} $$d_PutResult: [int]int;

axiom {:array_info "$$d_PutResult"} {:global} {:elem_width 32} {:source_name "d_PutResult"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_PutResult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_PutResult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_PutResult: bool;

axiom {:array_info "$$d_StockPrice"} {:global} {:elem_width 32} {:source_name "d_StockPrice"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_StockPrice: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_StockPrice: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_StockPrice: bool;

axiom {:array_info "$$d_OptionStrike"} {:global} {:elem_width 32} {:source_name "d_OptionStrike"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_OptionStrike: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_OptionStrike: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_OptionStrike: bool;

var {:source_name "d_OptionYears"} {:global} $$d_OptionYears: [int]int;

axiom {:array_info "$$d_OptionYears"} {:global} {:elem_width 32} {:source_name "d_OptionYears"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_OptionYears: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_OptionYears: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_OptionYears: bool;

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

function FDIV32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "BlackScholesGPU"} {:kernel} $_Z15BlackScholesGPUPfS_S_S_S_ffi($Riskfree: int, $Volatility: int, $optN: int);
  requires {:sourceloc_num 0} {:thread 1} (if $optN == 4000000 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_CallResult && !_WRITE_HAS_OCCURRED_$$d_CallResult && !_ATOMIC_HAS_OCCURRED_$$d_CallResult;
  requires !_READ_HAS_OCCURRED_$$d_PutResult && !_WRITE_HAS_OCCURRED_$$d_PutResult && !_ATOMIC_HAS_OCCURRED_$$d_PutResult;
  requires !_READ_HAS_OCCURRED_$$d_StockPrice && !_WRITE_HAS_OCCURRED_$$d_StockPrice && !_ATOMIC_HAS_OCCURRED_$$d_StockPrice;
  requires !_READ_HAS_OCCURRED_$$d_OptionStrike && !_WRITE_HAS_OCCURRED_$$d_OptionStrike && !_ATOMIC_HAS_OCCURRED_$$d_OptionStrike;
  requires !_READ_HAS_OCCURRED_$$d_OptionYears && !_WRITE_HAS_OCCURRED_$$d_OptionYears && !_ATOMIC_HAS_OCCURRED_$$d_OptionYears;
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
  modifies _WRITE_HAS_OCCURRED_$$d_CallResult, _WRITE_READ_BENIGN_FLAG_$$d_CallResult, _WRITE_READ_BENIGN_FLAG_$$d_CallResult, _WRITE_HAS_OCCURRED_$$d_PutResult, _WRITE_READ_BENIGN_FLAG_$$d_PutResult, _WRITE_READ_BENIGN_FLAG_$$d_PutResult;



implementation {:source_name "BlackScholesGPU"} {:kernel} $_Z15BlackScholesGPUPfS_S_S_S_ffi($Riskfree: int, $Volatility: int, $optN: int)
{
  var $opt.0$1: int;
  var $opt.0$2: int;
  var $cnd.i.i.0$1: int;
  var $cnd.i.i.0$2: int;
  var $cnd.i8.i.0$1: int;
  var $cnd.i8.i.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v12$1: int;
  var v12$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
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
  var v13$1: int;
  var v13$2: int;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1 := BV32_MUL(group_size_x, num_groups_x);
    $opt.0$1 := v0$1;
    $opt.0$2 := v0$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $opt.0$1 mod BV32_MUL(group_size_x, num_groups_x) == v0$1 mod BV32_MUL(group_size_x, num_groups_x) )  && ( p0$2 ==> $opt.0$2 mod BV32_MUL(group_size_x, num_groups_x) == v0$2 mod BV32_MUL(group_size_x, num_groups_x) ) ,  ( p0$1 ==> BV32_SLE($opt.0$1, v0$1) )  && ( p0$2 ==> BV32_SLE($opt.0$2, v0$2) ) ,  ( p0$1 ==> BV32_SGE($opt.0$1, v0$1) )  && ( p0$2 ==> BV32_SGE($opt.0$2, v0$2) ) ,  ( p0$1 ==> BV32_ULE($opt.0$1, v0$1) )  && ( p0$2 ==> BV32_ULE($opt.0$2, v0$2) ) ,  ( p0$1 ==> BV32_UGE($opt.0$1, v0$1) )  && ( p0$2 ==> BV32_UGE($opt.0$2, v0$2) ) ,  (  BV32_SLT($opt.0$1, $optN) ==> p0$1 )  && (  BV32_SLT($opt.0$2, $optN) ==> p0$2 ) ,  (  _WRITE_HAS_OCCURRED_$$d_CallResult ==> _WATCHED_OFFSET mod BV32_MUL(group_size_x, num_groups_x) == v0$1 mod BV32_MUL(group_size_x, num_groups_x) ) ,  (  _WRITE_HAS_OCCURRED_$$d_PutResult ==> _WATCHED_OFFSET mod BV32_MUL(group_size_x, num_groups_x) == v0$1 mod BV32_MUL(group_size_x, num_groups_x) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 2} p0$1 ==> true;
    assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} p0$1 ==> (if BV32_SREM($opt.0$1, v1) == v0$1 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 2} p0$2 ==> (if BV32_SREM($opt.0$2, v1) == v0$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_CallResult ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), v1) == v0$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_PutResult ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), v1) == v0$1 then 1 else 0) != 0;
    v2$1 := (if p0$1 then BV32_SLT($opt.0$1, $optN) else v2$1);
    v2$2 := (if p0$2 then BV32_SLT($opt.0$2, $optN) else v2$2);
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
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p1$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_int$2 else v3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    v5$1 := (if p1$1 then $$d_OptionYears[$opt.0$1] else v5$1);
    v5$2 := (if p1$2 then $$d_OptionYears[$opt.0$2] else v5$2);
    v6$1 := (if p1$1 then FSQRT32(v5$1) else v6$1);
    v6$2 := (if p1$2 then FSQRT32(v5$2) else v6$2);
    call {:sourceloc_num 10} v7$1, v7$2 := $__logf(p1$1, FDIV32(v3$1, v4$1), p1$2, FDIV32(v3$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__logf"} true;
    v8$1 := (if p1$1 then FDIV32(FADD32(v7$1, FMUL32(FADD32($Riskfree, FMUL32(FMUL32(1056964608, $Volatility), $Volatility)), v5$1)), FMUL32($Volatility, v6$1)) else v8$1);
    v8$2 := (if p1$2 then FDIV32(FADD32(v7$2, FMUL32(FADD32($Riskfree, FMUL32(FMUL32(1056964608, $Volatility), $Volatility)), v5$2)), FMUL32($Volatility, v6$2)) else v8$2);
    v9$1 := (if p1$1 then FSUB32(v8$1, FMUL32($Volatility, v6$1)) else v9$1);
    v9$2 := (if p1$2 then FSUB32(v8$2, FMUL32($Volatility, v6$2)) else v9$2);
    call {:sourceloc_num 11} v10$1, v10$2 := $fabsf(p1$1, v8$1, p1$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$fabsf"} true;
    v11$1 := (if p1$1 then FDIV32(1065353216, FADD32(1065353216, FMUL32(1047344009, v10$1))) else v11$1);
    v11$2 := (if p1$2 then FDIV32(1065353216, FADD32(1065353216, FMUL32(1047344009, v10$2))) else v11$2);
    call {:sourceloc_num 12} v12$1, v12$2 := $__expf(p1$1, FMUL32(FMUL32(-1090519040, v8$1), v8$1), p1$2, FMUL32(FMUL32(-1090519040, v8$2), v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    v13$1 := (if p1$1 then FMUL32(FMUL32(1053573674, v12$1), FMUL32(v11$1, FADD32(1050904058, FMUL32(v11$1, FADD32(-1095331961, FMUL32(v11$1, FADD32(1071908728, FMUL32(v11$1, FADD32(-1075241238, FMUL32(v11$1, 1068123759)))))))))) else v13$1);
    v13$2 := (if p1$2 then FMUL32(FMUL32(1053573674, v12$2), FMUL32(v11$2, FADD32(1050904058, FMUL32(v11$2, FADD32(-1095331961, FMUL32(v11$2, FADD32(1071908728, FMUL32(v11$2, FADD32(-1075241238, FMUL32(v11$2, 1068123759)))))))))) else v13$2);
    v14$1 := (if p1$1 then FLT32(0, v8$1) else v14$1);
    v14$2 := (if p1$2 then FLT32(0, v8$2) else v14$2);
    p3$1 := (if p1$1 && v14$1 then v14$1 else p3$1);
    p3$2 := (if p1$2 && v14$2 then v14$2 else p3$2);
    p2$1 := (if p1$1 && !v14$1 then !v14$1 else p2$1);
    p2$2 := (if p1$2 && !v14$2 then !v14$2 else p2$2);
    $cnd.i.i.0$1 := (if p2$1 then v13$1 else $cnd.i.i.0$1);
    $cnd.i.i.0$2 := (if p2$2 then v13$2 else $cnd.i.i.0$2);
    $cnd.i.i.0$1 := (if p3$1 then FSUB32(1065353216, v13$1) else $cnd.i.i.0$1);
    $cnd.i.i.0$2 := (if p3$2 then FSUB32(1065353216, v13$2) else $cnd.i.i.0$2);
    call {:sourceloc_num 15} v15$1, v15$2 := $fabsf(p1$1, v9$1, p1$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$fabsf"} true;
    v16$1 := (if p1$1 then FDIV32(1065353216, FADD32(1065353216, FMUL32(1047344009, v15$1))) else v16$1);
    v16$2 := (if p1$2 then FDIV32(1065353216, FADD32(1065353216, FMUL32(1047344009, v15$2))) else v16$2);
    call {:sourceloc_num 16} v17$1, v17$2 := $__expf(p1$1, FMUL32(FMUL32(-1090519040, v9$1), v9$1), p1$2, FMUL32(FMUL32(-1090519040, v9$2), v9$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    v18$1 := (if p1$1 then FMUL32(FMUL32(1053573674, v17$1), FMUL32(v16$1, FADD32(1050904058, FMUL32(v16$1, FADD32(-1095331961, FMUL32(v16$1, FADD32(1071908728, FMUL32(v16$1, FADD32(-1075241238, FMUL32(v16$1, 1068123759)))))))))) else v18$1);
    v18$2 := (if p1$2 then FMUL32(FMUL32(1053573674, v17$2), FMUL32(v16$2, FADD32(1050904058, FMUL32(v16$2, FADD32(-1095331961, FMUL32(v16$2, FADD32(1071908728, FMUL32(v16$2, FADD32(-1075241238, FMUL32(v16$2, 1068123759)))))))))) else v18$2);
    v19$1 := (if p1$1 then FLT32(0, v9$1) else v19$1);
    v19$2 := (if p1$2 then FLT32(0, v9$2) else v19$2);
    p5$1 := (if p1$1 && v19$1 then v19$1 else p5$1);
    p5$2 := (if p1$2 && v19$2 then v19$2 else p5$2);
    p4$1 := (if p1$1 && !v19$1 then !v19$1 else p4$1);
    p4$2 := (if p1$2 && !v19$2 then !v19$2 else p4$2);
    $cnd.i8.i.0$1 := (if p4$1 then v18$1 else $cnd.i8.i.0$1);
    $cnd.i8.i.0$2 := (if p4$2 then v18$2 else $cnd.i8.i.0$2);
    $cnd.i8.i.0$1 := (if p5$1 then FSUB32(1065353216, v18$1) else $cnd.i8.i.0$1);
    $cnd.i8.i.0$2 := (if p5$2 then FSUB32(1065353216, v18$2) else $cnd.i8.i.0$2);
    call {:sourceloc_num 19} v20$1, v20$2 := $__expf(p1$1, FMUL32(FSUB32(-2147483648, $Riskfree), v5$1), p1$2, FMUL32(FSUB32(-2147483648, $Riskfree), v5$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$d_CallResult(p1$1, $opt.0$1, FSUB32(FMUL32(v3$1, $cnd.i.i.0$1), FMUL32(FMUL32(v4$1, v20$1), $cnd.i8.i.0$1)), $$d_CallResult[$opt.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_CallResult(p1$2, $opt.0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$d_CallResult(p1$2, $opt.0$2, FSUB32(FMUL32(v3$2, $cnd.i.i.0$2), FMUL32(FMUL32(v4$2, v20$2), $cnd.i8.i.0$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_CallResult"} true;
    $$d_CallResult[$opt.0$1] := (if p1$1 then FSUB32(FMUL32(v3$1, $cnd.i.i.0$1), FMUL32(FMUL32(v4$1, v20$1), $cnd.i8.i.0$1)) else $$d_CallResult[$opt.0$1]);
    $$d_CallResult[$opt.0$2] := (if p1$2 then FSUB32(FMUL32(v3$2, $cnd.i.i.0$2), FMUL32(FMUL32(v4$2, v20$2), $cnd.i8.i.0$2)) else $$d_CallResult[$opt.0$2]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$d_PutResult(p1$1, $opt.0$1, FSUB32(FMUL32(FMUL32(v4$1, v20$1), FSUB32(1065353216, $cnd.i8.i.0$1)), FMUL32(v3$1, FSUB32(1065353216, $cnd.i.i.0$1))), $$d_PutResult[$opt.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PutResult(p1$2, $opt.0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$d_PutResult(p1$2, $opt.0$2, FSUB32(FMUL32(FMUL32(v4$2, v20$2), FSUB32(1065353216, $cnd.i8.i.0$2)), FMUL32(v3$2, FSUB32(1065353216, $cnd.i.i.0$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_PutResult"} true;
    $$d_PutResult[$opt.0$1] := (if p1$1 then FSUB32(FMUL32(FMUL32(v4$1, v20$1), FSUB32(1065353216, $cnd.i8.i.0$1)), FMUL32(v3$1, FSUB32(1065353216, $cnd.i.i.0$1))) else $$d_PutResult[$opt.0$1]);
    $$d_PutResult[$opt.0$2] := (if p1$2 then FSUB32(FMUL32(FMUL32(v4$2, v20$2), FSUB32(1065353216, $cnd.i8.i.0$2)), FMUL32(v3$2, FSUB32(1065353216, $cnd.i.i.0$2))) else $$d_PutResult[$opt.0$2]);
    $opt.0$1 := (if p1$1 then BV32_ADD($opt.0$1, v1) else $opt.0$1);
    $opt.0$2 := (if p1$2 then BV32_ADD($opt.0$2, v1) else $opt.0$2);
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
}



procedure {:source_name "__logf"} $__logf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "__expf"} $__expf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "fabsf"} $fabsf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 480 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;



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





const _WATCHED_VALUE_$$d_CallResult: int;

procedure {:inline 1} _LOG_READ_$$d_CallResult(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_CallResult;



implementation {:inline 1} _LOG_READ_$$d_CallResult(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_CallResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_CallResult == _value then true else _READ_HAS_OCCURRED_$$d_CallResult);
    return;
}



procedure _CHECK_READ_$$d_CallResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_CallResult);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_CallResult: bool;

procedure {:inline 1} _LOG_WRITE_$$d_CallResult(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_CallResult, _WRITE_READ_BENIGN_FLAG_$$d_CallResult;



implementation {:inline 1} _LOG_WRITE_$$d_CallResult(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_CallResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_CallResult == _value then true else _WRITE_HAS_OCCURRED_$$d_CallResult);
    _WRITE_READ_BENIGN_FLAG_$$d_CallResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_CallResult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_CallResult);
    return;
}



procedure _CHECK_WRITE_$$d_CallResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_CallResult != _value);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_CallResult != _value);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_CallResult(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_CallResult;



implementation {:inline 1} _LOG_ATOMIC_$$d_CallResult(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_CallResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_CallResult);
    return;
}



procedure _CHECK_ATOMIC_$$d_CallResult(_P: bool, _offset: int);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_CallResult"} {:array "$$d_CallResult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_CallResult(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_CallResult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_CallResult(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_CallResult := (if _P && _WRITE_HAS_OCCURRED_$$d_CallResult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_CallResult);
    return;
}



const _WATCHED_VALUE_$$d_PutResult: int;

procedure {:inline 1} _LOG_READ_$$d_PutResult(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_PutResult;



implementation {:inline 1} _LOG_READ_$$d_PutResult(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_PutResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PutResult == _value then true else _READ_HAS_OCCURRED_$$d_PutResult);
    return;
}



procedure _CHECK_READ_$$d_PutResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_PutResult);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_PutResult: bool;

procedure {:inline 1} _LOG_WRITE_$$d_PutResult(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_PutResult, _WRITE_READ_BENIGN_FLAG_$$d_PutResult;



implementation {:inline 1} _LOG_WRITE_$$d_PutResult(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_PutResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PutResult == _value then true else _WRITE_HAS_OCCURRED_$$d_PutResult);
    _WRITE_READ_BENIGN_FLAG_$$d_PutResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PutResult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_PutResult);
    return;
}



procedure _CHECK_WRITE_$$d_PutResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PutResult != _value);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PutResult != _value);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_PutResult(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_PutResult;



implementation {:inline 1} _LOG_ATOMIC_$$d_PutResult(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_PutResult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_PutResult);
    return;
}



procedure _CHECK_ATOMIC_$$d_PutResult(_P: bool, _offset: int);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_PutResult"} {:array "$$d_PutResult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PutResult(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_PutResult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PutResult(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_PutResult := (if _P && _WRITE_HAS_OCCURRED_$$d_PutResult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_PutResult);
    return;
}



const _WATCHED_VALUE_$$d_StockPrice: int;

procedure {:inline 1} _LOG_READ_$$d_StockPrice(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_StockPrice;



implementation {:inline 1} _LOG_READ_$$d_StockPrice(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_StockPrice := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_StockPrice == _value then true else _READ_HAS_OCCURRED_$$d_StockPrice);
    return;
}



procedure _CHECK_READ_$$d_StockPrice(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_StockPrice);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_StockPrice: bool;

procedure {:inline 1} _LOG_WRITE_$$d_StockPrice(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_StockPrice, _WRITE_READ_BENIGN_FLAG_$$d_StockPrice;



implementation {:inline 1} _LOG_WRITE_$$d_StockPrice(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_StockPrice := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_StockPrice == _value then true else _WRITE_HAS_OCCURRED_$$d_StockPrice);
    _WRITE_READ_BENIGN_FLAG_$$d_StockPrice := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_StockPrice == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_StockPrice);
    return;
}



procedure _CHECK_WRITE_$$d_StockPrice(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_StockPrice != _value);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_StockPrice != _value);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_StockPrice(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_StockPrice;



implementation {:inline 1} _LOG_ATOMIC_$$d_StockPrice(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_StockPrice := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_StockPrice);
    return;
}



procedure _CHECK_ATOMIC_$$d_StockPrice(_P: bool, _offset: int);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_StockPrice"} {:array "$$d_StockPrice"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_StockPrice(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_StockPrice;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_StockPrice(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_StockPrice := (if _P && _WRITE_HAS_OCCURRED_$$d_StockPrice && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_StockPrice);
    return;
}



const _WATCHED_VALUE_$$d_OptionStrike: int;

procedure {:inline 1} _LOG_READ_$$d_OptionStrike(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_OptionStrike;



implementation {:inline 1} _LOG_READ_$$d_OptionStrike(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_OptionStrike := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionStrike == _value then true else _READ_HAS_OCCURRED_$$d_OptionStrike);
    return;
}



procedure _CHECK_READ_$$d_OptionStrike(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike: bool;

procedure {:inline 1} _LOG_WRITE_$$d_OptionStrike(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_OptionStrike, _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike;



implementation {:inline 1} _LOG_WRITE_$$d_OptionStrike(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_OptionStrike := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionStrike == _value then true else _WRITE_HAS_OCCURRED_$$d_OptionStrike);
    _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionStrike == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike);
    return;
}



procedure _CHECK_WRITE_$$d_OptionStrike(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionStrike != _value);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionStrike != _value);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_OptionStrike(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_OptionStrike;



implementation {:inline 1} _LOG_ATOMIC_$$d_OptionStrike(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_OptionStrike := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_OptionStrike);
    return;
}



procedure _CHECK_ATOMIC_$$d_OptionStrike(_P: bool, _offset: int);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_OptionStrike"} {:array "$$d_OptionStrike"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_OptionStrike(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_OptionStrike(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike := (if _P && _WRITE_HAS_OCCURRED_$$d_OptionStrike && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_OptionStrike);
    return;
}



const _WATCHED_VALUE_$$d_OptionYears: int;

procedure {:inline 1} _LOG_READ_$$d_OptionYears(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_OptionYears;



implementation {:inline 1} _LOG_READ_$$d_OptionYears(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_OptionYears := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionYears == _value then true else _READ_HAS_OCCURRED_$$d_OptionYears);
    return;
}



procedure _CHECK_READ_$$d_OptionYears(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_OptionYears);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_OptionYears: bool;

procedure {:inline 1} _LOG_WRITE_$$d_OptionYears(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_OptionYears, _WRITE_READ_BENIGN_FLAG_$$d_OptionYears;



implementation {:inline 1} _LOG_WRITE_$$d_OptionYears(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_OptionYears := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionYears == _value then true else _WRITE_HAS_OCCURRED_$$d_OptionYears);
    _WRITE_READ_BENIGN_FLAG_$$d_OptionYears := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionYears == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_OptionYears);
    return;
}



procedure _CHECK_WRITE_$$d_OptionYears(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionYears != _value);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_OptionYears != _value);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_OptionYears(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_OptionYears;



implementation {:inline 1} _LOG_ATOMIC_$$d_OptionYears(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_OptionYears := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_OptionYears);
    return;
}



procedure _CHECK_ATOMIC_$$d_OptionYears(_P: bool, _offset: int);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_OptionYears"} {:array "$$d_OptionYears"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_OptionYears(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_OptionYears;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_OptionYears(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_OptionYears := (if _P && _WRITE_HAS_OCCURRED_$$d_OptionYears && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_OptionYears);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}




