type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP16(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "SrcDst"} {:global} $$SrcDst: [int]int;

axiom {:array_info "$$SrcDst"} {:global} {:elem_width 16} {:source_name "SrcDst"} {:source_elem_width 16} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$SrcDst: bool;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$SrcDst: bool;

var {:race_checking} {:global} {:elem_width 16} {:source_elem_width 16} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$SrcDst: bool;

var {:source_name "Q"} {:constant} $$Q$1: [int]int;

var {:source_name "Q"} {:constant} $$Q$2: [int]int;

axiom {:array_info "$$Q"} {:constant} {:elem_width 16} {:source_name "Q"} {:source_elem_width 16} {:source_dimensions "64"} true;

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

function BV32_ASHR(int, int) : int;

function BV16_SEXT32(int) : int;

function BV_EXTRACT(int, int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "CUDAkernelQuantizationShort"} {:kernel} $_Z27CUDAkernelQuantizationShortPsi($Stride: int);
  requires {:sourceloc_num 0} {:thread 1} (if $Stride == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$SrcDst && !_WRITE_HAS_OCCURRED_$$SrcDst && !_ATOMIC_HAS_OCCURRED_$$SrcDst;
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
  modifies _READ_HAS_OCCURRED_$$SrcDst, $$SrcDst, _TRACKING, _WRITE_HAS_OCCURRED_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:source_name "CUDAkernelQuantizationShort"} {:kernel} $_Z27CUDAkernelQuantizationShortPsi($Stride: int)
{
  var $curCoef.0$1: int;
  var $curCoef.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  __partitioned_block_$0_0:
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$SrcDst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1)), $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$SrcDst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2)), $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$SrcDst"} true;
    v0$1 := $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1))];
    v0$2 := $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2))];
    v1$1 := $$Q$1[BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)];
    v1$2 := $$Q$2[BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)];
    v2$1 := BV32_SLT(BV16_SEXT32(v0$1), 0);
    v2$2 := BV32_SLT(BV16_SEXT32(v0$2), 0);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    $curCoef.0$1 := (if p0$1 then BV_EXTRACT(BV32_SUB(0, BV16_SEXT32(BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV16_SEXT32(BV_EXTRACT(BV32_SUB(0, BV16_SEXT32(v0$1)), 16, 0)), BV32_ASHR(BV16_SEXT32(v1$1), 1)), 16, 0)), BV16_SEXT32(v1$1)), 16, 0))), 16, 0) else $curCoef.0$1);
    $curCoef.0$2 := (if p0$2 then BV_EXTRACT(BV32_SUB(0, BV16_SEXT32(BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV16_SEXT32(BV_EXTRACT(BV32_SUB(0, BV16_SEXT32(v0$2)), 16, 0)), BV32_ASHR(BV16_SEXT32(v1$2), 1)), 16, 0)), BV16_SEXT32(v1$2)), 16, 0))), 16, 0) else $curCoef.0$2);
    $curCoef.0$1 := (if p1$1 then BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV16_SEXT32(v0$1), BV32_ASHR(BV16_SEXT32(v1$1), 1)), 16, 0)), BV16_SEXT32(v1$1)), 16, 0) else $curCoef.0$1);
    $curCoef.0$2 := (if p1$2 then BV_EXTRACT(BV32_SDIV(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV16_SEXT32(v0$2), BV32_ASHR(BV16_SEXT32(v1$2), 1)), 16, 0)), BV16_SEXT32(v1$2)), 16, 0) else $curCoef.0$2);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$SrcDst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1)), BV_EXTRACT(BV32_MUL(BV16_SEXT32($curCoef.0$1), BV16_SEXT32(v1$1)), 16, 0), $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$SrcDst(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2)), BV_EXTRACT(BV32_MUL(BV16_SEXT32($curCoef.0$2), BV16_SEXT32(v1$2)), 16, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$SrcDst"} true;
    $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 8), local_id_y$1), $Stride), BV32_ADD(BV32_MUL(group_id_x$1, 8), local_id_x$1))] := BV_EXTRACT(BV32_MUL(BV16_SEXT32($curCoef.0$1), BV16_SEXT32(v1$1)), 16, 0);
    $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 8), local_id_y$2), $Stride), BV32_ADD(BV32_MUL(group_id_x$2, 8), local_id_x$2))] := BV_EXTRACT(BV32_MUL(BV16_SEXT32($curCoef.0$2), BV16_SEXT32(v1$2)), 16, 0);
    return;
}



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 64 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$SrcDst, _TRACKING;



const _WATCHED_VALUE_$$SrcDst: int;

procedure {:inline 1} _LOG_READ_$$SrcDst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$SrcDst;



implementation {:inline 1} _LOG_READ_$$SrcDst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then true else _READ_HAS_OCCURRED_$$SrcDst);
    return;
}



procedure _CHECK_READ_$$SrcDst(_P: bool, _offset: int, _value: int);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$SrcDst);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$SrcDst: bool;

procedure {:inline 1} _LOG_WRITE_$$SrcDst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:inline 1} _LOG_WRITE_$$SrcDst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then true else _WRITE_HAS_OCCURRED_$$SrcDst);
    _WRITE_READ_BENIGN_FLAG_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$SrcDst);
    return;
}



procedure _CHECK_WRITE_$$SrcDst(_P: bool, _offset: int, _value: int);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst != _value);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst != _value);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$SrcDst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$SrcDst;



implementation {:inline 1} _LOG_ATOMIC_$$SrcDst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$SrcDst);
    return;
}



procedure _CHECK_ATOMIC_$$SrcDst(_P: bool, _offset: int);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$SrcDst := (if _P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$SrcDst);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$SrcDst;
    goto anon1;

  anon1:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon3;

  anon3:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$SrcDst;
    goto anon3;

  anon4_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
