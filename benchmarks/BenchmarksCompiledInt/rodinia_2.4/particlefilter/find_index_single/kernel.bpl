type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$arrayX"} {:global} {:elem_width 32} {:source_name "arrayX"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$arrayX: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$arrayX: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$arrayX: bool;

axiom {:array_info "$$arrayY"} {:global} {:elem_width 32} {:source_name "arrayY"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$arrayY: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$arrayY: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$arrayY: bool;

var {:source_name "CDF"} {:global} $$CDF: [int]int;

axiom {:array_info "$$CDF"} {:global} {:elem_width 32} {:source_name "CDF"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$CDF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$CDF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$CDF: bool;

var {:source_name "u"} {:global} $$u: [int]int;

axiom {:array_info "$$u"} {:global} {:elem_width 32} {:source_name "u"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$u: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$u: bool;

var {:source_name "xj"} {:global} $$xj: [int]int;

axiom {:array_info "$$xj"} {:global} {:elem_width 32} {:source_name "xj"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$xj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$xj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$xj: bool;

var {:source_name "yj"} {:global} $$yj: [int]int;

axiom {:array_info "$$yj"} {:global} {:elem_width 32} {:source_name "yj"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$yj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$yj: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$yj: bool;

axiom {:array_info "$$weights"} {:global} {:elem_width 32} {:source_name "weights"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$weights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$weights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$weights: bool;

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

function FEQ32(int, int) : bool;

function FLT32(int, int) : bool;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "find_index_kernel"} {:kernel} $find_index_kernel($Nparticles: int);
  requires !_READ_HAS_OCCURRED_$$arrayX && !_WRITE_HAS_OCCURRED_$$arrayX && !_ATOMIC_HAS_OCCURRED_$$arrayX;
  requires !_READ_HAS_OCCURRED_$$arrayY && !_WRITE_HAS_OCCURRED_$$arrayY && !_ATOMIC_HAS_OCCURRED_$$arrayY;
  requires !_READ_HAS_OCCURRED_$$CDF && !_WRITE_HAS_OCCURRED_$$CDF && !_ATOMIC_HAS_OCCURRED_$$CDF;
  requires !_READ_HAS_OCCURRED_$$u && !_WRITE_HAS_OCCURRED_$$u && !_ATOMIC_HAS_OCCURRED_$$u;
  requires !_READ_HAS_OCCURRED_$$xj && !_WRITE_HAS_OCCURRED_$$xj && !_ATOMIC_HAS_OCCURRED_$$xj;
  requires !_READ_HAS_OCCURRED_$$yj && !_WRITE_HAS_OCCURRED_$$yj && !_ATOMIC_HAS_OCCURRED_$$yj;
  requires !_READ_HAS_OCCURRED_$$weights && !_WRITE_HAS_OCCURRED_$$weights && !_ATOMIC_HAS_OCCURRED_$$weights;
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
  modifies _WRITE_HAS_OCCURRED_$$xj, _WRITE_READ_BENIGN_FLAG_$$xj, _WRITE_READ_BENIGN_FLAG_$$xj, _WRITE_HAS_OCCURRED_$$yj, _WRITE_READ_BENIGN_FLAG_$$yj, _WRITE_READ_BENIGN_FLAG_$$yj, $$xj, $$yj, _TRACKING;



implementation {:source_name "find_index_kernel"} {:kernel} $find_index_kernel($Nparticles: int)
{
  var $x.0$1: int;
  var $x.0$2: int;
  var $index.0$1: int;
  var $index.0$2: int;
  var $index.1$1: int;
  var $index.1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
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
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $Nparticles);
    v1$2 := BV32_SLT(v0$2, $Nparticles);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p8$1 := false;
    p8$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    $x.0$1 := (if p0$1 then 0 else $x.0$1);
    $x.0$2 := (if p0$2 then 0 else $x.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:block_sourceloc} {:sourceloc_num 2} p1$1 ==> true;
    v2$1 := (if p1$1 then BV32_SLT($x.0$1, $Nparticles) else v2$1);
    v2$2 := (if p1$2 then BV32_SLT($x.0$2, $Nparticles) else v2$2);
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
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p4$1 := (if p1$1 && !v2$1 then !v2$1 else p4$1);
    p4$2 := (if p1$2 && !v2$2 then !v2$2 else p4$2);
    p1$1 := (if p1$1 && !v2$1 then v2$1 else p1$1);
    p1$2 := (if p1$2 && !v2$2 then v2$2 else p1$2);
    v3$1 := (if p2$1 then $$CDF[$x.0$1] else v3$1);
    v3$2 := (if p2$2 then $$CDF[$x.0$2] else v3$2);
    v4$1 := (if p2$1 then $$u[v0$1] else v4$1);
    v4$2 := (if p2$2 then $$u[v0$2] else v4$2);
    v5$1 := (if p2$1 then FEQ32(v3$1, v4$1) || FLT32(v4$1, v3$1) else v5$1);
    v5$2 := (if p2$2 then FEQ32(v3$2, v4$2) || FLT32(v4$2, v3$2) else v5$2);
    p5$1 := (if p2$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p2$2 && v5$2 then v5$2 else p5$2);
    p1$1 := (if p2$1 && v5$1 then !v5$1 else p1$1);
    p1$2 := (if p2$2 && v5$2 then !v5$2 else p1$2);
    p3$1 := (if p2$1 && !v5$1 then !v5$1 else p3$1);
    p3$2 := (if p2$2 && !v5$2 then !v5$2 else p3$2);
    $x.0$1 := (if p3$1 then BV32_ADD($x.0$1, 1) else $x.0$1);
    $x.0$2 := (if p3$2 then BV32_ADD($x.0$2, 1) else $x.0$2);
    p1$1 := (if p3$1 then true else p1$1);
    p1$2 := (if p3$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    $index.0$1 := (if p4$1 then -1 else $index.0$1);
    $index.0$2 := (if p4$2 then -1 else $index.0$2);
    $index.0$1 := (if p5$1 then $x.0$1 else $index.0$1);
    $index.0$2 := (if p5$2 then $x.0$2 else $index.0$2);
    v6$1 := (if p0$1 then $index.0$1 == -1 else v6$1);
    v6$2 := (if p0$2 then $index.0$2 == -1 else v6$2);
    p6$1 := (if p0$1 && v6$1 then v6$1 else p6$1);
    p6$2 := (if p0$2 && v6$2 then v6$2 else p6$2);
    p7$1 := (if p0$1 && !v6$1 then !v6$1 else p7$1);
    p7$2 := (if p0$2 && !v6$2 then !v6$2 else p7$2);
    $index.1$1 := (if p6$1 then BV32_SUB($Nparticles, 1) else $index.1$1);
    $index.1$2 := (if p6$2 then BV32_SUB($Nparticles, 1) else $index.1$2);
    $index.1$1 := (if p7$1 then $index.0$1 else $index.1$1);
    $index.1$2 := (if p7$2 then $index.0$2 else $index.1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p0$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p0$2 then _HAVOC_int$2 else v7$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$xj(p0$1, v0$1, v7$1, $$xj[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$xj(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$xj(p0$2, v0$2, v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$xj"} true;
    $$xj[v0$1] := (if p0$1 then v7$1 else $$xj[v0$1]);
    $$xj[v0$2] := (if p0$2 then v7$2 else $$xj[v0$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p0$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p0$2 then _HAVOC_int$2 else v8$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$yj(p0$1, v0$1, v8$1, $$yj[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$yj(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$yj(p0$2, v0$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$yj"} true;
    $$yj[v0$1] := (if p0$1 then v8$1 else $$yj[v0$1]);
    $$yj[v0$2] := (if p0$2 then v8$2 else $$yj[v0$2]);
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 17} $bugle_barrier_duplicated_0(0, -1);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 782 then 1 else 0) != 0;

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
  requires $0 == 0;
  modifies $$xj, $$yj, _TRACKING;



const _WATCHED_VALUE_$$arrayX: int;

procedure {:inline 1} _LOG_READ_$$arrayX(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$arrayX;



implementation {:inline 1} _LOG_READ_$$arrayX(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$arrayX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayX == _value then true else _READ_HAS_OCCURRED_$$arrayX);
    return;
}



procedure _CHECK_READ_$$arrayX(_P: bool, _offset: int, _value: int);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$arrayX);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$arrayX: bool;

procedure {:inline 1} _LOG_WRITE_$$arrayX(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$arrayX, _WRITE_READ_BENIGN_FLAG_$$arrayX;



implementation {:inline 1} _LOG_WRITE_$$arrayX(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$arrayX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayX == _value then true else _WRITE_HAS_OCCURRED_$$arrayX);
    _WRITE_READ_BENIGN_FLAG_$$arrayX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayX == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$arrayX);
    return;
}



procedure _CHECK_WRITE_$$arrayX(_P: bool, _offset: int, _value: int);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayX != _value);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayX != _value);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$arrayX(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$arrayX;



implementation {:inline 1} _LOG_ATOMIC_$$arrayX(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$arrayX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$arrayX);
    return;
}



procedure _CHECK_ATOMIC_$$arrayX(_P: bool, _offset: int);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset);
  requires {:source_name "arrayX"} {:array "$$arrayX"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$arrayX(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$arrayX;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$arrayX(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$arrayX := (if _P && _WRITE_HAS_OCCURRED_$$arrayX && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$arrayX);
    return;
}



const _WATCHED_VALUE_$$arrayY: int;

procedure {:inline 1} _LOG_READ_$$arrayY(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$arrayY;



implementation {:inline 1} _LOG_READ_$$arrayY(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$arrayY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayY == _value then true else _READ_HAS_OCCURRED_$$arrayY);
    return;
}



procedure _CHECK_READ_$$arrayY(_P: bool, _offset: int, _value: int);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$arrayY);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$arrayY: bool;

procedure {:inline 1} _LOG_WRITE_$$arrayY(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$arrayY, _WRITE_READ_BENIGN_FLAG_$$arrayY;



implementation {:inline 1} _LOG_WRITE_$$arrayY(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$arrayY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayY == _value then true else _WRITE_HAS_OCCURRED_$$arrayY);
    _WRITE_READ_BENIGN_FLAG_$$arrayY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayY == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$arrayY);
    return;
}



procedure _CHECK_WRITE_$$arrayY(_P: bool, _offset: int, _value: int);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayY != _value);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$arrayY != _value);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$arrayY(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$arrayY;



implementation {:inline 1} _LOG_ATOMIC_$$arrayY(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$arrayY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$arrayY);
    return;
}



procedure _CHECK_ATOMIC_$$arrayY(_P: bool, _offset: int);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset);
  requires {:source_name "arrayY"} {:array "$$arrayY"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$arrayY(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$arrayY;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$arrayY(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$arrayY := (if _P && _WRITE_HAS_OCCURRED_$$arrayY && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$arrayY);
    return;
}



const _WATCHED_VALUE_$$CDF: int;

procedure {:inline 1} _LOG_READ_$$CDF(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$CDF;



implementation {:inline 1} _LOG_READ_$$CDF(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$CDF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CDF == _value then true else _READ_HAS_OCCURRED_$$CDF);
    return;
}



procedure _CHECK_READ_$$CDF(_P: bool, _offset: int, _value: int);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$CDF);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$CDF: bool;

procedure {:inline 1} _LOG_WRITE_$$CDF(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$CDF, _WRITE_READ_BENIGN_FLAG_$$CDF;



implementation {:inline 1} _LOG_WRITE_$$CDF(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$CDF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CDF == _value then true else _WRITE_HAS_OCCURRED_$$CDF);
    _WRITE_READ_BENIGN_FLAG_$$CDF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CDF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$CDF);
    return;
}



procedure _CHECK_WRITE_$$CDF(_P: bool, _offset: int, _value: int);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CDF != _value);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$CDF != _value);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$CDF(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$CDF;



implementation {:inline 1} _LOG_ATOMIC_$$CDF(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$CDF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$CDF);
    return;
}



procedure _CHECK_ATOMIC_$$CDF(_P: bool, _offset: int);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset);
  requires {:source_name "CDF"} {:array "$$CDF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CDF(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$CDF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$CDF(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$CDF := (if _P && _WRITE_HAS_OCCURRED_$$CDF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$CDF);
    return;
}



const _WATCHED_VALUE_$$u: int;

procedure {:inline 1} _LOG_READ_$$u(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_READ_$$u(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _READ_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_READ_$$u(_P: bool, _offset: int, _value: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$u);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$u: bool;

procedure {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$u, _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _LOG_WRITE_$$u(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then true else _WRITE_HAS_OCCURRED_$$u);
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$u);
    return;
}



procedure _CHECK_WRITE_$$u(_P: bool, _offset: int, _value: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$u != _value);
  requires {:source_name "u"} {:array "$$u"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$u;



implementation {:inline 1} _LOG_ATOMIC_$$u(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$u := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$u);
    return;
}



procedure _CHECK_ATOMIC_$$u(_P: bool, _offset: int);
  requires {:source_name "u"} {:array "$$u"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);
  requires {:source_name "u"} {:array "$$u"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$u;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$u(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$u := (if _P && _WRITE_HAS_OCCURRED_$$u && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$u);
    return;
}



const _WATCHED_VALUE_$$xj: int;

procedure {:inline 1} _LOG_READ_$$xj(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$xj;



implementation {:inline 1} _LOG_READ_$$xj(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$xj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$xj == _value then true else _READ_HAS_OCCURRED_$$xj);
    return;
}



procedure _CHECK_READ_$$xj(_P: bool, _offset: int, _value: int);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$xj);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$xj: bool;

procedure {:inline 1} _LOG_WRITE_$$xj(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$xj, _WRITE_READ_BENIGN_FLAG_$$xj;



implementation {:inline 1} _LOG_WRITE_$$xj(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$xj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$xj == _value then true else _WRITE_HAS_OCCURRED_$$xj);
    _WRITE_READ_BENIGN_FLAG_$$xj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$xj == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$xj);
    return;
}



procedure _CHECK_WRITE_$$xj(_P: bool, _offset: int, _value: int);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$xj != _value);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$xj != _value);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$xj(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$xj;



implementation {:inline 1} _LOG_ATOMIC_$$xj(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$xj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$xj);
    return;
}



procedure _CHECK_ATOMIC_$$xj(_P: bool, _offset: int);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset);
  requires {:source_name "xj"} {:array "$$xj"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$xj(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$xj;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$xj(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$xj := (if _P && _WRITE_HAS_OCCURRED_$$xj && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$xj);
    return;
}



const _WATCHED_VALUE_$$yj: int;

procedure {:inline 1} _LOG_READ_$$yj(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$yj;



implementation {:inline 1} _LOG_READ_$$yj(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$yj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yj == _value then true else _READ_HAS_OCCURRED_$$yj);
    return;
}



procedure _CHECK_READ_$$yj(_P: bool, _offset: int, _value: int);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$yj);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$yj: bool;

procedure {:inline 1} _LOG_WRITE_$$yj(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$yj, _WRITE_READ_BENIGN_FLAG_$$yj;



implementation {:inline 1} _LOG_WRITE_$$yj(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$yj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yj == _value then true else _WRITE_HAS_OCCURRED_$$yj);
    _WRITE_READ_BENIGN_FLAG_$$yj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yj == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$yj);
    return;
}



procedure _CHECK_WRITE_$$yj(_P: bool, _offset: int, _value: int);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yj != _value);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yj != _value);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$yj(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$yj;



implementation {:inline 1} _LOG_ATOMIC_$$yj(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$yj := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$yj);
    return;
}



