type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "feature"} {:global} $$feature: [int]int;

axiom {:array_info "$$feature"} {:global} {:elem_width 32} {:source_name "feature"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$feature: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$feature: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$feature: bool;

var {:source_name "clusters"} {:global} $$clusters: [int]int;

axiom {:array_info "$$clusters"} {:global} {:elem_width 32} {:source_name "clusters"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$clusters: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$clusters: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$clusters: bool;

var {:source_name "membership"} {:global} $$membership: [int]int;

axiom {:array_info "$$membership"} {:global} {:elem_width 32} {:source_name "membership"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$membership: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$membership: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$membership: bool;

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

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

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

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "kmeans_kernel_c"} {:kernel} $kmeans_kernel_c($npoints: int, $nclusters: int, $nfeatures: int, $offset: int, $size: int);
  requires !_READ_HAS_OCCURRED_$$feature && !_WRITE_HAS_OCCURRED_$$feature && !_ATOMIC_HAS_OCCURRED_$$feature;
  requires !_READ_HAS_OCCURRED_$$clusters && !_WRITE_HAS_OCCURRED_$$clusters && !_ATOMIC_HAS_OCCURRED_$$clusters;
  requires !_READ_HAS_OCCURRED_$$membership && !_WRITE_HAS_OCCURRED_$$membership && !_ATOMIC_HAS_OCCURRED_$$membership;
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
  modifies _WRITE_HAS_OCCURRED_$$membership, _WRITE_READ_BENIGN_FLAG_$$membership, _WRITE_READ_BENIGN_FLAG_$$membership;



implementation {:source_name "kmeans_kernel_c"} {:kernel} $kmeans_kernel_c($npoints: int, $nclusters: int, $nfeatures: int, $offset: int, $size: int)
{
  var $index.0$1: int;
  var $index.0$2: int;
  var $min_dist.0$1: int;
  var $min_dist.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $ans.0$1: int;
  var $ans.0$2: int;
  var $l.0$1: int;
  var $l.0$2: int;
  var $index.1$1: int;
  var $index.1$2: int;
  var $min_dist.1$1: int;
  var $min_dist.1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: bool;
  var v8$2: bool;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $npoints);
    v1$2 := BV32_ULT(v0$2, $npoints);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p7$1 := false;
    p7$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    $index.0$1, $min_dist.0$1, $i.0$1 := (if p0$1 then 0 else $index.0$1), (if p0$1 then 2139095039 else $min_dist.0$1), (if p0$1 then 0 else $i.0$1);
    $index.0$2, $min_dist.0$2, $i.0$2 := (if p0$2 then 0 else $index.0$2), (if p0$2 then 2139095039 else $min_dist.0$2), (if p0$2 then 0 else $i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:block_sourceloc} {:sourceloc_num 2} p1$1 ==> true;
    v2$1 := (if p1$1 then BV32_SLT($i.0$1, $nclusters) else v2$1);
    v2$2 := (if p1$2 then BV32_SLT($i.0$2, $nclusters) else v2$2);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p1$1 := (if p1$1 && !v2$1 then v2$1 else p1$1);
    p1$2 := (if p1$2 && !v2$2 then v2$2 else p1$2);
    $ans.0$1, $l.0$1 := (if p2$1 then 0 else $ans.0$1), (if p2$1 then 0 else $l.0$1);
    $ans.0$2, $l.0$2 := (if p2$2 then 0 else $ans.0$2), (if p2$2 then 0 else $l.0$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p3"} {:dominator_predicate "p2"} true;
    assert p3$1 ==> p1$1;
    assert p3$2 ==> p1$2;
    assert {:block_sourceloc} {:sourceloc_num 4} p3$1 ==> true;
    v3$1 := (if p3$1 then BV32_SLT($l.0$1, $nfeatures) else v3$1);
    v3$2 := (if p3$2 then BV32_SLT($l.0$2, $nfeatures) else v3$2);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p4$1 := (if p3$1 && v3$1 then v3$1 else p4$1);
    p4$2 := (if p3$2 && v3$2 then v3$2 else p4$2);
    p3$1 := (if p3$1 && !v3$1 then v3$1 else p3$1);
    p3$2 := (if p3$2 && !v3$2 then v3$2 else p3$2);
    v4$1 := (if p4$1 then $$feature[BV32_ADD(BV32_MUL($l.0$1, $npoints), v0$1)] else v4$1);
    v4$2 := (if p4$2 then $$feature[BV32_ADD(BV32_MUL($l.0$2, $npoints), v0$2)] else v4$2);
    v5$1 := (if p4$1 then $$clusters[BV32_ADD(BV32_MUL($i.0$1, $nfeatures), $l.0$1)] else v5$1);
    v5$2 := (if p4$2 then $$clusters[BV32_ADD(BV32_MUL($i.0$2, $nfeatures), $l.0$2)] else v5$2);
    v6$1 := (if p4$1 then $$feature[BV32_ADD(BV32_MUL($l.0$1, $npoints), v0$1)] else v6$1);
    v6$2 := (if p4$2 then $$feature[BV32_ADD(BV32_MUL($l.0$2, $npoints), v0$2)] else v6$2);
    v7$1 := (if p4$1 then $$clusters[BV32_ADD(BV32_MUL($i.0$1, $nfeatures), $l.0$1)] else v7$1);
    v7$2 := (if p4$2 then $$clusters[BV32_ADD(BV32_MUL($i.0$2, $nfeatures), $l.0$2)] else v7$2);
    $ans.0$1, $l.0$1 := (if p4$1 then FADD32($ans.0$1, FMUL32(FSUB32(v4$1, v5$1), FSUB32(v6$1, v7$1))) else $ans.0$1), (if p4$1 then BV32_ADD($l.0$1, 1) else $l.0$1);
    $ans.0$2, $l.0$2 := (if p4$2 then FADD32($ans.0$2, FMUL32(FSUB32(v4$2, v5$2), FSUB32(v6$2, v7$2))) else $ans.0$2), (if p4$2 then BV32_ADD($l.0$2, 1) else $l.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p3$1 && !p3$2;
    v8$1 := (if p2$1 then FLT32($ans.0$1, $min_dist.0$1) else v8$1);
    v8$2 := (if p2$2 then FLT32($ans.0$2, $min_dist.0$2) else v8$2);
    p6$1 := (if p2$1 && v8$1 then v8$1 else p6$1);
    p6$2 := (if p2$2 && v8$2 then v8$2 else p6$2);
    p5$1 := (if p2$1 && !v8$1 then !v8$1 else p5$1);
    p5$2 := (if p2$2 && !v8$2 then !v8$2 else p5$2);
    $index.1$1, $min_dist.1$1 := (if p5$1 then $index.0$1 else $index.1$1), (if p5$1 then $min_dist.0$1 else $min_dist.1$1);
    $index.1$2, $min_dist.1$2 := (if p5$2 then $index.0$2 else $index.1$2), (if p5$2 then $min_dist.0$2 else $min_dist.1$2);
    $index.1$1, $min_dist.1$1 := (if p6$1 then $i.0$1 else $index.1$1), (if p6$1 then $ans.0$1 else $min_dist.1$1);
    $index.1$2, $min_dist.1$2 := (if p6$2 then $i.0$2 else $index.1$2), (if p6$2 then $ans.0$2 else $min_dist.1$2);
    $index.0$1, $min_dist.0$1, $i.0$1 := (if p2$1 then $index.1$1 else $index.0$1), (if p2$1 then $min_dist.1$1 else $min_dist.0$1), (if p2$1 then BV32_ADD($i.0$1, 1) else $i.0$1);
    $index.0$2, $min_dist.0$2, $i.0$2 := (if p2$2 then $index.1$2 else $index.0$2), (if p2$2 then $min_dist.1$2 else $min_dist.0$2), (if p2$2 then BV32_ADD($i.0$2, 1) else $i.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$membership(p0$1, v0$1, $index.0$1, $$membership[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$membership(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$membership(p0$2, v0$2, $index.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$membership"} true;
    $$membership[v0$1] := (if p0$1 then $index.0$1 else $$membership[v0$1]);
    $$membership[v0$2] := (if p0$2 then $index.0$2 else $$membership[v0$2]);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;

  $4.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $4;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 1930 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$feature: int;

procedure {:inline 1} _LOG_READ_$$feature(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$feature;



implementation {:inline 1} _LOG_READ_$$feature(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then true else _READ_HAS_OCCURRED_$$feature);
    return;
}



procedure _CHECK_READ_$$feature(_P: bool, _offset: int, _value: int);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$feature);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$feature: bool;

procedure {:inline 1} _LOG_WRITE_$$feature(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$feature, _WRITE_READ_BENIGN_FLAG_$$feature;



implementation {:inline 1} _LOG_WRITE_$$feature(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then true else _WRITE_HAS_OCCURRED_$$feature);
    _WRITE_READ_BENIGN_FLAG_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$feature);
    return;
}



procedure _CHECK_WRITE_$$feature(_P: bool, _offset: int, _value: int);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature != _value);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$feature != _value);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$feature(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$feature;



implementation {:inline 1} _LOG_ATOMIC_$$feature(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$feature := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$feature);
    return;
}



procedure _CHECK_ATOMIC_$$feature(_P: bool, _offset: int);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);
  requires {:source_name "feature"} {:array "$$feature"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$feature;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$feature(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$feature := (if _P && _WRITE_HAS_OCCURRED_$$feature && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$feature);
    return;
}



const _WATCHED_VALUE_$$clusters: int;

procedure {:inline 1} _LOG_READ_$$clusters(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$clusters;



implementation {:inline 1} _LOG_READ_$$clusters(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$clusters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusters == _value then true else _READ_HAS_OCCURRED_$$clusters);
    return;
}



procedure _CHECK_READ_$$clusters(_P: bool, _offset: int, _value: int);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$clusters);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$clusters: bool;

procedure {:inline 1} _LOG_WRITE_$$clusters(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$clusters, _WRITE_READ_BENIGN_FLAG_$$clusters;



implementation {:inline 1} _LOG_WRITE_$$clusters(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$clusters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusters == _value then true else _WRITE_HAS_OCCURRED_$$clusters);
    _WRITE_READ_BENIGN_FLAG_$$clusters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusters == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$clusters);
    return;
}



procedure _CHECK_WRITE_$$clusters(_P: bool, _offset: int, _value: int);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusters != _value);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusters != _value);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$clusters(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$clusters;



implementation {:inline 1} _LOG_ATOMIC_$$clusters(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$clusters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$clusters);
    return;
}



procedure _CHECK_ATOMIC_$$clusters(_P: bool, _offset: int);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset);
  requires {:source_name "clusters"} {:array "$$clusters"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$clusters(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$clusters;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$clusters(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$clusters := (if _P && _WRITE_HAS_OCCURRED_$$clusters && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$clusters);
    return;
}



const _WATCHED_VALUE_$$membership: int;

procedure {:inline 1} _LOG_READ_$$membership(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$membership;



implementation {:inline 1} _LOG_READ_$$membership(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$membership := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$membership == _value then true else _READ_HAS_OCCURRED_$$membership);
    return;
}



procedure _CHECK_READ_$$membership(_P: bool, _offset: int, _value: int);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$membership);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$membership: bool;

procedure {:inline 1} _LOG_WRITE_$$membership(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$membership, _WRITE_READ_BENIGN_FLAG_$$membership;



implementation {:inline 1} _LOG_WRITE_$$membership(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$membership := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$membership == _value then true else _WRITE_HAS_OCCURRED_$$membership);
    _WRITE_READ_BENIGN_FLAG_$$membership := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$membership == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$membership);
    return;
}



procedure _CHECK_WRITE_$$membership(_P: bool, _offset: int, _value: int);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$membership != _value);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$membership != _value);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$membership(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$membership;



implementation {:inline 1} _LOG_ATOMIC_$$membership(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$membership := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$membership);
    return;
}



procedure _CHECK_ATOMIC_$$membership(_P: bool, _offset: int);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset);
  requires {:source_name "membership"} {:array "$$membership"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$membership(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$membership;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$membership(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$membership := (if _P && _WRITE_HAS_OCCURRED_$$membership && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$membership);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
