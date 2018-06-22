type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "output"} {:global} $$output: [bv32]bv32;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

var {:source_name "imageSampler"} {:constant} $$imageSampler$1: [bv32]bv32;

var {:source_name "imageSampler"} {:constant} $$imageSampler$2: [bv32]bv32;

axiom {:array_info "$$imageSampler"} {:constant} {:elem_width 32} {:source_name "imageSampler"} {:source_elem_width 32} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

procedure {:source_name "image3dCopy"} {:kernel} $image3dCopy();
  requires $$imageSampler$1[0bv32] == 7bv32;
  requires $$imageSampler$2[0bv32] == 7bv32;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:source_name "image3dCopy"} {:kernel} $image3dCopy()
{
  var $0$1: bv32;
  var $0$2: bv32;
  var $1$1: bv32;
  var $1$2: bv32;
  var $2$1: bv32;
  var $2$2: bv32;
  var $3$1: bv32;
  var $3$2: bv32;
  var $4: bv32;
  var $5: bv32;
  var $6$1: bv32;
  var $6$2: bv32;
  var $7$1: bv32;
  var $7$2: bv32;
  var $8$1: bv32;
  var $8$2: bv32;
  var $9$1: bv32;
  var $9$2: bv32;
  var $10: bv32;
  var $11: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := $$imageSampler$1[0bv32];
    v2$2 := $$imageSampler$2[0bv32];
    v3$1 := BV32_SLT(v0$1, 0bv32);
    v3$2 := BV32_SLT(v0$2, 0bv32);
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
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    p1$1 := (if !v3$1 then !v3$1 else p1$1);
    p1$2 := (if !v3$2 then !v3$2 else p1$2);
    $0$1 := (if p0$1 then 0bv32 else $0$1);
    $0$2 := (if p0$2 then 0bv32 else $0$2);
    v4$1 := (if p1$1 then BV32_SGE(v0$1, 512bv32) else v4$1);
    v4$2 := (if p1$2 then BV32_SGE(v0$2, 512bv32) else v4$2);
    p2$1 := (if p1$1 && v4$1 then v4$1 else p2$1);
    p2$2 := (if p1$2 && v4$2 then v4$2 else p2$2);
    p3$1 := (if p1$1 && !v4$1 then !v4$1 else p3$1);
    p3$2 := (if p1$2 && !v4$2 then !v4$2 else p3$2);
    $1$1 := (if p2$1 then 511bv32 else $1$1);
    $1$2 := (if p2$2 then 511bv32 else $1$2);
    $1$1 := (if p3$1 then v0$1 else $1$1);
    $1$2 := (if p3$2 then v0$2 else $1$2);
    $0$1 := (if p1$1 then $1$1 else $0$1);
    $0$2 := (if p1$2 then $1$2 else $0$2);
    v5$1 := BV32_SLT(v1$1, 0bv32);
    v5$2 := BV32_SLT(v1$2, 0bv32);
    p4$1 := (if v5$1 then v5$1 else p4$1);
    p4$2 := (if v5$2 then v5$2 else p4$2);
    p5$1 := (if !v5$1 then !v5$1 else p5$1);
    p5$2 := (if !v5$2 then !v5$2 else p5$2);
    $2$1 := (if p4$1 then 0bv32 else $2$1);
    $2$2 := (if p4$2 then 0bv32 else $2$2);
    v6$1 := (if p5$1 then BV32_SGE(v1$1, 512bv32) else v6$1);
    v6$2 := (if p5$2 then BV32_SGE(v1$2, 512bv32) else v6$2);
    p6$1 := (if p5$1 && v6$1 then v6$1 else p6$1);
    p6$2 := (if p5$2 && v6$2 then v6$2 else p6$2);
    p7$1 := (if p5$1 && !v6$1 then !v6$1 else p7$1);
    p7$2 := (if p5$2 && !v6$2 then !v6$2 else p7$2);
    $3$1 := (if p6$1 then 511bv32 else $3$1);
    $3$2 := (if p6$2 then 511bv32 else $3$2);
    $3$1 := (if p7$1 then v1$1 else $3$1);
    $3$2 := (if p7$2 then v1$2 else $3$2);
    $2$1 := (if p5$1 then $3$1 else $2$1);
    $2$2 := (if p5$2 then $3$2 else $2$2);
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} true;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} true;
    $5 := 0bv32;
    goto $17;

  $17:
    $4 := $5;
    goto $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit;

  $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit:
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    v11$1 := $$imageSampler$1[0bv32];
    v11$2 := $$imageSampler$2[0bv32];
    v12$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v12$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v13$1 := BV32_SUB(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), BV32_UDIV(BV32_MUL(group_size_y, num_groups_y), 2bv32));
    v13$2 := BV32_SUB(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), BV32_UDIV(BV32_MUL(group_size_y, num_groups_y), 2bv32));
    v14$1 := BV32_SLT(v12$1, 0bv32);
    v14$2 := BV32_SLT(v12$2, 0bv32);
    p8$1 := (if v14$1 then v14$1 else p8$1);
    p8$2 := (if v14$2 then v14$2 else p8$2);
    p9$1 := (if !v14$1 then !v14$1 else p9$1);
    p9$2 := (if !v14$2 then !v14$2 else p9$2);
    $6$1 := (if p8$1 then 0bv32 else $6$1);
    $6$2 := (if p8$2 then 0bv32 else $6$2);
    v15$1 := (if p9$1 then BV32_SGE(v12$1, 512bv32) else v15$1);
    v15$2 := (if p9$2 then BV32_SGE(v12$2, 512bv32) else v15$2);
    p10$1 := (if p9$1 && v15$1 then v15$1 else p10$1);
    p10$2 := (if p9$2 && v15$2 then v15$2 else p10$2);
    p11$1 := (if p9$1 && !v15$1 then !v15$1 else p11$1);
    p11$2 := (if p9$2 && !v15$2 then !v15$2 else p11$2);
    $7$1 := (if p10$1 then 511bv32 else $7$1);
    $7$2 := (if p10$2 then 511bv32 else $7$2);
    $7$1 := (if p11$1 then v12$1 else $7$1);
    $7$2 := (if p11$2 then v12$2 else $7$2);
    $6$1 := (if p9$1 then $7$1 else $6$1);
    $6$2 := (if p9$2 then $7$2 else $6$2);
    v16$1 := BV32_SLT(v13$1, 0bv32);
    v16$2 := BV32_SLT(v13$2, 0bv32);
    p12$1 := (if v16$1 then v16$1 else p12$1);
    p12$2 := (if v16$2 then v16$2 else p12$2);
    p13$1 := (if !v16$1 then !v16$1 else p13$1);
    p13$2 := (if !v16$2 then !v16$2 else p13$2);
    $8$1 := (if p12$1 then 0bv32 else $8$1);
    $8$2 := (if p12$2 then 0bv32 else $8$2);
    v17$1 := (if p13$1 then BV32_SGE(v13$1, 512bv32) else v17$1);
    v17$2 := (if p13$2 then BV32_SGE(v13$2, 512bv32) else v17$2);
    p14$1 := (if p13$1 && v17$1 then v17$1 else p14$1);
    p14$2 := (if p13$2 && v17$2 then v17$2 else p14$2);
    p15$1 := (if p13$1 && !v17$1 then !v17$1 else p15$1);
    p15$2 := (if p13$2 && !v17$2 then !v17$2 else p15$2);
    $9$1 := (if p14$1 then 511bv32 else $9$1);
    $9$2 := (if p14$2 then 511bv32 else $9$2);
    $9$1 := (if p15$1 then v13$1 else $9$1);
    $9$2 := (if p15$2 then v13$2 else $9$2);
    $8$1 := (if p13$1 then $9$1 else $8$1);
    $8$2 := (if p13$2 then $9$2 else $8$2);
    goto $truebb9, $falsebb9;

  $falsebb9:
    assume {:partition} true;
    goto $truebb10, $falsebb10;

  $falsebb10:
    assume {:partition} true;
    $11 := 1bv32;
    goto $34;

  $34:
    $10 := $11;
    goto $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit4;

  $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit4:
    havoc v18$1, v18$2;
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$output(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), BV32_ADD(v7$1, v18$1), $$output[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$output(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), BV32_ADD(v7$2, v18$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32)] := BV32_ADD(v7$1, v18$1);
    $$output[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32)] := BV32_ADD(v7$2, v18$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 1bv32), BV32_ADD(v8$1, v19$1), $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 1bv32), BV32_ADD(v8$2, v19$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 1bv32)] := BV32_ADD(v8$1, v19$1);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 1bv32)] := BV32_ADD(v8$2, v19$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 2bv32), BV32_ADD(v9$1, v20$1), $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 2bv32), BV32_ADD(v9$2, v20$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 2bv32)] := BV32_ADD(v9$1, v20$1);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 2bv32)] := BV32_ADD(v9$2, v20$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 3bv32), BV32_ADD(v10$1, v21$1), $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 3bv32), BV32_ADD(v10$2, v21$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8192bv32), v0$1), 4bv32), 3bv32)] := BV32_ADD(v10$1, v21$1);
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8192bv32), v0$2), 4bv32), 3bv32)] := BV32_ADD(v10$2, v21$2);
    return;

  $truebb10:
    assume {:partition} false;
    $11 := 511bv32;
    goto $34;

  $truebb9:
    assume {:partition} false;
    $10 := 0bv32;
    goto $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit4;

  $truebb4:
    assume {:partition} false;
    $5 := 511bv32;
    goto $17;

  $truebb3:
    assume {:partition} false;
    $4 := 0bv32;
    goto $_Z12read_imageuiPU3AS1Dv4_j11ocl_samplerDv4_i.exit;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 2bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 512bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$input: bv32;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: bv32);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$output: bv32;

procedure {:inline 1} _LOG_READ_$$output(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_READ_$$output(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _READ_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_READ_$$output(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output: bool;

procedure {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _WRITE_HAS_OCCURRED_$$output);
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



procedure _CHECK_WRITE_$$output(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_ATOMIC_$$output(_P: bool, _offset: bv32);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;