procedure _CHECK_ATOMIC_$$yj(_P: bool, _offset: int);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset);
  requires {:source_name "yj"} {:array "$$yj"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yj(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$yj;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yj(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$yj := (if _P && _WRITE_HAS_OCCURRED_$$yj && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$yj);
    return;
}



const _WATCHED_VALUE_$$weights: int;

procedure {:inline 1} _LOG_READ_$$weights(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$weights;



implementation {:inline 1} _LOG_READ_$$weights(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then true else _READ_HAS_OCCURRED_$$weights);
    return;
}



procedure _CHECK_READ_$$weights(_P: bool, _offset: int, _value: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$weights);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$weights: bool;

procedure {:inline 1} _LOG_WRITE_$$weights(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$weights, _WRITE_READ_BENIGN_FLAG_$$weights;



implementation {:inline 1} _LOG_WRITE_$$weights(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then true else _WRITE_HAS_OCCURRED_$$weights);
    _WRITE_READ_BENIGN_FLAG_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$weights);
    return;
}



procedure _CHECK_WRITE_$$weights(_P: bool, _offset: int, _value: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights != _value);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights != _value);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$weights(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$weights;



implementation {:inline 1} _LOG_ATOMIC_$$weights(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$weights);
    return;
}



procedure _CHECK_ATOMIC_$$weights(_P: bool, _offset: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weights(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$weights;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weights(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$weights := (if _P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$weights);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$xj;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$xj;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$xj;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$yj;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$yj;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$yj;
    goto anon2;

  anon2:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon5;

  anon5:
    havoc _TRACKING;
    return;

  anon7_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$xj;
    goto anon4;

  anon4:
    havoc $$yj;
    goto anon5;

  anon6_Then:
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
