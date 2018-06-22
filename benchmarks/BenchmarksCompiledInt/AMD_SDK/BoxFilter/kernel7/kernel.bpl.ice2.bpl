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
 b0010: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$inputImage"} {:global} {:elem_width 8} {:source_name "inputImage"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inputImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inputImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inputImage: bool;

var {:source_name "outputImage"} {:global} $$outputImage: [int]int;

axiom {:array_info "$$outputImage"} {:global} {:elem_width 8} {:source_name "outputImage"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$outputImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$outputImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$outputImage: bool;

var {:source_name "lds"} {:group_shared} $$lds: [bv1][int]int;

axiom {:array_info "$$lds"} {:group_shared} {:elem_width 8} {:source_name "lds"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lds: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lds: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lds: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "box_filter_horizontal_local"} {:kernel} $box_filter_horizontal_local($filterWidth: int);
  requires {:sourceloc_num 0} {:thread 1} (if $filterWidth == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$inputImage && !_WRITE_HAS_OCCURRED_$$inputImage && !_ATOMIC_HAS_OCCURRED_$$inputImage;
  requires !_READ_HAS_OCCURRED_$$outputImage && !_WRITE_HAS_OCCURRED_$$outputImage && !_ATOMIC_HAS_OCCURRED_$$outputImage;
  requires !_READ_HAS_OCCURRED_$$lds && !_WRITE_HAS_OCCURRED_$$lds && !_ATOMIC_HAS_OCCURRED_$$lds;
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
  modifies $$lds, _WRITE_HAS_OCCURRED_$$lds, _WRITE_READ_BENIGN_FLAG_$$lds, _WRITE_READ_BENIGN_FLAG_$$lds, $$outputImage, _TRACKING, _READ_HAS_OCCURRED_$$lds, _WRITE_HAS_OCCURRED_$$outputImage, _WRITE_READ_BENIGN_FLAG_$$outputImage, _WRITE_READ_BENIGN_FLAG_$$outputImage;



implementation {:source_name "box_filter_horizontal_local"} {:kernel} $box_filter_horizontal_local($filterWidth: int)
{
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $X.0$1: int;
  var $X.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
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
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
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
  var _READ_HAS_OCCURRED_$$lds$ghost$$6: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV32_MUL(group_size_x, num_groups_x);
    v2 := BV32_SDIV(BV32_SUB($filterWidth, 1), 2);
    v3$1 := local_id_x$1;
    v3$2 := local_id_x$2;
    v4$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), BV32_MUL(BV32_MUL(v1, group_id_y$1), group_size_y));
    v4$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), BV32_MUL(BV32_MUL(v1, group_id_y$2), group_size_y));
    v5$1 := BV32_SLT(v3$1, v2);
    v5$2 := BV32_SLT(v3$2, v2);
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
    p7$1 := false;
    p7$2 := false;
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p0$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_int$2 else v6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p0$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p0$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p0$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p0$2 then _HAVOC_int$2 else v8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p0$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p0$2 then _HAVOC_int$2 else v9$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$lds(p0$1, BV32_MUL(v3$1, 4), v6$1, $$lds[1bv1][BV32_MUL(v3$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_MUL(v3$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$lds(p0$2, BV32_MUL(v3$2, 4), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_MUL(v3$1, 4)] := (if p0$1 then v6$1 else $$lds[1bv1][BV32_MUL(v3$1, 4)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v3$2, 4)] := (if p0$2 then v6$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v3$2, 4)]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(v3$1, 4), 1), v7$1, $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 1), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 1)] := (if p0$1 then v7$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 1)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 1)] := (if p0$2 then v7$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(v3$1, 4), 2), v8$1, $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 2), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 2)] := (if p0$1 then v8$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 2)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 2)] := (if p0$2 then v8$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(v3$1, 4), 3), v9$1, $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(v3$2, 4), 3), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 3)] := (if p0$1 then v9$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(v3$1, 4), 3)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 3)] := (if p0$2 then v9$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3$2, 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p0$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p0$2 then _HAVOC_int$2 else v10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p0$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p0$2 then _HAVOC_int$2 else v11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p0$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p0$2 then _HAVOC_int$2 else v12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p0$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p0$2 then _HAVOC_int$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$lds(p0$1, BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), v10$1, $$lds[1bv1][BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$lds(p0$2, BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4)] := (if p0$1 then v10$1 else $$lds[1bv1][BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4)] := (if p0$2 then v10$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4)]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 1), v11$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 1), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 1)] := (if p0$1 then v11$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 1)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 1)] := (if p0$2 then v11$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 1)]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 2), v12$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 2)] := (if p0$1 then v12$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 2)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 2)] := (if p0$2 then v12$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 2)]);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$lds(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 3), v13$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$lds(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 3), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 3)] := (if p0$1 then v13$1 else $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$1), 4), 3)]);
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 3)] := (if p0$2 then v13$2 else $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(256, v2), v3$2), 4), 3)]);
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$lds(true, BV32_MUL(BV32_ADD(v3$1, v2), 4), v14$1, $$lds[1bv1][BV32_MUL(BV32_ADD(v3$1, v2), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(true, BV32_MUL(BV32_ADD(v3$2, v2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$lds(true, BV32_MUL(BV32_ADD(v3$2, v2), 4), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_MUL(BV32_ADD(v3$1, v2), 4)] := v14$1;
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v3$2, v2), 4)] := v14$2;
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 1), v15$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 1), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 1)] := v15$1;
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 1)] := v15$2;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 2), v16$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 2), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 2)] := v16$1;
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 2)] := v16$2;
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 3), v17$1, $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$lds(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 3), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lds"} true;
    $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v2), 4), 3)] := v17$1;
    $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v2), 4), 3)] := v17$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 28} $bugle_barrier_duplicated_0(-1, 0);
    v18$1 := BV32_SLT(v0$1, v2);
    v18$2 := BV32_SLT(v0$2, v2);
    p5$1 := (if v18$1 then v18$1 else p5$1);
    p5$2 := (if v18$2 then v18$2 else p5$2);
    p3$1 := (if !v18$1 then !v18$1 else p3$1);
    p3$2 := (if !v18$2 then !v18$2 else p3$2);
    p5$1 := (if p2$1 then true else p5$1);
    p5$2 := (if p2$2 then true else p5$2);
    v19$1 := (if p3$1 then BV32_SGE(v0$1, BV32_SUB(v1, v2)) else v19$1);
    v19$2 := (if p3$2 then BV32_SGE(v0$2, BV32_SUB(v1, v2)) else v19$2);
    p5$1 := (if p3$1 && v19$1 then v19$1 else p5$1);
    p5$2 := (if p3$2 && v19$2 then v19$2 else p5$2);
    p6$1 := (if p3$1 && !v19$1 then !v19$1 else p6$1);
    p6$2 := (if p3$2 && !v19$2 then !v19$2 else p6$2);
    p5$1 := (if p4$1 then true else p5$1);
    p5$2 := (if p4$2 then true else p5$2);
    $sum.0$1, $X.0$1 := (if p6$1 then 0 else $sum.0$1), (if p6$1 then BV32_SUB(0, v2) else $X.0$1);
    $sum.0$2, $X.0$2 := (if p6$2 then 0 else $sum.0$2), (if p6$2 then BV32_SUB(0, v2) else $X.0$2);
    p7$1 := (if p6$1 then true else p7$1);
    p7$2 := (if p6$2 then true else p7$2);
    _READ_HAS_OCCURRED_$$lds$ghost$$6 := _READ_HAS_OCCURRED_$$lds;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_0"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$lds ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  !p6$1 ==> _READ_HAS_OCCURRED_$$lds$ghost$$6 == _READ_HAS_OCCURRED_$$lds )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p7"} {:dominator_predicate "p6"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p7$1 ==> $X.0$1 mod 1 == BV32_SUB(0, v2) mod 1 )  && ( p7$2 ==> $X.0$2 mod 1 == BV32_SUB(0, v2) mod 1 ) ,  ( p7$1 ==> BV32_SLE($X.0$1, BV32_SUB(0, v2)) )  && ( p7$2 ==> BV32_SLE($X.0$2, BV32_SUB(0, v2)) ) ,  ( p7$1 ==> BV32_SGE($X.0$1, BV32_SUB(0, v2)) )  && ( p7$2 ==> BV32_SGE($X.0$2, BV32_SUB(0, v2)) ) ,  ( p7$1 ==> BV32_ULE($X.0$1, BV32_SUB(0, v2)) )  && ( p7$2 ==> BV32_ULE($X.0$2, BV32_SUB(0, v2)) ) ,  ( p7$1 ==> BV32_UGE($X.0$1, BV32_SUB(0, v2)) )  && ( p7$2 ==> BV32_UGE($X.0$2, BV32_SUB(0, v2)) ) ,  ( p7$1 ==> p7$1 ==> !BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) && !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SUB(BV32_MUL(group_size_x, num_groups_x), BV32_SDIV(BV32_SUB($filterWidth, 1), 2))) )  && ( p7$2 ==> p7$2 ==> !BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) && !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_SUB(BV32_MUL(group_size_x, num_groups_x), BV32_SDIV(BV32_SUB($filterWidth, 1), 2))) ) ,  (  !BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) && !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SUB(BV32_MUL(group_size_x, num_groups_x), BV32_SDIV(BV32_SUB($filterWidth, 1), 2))) && BV32_SLE($X.0$1, BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) ==> p7$1 )  && (  !BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) && !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_SUB(BV32_MUL(group_size_x, num_groups_x), BV32_SDIV(BV32_SUB($filterWidth, 1), 2))) && BV32_SLE($X.0$2, BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) ==> p7$2 ) ,  (  _READ_HAS_OCCURRED_$$lds ==> !BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SDIV(BV32_SUB($filterWidth, 1), 2)) ) ,  (  _READ_HAS_OCCURRED_$$lds ==> !BV32_SGE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_SUB(BV32_MUL(group_size_x, num_groups_x), BV32_SDIV(BV32_SUB($filterWidth, 1), 2))) ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 32} p7$1 ==> true;
    v20$1 := (if p7$1 then BV32_SLE($X.0$1, v2) else v20$1);
    v20$2 := (if p7$2 then BV32_SLE($X.0$2, v2) else v20$2);
    p8$1 := false;
    p8$2 := false;
    p8$1 := (if p7$1 && v20$1 then v20$1 else p8$1);
    p8$2 := (if p7$2 && v20$2 then v20$2 else p8$2);
    p7$1 := (if p7$1 && !v20$1 then v20$1 else p7$1);
    p7$2 := (if p7$2 && !v20$2 then v20$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$lds(p8$1, BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), $$lds[1bv1][BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$lds(p8$2, BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lds"} true;
    v21$1 := (if p8$1 then $$lds[1bv1][BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4)] else v21$1);
    v21$2 := (if p8$2 then $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4)] else v21$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$lds(p8$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 1), $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$lds(p8$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 1), $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lds"} true;
    v22$1 := (if p8$1 then $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 1)] else v22$1);
    v22$2 := (if p8$2 then $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 1)] else v22$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$lds(p8$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 2), $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$lds(p8$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 2), $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lds"} true;
    v23$1 := (if p8$1 then $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 2)] else v23$1);
    v23$2 := (if p8$2 then $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 2)] else v23$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$lds(p8$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 3), $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$lds(p8$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 3), $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lds"} true;
    v24$1 := (if p8$1 then $$lds[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$1, $X.0$1), v2), 4), 3)] else v24$1);
    v24$2 := (if p8$2 then $$lds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v3$2, $X.0$2), v2), 4), 3)] else v24$2);
    $sum.0$1, $X.0$1 := (if p8$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV_EXTRACT($sum.0$1, 128, 96), BV8_ZEXT32(v24$1)), BV32_ADD(BV_EXTRACT($sum.0$1, 96, 64), BV8_ZEXT32(v23$1))), BV32_ADD(BV_EXTRACT($sum.0$1, 64, 32), BV8_ZEXT32(v22$1))), BV32_ADD(BV_EXTRACT($sum.0$1, 32, 0), BV8_ZEXT32(v21$1))) else $sum.0$1), (if p8$1 then BV32_ADD($X.0$1, 1) else $X.0$1);
    $sum.0$2, $X.0$2 := (if p8$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV_EXTRACT($sum.0$2, 128, 96), BV8_ZEXT32(v24$2)), BV32_ADD(BV_EXTRACT($sum.0$2, 96, 64), BV8_ZEXT32(v23$2))), BV32_ADD(BV_EXTRACT($sum.0$2, 64, 32), BV8_ZEXT32(v22$2))), BV32_ADD(BV_EXTRACT($sum.0$2, 32, 0), BV8_ZEXT32(v21$2))) else $sum.0$2), (if p8$2 then BV32_ADD($X.0$2, 1) else $X.0$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p7$1 && !p7$2;
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$outputImage(p6$1, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 32, 0), $filterWidth), 8, 0), $$outputImage[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(p6$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$outputImage(p6$2, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 32, 0), $filterWidth), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputImage"} true;
    $$outputImage[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4)] := (if p6$1 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 32, 0), $filterWidth), 8, 0) else $$outputImage[BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4)]);
    $$outputImage[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4)] := (if p6$2 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 32, 0), $filterWidth), 8, 0) else $$outputImage[BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4)]);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$outputImage(p6$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 1), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 64, 32), $filterWidth), 8, 0), $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 1), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 64, 32), $filterWidth), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputImage"} true;
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 1)] := (if p6$1 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 64, 32), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 1)]);
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 1)] := (if p6$2 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 64, 32), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 1)]);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$outputImage(p6$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 2), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 96, 64), $filterWidth), 8, 0), $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 2), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 96, 64), $filterWidth), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputImage"} true;
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 2)] := (if p6$1 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 96, 64), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 2)]);
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 2)] := (if p6$2 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 96, 64), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 2)]);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$outputImage(p6$1, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 3), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 128, 96), $filterWidth), 8, 0), $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$outputImage(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 3), BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 128, 96), $filterWidth), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputImage"} true;
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 3)] := (if p6$1 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$1, 128, 96), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), v1)), 4), 3)]);
    $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 3)] := (if p6$2 then BV_EXTRACT(BV32_SDIV(BV_EXTRACT($sum.0$2, 128, 96), $filterWidth), 8, 0) else $$outputImage[BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), v1)), 4), 3)]);
    return;

  $6.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $6;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 1024 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$lds, $$outputImage, _TRACKING;









