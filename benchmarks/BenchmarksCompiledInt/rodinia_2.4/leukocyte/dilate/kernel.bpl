type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "c_strel"} {:constant} $$c_strel$1: [int]int;

var {:source_name "c_strel"} {:constant} $$c_strel$2: [int]int;

axiom {:array_info "$$c_strel"} {:constant} {:elem_width 32} {:source_name "c_strel"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "img"} {:global} $$img: [int]int;

axiom {:array_info "$$img"} {:global} {:elem_width 32} {:source_name "img"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$img: bool;

var {:source_name "dilated"} {:global} $$dilated: [int]int;

axiom {:array_info "$$dilated"} {:global} {:elem_width 32} {:source_name "dilated"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dilated: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dilated: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dilated: bool;

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

function FLT32(int, int) : bool;

function FUNO32(int, int) : bool;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "dilate_kernel"} {:kernel} $dilate_kernel($img_m: int, $img_n: int, $strel_m: int, $strel_n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $img_m == 219 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $img_n == 640 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $strel_m == 25 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $strel_n == 25 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$img && !_WRITE_HAS_OCCURRED_$$img && !_ATOMIC_HAS_OCCURRED_$$img;
  requires !_READ_HAS_OCCURRED_$$dilated && !_WRITE_HAS_OCCURRED_$$dilated && !_ATOMIC_HAS_OCCURRED_$$dilated;
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
  modifies _WRITE_HAS_OCCURRED_$$dilated, _WRITE_READ_BENIGN_FLAG_$$dilated, _WRITE_READ_BENIGN_FLAG_$$dilated;



implementation {:source_name "dilate_kernel"} {:kernel} $dilate_kernel($img_m: int, $img_n: int, $strel_m: int, $strel_n: int)
{
  var $max.0$1: int;
  var $max.0$2: int;
  var $el_i.0$1: int;
  var $el_i.0$2: int;
  var $max.4$1: int;
  var $max.4$2: int;
  var $max.1$1: int;
  var $max.1$2: int;
  var $el_j.0$1: int;
  var $el_j.0$2: int;
  var $max.3$1: int;
  var $max.3$2: int;
  var $max.2$1: int;
  var $max.2$2: int;
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
  var v5$1: int;
  var v5$2: int;
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
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SREM(v0$1, $img_m);
    v1$2 := BV32_SREM(v0$2, $img_m);
    v2$1 := BV32_SDIV(v0$1, $img_m);
    v2$2 := BV32_SDIV(v0$2, $img_m);
    v3$1 := BV32_SLT(v2$1, $img_n);
    v3$2 := BV32_SLT(v2$2, $img_n);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p17$1 := false;
    p17$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    $max.0$1, $el_i.0$1 := (if p0$1 then 0 else $max.0$1), (if p0$1 then 0 else $el_i.0$1);
    $max.0$2, $el_i.0$2 := (if p0$2 then 0 else $max.0$2), (if p0$2 then 0 else $el_i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:block_sourceloc} {:sourceloc_num 6} p1$1 ==> true;
    v4$1 := (if p1$1 then BV32_SLT($el_i.0$1, $strel_m) else v4$1);
    v4$2 := (if p1$2 then BV32_SLT($el_i.0$2, $strel_m) else v4$2);
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
    p2$1 := (if p1$1 && v4$1 then v4$1 else p2$1);
    p2$2 := (if p1$2 && v4$2 then v4$2 else p2$2);
    p1$1 := (if p1$1 && !v4$1 then v4$1 else p1$1);
    p1$2 := (if p1$2 && !v4$2 then v4$2 else p1$2);
    v5$1 := (if p2$1 then BV32_ADD(BV32_SUB(v1$1, BV32_SDIV($strel_m, 2)), $el_i.0$1) else v5$1);
    v5$2 := (if p2$2 then BV32_ADD(BV32_SUB(v1$2, BV32_SDIV($strel_m, 2)), $el_i.0$2) else v5$2);
    v6$1 := (if p2$1 then BV32_SGE(v5$1, 0) else v6$1);
    v6$2 := (if p2$2 then BV32_SGE(v5$2, 0) else v6$2);
    p4$1 := (if p2$1 && v6$1 then v6$1 else p4$1);
    p4$2 := (if p2$2 && v6$2 then v6$2 else p4$2);
    p3$1 := (if p2$1 && !v6$1 then !v6$1 else p3$1);
    p3$2 := (if p2$2 && !v6$2 then !v6$2 else p3$2);
    $max.4$1 := (if p3$1 then $max.0$1 else $max.4$1);
    $max.4$2 := (if p3$2 then $max.0$2 else $max.4$2);
    v7$1 := (if p4$1 then BV32_SLT(v5$1, $img_m) else v7$1);
    v7$2 := (if p4$2 then BV32_SLT(v5$2, $img_m) else v7$2);
    p6$1 := (if p4$1 && v7$1 then v7$1 else p6$1);
    p6$2 := (if p4$2 && v7$2 then v7$2 else p6$2);
    p5$1 := (if p4$1 && !v7$1 then !v7$1 else p5$1);
    p5$2 := (if p4$2 && !v7$2 then !v7$2 else p5$2);
    $max.4$1 := (if p5$1 then $max.0$1 else $max.4$1);
    $max.4$2 := (if p5$2 then $max.0$2 else $max.4$2);
    $max.1$1, $el_j.0$1 := (if p6$1 then $max.0$1 else $max.1$1), (if p6$1 then 0 else $el_j.0$1);
    $max.1$2, $el_j.0$2 := (if p6$2 then $max.0$2 else $max.1$2), (if p6$2 then 0 else $el_j.0$2);
    p7$1 := (if p6$1 then true else p7$1);
    p7$2 := (if p6$2 then true else p7$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p7"} {:dominator_predicate "p6"} true;
    assert p7$1 ==> p1$1;
    assert p7$2 ==> p1$2;
    assert {:block_sourceloc} {:sourceloc_num 10} p7$1 ==> true;
    v8$1 := (if p7$1 then BV32_SLT($el_j.0$1, $strel_n) else v8$1);
    v8$2 := (if p7$2 then BV32_SLT($el_j.0$2, $strel_n) else v8$2);
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
    p8$1 := (if p7$1 && v8$1 then v8$1 else p8$1);
    p8$2 := (if p7$2 && v8$2 then v8$2 else p8$2);
    p7$1 := (if p7$1 && !v8$1 then v8$1 else p7$1);
    p7$2 := (if p7$2 && !v8$2 then v8$2 else p7$2);
    v9$1 := (if p8$1 then BV32_ADD(BV32_SUB(v2$1, BV32_SDIV($strel_n, 2)), $el_j.0$1) else v9$1);
    v9$2 := (if p8$2 then BV32_ADD(BV32_SUB(v2$2, BV32_SDIV($strel_n, 2)), $el_j.0$2) else v9$2);
    v10$1 := (if p8$1 then BV32_SGE(v9$1, 0) else v10$1);
    v10$2 := (if p8$2 then BV32_SGE(v9$2, 0) else v10$2);
    p10$1 := (if p8$1 && v10$1 then v10$1 else p10$1);
    p10$2 := (if p8$2 && v10$2 then v10$2 else p10$2);
    p9$1 := (if p8$1 && !v10$1 then !v10$1 else p9$1);
    p9$2 := (if p8$2 && !v10$2 then !v10$2 else p9$2);
    $max.3$1 := (if p9$1 then $max.1$1 else $max.3$1);
    $max.3$2 := (if p9$2 then $max.1$2 else $max.3$2);
    v11$1 := (if p10$1 then BV32_SLT(v9$1, $img_n) else v11$1);
    v11$2 := (if p10$2 then BV32_SLT(v9$2, $img_n) else v11$2);
    p12$1 := (if p10$1 && v11$1 then v11$1 else p12$1);
    p12$2 := (if p10$2 && v11$2 then v11$2 else p12$2);
    p11$1 := (if p10$1 && !v11$1 then !v11$1 else p11$1);
    p11$2 := (if p10$2 && !v11$2 then !v11$2 else p11$2);
    $max.3$1 := (if p11$1 then $max.1$1 else $max.3$1);
    $max.3$2 := (if p11$2 then $max.1$2 else $max.3$2);
    v12$1 := (if p12$1 then $$c_strel$1[BV32_ADD(BV32_MUL($el_i.0$1, $strel_n), $el_j.0$1)] else v12$1);
    v12$2 := (if p12$2 then $$c_strel$2[BV32_ADD(BV32_MUL($el_i.0$2, $strel_n), $el_j.0$2)] else v12$2);
    v13$1 := (if p12$1 then FLT32(0, v12$1) || FLT32(v12$1, 0) || FUNO32(v12$1, 0) else v13$1);
    v13$2 := (if p12$2 then FLT32(0, v12$2) || FLT32(v12$2, 0) || FUNO32(v12$2, 0) else v13$2);
    p14$1 := (if p12$1 && v13$1 then v13$1 else p14$1);
    p14$2 := (if p12$2 && v13$2 then v13$2 else p14$2);
    p13$1 := (if p12$1 && !v13$1 then !v13$1 else p13$1);
    p13$2 := (if p12$2 && !v13$2 then !v13$2 else p13$2);
    $max.3$1 := (if p13$1 then $max.1$1 else $max.3$1);
    $max.3$2 := (if p13$2 then $max.1$2 else $max.3$2);
    v14$1 := (if p14$1 then $$img[BV32_ADD(BV32_MUL(v9$1, $img_m), v5$1)] else v14$1);
    v14$2 := (if p14$2 then $$img[BV32_ADD(BV32_MUL(v9$2, $img_m), v5$2)] else v14$2);
    v15$1 := (if p14$1 then FLT32($max.1$1, v14$1) else v15$1);
    v15$2 := (if p14$2 then FLT32($max.1$2, v14$2) else v15$2);
    p16$1 := (if p14$1 && v15$1 then v15$1 else p16$1);
    p16$2 := (if p14$2 && v15$2 then v15$2 else p16$2);
    p15$1 := (if p14$1 && !v15$1 then !v15$1 else p15$1);
    p15$2 := (if p14$2 && !v15$2 then !v15$2 else p15$2);
    $max.2$1 := (if p15$1 then $max.1$1 else $max.2$1);
    $max.2$2 := (if p15$2 then $max.1$2 else $max.2$2);
    $max.2$1 := (if p16$1 then v14$1 else $max.2$1);
    $max.2$2 := (if p16$2 then v14$2 else $max.2$2);
    $max.3$1 := (if p14$1 then $max.2$1 else $max.3$1);
    $max.3$2 := (if p14$2 then $max.2$2 else $max.3$2);
    $max.1$1, $el_j.0$1 := (if p8$1 then $max.3$1 else $max.1$1), (if p8$1 then BV32_ADD($el_j.0$1, 1) else $el_j.0$1);
    $max.1$2, $el_j.0$2 := (if p8$2 then $max.3$2 else $max.1$2), (if p8$2 then BV32_ADD($el_j.0$2, 1) else $el_j.0$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p7$1 && !p7$2;
    $max.4$1 := (if p6$1 then $max.1$1 else $max.4$1);
    $max.4$2 := (if p6$2 then $max.1$2 else $max.4$2);
    $max.0$1, $el_i.0$1 := (if p2$1 then $max.4$1 else $max.0$1), (if p2$1 then BV32_ADD($el_i.0$1, 1) else $el_i.0$1);
    $max.0$2, $el_i.0$2 := (if p2$2 then $max.4$2 else $max.0$2), (if p2$2 then BV32_ADD($el_i.0$2, 1) else $el_i.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, $2.tail;

  $2.tail:
    assume !p1$1 && !p1$2;
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$dilated(p0$1, BV32_ADD(BV32_MUL(v1$1, $img_n), v2$1), $max.0$1, $$dilated[BV32_ADD(BV32_MUL(v1$1, $img_n), v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dilated(p0$2, BV32_ADD(BV32_MUL(v1$2, $img_n), v2$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$dilated(p0$2, BV32_ADD(BV32_MUL(v1$2, $img_n), v2$2), $max.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dilated"} true;
    $$dilated[BV32_ADD(BV32_MUL(v1$1, $img_n), v2$1)] := (if p0$1 then $max.0$1 else $$dilated[BV32_ADD(BV32_MUL(v1$1, $img_n), v2$1)]);
    $$dilated[BV32_ADD(BV32_MUL(v1$2, $img_n), v2$2)] := (if p0$2 then $max.0$2 else $$dilated[BV32_ADD(BV32_MUL(v1$2, $img_n), v2$2)]);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;

  $6.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $6;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 176 then 1 else 0) != 0;

axiom (if num_groups_x == 797 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$img: int;

procedure {:inline 1} _LOG_READ_$$img(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$img;



implementation {:inline 1} _LOG_READ_$$img(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then true else _READ_HAS_OCCURRED_$$img);
    return;
}



procedure _CHECK_READ_$$img(_P: bool, _offset: int, _value: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$img);
  requires {:source_name "img"} {:array "$$img"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$img: bool;

procedure {:inline 1} _LOG_WRITE_$$img(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$img, _WRITE_READ_BENIGN_FLAG_$$img;



implementation {:inline 1} _LOG_WRITE_$$img(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then true else _WRITE_HAS_OCCURRED_$$img);
    _WRITE_READ_BENIGN_FLAG_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$img);
    return;
}



procedure _CHECK_WRITE_$$img(_P: bool, _offset: int, _value: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img != _value);
  requires {:source_name "img"} {:array "$$img"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img != _value);
  requires {:source_name "img"} {:array "$$img"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$img(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$img;



implementation {:inline 1} _LOG_ATOMIC_$$img(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$img);
    return;
}



procedure _CHECK_ATOMIC_$$img(_P: bool, _offset: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);
  requires {:source_name "img"} {:array "$$img"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$img(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$img;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$img(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$img := (if _P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$img);
    return;
}



const _WATCHED_VALUE_$$dilated: int;

procedure {:inline 1} _LOG_READ_$$dilated(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dilated;



implementation {:inline 1} _LOG_READ_$$dilated(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dilated := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dilated == _value then true else _READ_HAS_OCCURRED_$$dilated);
    return;
}



procedure _CHECK_READ_$$dilated(_P: bool, _offset: int, _value: int);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dilated);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dilated: bool;

procedure {:inline 1} _LOG_WRITE_$$dilated(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dilated, _WRITE_READ_BENIGN_FLAG_$$dilated;



implementation {:inline 1} _LOG_WRITE_$$dilated(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dilated := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dilated == _value then true else _WRITE_HAS_OCCURRED_$$dilated);
    _WRITE_READ_BENIGN_FLAG_$$dilated := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dilated == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dilated);
    return;
}



procedure _CHECK_WRITE_$$dilated(_P: bool, _offset: int, _value: int);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dilated != _value);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dilated != _value);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dilated(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dilated;



implementation {:inline 1} _LOG_ATOMIC_$$dilated(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dilated := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dilated);
    return;
}



procedure _CHECK_ATOMIC_$$dilated(_P: bool, _offset: int);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset);
  requires {:source_name "dilated"} {:array "$$dilated"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dilated(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dilated;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dilated(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dilated := (if _P && _WRITE_HAS_OCCURRED_$$dilated && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dilated);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}
