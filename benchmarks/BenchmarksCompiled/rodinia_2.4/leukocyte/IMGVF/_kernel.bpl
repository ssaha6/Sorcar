type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "IMGVF_array"} {:global} $$IMGVF_array: [bv32]bv32;

axiom {:array_info "$$IMGVF_array"} {:global} {:elem_width 32} {:source_name "IMGVF_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_array: bool;

axiom {:array_info "$$I_array"} {:global} {:elem_width 32} {:source_name "I_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$I_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$I_array: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$I_array: bool;

var {:source_name "I_offsets"} {:constant} $$I_offsets$1: [bv32]bv32;

var {:source_name "I_offsets"} {:constant} $$I_offsets$2: [bv32]bv32;

axiom {:array_info "$$I_offsets"} {:constant} {:elem_width 32} {:source_name "I_offsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "m_array"} {:constant} $$m_array$1: [bv32]bv32;

var {:source_name "m_array"} {:constant} $$m_array$2: [bv32]bv32;

axiom {:array_info "$$m_array"} {:constant} {:elem_width 32} {:source_name "m_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "n_array"} {:constant} $$n_array$1: [bv32]bv32;

var {:source_name "n_array"} {:constant} $$n_array$2: [bv32]bv32;

axiom {:array_info "$$n_array"} {:constant} {:elem_width 32} {:source_name "n_array"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:source_name "IMGVF"} {:group_shared} $$IMGVF_kernel.IMGVF: [bv1][bv32]bv32;

axiom {:array_info "$$IMGVF_kernel.IMGVF"} {:group_shared} {:elem_width 32} {:source_name "IMGVF"} {:source_elem_width 32} {:source_dimensions "3321"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF: bool;

var {:source_name "cell_converged"} {:group_shared} $$IMGVF_kernel.cell_converged: [bv1][bv32]bv32;

axiom {:array_info "$$IMGVF_kernel.cell_converged"} {:group_shared} {:elem_width 32} {:source_name "cell_converged"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged: bool;

var {:source_name "buffer"} {:group_shared} $$IMGVF_kernel.buffer: [bv1][bv32]bv32;

axiom {:array_info "$$IMGVF_kernel.buffer"} {:group_shared} {:elem_width 32} {:source_name "buffer"} {:source_elem_width 32} {:source_dimensions "256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer: bool;

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

function FABS32(bv32) : bv32;

function FADD32(bv32, bv32) : bv32;

function FDIV32(bv32, bv32) : bv32;

function FLT32(bv32, bv32) : bool;

function FMUL32(bv32, bv32) : bv32;

function FP32_TO_SI32(bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function __bugle_atan_float(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsrem"} BV32_SREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "IMGVF_kernel"} {:kernel} $IMGVF_kernel($vx: bv32, $vy: bv32, $e: bv32, $max_iterations: bv32, $cutoff: bv32);
  requires !_READ_HAS_OCCURRED_$$IMGVF_array && !_WRITE_HAS_OCCURRED_$$IMGVF_array && !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
  requires !_READ_HAS_OCCURRED_$$I_array && !_WRITE_HAS_OCCURRED_$$I_array && !_ATOMIC_HAS_OCCURRED_$$I_array;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
  requires !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
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
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, _READ_HAS_OCCURRED_$$IMGVF_array, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF, $$IMGVF_array, _TRACKING, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged, _TRACKING, _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:source_name "IMGVF_kernel"} {:kernel} $IMGVF_kernel($vx: bv32, $vy: bv32, $e: bv32, $max_iterations: bv32, $cutoff: bv32)
{
  var $thread_block.0$1: bv32;
  var $thread_block.0$2: bv32;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $i.1$1: bv32;
  var $i.1$2: bv32;
  var $iterations.0$1: bv32;
  var $iterations.0$2: bv32;
  var $0$1: bv1;
  var $0$2: bv1;
  var $thread_block.1$1: bv32;
  var $thread_block.1$2: bv32;
  var $i.2$1: bv32;
  var $i.2$2: bv32;
  var $j.0$1: bv32;
  var $j.0$2: bv32;
  var $total_diff.0$1: bv32;
  var $total_diff.0$2: bv32;
  var $j.1$1: bv32;
  var $j.1$2: bv32;
  var $new_val.0$1: bv32;
  var $new_val.0$2: bv32;
  var $old_val.0$1: bv32;
  var $old_val.0$2: bv32;
  var $cond$1: bv32;
  var $cond$2: bv32;
  var $cond57$1: bv32;
  var $cond57$2: bv32;
  var $cond64$1: bv32;
  var $cond64$2: bv32;
  var $cond73$1: bv32;
  var $cond73$2: bv32;
  var $th.0$1: bv32;
  var $th.0$2: bv32;
  var $thread_block.2$1: bv32;
  var $thread_block.2$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v11$1: bool;
  var v11$2: bool;
  var v4$1: bv32;
  var v4$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15: bv32;
  var v13$1: bool;
  var v13$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v22$1: bool;
  var v22$2: bool;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v24$1: bool;
  var v24$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v32$1: bv32;
  var v32$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v27$1: bool;
  var v27$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v33$1: bv32;
  var v33$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v58$1: bv32;
  var v58$2: bv32;
  var v53$1: bv32;
  var v53$2: bv32;
  var v55$1: bv32;
  var v55$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v59$1: bv32;
  var v59$2: bv32;
  var v68$1: bv32;
  var v68$2: bv32;
  var v61$1: bv32;
  var v61$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v48$1: bool;
  var v48$2: bool;
  var v47$1: bool;
  var v47$2: bool;
  var v51$1: bool;
  var v51$2: bool;
  var v50$1: bool;
  var v50$2: bool;
  var v52$1: bool;
  var v52$2: bool;
  var v54$1: bv32;
  var v54$2: bv32;
  var v56$1: bool;
  var v56$2: bool;
  var v57$1: bool;
  var v57$2: bool;
  var v60$1: bool;
  var v60$2: bool;
  var v62$1: bool;
  var v62$2: bool;
  var v66$1: bv32;
  var v66$2: bv32;
  var v67$1: bool;
  var v67$2: bool;
  var v63$1: bool;
  var v63$2: bool;
  var v64$1: bv32;
  var v64$2: bv32;
  var v65$1: bv32;
  var v65$2: bv32;
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
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var p42$1: bool;
  var p42$2: bool;
  var p43$1: bool;
  var p43$2: bool;
  var p44$1: bool;
  var p44$2: bool;
  var p45$1: bool;
  var p45$2: bool;
  var p46$1: bool;
  var p46$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0: bool;
  var _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0: bool;


  $entry:
    v0$1 := group_id_x$1;
    v0$2 := group_id_x$2;
    v1$1 := $$I_offsets$1[v0$1];
    v1$2 := $$I_offsets$2[v0$2];
    v2$1 := $$m_array$1[v0$1];
    v2$2 := $$m_array$2[v0$2];
    v3$1 := $$n_array$1[v0$1];
    v3$2 := $$n_array$2[v0$2];
    v4$1 := BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256bv32), 1bv32), 256bv32);
    v4$2 := BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256bv32), 1bv32), 256bv32);
    v5$1 := local_id_x$1;
    v5$2 := local_id_x$2;
    havoc v6$1, v6$2;
    $thread_block.0$1, $i.0$1 := 0bv32, v6$1;
    $thread_block.0$2, $i.0$2 := 0bv32, v6$2;
    p0$1 := false;
    p0$2 := false;
    p7$1 := false;
    p7$2 := false;
    p43$1 := false;
    p43$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($thread_block.0$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256bv32), 1bv32), 256bv32)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($thread_block.0$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256bv32), 1bv32), 256bv32)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($thread_block.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($thread_block.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($thread_block.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($thread_block.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($thread_block.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($thread_block.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($thread_block.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($thread_block.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b0 ==> BV32_SLE(0bv32, $thread_block.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b0 ==> BV32_SLE(0bv32, $thread_block.0$2);
    assert {:block_sourceloc} {:sourceloc_num 4} p0$1 ==> true;
    v7$1 := (if p0$1 then BV32_SLT($thread_block.0$1, v4$1) else v7$1);
    v7$2 := (if p0$2 then BV32_SLT($thread_block.0$2, v4$2) else v7$2);
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
    p1$1 := (if p0$1 && v7$1 then v7$1 else p1$1);
    p1$2 := (if p0$2 && v7$2 then v7$2 else p1$2);
    p0$1 := (if p0$1 && !v7$1 then v7$1 else p0$1);
    p0$2 := (if p0$2 && !v7$2 then v7$2 else p0$2);
    v8$1 := (if p1$1 then BV32_MUL($thread_block.0$1, 256bv32) else v8$1);
    v8$2 := (if p1$2 then BV32_MUL($thread_block.0$2, 256bv32) else v8$2);
    v9$1 := (if p1$1 then BV32_SDIV(BV32_ADD(v5$1, v8$1), v3$1) else v9$1);
    v9$2 := (if p1$2 then BV32_SDIV(BV32_ADD(v5$2, v8$2), v3$2) else v9$2);
    v10$1 := (if p1$1 then BV32_SREM(BV32_ADD(v5$1, v8$1), v3$1) else v10$1);
    v10$2 := (if p1$2 then BV32_SREM(BV32_ADD(v5$2, v8$2), v3$2) else v10$2);
    v11$1 := (if p1$1 then BV32_SLT(v9$1, v2$1) else v11$1);
    v11$2 := (if p1$2 then BV32_SLT(v9$2, v2$2) else v11$2);
    p3$1 := (if p1$1 && v11$1 then v11$1 else p3$1);
    p3$2 := (if p1$2 && v11$2 then v11$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$IMGVF_array(p3$1, BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)), $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1))]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$IMGVF_array(p3$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)), $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_array"} true;
    v12$1 := (if p3$1 then $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1))] else v12$1);
    v12$2 := (if p3$2 then $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2))] else v12$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p3$1, BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1), v12$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p3$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p3$2, BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)] := (if p3$1 then v12$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v9$1, v3$1), v10$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)] := (if p3$2 then v12$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v9$2, v3$2), v10$2)]);
    $thread_block.0$1, $i.0$1 := (if p1$1 then BV32_ADD($thread_block.0$1, 1bv32) else $thread_block.0$1), (if p1$1 then v9$1 else $i.0$1);
    $thread_block.0$2, $i.0$2 := (if p1$2 then BV32_ADD($thread_block.0$2, 1bv32) else $thread_block.0$2), (if p1$2 then v9$2 else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $for.cond.backedge, __partitioned_block_$for.cond.tail_0;

  __partitioned_block_$for.cond.tail_0:
    assume !p0$1 && !p0$2;
    goto __partitioned_block_$for.cond.tail_1;

  __partitioned_block_$for.cond.tail_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    v13$1 := v5$1 == 0bv32;
    v13$2 := v5$2 == 0bv32;
    p5$1 := (if v13$1 then v13$1 else p5$1);
    p5$2 := (if v13$2 then v13$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$IMGVF_kernel.cell_converged(p5$1, 0bv32, 0bv32, $$IMGVF_kernel.cell_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(p5$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$IMGVF_kernel.cell_converged(p5$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.cell_converged"} true;
    $$IMGVF_kernel.cell_converged[1bv1][0bv32] := (if p5$1 then 0bv32 else $$IMGVF_kernel.cell_converged[1bv1][0bv32]);
    $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p5$2 then 0bv32 else $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$for.cond.tail_2;

  __partitioned_block_$for.cond.tail_2:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v14$1 := BV32_SREM(256bv32, v3$1);
    v14$2 := BV32_SREM(256bv32, v3$2);
    v15 := FDIV32(1065353216bv32, $e);
    $i.1$1, $iterations.0$1 := $i.0$1, 0bv32;
    $i.1$2, $iterations.0$2 := $i.0$2, 0bv32;
    p7$1 := true;
    p7$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $while.cond;

  $while.cond:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b122 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_SUB(local_id_x$1, 256bv32) || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b121 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_SUB(local_id_x$1, 256bv32) || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b120 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "noread"} _b119 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b118 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b117 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b116 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assert {:tag "noread"} _b115 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assert {:tag "nowrite"} _b114 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "noread"} _b113 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "predicatedEquality"} _b112 ==> p7$1 && p7$2 ==> v62$1 == v62$2;
    assert {:tag "predicatedEquality"} _b111 ==> p7$1 && p7$2 ==> v60$1 == v60$2;
    assert {:tag "predicatedEquality"} _b110 ==> p7$1 && p7$2 ==> v57$1 == v57$2;
    assert {:tag "predicatedEquality"} _b109 ==> p7$1 && p7$2 ==> v56$1 == v56$2;
    assert {:tag "predicatedEquality"} _b108 ==> p7$1 && p7$2 ==> v54$1 == v54$2;
    assert {:tag "predicatedEquality"} _b107 ==> p7$1 && p7$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b106 ==> p7$1 && p7$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b105 ==> p7$1 && p7$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b104 ==> p7$1 && p7$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b103 ==> p7$1 && p7$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b102 ==> p7$1 && p7$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b101 ==> p7$1 && p7$2 ==> v61$1 == v61$2;
    assert {:tag "predicatedEquality"} _b100 ==> p7$1 && p7$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b99 ==> p7$1 && p7$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b98 ==> p7$1 && p7$2 ==> v55$1 == v55$2;
    assert {:tag "predicatedEquality"} _b97 ==> p7$1 && p7$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b96 ==> p7$1 && p7$2 ==> v58$1 == v58$2;
    assert {:tag "predicatedEquality"} _b95 ==> p7$1 && p7$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b94 ==> p7$1 && p7$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b93 ==> p7$1 && p7$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b92 ==> p7$1 && p7$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b91 ==> p7$1 && p7$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b90 ==> p7$1 && p7$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b89 ==> p7$1 && p7$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b88 ==> p7$1 && p7$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b87 ==> p7$1 && p7$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b86 ==> p7$1 && p7$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b85 ==> p7$1 && p7$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b84 ==> p7$1 && p7$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b83 ==> p7$1 && p7$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b82 ==> p7$1 && p7$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b81 ==> p7$1 && p7$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b80 ==> p7$1 && p7$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b79 ==> p7$1 && p7$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b78 ==> p7$1 && p7$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b77 ==> p7$1 && p7$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b76 ==> p7$1 && p7$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b75 ==> p7$1 && p7$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b74 ==> p7$1 && p7$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b73 ==> p7$1 && p7$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b72 ==> p7$1 && p7$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b71 ==> p7$1 && p7$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b70 ==> p7$1 && p7$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b69 ==> p7$1 && p7$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b68 ==> p7$1 && p7$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b67 ==> p7$1 && p7$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b66 ==> p7$1 && p7$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b65 ==> p7$1 && p7$2 ==> $th.0$1 == $th.0$2;
    assert {:tag "predicatedEquality"} _b64 ==> p7$1 && p7$2 ==> $cond73$1 == $cond73$2;
    assert {:tag "predicatedEquality"} _b63 ==> p7$1 && p7$2 ==> $cond64$1 == $cond64$2;
    assert {:tag "predicatedEquality"} _b62 ==> p7$1 && p7$2 ==> $cond57$1 == $cond57$2;
    assert {:tag "predicatedEquality"} _b61 ==> p7$1 && p7$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b60 ==> p7$1 && p7$2 ==> $old_val.0$1 == $old_val.0$2;
    assert {:tag "predicatedEquality"} _b59 ==> p7$1 && p7$2 ==> $new_val.0$1 == $new_val.0$2;
    assert {:tag "predicatedEquality"} _b58 ==> p7$1 && p7$2 ==> $j.1$1 == $j.1$2;
    assert {:tag "predicatedEquality"} _b57 ==> p7$1 && p7$2 ==> $total_diff.0$1 == $total_diff.0$2;
    assert {:tag "predicatedEquality"} _b56 ==> p7$1 && p7$2 ==> $j.0$1 == $j.0$2;
    assert {:tag "predicatedEquality"} _b55 ==> p7$1 && p7$2 ==> $i.2$1 == $i.2$2;
    assert {:tag "predicatedEquality"} _b54 ==> p7$1 && p7$2 ==> $thread_block.1$1 == $thread_block.1$2;
    assert {:tag "predicatedEquality"} _b53 ==> p7$1 && p7$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b52 ==> p7$1 && p7$2 ==> $iterations.0$1 == $iterations.0$2;
    assert {:tag "predicatedEquality"} _b51 ==> p7$1 && p7$2 ==> $i.1$1 == $i.1$2;
    assert {:tag "loopPredicateEquality"} _b50 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p7$1 == p7$2;
    assert {:tag "loopPredicateEquality"} _b49 ==> p7$1 == p7$2;
    assert {:tag "pow2NotZero"} _b48 ==> $th.0$2 != 0bv32;
    assert {:tag "pow2"} _b47 ==> $th.0$2 == 0bv32 || BV32_AND($th.0$2, BV32_SUB($th.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b46 ==> $th.0$1 != 0bv32;
    assert {:tag "pow2"} _b45 ==> $th.0$1 == 0bv32 || BV32_AND($th.0$1, BV32_SUB($th.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> $0$1 == 1bv1 ==> p7$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> $0$2 == 1bv1 ==> p7$2;
    assert {:block_sourceloc} {:sourceloc_num 17} p7$1 ==> true;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$IMGVF_kernel.cell_converged(p7$1, 0bv32, $$IMGVF_kernel.cell_converged[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$IMGVF_kernel.cell_converged(p7$2, 0bv32, $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.cell_converged"} true;
    v16$1 := (if p7$1 then $$IMGVF_kernel.cell_converged[1bv1][0bv32] else v16$1);
    v16$2 := (if p7$2 then $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v16$2);
    v17$1 := (if p7$1 then v16$1 != 0bv32 else v17$1);
    v17$2 := (if p7$2 then v16$2 != 0bv32 else v17$2);
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p35$1 := false;
    p35$2 := false;
    p9$1 := (if p7$1 && v17$1 then v17$1 else p9$1);
    p9$2 := (if p7$2 && v17$2 then v17$2 else p9$2);
    p8$1 := (if p7$1 && !v17$1 then !v17$1 else p8$1);
    p8$2 := (if p7$2 && !v17$2 then !v17$2 else p8$2);
    $0$1 := (if p8$1 then (if BV32_SLT($iterations.0$1, $max_iterations) then 1bv1 else 0bv1) else $0$1);
    $0$2 := (if p8$2 then (if BV32_SLT($iterations.0$2, $max_iterations) then 1bv1 else 0bv1) else $0$2);
    $0$1 := (if p9$1 then 0bv1 else $0$1);
    $0$2 := (if p9$2 then 0bv1 else $0$2);
    v18$1 := (if p7$1 then $0$1 == 1bv1 else v18$1);
    v18$2 := (if p7$2 then $0$2 == 1bv1 else v18$2);
    p10$1 := (if p7$1 && v18$1 then v18$1 else p10$1);
    p10$2 := (if p7$2 && v18$2 then v18$2 else p10$2);
    p7$1 := (if p7$1 && !v18$1 then v18$1 else p7$1);
    p7$2 := (if p7$2 && !v18$2 then v18$2 else p7$2);
    $thread_block.1$1, $i.2$1, $j.0$1, $total_diff.0$1 := (if p10$1 then 0bv32 else $thread_block.1$1), (if p10$1 then $i.1$1 else $i.2$1), (if p10$1 then BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1) else $j.0$1), (if p10$1 then 0bv32 else $total_diff.0$1);
    $thread_block.1$2, $i.2$2, $j.0$2, $total_diff.0$2 := (if p10$2 then 0bv32 else $thread_block.1$2), (if p10$2 then $i.1$2 else $i.2$2), (if p10$2 then BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2) else $j.0$2), (if p10$2 then 0bv32 else $total_diff.0$2);
    p11$1 := (if p10$1 then true else p11$1);
    p11$2 := (if p10$2 then true else p11$2);
    _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto __partitioned_block_$for.cond.27_0;

  __partitioned_block_$for.cond.27_0:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b178 ==> !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "disabledMaintainsInstrumentation"} _b177 ==> !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.27_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b176 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b175 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b174 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "noread"} _b173 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "disabledMaintainsInstrumentation"} _b172 ==> !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "disabledMaintainsInstrumentation"} _b171 ==> !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF$ghost$__partitioned_block_$for.cond.27_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "nowrite"} _b170 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "noread"} _b169 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assert {:tag "predicatedEquality"} _b168 ==> p11$1 && p11$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b167 ==> p11$1 && p11$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b166 ==> p11$1 && p11$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b165 ==> p11$1 && p11$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b164 ==> p11$1 && p11$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b163 ==> p11$1 && p11$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b162 ==> p11$1 && p11$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b161 ==> p11$1 && p11$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b160 ==> p11$1 && p11$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b159 ==> p11$1 && p11$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b158 ==> p11$1 && p11$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b157 ==> p11$1 && p11$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b156 ==> p11$1 && p11$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b155 ==> p11$1 && p11$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b154 ==> p11$1 && p11$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b153 ==> p11$1 && p11$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b152 ==> p11$1 && p11$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b151 ==> p11$1 && p11$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b150 ==> p11$1 && p11$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b149 ==> p11$1 && p11$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b148 ==> p11$1 && p11$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b147 ==> p11$1 && p11$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b146 ==> p11$1 && p11$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b145 ==> p11$1 && p11$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b144 ==> p11$1 && p11$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b143 ==> p11$1 && p11$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b142 ==> p11$1 && p11$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b141 ==> p11$1 && p11$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b140 ==> p11$1 && p11$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b139 ==> p11$1 && p11$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b138 ==> p11$1 && p11$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b137 ==> p11$1 && p11$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b136 ==> p11$1 && p11$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b135 ==> p11$1 && p11$2 ==> $cond73$1 == $cond73$2;
    assert {:tag "predicatedEquality"} _b134 ==> p11$1 && p11$2 ==> $cond64$1 == $cond64$2;
    assert {:tag "predicatedEquality"} _b133 ==> p11$1 && p11$2 ==> $cond57$1 == $cond57$2;
    assert {:tag "predicatedEquality"} _b132 ==> p11$1 && p11$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b131 ==> p11$1 && p11$2 ==> $old_val.0$1 == $old_val.0$2;
    assert {:tag "predicatedEquality"} _b130 ==> p11$1 && p11$2 ==> $new_val.0$1 == $new_val.0$2;
    assert {:tag "predicatedEquality"} _b129 ==> p11$1 && p11$2 ==> $j.1$1 == $j.1$2;
    assert {:tag "predicatedEquality"} _b128 ==> p11$1 && p11$2 ==> $total_diff.0$1 == $total_diff.0$2;
    assert {:tag "predicatedEquality"} _b127 ==> p11$1 && p11$2 ==> $j.0$1 == $j.0$2;
    assert {:tag "predicatedEquality"} _b126 ==> p11$1 && p11$2 ==> $i.2$1 == $i.2$2;
    assert {:tag "predicatedEquality"} _b125 ==> p11$1 && p11$2 ==> $thread_block.1$1 == $thread_block.1$2;
    assert {:tag "loopPredicateEquality"} _b124 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p11$1 == p11$2;
    assert {:tag "loopPredicateEquality"} _b123 ==> p11$1 == p11$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p11"} {:dominator_predicate "p10"} true;
    assert p11$1 ==> p7$1;
    assert p11$2 ==> p7$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b29 ==> $0$1 == 1bv1 && BV32_SLT($thread_block.1$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256bv32), 1bv32), 256bv32)) ==> p11$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b29 ==> $0$2 == 1bv1 && BV32_SLT($thread_block.1$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256bv32), 1bv32), 256bv32)) ==> p11$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p11$1 ==> _b28 ==> p11$1 ==> $0$1 == 1bv1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p11$2 ==> _b28 ==> p11$2 ==> $0$2 == 1bv1;
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b27 ==> BV32_UGE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1));
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b27 ==> BV32_UGE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2));
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b26 ==> BV32_ULE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1));
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b26 ==> BV32_ULE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2));
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b25 ==> BV32_SGE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1));
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b25 ==> BV32_SGE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2));
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b24 ==> BV32_SLE($j.0$1, BV32_SUB(BV32_SREM(v5$1, v3$1), v14$1));
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b24 ==> BV32_SLE($j.0$2, BV32_SUB(BV32_SREM(v5$2, v3$2), v14$2));
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b23 ==> BV32_UGE($i.2$1, $i.1$1);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b23 ==> BV32_UGE($i.2$2, $i.1$2);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b22 ==> BV32_ULE($i.2$1, $i.1$1);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b22 ==> BV32_ULE($i.2$2, $i.1$2);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b21 ==> BV32_SGE($i.2$1, $i.1$1);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b21 ==> BV32_SGE($i.2$2, $i.1$2);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b20 ==> BV32_SLE($i.2$1, $i.1$1);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b20 ==> BV32_SLE($i.2$2, $i.1$2);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b19 ==> BV32_UGE($thread_block.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b19 ==> BV32_UGE($thread_block.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b18 ==> BV32_ULE($thread_block.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b18 ==> BV32_ULE($thread_block.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b17 ==> BV32_SGE($thread_block.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b17 ==> BV32_SGE($thread_block.1$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p11$1 ==> _b16 ==> BV32_SLE($thread_block.1$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p11$2 ==> _b16 ==> BV32_SLE($thread_block.1$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p11$1 ==> _b15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($thread_block.1$1, 0bv32) == BV32_SUB($thread_block.1$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p11$2 ==> _b15 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($thread_block.1$2, 0bv32) == BV32_SUB($thread_block.1$1, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p11$1 ==> _b14 ==> BV32_SUB($thread_block.1$1, 0bv32) == BV32_SUB($thread_block.1$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p11$2 ==> _b14 ==> BV32_SUB($thread_block.1$2, 0bv32) == BV32_SUB($thread_block.1$1, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p11$1 ==> _b13 ==> BV32_SLE(0bv32, $thread_block.1$1);
    assert {:tag "guardNonNeg"} {:thread 2} p11$2 ==> _b13 ==> BV32_SLE(0bv32, $thread_block.1$2);
    assert {:block_sourceloc} {:sourceloc_num 22} p11$1 ==> true;
    v19$1 := (if p11$1 then BV32_SLT($thread_block.1$1, v4$1) else v19$1);
    v19$2 := (if p11$2 then BV32_SLT($thread_block.1$2, v4$2) else v19$2);
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
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p12$1 := (if p11$1 && v19$1 then v19$1 else p12$1);
    p12$2 := (if p11$2 && v19$2 then v19$2 else p12$2);
    p11$1 := (if p11$1 && !v19$1 then v19$1 else p11$1);
    p11$2 := (if p11$2 && !v19$2 then v19$2 else p11$2);
    v20$1 := (if p12$1 then FP32_TO_SI32(FMUL32(SI32_TO_FP32(BV32_ADD(v5$1, BV32_MUL($thread_block.1$1, 256bv32))), FDIV32(1065353216bv32, SI32_TO_FP32(v3$1)))) else v20$1);
    v20$2 := (if p12$2 then FP32_TO_SI32(FMUL32(SI32_TO_FP32(BV32_ADD(v5$2, BV32_MUL($thread_block.1$2, 256bv32))), FDIV32(1065353216bv32, SI32_TO_FP32(v3$2)))) else v20$2);
    v21$1 := (if p12$1 then BV32_ADD($j.0$1, v14$1) else v21$1);
    v21$2 := (if p12$2 then BV32_ADD($j.0$2, v14$2) else v21$2);
    v22$1 := (if p12$1 then BV32_SGE(v21$1, v3$1) else v22$1);
    v22$2 := (if p12$2 then BV32_SGE(v21$2, v3$2) else v22$2);
    p14$1 := (if p12$1 && v22$1 then v22$1 else p14$1);
    p14$2 := (if p12$2 && v22$2 then v22$2 else p14$2);
    p13$1 := (if p12$1 && !v22$1 then !v22$1 else p13$1);
    p13$2 := (if p12$2 && !v22$2 then !v22$2 else p13$2);
    $j.1$1 := (if p13$1 then v21$1 else $j.1$1);
    $j.1$2 := (if p13$2 then v21$2 else $j.1$2);
    $j.1$1 := (if p14$1 then BV32_SUB(v21$1, v3$1) else $j.1$1);
    $j.1$2 := (if p14$2 then BV32_SUB(v21$2, v3$2) else $j.1$2);
    v23$1 := (if p12$1 then BV32_SLT(v20$1, v2$1) else v23$1);
    v23$2 := (if p12$2 then BV32_SLT(v20$2, v2$2) else v23$2);
    p16$1 := (if p12$1 && v23$1 then v23$1 else p16$1);
    p16$2 := (if p12$2 && v23$2 then v23$2 else p16$2);
    p15$1 := (if p12$1 && !v23$1 then !v23$1 else p15$1);
    p15$2 := (if p12$2 && !v23$2 then !v23$2 else p15$2);
    $new_val.0$1, $old_val.0$1 := (if p15$1 then 0bv32 else $new_val.0$1), (if p15$1 then 0bv32 else $old_val.0$1);
    $new_val.0$2, $old_val.0$2 := (if p15$2 then 0bv32 else $new_val.0$2), (if p15$2 then 0bv32 else $old_val.0$2);
    v24$1 := (if p16$1 then v20$1 == 0bv32 else v24$1);
    v24$2 := (if p16$2 then v20$2 == 0bv32 else v24$2);
    p18$1 := (if p16$1 && v24$1 then v24$1 else p18$1);
    p18$2 := (if p16$2 && v24$2 then v24$2 else p18$2);
    p17$1 := (if p16$1 && !v24$1 then !v24$1 else p17$1);
    p17$2 := (if p16$2 && !v24$2 then !v24$2 else p17$2);
    $cond$1 := (if p17$1 then BV32_SUB(v20$1, 1bv32) else $cond$1);
    $cond$2 := (if p17$2 then BV32_SUB(v20$2, 1bv32) else $cond$2);
    $cond$1 := (if p18$1 then 0bv32 else $cond$1);
    $cond$2 := (if p18$2 then 0bv32 else $cond$2);
    v25$1 := (if p16$1 then v20$1 == BV32_SUB(v2$1, 1bv32) else v25$1);
    v25$2 := (if p16$2 then v20$2 == BV32_SUB(v2$2, 1bv32) else v25$2);
    p20$1 := (if p16$1 && v25$1 then v25$1 else p20$1);
    p20$2 := (if p16$2 && v25$2 then v25$2 else p20$2);
    p19$1 := (if p16$1 && !v25$1 then !v25$1 else p19$1);
    p19$2 := (if p16$2 && !v25$2 then !v25$2 else p19$2);
    $cond57$1 := (if p19$1 then BV32_ADD(v20$1, 1bv32) else $cond57$1);
    $cond57$2 := (if p19$2 then BV32_ADD(v20$2, 1bv32) else $cond57$2);
    $cond57$1 := (if p20$1 then BV32_SUB(v2$1, 1bv32) else $cond57$1);
    $cond57$2 := (if p20$2 then BV32_SUB(v2$2, 1bv32) else $cond57$2);
    v26$1 := (if p16$1 then $j.1$1 == 0bv32 else v26$1);
    v26$2 := (if p16$2 then $j.1$2 == 0bv32 else v26$2);
    p22$1 := (if p16$1 && v26$1 then v26$1 else p22$1);
    p22$2 := (if p16$2 && v26$2 then v26$2 else p22$2);
    p21$1 := (if p16$1 && !v26$1 then !v26$1 else p21$1);
    p21$2 := (if p16$2 && !v26$2 then !v26$2 else p21$2);
    $cond64$1 := (if p21$1 then BV32_SUB($j.1$1, 1bv32) else $cond64$1);
    $cond64$2 := (if p21$2 then BV32_SUB($j.1$2, 1bv32) else $cond64$2);
    $cond64$1 := (if p22$1 then 0bv32 else $cond64$1);
    $cond64$2 := (if p22$2 then 0bv32 else $cond64$2);
    v27$1 := (if p16$1 then $j.1$1 == BV32_SUB(v3$1, 1bv32) else v27$1);
    v27$2 := (if p16$2 then $j.1$2 == BV32_SUB(v3$2, 1bv32) else v27$2);
    p24$1 := (if p16$1 && v27$1 then v27$1 else p24$1);
    p24$2 := (if p16$2 && v27$2 then v27$2 else p24$2);
    p23$1 := (if p16$1 && !v27$1 then !v27$1 else p23$1);
    p23$2 := (if p16$2 && !v27$2 then !v27$2 else p23$2);
    $cond73$1 := (if p23$1 then BV32_ADD($j.1$1, 1bv32) else $cond73$1);
    $cond73$2 := (if p23$2 then BV32_ADD($j.1$2, 1bv32) else $cond73$2);
    $cond73$1 := (if p24$1 then BV32_SUB(v3$1, 1bv32) else $cond73$1);
    $cond73$2 := (if p24$2 then BV32_SUB(v3$2, 1bv32) else $cond73$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v28$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)] else v28$1);
    v28$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)] else v28$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v29$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $j.1$1)] else v29$1);
    v29$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $j.1$2)] else v29$2);
    v30$1 := (if p16$1 then FSUB32(v29$1, v28$1) else v30$1);
    v30$2 := (if p16$2 then FSUB32(v29$2, v28$2) else v30$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond57$1, v3$1), $j.1$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $j.1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond57$2, v3$2), $j.1$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $j.1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v31$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $j.1$1)] else v31$1);
    v31$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $j.1$2)] else v31$2);
    v32$1 := (if p16$1 then FSUB32(v31$1, v28$1) else v32$1);
    v32$2 := (if p16$2 then FSUB32(v31$2, v28$2) else v32$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $cond64$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $cond64$1)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $cond64$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $cond64$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v33$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $cond64$1)] else v33$1);
    v33$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $cond64$2)] else v33$2);
    v34$1 := (if p16$1 then FSUB32(v33$1, v28$1) else v34$1);
    v34$2 := (if p16$2 then FSUB32(v33$2, v28$2) else v34$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $cond73$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $cond73$1)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $cond73$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $cond73$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v35$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $cond73$1)] else v35$1);
    v35$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $cond73$2)] else v35$2);
    v36$1 := (if p16$1 then FSUB32(v35$1, v28$1) else v36$1);
    v36$2 := (if p16$2 then FSUB32(v35$2, v28$2) else v36$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond$1, v3$1), $cond73$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $cond73$1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond$2, v3$2), $cond73$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $cond73$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v37$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $cond73$1)] else v37$1);
    v37$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $cond73$2)] else v37$2);
    v38$1 := (if p16$1 then FSUB32(v37$1, v28$1) else v38$1);
    v38$2 := (if p16$2 then FSUB32(v37$2, v28$2) else v38$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond73$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond73$1)]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond73$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond73$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v39$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond73$1)] else v39$1);
    v39$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond73$2)] else v39$2);
    v40$1 := (if p16$1 then FSUB32(v39$1, v28$1) else v40$1);
    v40$2 := (if p16$2 then FSUB32(v39$2, v28$2) else v40$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond$1, v3$1), $cond64$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $cond64$1)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond$2, v3$2), $cond64$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $cond64$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v41$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond$1, v3$1), $cond64$1)] else v41$1);
    v41$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond$2, v3$2), $cond64$2)] else v41$2);
    v42$1 := (if p16$1 then FSUB32(v41$1, v28$1) else v42$1);
    v42$2 := (if p16$2 then FSUB32(v41$2, v28$2) else v42$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$IMGVF_kernel.IMGVF(p16$1, BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond64$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond64$1)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$IMGVF_kernel.IMGVF(p16$2, BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond64$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond64$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v43$1 := (if p16$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($cond57$1, v3$1), $cond64$1)] else v43$1);
    v43$2 := (if p16$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($cond57$2, v3$2), $cond64$2)] else v43$2);
    v44$1 := (if p16$1 then FSUB32(v43$1, v28$1) else v44$1);
    v44$2 := (if p16$2 then FSUB32(v43$2, v28$2) else v44$2);
    v45$1 := (if p16$1 then FADD32(FMUL32(1036831949bv32, FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v44$1, FADD32(FSUB32(2147483648bv32, $vx), $vy)), v15)), 1050868108bv32), 1056964608bv32), v44$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v42$1, FSUB32(FSUB32(2147483648bv32, $vx), $vy)), v15)), 1050868108bv32), 1056964608bv32), v42$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v40$1, FADD32($vx, $vy)), v15)), 1050868108bv32), 1056964608bv32), v40$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v38$1, FSUB32($vx, $vy)), v15)), 1050868108bv32), 1056964608bv32), v38$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v36$1, $vx), v15)), 1050868108bv32), 1056964608bv32), v36$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v34$1, FSUB32(2147483648bv32, $vx)), v15)), 1050868108bv32), 1056964608bv32), v34$1), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v30$1, FSUB32(2147483648bv32, $vy)), v15)), 1050868108bv32), 1056964608bv32), v30$1), FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v32$1, $vy), v15)), 1050868108bv32), 1056964608bv32), v32$1))))))))), v28$1) else v45$1);
    v45$2 := (if p16$2 then FADD32(FMUL32(1036831949bv32, FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v44$2, FADD32(FSUB32(2147483648bv32, $vx), $vy)), v15)), 1050868108bv32), 1056964608bv32), v44$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v42$2, FSUB32(FSUB32(2147483648bv32, $vx), $vy)), v15)), 1050868108bv32), 1056964608bv32), v42$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v40$2, FADD32($vx, $vy)), v15)), 1050868108bv32), 1056964608bv32), v40$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v38$2, FSUB32($vx, $vy)), v15)), 1050868108bv32), 1056964608bv32), v38$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v36$2, $vx), v15)), 1050868108bv32), 1056964608bv32), v36$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v34$2, FSUB32(2147483648bv32, $vx)), v15)), 1050868108bv32), 1056964608bv32), v34$2), FADD32(FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v30$2, FSUB32(2147483648bv32, $vy)), v15)), 1050868108bv32), 1056964608bv32), v30$2), FMUL32(FADD32(FMUL32(__bugle_atan_float(FMUL32(FMUL32(v32$2, $vy), v15)), 1050868108bv32), 1056964608bv32), v32$2))))))))), v28$2) else v45$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v46$1 := (if p16$1 then _HAVOC_bv32$1 else v46$1);
    v46$2 := (if p16$2 then _HAVOC_bv32$2 else v46$2);
    $new_val.0$1, $old_val.0$1 := (if p16$1 then FSUB32(v45$1, FMUL32(FMUL32(1045220557bv32, v46$1), FSUB32(v45$1, v46$1))) else $new_val.0$1), (if p16$1 then v28$1 else $old_val.0$1);
    $new_val.0$2, $old_val.0$2 := (if p16$2 then FSUB32(v45$2, FMUL32(FMUL32(1045220557bv32, v46$2), FSUB32(v45$2, v46$2))) else $new_val.0$2), (if p16$2 then v28$2 else $old_val.0$2);
    v47$1 := (if p12$1 then BV32_SGT($thread_block.1$1, 0bv32) else v47$1);
    v47$2 := (if p12$2 then BV32_SGT($thread_block.1$2, 0bv32) else v47$2);
    p26$1 := (if p12$1 && v47$1 then v47$1 else p26$1);
    p26$2 := (if p12$2 && v47$2 then v47$2 else p26$2);
    v48$1 := (if p26$1 then BV32_SLT($i.2$1, v2$1) else v48$1);
    v48$2 := (if p26$2 then BV32_SLT($i.2$2, v2$2) else v48$2);
    p28$1 := (if p26$1 && v48$1 then v48$1 else p28$1);
    p28$2 := (if p26$2 && v48$2 then v48$2 else p28$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$IMGVF_kernel.buffer(p28$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$IMGVF_kernel.buffer(p28$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v49$1 := (if p28$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v49$1);
    v49$2 := (if p28$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v49$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p28$1, BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1), v49$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p28$2, BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p28$2, BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2), v49$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)] := (if p28$1 then v49$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL($i.2$1, v3$1), $j.0$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2)] := (if p28$2 then v49$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.2$2, v3$2), $j.0$2)]);
    v50$1 := (if p12$1 then BV32_SLT($thread_block.1$1, BV32_SUB(v4$1, 1bv32)) else v50$1);
    v50$2 := (if p12$2 then BV32_SLT($thread_block.1$2, BV32_SUB(v4$2, 1bv32)) else v50$2);
    p29$1 := (if p12$1 && v50$1 then v50$1 else p29$1);
    p29$2 := (if p12$2 && v50$2 then v50$2 else p29$2);
    p30$1 := (if p12$1 && !v50$1 then !v50$1 else p30$1);
    p30$2 := (if p12$2 && !v50$2 then !v50$2 else p30$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$IMGVF_kernel.buffer(p29$1, v5$1, $new_val.0$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p29$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$IMGVF_kernel.buffer(p29$2, v5$2, $new_val.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p29$1 then $new_val.0$1 else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p29$2 then $new_val.0$2 else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    v51$1 := (if p30$1 then BV32_SLT(v20$1, v2$1) else v51$1);
    v51$2 := (if p30$2 then BV32_SLT(v20$2, v2$2) else v51$2);
    p32$1 := (if p30$1 && v51$1 then v51$1 else p32$1);
    p32$2 := (if p30$2 && v51$2 then v51$2 else p32$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$IMGVF_kernel.IMGVF(p32$1, BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1), $new_val.0$1, $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(p32$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$IMGVF_kernel.IMGVF(p32$2, BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2), $new_val.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.IMGVF"} true;
    $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)] := (if p32$1 then $new_val.0$1 else $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v20$1, v3$1), $j.1$1)]);
    $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)] := (if p32$2 then $new_val.0$2 else $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v20$2, v3$2), $j.1$2)]);
    goto __partitioned_block_$for.cond.27_1;

  __partitioned_block_$for.cond.27_1:
    call {:sourceloc_num 62} $bugle_barrier_duplicated_6(1bv1, 0bv1, p12$1, p12$2);
    $thread_block.1$1, $i.2$1, $j.0$1, $total_diff.0$1 := (if p12$1 then BV32_ADD($thread_block.1$1, 1bv32) else $thread_block.1$1), (if p12$1 then v20$1 else $i.2$1), (if p12$1 then $j.1$1 else $j.0$1), (if p12$1 then FADD32($total_diff.0$1, FABS32(FSUB32($new_val.0$1, $old_val.0$1))) else $total_diff.0$1);
    $thread_block.1$2, $i.2$2, $j.0$2, $total_diff.0$2 := (if p12$2 then BV32_ADD($thread_block.1$2, 1bv32) else $thread_block.1$2), (if p12$2 then v20$2 else $i.2$2), (if p12$2 then $j.1$2 else $j.0$2), (if p12$2 then FADD32($total_diff.0$2, FABS32(FSUB32($new_val.0$2, $old_val.0$2))) else $total_diff.0$2);
    p11$1 := (if p12$1 then true else p11$1);
    p11$2 := (if p12$2 then true else p11$2);
    goto $for.cond.27.backedge, __partitioned_block_$for.cond.27.tail_0;

  __partitioned_block_$for.cond.27.tail_0:
    assume !p11$1 && !p11$2;
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$IMGVF_kernel.buffer(p10$1, v5$1, $total_diff.0$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p10$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$IMGVF_kernel.buffer(p10$2, v5$2, $total_diff.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p10$1 then $total_diff.0$1 else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p10$2 then $total_diff.0$2 else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    goto __partitioned_block_$for.cond.27.tail_1;

  __partitioned_block_$for.cond.27.tail_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_2(1bv1, 0bv1, p10$1, p10$2);
    v52$1 := (if p10$1 then BV32_SGE(v5$1, 256bv32) else v52$1);
    v52$2 := (if p10$2 then BV32_SGE(v5$2, 256bv32) else v52$2);
    p34$1 := (if p10$1 && v52$1 then v52$1 else p34$1);
    p34$2 := (if p10$2 && v52$2 then v52$2 else p34$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$IMGVF_kernel.buffer(p34$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$IMGVF_kernel.buffer(p34$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v53$1 := (if p34$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v53$1);
    v53$2 := (if p34$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v53$2);
    v54$1 := (if p34$1 then BV32_SUB(v5$1, 256bv32) else v54$1);
    v54$2 := (if p34$2 then BV32_SUB(v5$2, 256bv32) else v54$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$IMGVF_kernel.buffer(p34$1, v54$1, $$IMGVF_kernel.buffer[1bv1][v54$1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$IMGVF_kernel.buffer(p34$2, v54$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v55$1 := (if p34$1 then $$IMGVF_kernel.buffer[1bv1][v54$1] else v55$1);
    v55$2 := (if p34$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2] else v55$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_WRITE_$$IMGVF_kernel.buffer(p34$1, v54$1, FADD32(v55$1, v53$1), $$IMGVF_kernel.buffer[1bv1][v54$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p34$2, v54$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 70} _CHECK_WRITE_$$IMGVF_kernel.buffer(p34$2, v54$2, FADD32(v55$2, v53$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v54$1] := (if p34$1 then FADD32(v55$1, v53$1) else $$IMGVF_kernel.buffer[1bv1][v54$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2] := (if p34$2 then FADD32(v55$2, v53$2) else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v54$2]);
    goto __partitioned_block_$for.cond.27.tail_2;

  __partitioned_block_$for.cond.27.tail_2:
    call {:sourceloc_num 72} $bugle_barrier_duplicated_3(1bv1, 0bv1, p10$1, p10$2);
    $th.0$1 := (if p10$1 then 128bv32 else $th.0$1);
    $th.0$2 := (if p10$2 then 128bv32 else $th.0$2);
    p35$1 := (if p10$1 then true else p35$1);
    p35$2 := (if p10$2 then true else p35$2);
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0 := _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0 := _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$for.cond.200_0;

  __partitioned_block_$for.cond.200_0:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b195 ==> !p10$1 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0 == _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "disabledMaintainsInstrumentation"} _b194 ==> !p10$1 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer$ghost$__partitioned_block_$for.cond.200_0 == _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b193 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b192 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b191 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "noread"} _b190 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assert {:tag "predicatedEquality"} _b189 ==> p35$1 && p35$2 ==> v57$1 == v57$2;
    assert {:tag "predicatedEquality"} _b188 ==> p35$1 && p35$2 ==> v56$1 == v56$2;
    assert {:tag "predicatedEquality"} _b187 ==> p35$1 && p35$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b186 ==> p35$1 && p35$2 ==> v58$1 == v58$2;
    assert {:tag "predicatedEquality"} _b185 ==> p35$1 && p35$2 ==> $th.0$1 == $th.0$2;
    assert {:tag "loopPredicateEquality"} _b184 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p35$1 == p35$2;
    assert {:tag "loopPredicateEquality"} _b183 ==> p35$1 == p35$2;
    assert {:tag "pow2NotZero"} _b182 ==> $th.0$2 != 0bv32;
    assert {:tag "pow2"} _b181 ==> $th.0$2 == 0bv32 || BV32_AND($th.0$2, BV32_SUB($th.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b180 ==> $th.0$1 != 0bv32;
    assert {:tag "pow2"} _b179 ==> $th.0$1 == 0bv32 || BV32_AND($th.0$1, BV32_SUB($th.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p35"} {:dominator_predicate "p10"} true;
    assert p35$1 ==> p7$1;
    assert p35$2 ==> p7$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> $0$1 == 1bv1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b42 ==> $0$1 == 1bv1 && BV32_SGT($th.0$1, 0bv32) ==> p35$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b42 ==> $0$2 == 1bv1 && BV32_SGT($th.0$2, 0bv32) ==> p35$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p35$1 ==> _b41 ==> p35$1 ==> $0$1 == 1bv1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p35$2 ==> _b41 ==> p35$2 ==> $0$2 == 1bv1;
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b40 ==> BV32_UGE($th.0$1, 128bv32);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b40 ==> BV32_UGE($th.0$2, 128bv32);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b39 ==> BV32_ULE($th.0$1, 128bv32);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b39 ==> BV32_ULE($th.0$2, 128bv32);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b38 ==> BV32_SGE($th.0$1, 128bv32);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b38 ==> BV32_SGE($th.0$2, 128bv32);
    assert {:tag "loopBound"} {:thread 1} p35$1 ==> _b37 ==> BV32_SLE($th.0$1, 128bv32);
    assert {:tag "loopBound"} {:thread 2} p35$2 ==> _b37 ==> BV32_SLE($th.0$2, 128bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p35$1 ==> _b36 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($th.0$1, 128bv32) == BV32_SUB($th.0$2, 128bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p35$2 ==> _b36 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($th.0$2, 128bv32) == BV32_SUB($th.0$1, 128bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p35$1 ==> _b35 ==> BV32_SUB($th.0$1, 128bv32) == BV32_SUB($th.0$2, 128bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p35$2 ==> _b35 ==> BV32_SUB($th.0$2, 128bv32) == BV32_SUB($th.0$1, 128bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p35$1 ==> _b34 ==> BV32_SLE(0bv32, $th.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p35$2 ==> _b34 ==> BV32_SLE(0bv32, $th.0$2);
    assert {:block_sourceloc} {:sourceloc_num 73} p35$1 ==> true;
    v56$1 := (if p35$1 then BV32_SGT($th.0$1, 0bv32) else v56$1);
    v56$2 := (if p35$2 then BV32_SGT($th.0$2, 0bv32) else v56$2);
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p42$1 := false;
    p42$2 := false;
    p36$1 := (if p35$1 && v56$1 then v56$1 else p36$1);
    p36$2 := (if p35$2 && v56$2 then v56$2 else p36$2);
    p35$1 := (if p35$1 && !v56$1 then v56$1 else p35$1);
    p35$2 := (if p35$2 && !v56$2 then v56$2 else p35$2);
    v57$1 := (if p36$1 then BV32_SLT(v5$1, $th.0$1) else v57$1);
    v57$2 := (if p36$2 then BV32_SLT(v5$2, $th.0$2) else v57$2);
    p38$1 := (if p36$1 && v57$1 then v57$1 else p38$1);
    p38$2 := (if p36$2 && v57$2 then v57$2 else p38$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$IMGVF_kernel.buffer(p38$1, BV32_ADD(v5$1, $th.0$1), $$IMGVF_kernel.buffer[1bv1][BV32_ADD(v5$1, $th.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$IMGVF_kernel.buffer(p38$2, BV32_ADD(v5$2, $th.0$2), $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v5$2, $th.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v58$1 := (if p38$1 then $$IMGVF_kernel.buffer[1bv1][BV32_ADD(v5$1, $th.0$1)] else v58$1);
    v58$2 := (if p38$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v5$2, $th.0$2)] else v58$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$IMGVF_kernel.buffer(p38$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$IMGVF_kernel.buffer(p38$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v59$1 := (if p38$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v59$1);
    v59$2 := (if p38$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v59$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$IMGVF_kernel.buffer(p38$1, v5$1, FADD32(v59$1, v58$1), $$IMGVF_kernel.buffer[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(p38$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$IMGVF_kernel.buffer(p38$2, v5$2, FADD32(v59$2, v58$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.buffer"} true;
    $$IMGVF_kernel.buffer[1bv1][v5$1] := (if p38$1 then FADD32(v59$1, v58$1) else $$IMGVF_kernel.buffer[1bv1][v5$1]);
    $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := (if p38$2 then FADD32(v59$2, v58$2) else $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    goto __partitioned_block_$for.cond.200_1;

  __partitioned_block_$for.cond.200_1:
    call {:sourceloc_num 80} $bugle_barrier_duplicated_5(1bv1, 0bv1, p36$1, p36$2);
    $th.0$1 := (if p36$1 then BV32_SDIV($th.0$1, 2bv32) else $th.0$1);
    $th.0$2 := (if p36$2 then BV32_SDIV($th.0$2, 2bv32) else $th.0$2);
    p35$1 := (if p36$1 then true else p35$1);
    p35$2 := (if p36$2 then true else p35$2);
    goto $for.cond.200.backedge, __partitioned_block_$for.cond.200.tail_0;

  __partitioned_block_$for.cond.200.tail_0:
    assume !p35$1 && !p35$2;
    v60$1 := (if p10$1 then v5$1 == 0bv32 else v60$1);
    v60$2 := (if p10$2 then v5$2 == 0bv32 else v60$2);
    p40$1 := (if p10$1 && v60$1 then v60$1 else p40$1);
    p40$2 := (if p10$2 && v60$2 then v60$2 else p40$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$IMGVF_kernel.buffer(p40$1, v5$1, $$IMGVF_kernel.buffer[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$IMGVF_kernel.buffer(p40$2, v5$2, $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.buffer"} true;
    v61$1 := (if p40$1 then $$IMGVF_kernel.buffer[1bv1][v5$1] else v61$1);
    v61$2 := (if p40$2 then $$IMGVF_kernel.buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] else v61$2);
    v62$1 := (if p40$1 then FLT32(FDIV32(v61$1, SI32_TO_FP32(BV32_MUL(v2$1, v3$1))), $cutoff) else v62$1);
    v62$2 := (if p40$2 then FLT32(FDIV32(v61$2, SI32_TO_FP32(BV32_MUL(v2$2, v3$2))), $cutoff) else v62$2);
    p42$1 := (if p40$1 && v62$1 then v62$1 else p42$1);
    p42$2 := (if p40$2 && v62$2 then v62$2 else p42$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$IMGVF_kernel.cell_converged(p42$1, 0bv32, 1bv32, $$IMGVF_kernel.cell_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(p42$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$IMGVF_kernel.cell_converged(p42$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_kernel.cell_converged"} true;
    $$IMGVF_kernel.cell_converged[1bv1][0bv32] := (if p42$1 then 1bv32 else $$IMGVF_kernel.cell_converged[1bv1][0bv32]);
    $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p42$2 then 1bv32 else $$IMGVF_kernel.cell_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$for.cond.200.tail_1;

  __partitioned_block_$for.cond.200.tail_1:
    call {:sourceloc_num 89} $bugle_barrier_duplicated_4(1bv1, 0bv1, p10$1, p10$2);
    $i.1$1, $iterations.0$1 := (if p10$1 then $i.2$1 else $i.1$1), (if p10$1 then BV32_ADD($iterations.0$1, 1bv32) else $iterations.0$1);
    $i.1$2, $iterations.0$2 := (if p10$2 then $i.2$2 else $i.1$2), (if p10$2 then BV32_ADD($iterations.0$2, 1bv32) else $iterations.0$2);
    p7$1 := (if p10$1 then true else p7$1);
    p7$2 := (if p10$2 then true else p7$2);
    goto $while.cond.backedge, $while.cond.tail;

  $while.cond.tail:
    assume !p7$1 && !p7$2;
    $thread_block.2$1 := 0bv32;
    $thread_block.2$2 := 0bv32;
    p43$1 := true;
    p43$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond.228;

  $for.cond.228:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV32_SLT($thread_block.2$1, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$1, v3$1), 256bv32), 1bv32), 256bv32)) ==> p43$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV32_SLT($thread_block.2$2, BV32_SDIV(BV32_SUB(BV32_ADD(BV32_MUL(v2$2, v3$2), 256bv32), 1bv32), 256bv32)) ==> p43$2;
    assert {:tag "loopBound"} {:thread 1} p43$1 ==> _b11 ==> BV32_UGE($thread_block.2$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p43$2 ==> _b11 ==> BV32_UGE($thread_block.2$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p43$1 ==> _b10 ==> BV32_ULE($thread_block.2$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p43$2 ==> _b10 ==> BV32_ULE($thread_block.2$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p43$1 ==> _b9 ==> BV32_SGE($thread_block.2$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p43$2 ==> _b9 ==> BV32_SGE($thread_block.2$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p43$1 ==> _b8 ==> BV32_SLE($thread_block.2$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p43$2 ==> _b8 ==> BV32_SLE($thread_block.2$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p43$1 ==> _b7 ==> BV32_SLE(0bv32, $thread_block.2$1);
    assert {:tag "guardNonNeg"} {:thread 2} p43$2 ==> _b7 ==> BV32_SLE(0bv32, $thread_block.2$2);
    assert {:block_sourceloc} {:sourceloc_num 91} p43$1 ==> true;
    v63$1 := (if p43$1 then BV32_SLT($thread_block.2$1, v4$1) else v63$1);
    v63$2 := (if p43$2 then BV32_SLT($thread_block.2$2, v4$2) else v63$2);
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p46$1 := false;
    p46$2 := false;
    p44$1 := (if p43$1 && v63$1 then v63$1 else p44$1);
    p44$2 := (if p43$2 && v63$2 then v63$2 else p44$2);
    p43$1 := (if p43$1 && !v63$1 then v63$1 else p43$1);
    p43$2 := (if p43$2 && !v63$2 then v63$2 else p43$2);
    v64$1 := (if p44$1 then BV32_MUL($thread_block.2$1, 256bv32) else v64$1);
    v64$2 := (if p44$2 then BV32_MUL($thread_block.2$2, 256bv32) else v64$2);
    v65$1 := (if p44$1 then BV32_SDIV(BV32_ADD(v5$1, v64$1), v3$1) else v65$1);
    v65$2 := (if p44$2 then BV32_SDIV(BV32_ADD(v5$2, v64$2), v3$2) else v65$2);
    v66$1 := (if p44$1 then BV32_SREM(BV32_ADD(v5$1, v64$1), v3$1) else v66$1);
    v66$2 := (if p44$2 then BV32_SREM(BV32_ADD(v5$2, v64$2), v3$2) else v66$2);
    v67$1 := (if p44$1 then BV32_SLT(v65$1, v2$1) else v67$1);
    v67$2 := (if p44$2 then BV32_SLT(v65$2, v2$2) else v67$2);
    p46$1 := (if p44$1 && v67$1 then v67$1 else p46$1);
    p46$2 := (if p44$2 && v67$2 then v67$2 else p46$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$IMGVF_kernel.IMGVF(p46$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1), $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$IMGVF_kernel.IMGVF(p46$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2), $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$IMGVF_kernel.IMGVF"} true;
    v68$1 := (if p46$1 then $$IMGVF_kernel.IMGVF[1bv1][BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)] else v68$1);
    v68$2 := (if p46$2 then $$IMGVF_kernel.IMGVF[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)] else v68$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$IMGVF_array(p46$1, BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1)), v68$1, $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(p46$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$IMGVF_array(p46$2, BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2)), v68$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$IMGVF_array"} true;
    $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))] := (if p46$1 then v68$1 else $$IMGVF_array[BV32_ADD(v1$1, BV32_ADD(BV32_MUL(v65$1, v3$1), v66$1))]);
    $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2))] := (if p46$2 then v68$2 else $$IMGVF_array[BV32_ADD(v1$2, BV32_ADD(BV32_MUL(v65$2, v3$2), v66$2))]);
    $thread_block.2$1 := (if p44$1 then BV32_ADD($thread_block.2$1, 1bv32) else $thread_block.2$1);
    $thread_block.2$2 := (if p44$2 then BV32_ADD($thread_block.2$2, 1bv32) else $thread_block.2$2);
    p43$1 := (if p44$1 then true else p43$1);
    p43$2 := (if p44$2 then true else p43$2);
    goto $for.cond.228.backedge, $for.cond.228.tail;

  $for.cond.228.tail:
    assume !p43$1 && !p43$2;
    return;

  $for.cond.228.backedge:
    assume {:backedge} p43$1 || p43$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond.228;

  $while.cond.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $while.cond;

  $for.cond.200.backedge:
    assume {:backedge} p35$1 || p35$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$for.cond.200_0;

  $for.cond.27.backedge:
    assume {:backedge} p11$1 || p11$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto __partitioned_block_$for.cond.27_0;

  $for.cond.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $for.cond;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 36bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$IMGVF_kernel.IMGVF, $$IMGVF_kernel.cell_converged, $$IMGVF_kernel.buffer, $$IMGVF_array, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const _WATCHED_VALUE_$$IMGVF_array: bv32;

procedure {:inline 1} _LOG_READ_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$IMGVF_array;



implementation {:inline 1} _LOG_READ_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then true else _READ_HAS_OCCURRED_$$IMGVF_array);
    return;
}



procedure _CHECK_READ_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_array: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_array, _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_array);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_array(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array != _value);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_array != _value);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_array(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_array;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_array(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_array);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_array(_P: bool, _offset: bv32);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);
  requires {:source_name "IMGVF_array"} {:array "$$IMGVF_array"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_array;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_array(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_array := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_array && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_array);
    return;
}



const _WATCHED_VALUE_$$I_array: bv32;

procedure {:inline 1} _LOG_READ_$$I_array(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$I_array;



implementation {:inline 1} _LOG_READ_$$I_array(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then true else _READ_HAS_OCCURRED_$$I_array);
    return;
}



procedure _CHECK_READ_$$I_array(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$I_array);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$I_array: bool;

procedure {:inline 1} _LOG_WRITE_$$I_array(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$I_array, _WRITE_READ_BENIGN_FLAG_$$I_array;



implementation {:inline 1} _LOG_WRITE_$$I_array(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then true else _WRITE_HAS_OCCURRED_$$I_array);
    _WRITE_READ_BENIGN_FLAG_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$I_array);
    return;
}



procedure _CHECK_WRITE_$$I_array(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array != _value);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$I_array != _value);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$I_array(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$I_array;



implementation {:inline 1} _LOG_ATOMIC_$$I_array(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$I_array := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$I_array);
    return;
}



procedure _CHECK_ATOMIC_$$I_array(_P: bool, _offset: bv32);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);
  requires {:source_name "I_array"} {:array "$$I_array"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$I_array(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$I_array;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$I_array(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$I_array := (if _P && _WRITE_HAS_OCCURRED_$$I_array && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$I_array);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.IMGVF: bv32;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.IMGVF != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "IMGVF"} {:array "$$IMGVF_kernel.IMGVF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.IMGVF);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.cell_converged: bv32;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.cell_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "cell_converged"} {:array "$$IMGVF_kernel.cell_converged"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.cell_converged);
    return;
}



const _WATCHED_VALUE_$$IMGVF_kernel.buffer: bv32;

procedure {:inline 1} _LOG_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then true else _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_READ_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer: bool;

procedure {:inline 1} _LOG_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer, _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then true else _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_WRITE_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$IMGVF_kernel.buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;



implementation {:inline 1} _LOG_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer);
    return;
}



procedure _CHECK_ATOMIC_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buffer"} {:array "$$IMGVF_kernel.buffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer := (if _P && _WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$IMGVF_kernel.buffer);
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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.IMGVF;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.cell_converged;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_kernel.buffer;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$IMGVF_array;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$IMGVF_array;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$IMGVF_array;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$IMGVF_kernel.IMGVF;
    goto anon5;

  anon5:
    havoc $$IMGVF_kernel.cell_converged;
    goto anon6;

  anon6:
    havoc $$IMGVF_kernel.buffer;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

const {:existential true} _b134: bool;

const {:existential true} _b135: bool;

const {:existential true} _b136: bool;

const {:existential true} _b137: bool;

const {:existential true} _b138: bool;

const {:existential true} _b139: bool;

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;

const {:existential true} _b180: bool;

const {:existential true} _b181: bool;

const {:existential true} _b182: bool;

const {:existential true} _b183: bool;

const {:existential true} _b184: bool;

const {:existential true} _b185: bool;

const {:existential true} _b186: bool;

const {:existential true} _b187: bool;

const {:existential true} _b188: bool;

const {:existential true} _b189: bool;

const {:existential true} _b190: bool;

const {:existential true} _b191: bool;

const {:existential true} _b192: bool;

const {:existential true} _b193: bool;

const {:existential true} _b194: bool;

const {:existential true} _b195: bool;