function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}











const _WATCHED_VALUE_$$inputImage: int;

procedure {:inline 1} _LOG_READ_$$inputImage(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$inputImage;



implementation {:inline 1} _LOG_READ_$$inputImage(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inputImage == _value then true else _READ_HAS_OCCURRED_$$inputImage);
    return;
}



procedure _CHECK_READ_$$inputImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inputImage);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inputImage: bool;

procedure {:inline 1} _LOG_WRITE_$$inputImage(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$inputImage, _WRITE_READ_BENIGN_FLAG_$$inputImage;



implementation {:inline 1} _LOG_WRITE_$$inputImage(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inputImage == _value then true else _WRITE_HAS_OCCURRED_$$inputImage);
    _WRITE_READ_BENIGN_FLAG_$$inputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inputImage == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inputImage);
    return;
}



procedure _CHECK_WRITE_$$inputImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inputImage != _value);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inputImage != _value);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inputImage(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$inputImage;



implementation {:inline 1} _LOG_ATOMIC_$$inputImage(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inputImage);
    return;
}



procedure _CHECK_ATOMIC_$$inputImage(_P: bool, _offset: int);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset);
  requires {:source_name "inputImage"} {:array "$$inputImage"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inputImage(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$inputImage;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inputImage(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inputImage := (if _P && _WRITE_HAS_OCCURRED_$$inputImage && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inputImage);
    return;
}



const _WATCHED_VALUE_$$outputImage: int;

procedure {:inline 1} _LOG_READ_$$outputImage(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$outputImage;



implementation {:inline 1} _LOG_READ_$$outputImage(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$outputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputImage == _value then true else _READ_HAS_OCCURRED_$$outputImage);
    return;
}



procedure _CHECK_READ_$$outputImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$outputImage);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$outputImage: bool;

procedure {:inline 1} _LOG_WRITE_$$outputImage(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$outputImage, _WRITE_READ_BENIGN_FLAG_$$outputImage;



implementation {:inline 1} _LOG_WRITE_$$outputImage(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$outputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputImage == _value then true else _WRITE_HAS_OCCURRED_$$outputImage);
    _WRITE_READ_BENIGN_FLAG_$$outputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputImage == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$outputImage);
    return;
}



