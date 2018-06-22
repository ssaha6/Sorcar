type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$gpuWall"} {:global} {:elem_width 32} {:source_name "gpuWall"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gpuWall: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gpuWall: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gpuWall: bool;

axiom {:array_info "$$gpuSrc"} {:global} {:elem_width 32} {:source_name "gpuSrc"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gpuSrc: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gpuSrc: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gpuSrc: bool;

var {:source_name "gpuResults"} {:global} $$gpuResults: [bv32]bv32;

axiom {:array_info "$$gpuResults"} {:global} {:elem_width 32} {:source_name "gpuResults"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$gpuResults: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$gpuResults: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$gpuResults: bool;

var {:source_name "prev"} {:group_shared} $$prev: [bv1][bv32]bv32;

axiom {:array_info "$$prev"} {:group_shared} {:elem_width 32} {:source_name "prev"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$prev: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$prev: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$prev: bool;

var {:source_name "result"} {:group_shared} $$result: [bv1][bv32]bv32;

axiom {:array_info "$$result"} {:group_shared} {:elem_width 32} {:source_name "result"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$result: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$result: bool;

var {:source_name "outputBuffer"} {:global} $$outputBuffer: [bv32]bv32;

axiom {:array_info "$$outputBuffer"} {:global} {:elem_width 32} {:source_name "outputBuffer"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$outputBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$outputBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$outputBuffer: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "dynproc_kernel"} {:kernel} $dynproc_kernel($iteration: bv32, $cols: bv32, $rows: bv32, $startStep: bv32, $border: bv32, $HALO: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $cols == 100000bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $rows == 100bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $startStep == 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $border == 20bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 4} {:thread 1} (if $HALO == 1bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$gpuWall && !_WRITE_HAS_OCCURRED_$$gpuWall && !_ATOMIC_HAS_OCCURRED_$$gpuWall;
  requires !_READ_HAS_OCCURRED_$$gpuSrc && !_WRITE_HAS_OCCURRED_$$gpuSrc && !_ATOMIC_HAS_OCCURRED_$$gpuSrc;
  requires !_READ_HAS_OCCURRED_$$gpuResults && !_WRITE_HAS_OCCURRED_$$gpuResults && !_ATOMIC_HAS_OCCURRED_$$gpuResults;
  requires !_READ_HAS_OCCURRED_$$outputBuffer && !_WRITE_HAS_OCCURRED_$$outputBuffer && !_ATOMIC_HAS_OCCURRED_$$outputBuffer;
  requires !_READ_HAS_OCCURRED_$$prev && !_WRITE_HAS_OCCURRED_$$prev && !_ATOMIC_HAS_OCCURRED_$$prev;
  requires !_READ_HAS_OCCURRED_$$result && !_WRITE_HAS_OCCURRED_$$result && !_ATOMIC_HAS_OCCURRED_$$result;
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
  modifies $$prev, $$result, _WRITE_HAS_OCCURRED_$$prev, _WRITE_READ_BENIGN_FLAG_$$prev, _WRITE_READ_BENIGN_FLAG_$$prev, $$gpuResults, $$outputBuffer, _TRACKING, _READ_HAS_OCCURRED_$$result, _WRITE_HAS_OCCURRED_$$gpuResults, _WRITE_READ_BENIGN_FLAG_$$gpuResults, _WRITE_READ_BENIGN_FLAG_$$gpuResults, _READ_HAS_OCCURRED_$$prev, _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_READ_BENIGN_FLAG_$$result, _WRITE_HAS_OCCURRED_$$outputBuffer, _WRITE_READ_BENIGN_FLAG_$$outputBuffer, _WRITE_READ_BENIGN_FLAG_$$outputBuffer, _TRACKING, _TRACKING;



implementation {:source_name "dynproc_kernel"} {:kernel} $dynproc_kernel($iteration: bv32, $cols: bv32, $rows: bv32, $startStep: bv32, $border: bv32, $HALO: bv32)
{
  var $cond$1: bv32;
  var $cond$2: bv32;
  var $cond24$1: bv32;
  var $cond24$2: bv32;
  var $cond31$1: bv32;
  var $cond31$2: bv32;
  var $cond36$1: bv32;
  var $cond36$2: bv32;
  var $0$1: bv1;
  var $0$2: bv1;
  var $computed.0$1: bv8;
  var $computed.0$2: bv8;
  var $i.0: bv32;
  var $computed.2$1: bv8;
  var $computed.2$2: bv8;
  var $computed.1$1: bv8;
  var $computed.1$2: bv8;
  var $cond59$1: bv32;
  var $cond59$2: bv32;
  var $cond64$1: bv32;
  var $cond64$2: bv32;
  var v0: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bool;
  var v5$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v6$1: bool;
  var v6$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v16: bool;
  var v15$1: bv8;
  var v15$2: bv8;
  var v32$1: bool;
  var v32$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v29: bool;
  var v28$1: bv32;
  var v28$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
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
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  __partitioned_block_$entry_0:
    v0 := group_size_x;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_SUB(BV32_MUL(BV32_SUB(v0, BV32_MUL(BV32_MUL($iteration, $HALO), 2bv32)), group_id_x$1), $border);
    v2$2 := BV32_SUB(BV32_MUL(BV32_SUB(v0, BV32_MUL(BV32_MUL($iteration, $HALO), 2bv32)), group_id_x$2), $border);
    v3$1 := BV32_SUB(BV32_ADD(v2$1, v0), 1bv32);
    v3$2 := BV32_SUB(BV32_ADD(v2$2, v0), 1bv32);
    v4$1 := BV32_ADD(v2$1, v1$1);
    v4$2 := BV32_ADD(v2$2, v1$2);
    v5$1 := BV32_SLT(v2$1, 0bv32);
    v5$2 := BV32_SLT(v2$2, 0bv32);
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
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    p1$1 := (if !v5$1 then !v5$1 else p1$1);
    p1$2 := (if !v5$2 then !v5$2 else p1$2);
    $cond$1 := (if p0$1 then BV32_SUB(0bv32, v2$1) else $cond$1);
    $cond$2 := (if p0$2 then BV32_SUB(0bv32, v2$2) else $cond$2);
    $cond$1 := (if p1$1 then 0bv32 else $cond$1);
    $cond$2 := (if p1$2 then 0bv32 else $cond$2);
    v6$1 := BV32_SGT(v3$1, BV32_SUB($cols, 1bv32));
    v6$2 := BV32_SGT(v3$2, BV32_SUB($cols, 1bv32));
    p2$1 := (if v6$1 then v6$1 else p2$1);
    p2$2 := (if v6$2 then v6$2 else p2$2);
    p3$1 := (if !v6$1 then !v6$1 else p3$1);
    p3$2 := (if !v6$2 then !v6$2 else p3$2);
    $cond24$1 := (if p2$1 then BV32_SUB(BV32_SUB(v0, 1bv32), BV32_ADD(BV32_SUB(v3$1, $cols), 1bv32)) else $cond24$1);
    $cond24$2 := (if p2$2 then BV32_SUB(BV32_SUB(v0, 1bv32), BV32_ADD(BV32_SUB(v3$2, $cols), 1bv32)) else $cond24$2);
    $cond24$1 := (if p3$1 then BV32_SUB(v0, 1bv32) else $cond24$1);
    $cond24$2 := (if p3$2 then BV32_SUB(v0, 1bv32) else $cond24$2);
    v7$1 := BV32_SUB(v1$1, 1bv32);
    v7$2 := BV32_SUB(v1$2, 1bv32);
    v8$1 := BV32_ADD(v1$1, 1bv32);
    v8$2 := BV32_ADD(v1$2, 1bv32);
    v9$1 := BV32_SLT(v7$1, $cond$1);
    v9$2 := BV32_SLT(v7$2, $cond$2);
    p4$1 := (if v9$1 then v9$1 else p4$1);
    p4$2 := (if v9$2 then v9$2 else p4$2);
    p5$1 := (if !v9$1 then !v9$1 else p5$1);
    p5$2 := (if !v9$2 then !v9$2 else p5$2);
    $cond31$1 := (if p4$1 then $cond$1 else $cond31$1);
    $cond31$2 := (if p4$2 then $cond$2 else $cond31$2);
    $cond31$1 := (if p5$1 then v7$1 else $cond31$1);
    $cond31$2 := (if p5$2 then v7$2 else $cond31$2);
    v10$1 := BV32_SGT(v8$1, $cond24$1);
    v10$2 := BV32_SGT(v8$2, $cond24$2);
    p6$1 := (if v10$1 then v10$1 else p6$1);
    p6$2 := (if v10$2 then v10$2 else p6$2);
    p7$1 := (if !v10$1 then !v10$1 else p7$1);
    p7$2 := (if !v10$2 then !v10$2 else p7$2);
    $cond36$1 := (if p6$1 then $cond24$1 else $cond36$1);
    $cond36$2 := (if p6$2 then $cond24$2 else $cond36$2);
    $cond36$1 := (if p7$1 then v8$1 else $cond36$1);
    $cond36$2 := (if p7$2 then v8$2 else $cond36$2);
    v11$1 := BV32_SGE(v1$1, $cond$1);
    v11$2 := BV32_SGE(v1$2, $cond$2);
    p8$1 := (if v11$1 then v11$1 else p8$1);
    p8$2 := (if v11$2 then v11$2 else p8$2);
    p9$1 := (if !v11$1 then !v11$1 else p9$1);
    p9$2 := (if !v11$2 then !v11$2 else p9$2);
    $0$1 := (if p8$1 then (if BV32_SLE(v1$1, $cond24$1) then 1bv1 else 0bv1) else $0$1);
    $0$2 := (if p8$2 then (if BV32_SLE(v1$2, $cond24$2) then 1bv1 else 0bv1) else $0$2);
    $0$1 := (if p9$1 then 0bv1 else $0$1);
    $0$2 := (if p9$2 then 0bv1 else $0$2);
    v12$1 := BV32_SGE(v4$1, 0bv32);
    v12$2 := BV32_SGE(v4$2, 0bv32);
    p10$1 := (if v12$1 then v12$1 else p10$1);
    p10$2 := (if v12$2 then v12$2 else p10$2);
    v13$1 := (if p10$1 then BV32_SLE(v4$1, BV32_SUB($cols, 1bv32)) else v13$1);
    v13$2 := (if p10$2 then BV32_SLE(v4$2, BV32_SUB($cols, 1bv32)) else v13$2);
    p11$1 := (if p10$1 && v13$1 then v13$1 else p11$1);
    p11$2 := (if p10$2 && v13$2 then v13$2 else p11$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p11$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p11$2 then _HAVOC_bv32$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$prev(p11$1, v1$1, v14$1, $$prev[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$prev(p11$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$prev(p11$2, v1$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$prev"} true;
    $$prev[1bv1][v1$1] := (if p11$1 then v14$1 else $$prev[1bv1][v1$1]);
    $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p11$2 then v14$2 else $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    havoc v15$1, v15$2;
    $computed.0$1, $i.0 := v15$1, 0bv32;
    $computed.0$2 := v15$2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b13 ==> _WRITE_HAS_OCCURRED_$$result ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b12 ==> _READ_HAS_OCCURRED_$$result ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b11 ==> !_WRITE_HAS_OCCURRED_$$result;
    assert {:tag "noread"} _b10 ==> !_READ_HAS_OCCURRED_$$result;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$prev ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$prev ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b7 ==> !_WRITE_HAS_OCCURRED_$$prev;
    assert {:tag "noread"} _b6 ==> !_READ_HAS_OCCURRED_$$prev;
    assert {:tag "nowrite"} _b5 ==> !_WRITE_HAS_OCCURRED_$$outputBuffer;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$result ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$result ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$result ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$prev ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$prev ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$prev ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $i.0);
    assert {:block_sourceloc} {:sourceloc_num 26} true;
    v16 := BV32_SLT($i.0, $iteration);
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    goto __partitioned_block_$truebb6_0, $falsebb6;

  $falsebb6:
    assume {:partition} !v16;
    $computed.2$1 := $computed.0$1;
    $computed.2$2 := $computed.0$2;
    goto $for.end;

  $for.end:
    v32$1 := $computed.2$1[1:0] == 1bv1;
    v32$2 := $computed.2$2[1:0] == 1bv1;
    p30$1 := (if v32$1 then v32$1 else p30$1);
    p30$2 := (if v32$2 then v32$2 else p30$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$result(p30$1, v1$1, $$result[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$result(p30$2, v1$2, $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$result"} true;
    v33$1 := (if p30$1 then $$result[1bv1][v1$1] else v33$1);
    v33$2 := (if p30$2 then $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v33$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$gpuResults(p30$1, v4$1, v33$1, $$gpuResults[v4$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuResults(p30$2, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$gpuResults(p30$2, v4$2, v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$gpuResults"} true;
    $$gpuResults[v4$1] := (if p30$1 then v33$1 else $$gpuResults[v4$1]);
    $$gpuResults[v4$2] := (if p30$2 then v33$2 else $$gpuResults[v4$2]);
    return;

  __partitioned_block_$truebb6_0:
    assume {:partition} v16;
    v17$1 := BV32_SGE(v1$1, BV32_ADD($i.0, 1bv32));
    v17$2 := BV32_SGE(v1$2, BV32_ADD($i.0, 1bv32));
    p15$1 := (if v17$1 then v17$1 else p15$1);
    p15$2 := (if v17$2 then v17$2 else p15$2);
    p14$1 := (if !v17$1 then !v17$1 else p14$1);
    p14$2 := (if !v17$2 then !v17$2 else p14$2);
    $computed.1$1 := (if p14$1 then 0bv8 else $computed.1$1);
    $computed.1$2 := (if p14$2 then 0bv8 else $computed.1$2);
    v18$1 := (if p15$1 then BV32_SLE(v1$1, BV32_SUB(BV32_SUB(v0, $i.0), 2bv32)) else v18$1);
    v18$2 := (if p15$2 then BV32_SLE(v1$2, BV32_SUB(BV32_SUB(v0, $i.0), 2bv32)) else v18$2);
    p17$1 := (if p15$1 && v18$1 then v18$1 else p17$1);
    p17$2 := (if p15$2 && v18$2 then v18$2 else p17$2);
    p16$1 := (if p15$1 && !v18$1 then !v18$1 else p16$1);
    p16$2 := (if p15$2 && !v18$2 then !v18$2 else p16$2);
    $computed.1$1 := (if p16$1 then 0bv8 else $computed.1$1);
    $computed.1$2 := (if p16$2 then 0bv8 else $computed.1$2);
    v19$1 := (if p17$1 then $0$1 == 1bv1 else v19$1);
    v19$2 := (if p17$2 then $0$2 == 1bv1 else v19$2);
    p19$1 := (if p17$1 && v19$1 then v19$1 else p19$1);
    p19$2 := (if p17$2 && v19$2 then v19$2 else p19$2);
    p18$1 := (if p17$1 && !v19$1 then !v19$1 else p18$1);
    p18$2 := (if p17$2 && !v19$2 then !v19$2 else p18$2);
    $computed.1$1 := (if p18$1 then 0bv8 else $computed.1$1);
    $computed.1$2 := (if p18$2 then 0bv8 else $computed.1$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$prev(p19$1, $cond31$1, $$prev[1bv1][$cond31$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$prev(p19$2, $cond31$2, $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$cond31$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$prev"} true;
    v20$1 := (if p19$1 then $$prev[1bv1][$cond31$1] else v20$1);
    v20$2 := (if p19$2 then $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$cond31$2] else v20$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$prev(p19$1, v1$1, $$prev[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$prev(p19$2, v1$2, $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$prev"} true;
    v21$1 := (if p19$1 then $$prev[1bv1][v1$1] else v21$1);
    v21$2 := (if p19$2 then $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v21$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$prev(p19$1, $cond36$1, $$prev[1bv1][$cond36$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$prev(p19$2, $cond36$2, $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$cond36$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$prev"} true;
    v22$1 := (if p19$1 then $$prev[1bv1][$cond36$1] else v22$1);
    v22$2 := (if p19$2 then $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$cond36$2] else v22$2);
    v23$1 := (if p19$1 then BV32_SLE(v20$1, v21$1) else v23$1);
    v23$2 := (if p19$2 then BV32_SLE(v20$2, v21$2) else v23$2);
    p21$1 := (if p19$1 && v23$1 then v23$1 else p21$1);
    p21$2 := (if p19$2 && v23$2 then v23$2 else p21$2);
    p20$1 := (if p19$1 && !v23$1 then !v23$1 else p20$1);
    p20$2 := (if p19$2 && !v23$2 then !v23$2 else p20$2);
    $cond59$1 := (if p20$1 then v21$1 else $cond59$1);
    $cond59$2 := (if p20$2 then v21$2 else $cond59$2);
    $cond59$1 := (if p21$1 then v20$1 else $cond59$1);
    $cond59$2 := (if p21$2 then v20$2 else $cond59$2);
    v24$1 := (if p19$1 then BV32_SLE($cond59$1, v22$1) else v24$1);
    v24$2 := (if p19$2 then BV32_SLE($cond59$2, v22$2) else v24$2);
    p23$1 := (if p19$1 && v24$1 then v24$1 else p23$1);
    p23$2 := (if p19$2 && v24$2 then v24$2 else p23$2);
    p22$1 := (if p19$1 && !v24$1 then !v24$1 else p22$1);
    p22$2 := (if p19$2 && !v24$2 then !v24$2 else p22$2);
    $cond64$1 := (if p22$1 then v22$1 else $cond64$1);
    $cond64$2 := (if p22$2 then v22$2 else $cond64$2);
    $cond64$1 := (if p23$1 then $cond59$1 else $cond64$1);
    $cond64$2 := (if p23$2 then $cond59$2 else $cond64$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v25$1 := (if p19$1 then _HAVOC_bv32$1 else v25$1);
    v25$2 := (if p19$2 then _HAVOC_bv32$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$result(p19$1, v1$1, BV32_ADD($cond64$1, v25$1), $$result[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(p19$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$result(p19$2, v1$2, BV32_ADD($cond64$2, v25$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$result"} true;
    $$result[1bv1][v1$1] := (if p19$1 then BV32_ADD($cond64$1, v25$1) else $$result[1bv1][v1$1]);
    $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p19$2 then BV32_ADD($cond64$2, v25$2) else $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    v26$1 := (if p19$1 then v1$1 == 11bv32 else v26$1);
    v26$2 := (if p19$2 then v1$2 == 11bv32 else v26$2);
    p25$1 := (if p19$1 && v26$1 then v26$1 else p25$1);
    p25$2 := (if p19$2 && v26$2 then v26$2 else p25$2);
    v27$1 := (if p25$1 then $i.0 == 0bv32 else v27$1);
    v27$2 := (if p25$2 then $i.0 == 0bv32 else v27$2);
    p27$1 := (if p25$1 && v27$1 then v27$1 else p27$1);
    p27$2 := (if p25$2 && v27$2 then v27$2 else p27$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v28$1 := (if p27$1 then _HAVOC_bv32$1 else v28$1);
    v28$2 := (if p27$2 then _HAVOC_bv32$2 else v28$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$outputBuffer(p27$1, v28$1, 1bv32, $$outputBuffer[v28$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputBuffer(p27$2, v28$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$outputBuffer(p27$2, v28$2, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputBuffer"} true;
    $$outputBuffer[v28$1] := (if p27$1 then 1bv32 else $$outputBuffer[v28$1]);
    $$outputBuffer[v28$2] := (if p27$2 then 1bv32 else $$outputBuffer[v28$2]);
    $computed.1$1 := (if p19$1 then 1bv8 else $computed.1$1);
    $computed.1$2 := (if p19$2 then 1bv8 else $computed.1$2);
    goto __partitioned_block_$truebb6_1;

  __partitioned_block_$truebb6_1:
    call {:sourceloc_num 48} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v29 := $i.0 == BV32_SUB($iteration, 1bv32);
    goto $truebb14, __partitioned_block_$falsebb14_0;

  __partitioned_block_$falsebb14_0:
    assume {:partition} !v29;
    v30$1 := $computed.1$1[1:0] == 1bv1;
    v30$2 := $computed.1$2[1:0] == 1bv1;
    p29$1 := (if v30$1 then v30$1 else p29$1);
    p29$2 := (if v30$2 then v30$2 else p29$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$result(p29$1, v1$1, $$result[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$result(p29$2, v1$2, $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$result"} true;
    v31$1 := (if p29$1 then $$result[1bv1][v1$1] else v31$1);
    v31$2 := (if p29$2 then $$result[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v31$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$prev(p29$1, v1$1, v31$1, $$prev[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$prev(p29$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$prev(p29$2, v1$2, v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$prev"} true;
    $$prev[1bv1][v1$1] := (if p29$1 then v31$1 else $$prev[1bv1][v1$1]);
    $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p29$2 then v31$2 else $$prev[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    goto __partitioned_block_$falsebb14_1;

  __partitioned_block_$falsebb14_1:
    call {:sourceloc_num 55} $bugle_barrier_duplicated_2(1bv1, 0bv1);
    $computed.0$1, $i.0 := $computed.1$1, BV32_ADD($i.0, 1bv32);
    $computed.0$2 := $computed.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $truebb14:
    assume {:partition} v29;
    $computed.2$1 := $computed.1$1;
    $computed.2$2 := $computed.1$2;
    goto $for.end;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1000bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 10000bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$prev, $$result, $$gpuResults, $$outputBuffer, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$prev, $$result, $$gpuResults, $$outputBuffer, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$prev, $$result, $$gpuResults, $$outputBuffer, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$gpuWall: bv32;

procedure {:inline 1} _LOG_READ_$$gpuWall(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$gpuWall;



implementation {:inline 1} _LOG_READ_$$gpuWall(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gpuWall := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuWall == _value then true else _READ_HAS_OCCURRED_$$gpuWall);
    return;
}



procedure _CHECK_READ_$$gpuWall(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gpuWall);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gpuWall: bool;

procedure {:inline 1} _LOG_WRITE_$$gpuWall(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$gpuWall, _WRITE_READ_BENIGN_FLAG_$$gpuWall;



implementation {:inline 1} _LOG_WRITE_$$gpuWall(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gpuWall := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuWall == _value then true else _WRITE_HAS_OCCURRED_$$gpuWall);
    _WRITE_READ_BENIGN_FLAG_$$gpuWall := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuWall == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gpuWall);
    return;
}



procedure _CHECK_WRITE_$$gpuWall(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuWall != _value);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuWall != _value);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gpuWall(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$gpuWall;



implementation {:inline 1} _LOG_ATOMIC_$$gpuWall(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gpuWall := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gpuWall);
    return;
}



procedure _CHECK_ATOMIC_$$gpuWall(_P: bool, _offset: bv32);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset);
  requires {:source_name "gpuWall"} {:array "$$gpuWall"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuWall(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$gpuWall;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuWall(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gpuWall := (if _P && _WRITE_HAS_OCCURRED_$$gpuWall && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gpuWall);
    return;
}



const _WATCHED_VALUE_$$gpuSrc: bv32;

procedure {:inline 1} _LOG_READ_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$gpuSrc;



implementation {:inline 1} _LOG_READ_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gpuSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuSrc == _value then true else _READ_HAS_OCCURRED_$$gpuSrc);
    return;
}



procedure _CHECK_READ_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gpuSrc);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gpuSrc: bool;

procedure {:inline 1} _LOG_WRITE_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$gpuSrc, _WRITE_READ_BENIGN_FLAG_$$gpuSrc;



implementation {:inline 1} _LOG_WRITE_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gpuSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuSrc == _value then true else _WRITE_HAS_OCCURRED_$$gpuSrc);
    _WRITE_READ_BENIGN_FLAG_$$gpuSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuSrc == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gpuSrc);
    return;
}



procedure _CHECK_WRITE_$$gpuSrc(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuSrc != _value);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuSrc != _value);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gpuSrc(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$gpuSrc;



implementation {:inline 1} _LOG_ATOMIC_$$gpuSrc(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gpuSrc := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gpuSrc);
    return;
}



procedure _CHECK_ATOMIC_$$gpuSrc(_P: bool, _offset: bv32);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset);
  requires {:source_name "gpuSrc"} {:array "$$gpuSrc"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuSrc(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$gpuSrc;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuSrc(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gpuSrc := (if _P && _WRITE_HAS_OCCURRED_$$gpuSrc && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gpuSrc);
    return;
}



const _WATCHED_VALUE_$$gpuResults: bv32;

procedure {:inline 1} _LOG_READ_$$gpuResults(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$gpuResults;



implementation {:inline 1} _LOG_READ_$$gpuResults(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$gpuResults := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuResults == _value then true else _READ_HAS_OCCURRED_$$gpuResults);
    return;
}



procedure _CHECK_READ_$$gpuResults(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$gpuResults);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$gpuResults: bool;

procedure {:inline 1} _LOG_WRITE_$$gpuResults(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$gpuResults, _WRITE_READ_BENIGN_FLAG_$$gpuResults;



implementation {:inline 1} _LOG_WRITE_$$gpuResults(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$gpuResults := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuResults == _value then true else _WRITE_HAS_OCCURRED_$$gpuResults);
    _WRITE_READ_BENIGN_FLAG_$$gpuResults := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuResults == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$gpuResults);
    return;
}



procedure _CHECK_WRITE_$$gpuResults(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuResults != _value);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$gpuResults != _value);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$gpuResults(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$gpuResults;



implementation {:inline 1} _LOG_ATOMIC_$$gpuResults(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$gpuResults := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$gpuResults);
    return;
}



procedure _CHECK_ATOMIC_$$gpuResults(_P: bool, _offset: bv32);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset);
  requires {:source_name "gpuResults"} {:array "$$gpuResults"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuResults(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$gpuResults;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$gpuResults(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$gpuResults := (if _P && _WRITE_HAS_OCCURRED_$$gpuResults && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$gpuResults);
    return;
}



const _WATCHED_VALUE_$$outputBuffer: bv32;

procedure {:inline 1} _LOG_READ_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$outputBuffer;



implementation {:inline 1} _LOG_READ_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$outputBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputBuffer == _value then true else _READ_HAS_OCCURRED_$$outputBuffer);
    return;
}



procedure _CHECK_READ_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$outputBuffer);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$outputBuffer: bool;

procedure {:inline 1} _LOG_WRITE_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$outputBuffer, _WRITE_READ_BENIGN_FLAG_$$outputBuffer;



implementation {:inline 1} _LOG_WRITE_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$outputBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputBuffer == _value then true else _WRITE_HAS_OCCURRED_$$outputBuffer);
    _WRITE_READ_BENIGN_FLAG_$$outputBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputBuffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$outputBuffer);
    return;
}



procedure _CHECK_WRITE_$$outputBuffer(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputBuffer != _value);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputBuffer != _value);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$outputBuffer(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$outputBuffer;



implementation {:inline 1} _LOG_ATOMIC_$$outputBuffer(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$outputBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$outputBuffer);
    return;
}



procedure _CHECK_ATOMIC_$$outputBuffer(_P: bool, _offset: bv32);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset);
  requires {:source_name "outputBuffer"} {:array "$$outputBuffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputBuffer(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$outputBuffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputBuffer(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$outputBuffer := (if _P && _WRITE_HAS_OCCURRED_$$outputBuffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$outputBuffer);
    return;
}



const _WATCHED_VALUE_$$prev: bv32;

procedure {:inline 1} _LOG_READ_$$prev(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$prev;



implementation {:inline 1} _LOG_READ_$$prev(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$prev := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prev == _value then true else _READ_HAS_OCCURRED_$$prev);
    return;
}



procedure _CHECK_READ_$$prev(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$prev && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$prev: bool;

procedure {:inline 1} _LOG_WRITE_$$prev(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$prev, _WRITE_READ_BENIGN_FLAG_$$prev;



implementation {:inline 1} _LOG_WRITE_$$prev(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$prev := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prev == _value then true else _WRITE_HAS_OCCURRED_$$prev);
    _WRITE_READ_BENIGN_FLAG_$$prev := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prev == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$prev);
    return;
}



procedure _CHECK_WRITE_$$prev(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prev != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$prev != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$prev(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$prev;



implementation {:inline 1} _LOG_ATOMIC_$$prev(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$prev := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$prev);
    return;
}



procedure _CHECK_ATOMIC_$$prev(_P: bool, _offset: bv32);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "prev"} {:array "$$prev"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$prev(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$prev;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$prev(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$prev := (if _P && _WRITE_HAS_OCCURRED_$$prev && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$prev);
    return;
}



const _WATCHED_VALUE_$$result: bv32;

procedure {:inline 1} _LOG_READ_$$result(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_READ_$$result(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$result := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _READ_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_READ_$$result(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$result && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$result: bool;

procedure {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$result, _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _LOG_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$result := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then true else _WRITE_HAS_OCCURRED_$$result);
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



procedure _CHECK_WRITE_$$result(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$result != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "result"} {:array "$$result"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$result;



implementation {:inline 1} _LOG_ATOMIC_$$result(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$result := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$result);
    return;
}



procedure _CHECK_ATOMIC_$$result(_P: bool, _offset: bv32);
  requires {:source_name "result"} {:array "$$result"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "result"} {:array "$$result"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$result;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$result(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$result := (if _P && _WRITE_HAS_OCCURRED_$$result && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$result);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$prev;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$gpuResults;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$outputBuffer;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$gpuResults;
    goto anon9;

  anon9:
    havoc $$outputBuffer;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$prev;
    goto anon4;

  anon4:
    havoc $$result;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$prev;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$gpuResults;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$outputBuffer;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$gpuResults;
    goto anon9;

  anon9:
    havoc $$outputBuffer;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$prev;
    goto anon4;

  anon4:
    havoc $$result;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$prev;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$prev;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$result;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$result;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$gpuResults;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$gpuResults;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$outputBuffer;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$outputBuffer;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$gpuResults;
    goto anon9;

  anon9:
    havoc $$outputBuffer;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$prev;
    goto anon4;

  anon4:
    havoc $$result;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;