procedure _CHECK_WRITE_$$outputImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputImage != _value);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputImage != _value);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$outputImage(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$outputImage;



implementation {:inline 1} _LOG_ATOMIC_$$outputImage(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$outputImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$outputImage);
    return;
}



procedure _CHECK_ATOMIC_$$outputImage(_P: bool, _offset: int);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset);
  requires {:source_name "outputImage"} {:array "$$outputImage"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$outputImage;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputImage(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$outputImage := (if _P && _WRITE_HAS_OCCURRED_$$outputImage && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$outputImage);
    return;
}



const _WATCHED_VALUE_$$lds: int;

procedure {:inline 1} _LOG_READ_$$lds(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$lds;



implementation {:inline 1} _LOG_READ_$$lds(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$lds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lds == _value then true else _READ_HAS_OCCURRED_$$lds);
    return;
}



procedure _CHECK_READ_$$lds(_P: bool, _offset: int, _value: int);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$lds && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$lds: bool;

procedure {:inline 1} _LOG_WRITE_$$lds(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$lds, _WRITE_READ_BENIGN_FLAG_$$lds;



implementation {:inline 1} _LOG_WRITE_$$lds(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$lds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lds == _value then true else _WRITE_HAS_OCCURRED_$$lds);
    _WRITE_READ_BENIGN_FLAG_$$lds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lds == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$lds);
    return;
}



procedure _CHECK_WRITE_$$lds(_P: bool, _offset: int, _value: int);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lds != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lds != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$lds(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$lds;



implementation {:inline 1} _LOG_ATOMIC_$$lds(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$lds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$lds);
    return;
}



procedure _CHECK_ATOMIC_$$lds(_P: bool, _offset: int);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lds"} {:array "$$lds"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$lds;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lds(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$lds := (if _P && _WRITE_HAS_OCCURRED_$$lds && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$lds);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lds;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lds;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lds;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$outputImage;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$outputImage;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$outputImage;
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
    havoc $$outputImage;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lds;
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




