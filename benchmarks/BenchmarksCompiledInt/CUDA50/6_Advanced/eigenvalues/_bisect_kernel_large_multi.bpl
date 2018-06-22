type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$g_d"} {:global} {:elem_width 32} {:source_name "g_d"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_d: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_d: bool;

axiom {:array_info "$$g_s"} {:global} {:elem_width 32} {:source_name "g_s"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_s: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_s: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_s: bool;

axiom {:array_info "$$blocks_mult"} {:global} {:elem_width 32} {:source_name "blocks_mult"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blocks_mult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blocks_mult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blocks_mult: bool;

axiom {:array_info "$$blocks_mult_sum"} {:global} {:elem_width 32} {:source_name "blocks_mult_sum"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blocks_mult_sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blocks_mult_sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum: bool;

axiom {:array_info "$$g_left"} {:global} {:elem_width 32} {:source_name "g_left"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_left: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_left: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_left: bool;

axiom {:array_info "$$g_right"} {:global} {:elem_width 32} {:source_name "g_right"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_right: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_right: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_right: bool;

axiom {:array_info "$$g_left_count"} {:global} {:elem_width 32} {:source_name "g_left_count"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_left_count: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_left_count: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_left_count: bool;

axiom {:array_info "$$g_right_count"} {:global} {:elem_width 32} {:source_name "g_right_count"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_right_count: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_right_count: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_right_count: bool;

var {:source_name "g_lambda"} {:global} $$g_lambda: [bv32]bv32;

axiom {:array_info "$$g_lambda"} {:global} {:elem_width 32} {:source_name "g_lambda"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_lambda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_lambda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_lambda: bool;

var {:source_name "g_pos"} {:global} $$g_pos: [bv32]bv32;

axiom {:array_info "$$g_pos"} {:global} {:elem_width 32} {:source_name "g_pos"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_pos: bool;

var {:source_name "c_block_start"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:group_shared} {:elem_width 32} {:source_name "c_block_start"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: bool;

var {:source_name "c_block_end"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:group_shared} {:elem_width 32} {:source_name "c_block_end"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: bool;

var {:source_name "c_block_offset_output"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:group_shared} {:elem_width 32} {:source_name "c_block_offset_output"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: bool;

var {:source_name "num_threads_active"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:group_shared} {:elem_width 32} {:source_name "num_threads_active"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: bool;

var {:source_name "s_compaction_list"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:group_shared} {:elem_width 32} {:source_name "s_compaction_list"} {:source_elem_width 32} {:source_dimensions "513"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: bool;

var {:source_name "num_threads_compaction"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:group_shared} {:elem_width 32} {:source_name "num_threads_compaction"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: bool;

var {:source_name "all_threads_converged"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:group_shared} {:elem_width 32} {:source_name "all_threads_converged"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: bool;

var {:source_name "compact_second_chunk"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:group_shared} {:elem_width 32} {:source_name "compact_second_chunk"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: bool;

var {:source_name "s_left"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:group_shared} {:elem_width 32} {:source_name "s_left"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: bool;

var {:source_name "s_right"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:group_shared} {:elem_width 32} {:source_name "s_right"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: bool;

var {:source_name "s_left_count"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:group_shared} {:elem_width 32} {:source_name "s_left_count"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: bool;

var {:source_name "s_right_count"} {:group_shared} $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:group_shared} {:elem_width 32} {:source_name "s_right_count"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: bool;

const _WATCHED_OFFSET: bv32;

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

function FADD32(bv32, bv32) : bv32;

function FDIV32(bv32, bv32) : bv32;

function FEQ64(bv64, bv64) : bool;

function FLT32(bv32, bv32) : bool;

function FLT64(bv64, bv64) : bool;

function FMUL32(bv32, bv32) : bv32;

function FP32_CONV64(bv32) : bv64;

function FSUB32(bv32, bv32) : bv32;

function FUNO32(bv32, bv32) : bool;

function SI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvashr"} BV32_ASHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "bisectKernelLarge_MultIntervals"} {:kernel} $_Z31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_f($n: bv32, $precision: bv32);
  requires !_READ_HAS_OCCURRED_$$g_d && !_WRITE_HAS_OCCURRED_$$g_d && !_ATOMIC_HAS_OCCURRED_$$g_d;
  requires !_READ_HAS_OCCURRED_$$g_s && !_WRITE_HAS_OCCURRED_$$g_s && !_ATOMIC_HAS_OCCURRED_$$g_s;
  requires !_READ_HAS_OCCURRED_$$blocks_mult && !_WRITE_HAS_OCCURRED_$$blocks_mult && !_ATOMIC_HAS_OCCURRED_$$blocks_mult;
  requires !_READ_HAS_OCCURRED_$$blocks_mult_sum && !_WRITE_HAS_OCCURRED_$$blocks_mult_sum && !_ATOMIC_HAS_OCCURRED_$$blocks_mult_sum;
  requires !_READ_HAS_OCCURRED_$$g_left && !_WRITE_HAS_OCCURRED_$$g_left && !_ATOMIC_HAS_OCCURRED_$$g_left;
  requires !_READ_HAS_OCCURRED_$$g_right && !_WRITE_HAS_OCCURRED_$$g_right && !_ATOMIC_HAS_OCCURRED_$$g_right;
  requires !_READ_HAS_OCCURRED_$$g_left_count && !_WRITE_HAS_OCCURRED_$$g_left_count && !_ATOMIC_HAS_OCCURRED_$$g_left_count;
  requires !_READ_HAS_OCCURRED_$$g_right_count && !_WRITE_HAS_OCCURRED_$$g_right_count && !_ATOMIC_HAS_OCCURRED_$$g_right_count;
  requires !_READ_HAS_OCCURRED_$$g_lambda && !_WRITE_HAS_OCCURRED_$$g_lambda && !_ATOMIC_HAS_OCCURRED_$$g_lambda;
  requires !_READ_HAS_OCCURRED_$$g_pos && !_WRITE_HAS_OCCURRED_$$g_pos && !_ATOMIC_HAS_OCCURRED_$$g_pos;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
  requires !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
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
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$g_lambda, $$g_pos, _TRACKING, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, _WRITE_HAS_OCCURRED_$$g_lambda, _WRITE_READ_BENIGN_FLAG_$$g_lambda, _WRITE_READ_BENIGN_FLAG_$$g_lambda, _WRITE_HAS_OCCURRED_$$g_pos, _WRITE_READ_BENIGN_FLAG_$$g_pos, _WRITE_READ_BENIGN_FLAG_$$g_pos;



implementation {:source_name "bisectKernelLarge_MultIntervals"} {:kernel} $_Z31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_f($n: bv32, $precision: bv32)
{
  var $.0$1: bv32;
  var $.0$2: bv32;
  var $left_count.0$1: bv32;
  var $left_count.0$2: bv32;
  var $right.0$1: bv32;
  var $right.0$2: bv32;
  var $left.0$1: bv32;
  var $left.0$2: bv32;
  var $mid.0$1: bv32;
  var $mid.0$2: bv32;
  var $right_count.0$1: bv32;
  var $right_count.0$2: bv32;
  var $is_active_second.0$1: bv32;
  var $is_active_second.0$2: bv32;
  var $left_count.1$1: bv32;
  var $left_count.1$2: bv32;
  var $right.1$1: bv32;
  var $right.1$2: bv32;
  var $left.1$1: bv32;
  var $left.1$2: bv32;
  var $mid.2$1: bv32;
  var $mid.2$2: bv32;
  var $right_count.1$1: bv32;
  var $right_count.1$2: bv32;
  var $mid.i.i.0$1: bv32;
  var $mid.i.i.0$2: bv32;
  var $mid.1$1: bv32;
  var $mid.1$2: bv32;
  var $delta.i.0$1: bv32;
  var $delta.i.0$2: bv32;
  var $count.i.0$1: bv32;
  var $count.i.0$2: bv32;
  var $rem.i.0$1: bv32;
  var $rem.i.0$2: bv32;
  var $i.i.0$1: bv32;
  var $i.i.0$2: bv32;
  var $delta.i.2$1: bv32;
  var $delta.i.2$2: bv32;
  var $count.i.2$1: bv32;
  var $count.i.2$2: bv32;
  var $delta.i.1$1: bv32;
  var $delta.i.1$2: bv32;
  var $count.i.1$1: bv32;
  var $count.i.1$2: bv32;
  var $k.i.0$1: bv32;
  var $k.i.0$2: bv32;
  var $0$1: bv32;
  var $0$2: bv32;
  var $mid_count.2$1: bv32;
  var $mid_count.2$2: bv32;
  var $mid.5$1: bv32;
  var $mid.5$2: bv32;
  var $is_active_second.4$1: bv32;
  var $is_active_second.4$2: bv32;
  var $1$1: bv32;
  var $1$2: bv32;
  var $2$1: bv64;
  var $2$2: bv64;
  var $mid.i.i.i.0$1: bv32;
  var $mid.i.i.i.0$2: bv32;
  var $is_active_second.1$1: bv32;
  var $is_active_second.1$2: bv32;
  var $3$1: bv32;
  var $3$2: bv32;
  var $4$1: bv64;
  var $4$2: bv64;
  var $mid.i.i1.i.0$1: bv32;
  var $mid.i.i1.i.0$2: bv32;
  var $5$1: bv32;
  var $5$2: bv32;
  var $6$1: bv64;
  var $6$2: bv64;
  var $mid.i.i7.i.0$1: bv32;
  var $mid.i.i7.i.0$2: bv32;
  var $mid_count.1$1: bv32;
  var $mid_count.1$2: bv32;
  var $mid.4$1: bv32;
  var $mid.4$2: bv32;
  var $is_active_second.3$1: bv32;
  var $is_active_second.3$2: bv32;
  var $mid_count.0$1: bv32;
  var $mid_count.0$2: bv32;
  var $mid.3$1: bv32;
  var $mid.3$2: bv32;
  var $is_active_second.2$1: bv32;
  var $is_active_second.2$2: bv32;
  var $offset.i.0$1: bv32;
  var $offset.i.0$2: bv32;
  var $d.i.0$1: bv32;
  var $d.i.0$2: bv32;
  var $offset.i.1$1: bv32;
  var $offset.i.1$2: bv32;
  var $d1.i.0$1: bv32;
  var $d1.i.0$2: bv32;
  var $.01$1: bv32;
  var $.01$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v101$1: bool;
  var v101$2: bool;
  var v103$1: bool;
  var v103$2: bool;
  var v104$1: bool;
  var v104$2: bool;
  var v102$1: bv32;
  var v102$2: bv32;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v22$1: bv32;
  var v22$2: bv32;
  var v8$1: bv64;
  var v8$2: bv64;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv64;
  var v10$2: bv64;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bv32;
  var v27$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv32;
  var v32$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bool;
  var v34$2: bool;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bv32;
  var v36$2: bv32;
  var v43$1: bool;
  var v43$2: bool;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: bool;
  var v40$2: bool;
  var v41$1: bv32;
  var v41$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v51$1: bool;
  var v51$2: bool;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bv32;
  var v53$2: bv32;
  var v54$1: bool;
  var v54$2: bool;
  var v55$1: bool;
  var v55$2: bool;
  var v56$1: bv32;
  var v56$2: bv32;
  var v57$1: bv32;
  var v57$2: bv32;
  var v58$1: bv32;
  var v58$2: bv32;
  var v59$1: bool;
  var v59$2: bool;
  var v60$1: bv32;
  var v60$2: bv32;
  var v61$1: bv32;
  var v61$2: bv32;
  var v62$1: bv32;
  var v62$2: bv32;
  var v63$1: bv64;
  var v63$2: bv64;
  var v64$1: bool;
  var v64$2: bool;
  var v65$1: bool;
  var v65$2: bool;
  var v66$1: bv32;
  var v66$2: bv32;
  var v67$1: bv32;
  var v67$2: bv32;
  var v68$1: bool;
  var v68$2: bool;
  var v69$1: bool;
  var v69$2: bool;
  var v70$1: bv32;
  var v70$2: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v72$1: bv32;
  var v72$2: bv32;
  var v73$1: bool;
  var v73$2: bool;
  var v74$1: bv32;
  var v74$2: bv32;
  var v75$1: bv32;
  var v75$2: bv32;
  var v76$1: bv32;
  var v76$2: bv32;
  var v77$1: bv64;
  var v77$2: bv64;
  var v78$1: bool;
  var v78$2: bool;
  var v79$1: bool;
  var v79$2: bool;
  var v80$1: bv32;
  var v80$2: bv32;
  var v81$1: bv32;
  var v81$2: bv32;
  var v82$1: bool;
  var v82$2: bool;
  var v83$1: bv32;
  var v83$2: bv32;
  var v84$1: bv32;
  var v84$2: bv32;
  var v85$1: bv32;
  var v85$2: bv32;
  var v86$1: bool;
  var v86$2: bool;
  var v87$1: bv32;
  var v87$2: bv32;
  var v88$1: bv32;
  var v88$2: bv32;
  var v89$1: bv32;
  var v89$2: bv32;
  var v90$1: bv64;
  var v90$2: bv64;
  var v91$1: bool;
  var v91$2: bool;
  var v92$1: bool;
  var v92$2: bool;
  var v93$1: bv32;
  var v93$2: bv32;
  var v94$1: bv32;
  var v94$2: bv32;
  var v95$1: bool;
  var v95$2: bool;
  var v96$1: bv32;
  var v96$2: bv32;
  var v97$1: bv32;
  var v97$2: bv32;
  var v98$1: bool;
  var v98$2: bool;
  var v99$1: bv32;
  var v99$2: bv32;
  var v105$1: bv32;
  var v105$2: bv32;
  var v106$1: bv32;
  var v106$2: bv32;
  var v107$1: bv32;
  var v107$2: bv32;
  var v108$1: bool;
  var v108$2: bool;
  var v109$1: bv32;
  var v109$2: bv32;
  var v110$1: bool;
  var v110$2: bool;
  var v112$1: bv32;
  var v112$2: bv32;
  var v111$1: bv32;
  var v111$2: bv32;
  var v113$1: bv32;
  var v113$2: bv32;
  var v114$1: bv32;
  var v114$2: bv32;
  var v115$1: bv32;
  var v115$2: bv32;
  var v116$1: bool;
  var v116$2: bool;
  var v117$1: bool;
  var v117$2: bool;
  var v118$1: bv32;
  var v118$2: bv32;
  var v119$1: bv32;
  var v119$2: bv32;
  var v120$1: bool;
  var v120$2: bool;
  var v121$1: bv32;
  var v121$2: bv32;
  var v122$1: bv32;
  var v122$2: bv32;
  var v123$1: bv32;
  var v123$2: bv32;
  var v124$1: bv32;
  var v124$2: bv32;
  var v125$1: bool;
  var v125$2: bool;
  var v126$1: bv64;
  var v126$2: bv64;
  var v127$1: bv32;
  var v127$2: bv32;
  var v128$1: bv64;
  var v128$2: bv64;
  var v129$1: bv32;
  var v129$2: bv32;
  var v130$1: bool;
  var v130$2: bool;
  var v131$1: bv32;
  var v131$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v133$1: bv32;
  var v133$2: bv32;
  var v134$1: bv32;
  var v134$2: bv32;
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
  var p47$1: bool;
  var p47$2: bool;
  var p48$1: bool;
  var p48$2: bool;
  var p49$1: bool;
  var p49$2: bool;
  var p50$1: bool;
  var p50$2: bool;
  var p51$1: bool;
  var p51$2: bool;
  var p52$1: bool;
  var p52$2: bool;
  var p53$1: bool;
  var p53$2: bool;
  var p54$1: bool;
  var p54$2: bool;
  var p55$1: bool;
  var p55$2: bool;
  var p56$1: bool;
  var p56$2: bool;
  var p57$1: bool;
  var p57$2: bool;
  var p58$1: bool;
  var p58$2: bool;
  var p59$1: bool;
  var p59$2: bool;
  var p60$1: bool;
  var p60$2: bool;
  var p61$1: bool;
  var p61$2: bool;
  var p62$1: bool;
  var p62$2: bool;
  var p63$1: bool;
  var p63$2: bool;
  var p64$1: bool;
  var p64$2: bool;
  var p65$1: bool;
  var p65$2: bool;
  var p66$1: bool;
  var p66$2: bool;
  var p67$1: bool;
  var p67$2: bool;
  var p68$1: bool;
  var p68$2: bool;
  var p69$1: bool;
  var p69$2: bool;
  var p70$1: bool;
  var p70$2: bool;
  var p71$1: bool;
  var p71$2: bool;
  var p72$1: bool;
  var p72$2: bool;
  var p73$1: bool;
  var p73$2: bool;
  var p74$1: bool;
  var p74$2: bool;
  var p75$1: bool;
  var p75$2: bool;
  var p76$1: bool;
  var p76$2: bool;
  var p77$1: bool;
  var p77$2: bool;
  var p78$1: bool;
  var p78$2: bool;
  var p79$1: bool;
  var p79$2: bool;
  var p80$1: bool;
  var p80$2: bool;
  var p81$1: bool;
  var p81$2: bool;
  var p82$1: bool;
  var p82$2: bool;
  var p83$1: bool;
  var p83$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$$23: bool;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$$23: bool;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0: bool;


  __partitioned_block_$0_0:
    v0$1 := 0bv32 == local_id_x$1;
    v0$2 := 0bv32 == local_id_x$2;
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
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v1$1 := (if p0$1 then _HAVOC_bv32$1 else v1$1);
    v1$2 := (if p0$2 then _HAVOC_bv32$2 else v1$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(p0$1, 0bv32, v1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_88"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(p0$2, 0bv32, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] := (if p0$1 then v1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p0$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_bv32$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(p0$1, 0bv32, v2$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_89"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(p0$2, 0bv32, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[1bv1][0bv32] := (if p0$1 then v2$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v2$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v3$1 := (if p0$1 then _HAVOC_bv32$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_bv32$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(p0$1, 0bv32, v3$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_90"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(p0$2, 0bv32, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[1bv1][0bv32] := (if p0$1 then v3$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v3$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(p0$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_91"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(p0$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} true;
    v4$1 := (if p0$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[1bv1][0bv32] else v4$1);
    v4$2 := (if p0$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v4$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(p0$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_92"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(p0$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} true;
    v5$1 := (if p0$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] else v5$1);
    v5$2 := (if p0$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v5$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p0$1, 0bv32, BV32_SUB(v4$1, v5$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_93"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p0$2, 0bv32, BV32_SUB(v4$2, v5$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] := (if p0$1 then BV32_SUB(v4$1, v5$1) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then BV32_SUB(v4$2, v5$2) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p0$1, 0bv32, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_94"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p0$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][0bv32] := (if p0$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p0$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_95"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p0$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v6$1 := (if p0$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v6$1);
    v6$2 := (if p0$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v6$2);
    v7$1 := (if p0$1 then 0bv32 == BV32_AND(v6$1, BV32_SUB(v6$1, 1bv32)) else v7$1);
    v7$2 := (if p0$2 then 0bv32 == BV32_AND(v6$2, BV32_SUB(v6$2, 1bv32)) else v7$2);
    p1$1 := (if p0$1 && v7$1 then v7$1 else p1$1);
    p1$2 := (if p0$2 && v7$2 then v7$2 else p1$2);
    p2$1 := (if p0$1 && !v7$1 then !v7$1 else p2$1);
    p2$2 := (if p0$2 && !v7$2 then !v7$2 else p2$2);
    $.0$1 := (if p1$1 then v6$1 else $.0$1);
    $.0$2 := (if p1$2 then v6$2 else $.0$2);
    v8$1 := (if p2$1 then FP32_CONV64(SI32_TO_FP32(v6$1)) else v8$1);
    v8$2 := (if p2$2 then FP32_CONV64(SI32_TO_FP32(v6$2)) else v8$2);
    call {:sourceloc_num 15} v9$1, v9$2 := $__bugle_frexp_exp(p2$1, v8$1, p2$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__bugle_frexp_exp"} true;
    call {:sourceloc_num 16} v10$1, v10$2 := $__bugle_frexp_frac(p2$1, v8$1, p2$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__bugle_frexp_frac"} true;
    $.0$1 := (if p2$1 then BV32_SHL(1bv32, v9$1) else $.0$1);
    $.0$2 := (if p2$2 then BV32_SHL(1bv32, v9$2) else $.0$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p0$1, 0bv32, $.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_96"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p0$2, 0bv32, $.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32] := (if p0$1 then $.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then $.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p0$1, 0bv32, 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_97"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p0$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32] := (if p0$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p0$1, 0bv32, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p0$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32] := (if p0$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 23} true;
    v11$1 := $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32];
    v11$2 := $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32];
    v12$1 := BV32_ULT(local_id_x$1, v11$1);
    v12$2 := BV32_ULT(local_id_x$2, v11$2);
    p4$1 := (if v12$1 then v12$1 else p4$1);
    p4$2 := (if v12$2 then v12$2 else p4$2);
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 25} true;
    v13$1 := (if p4$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] else v13$1);
    v13$2 := (if p4$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v13$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p4$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p4$2 then _HAVOC_bv32$2 else v14$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p4$1, local_id_x$1, v14$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_81"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p4$2, local_id_x$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p4$1 then v14$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v14$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 28} true;
    v15$1 := (if p4$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] else v15$1);
    v15$2 := (if p4$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v15$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v16$1 := (if p4$1 then _HAVOC_bv32$1 else v16$1);
    v16$2 := (if p4$2 then _HAVOC_bv32$2 else v16$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p4$1, local_id_x$1, v16$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p4$2, local_id_x$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p4$1 then v16$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v16$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 31} true;
    v17$1 := (if p4$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] else v17$1);
    v17$2 := (if p4$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v17$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v18$1 := (if p4$1 then _HAVOC_bv32$1 else v18$1);
    v18$2 := (if p4$2 then _HAVOC_bv32$2 else v18$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p4$1, local_id_x$1, v18$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p4$2, local_id_x$2, v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p4$1 then v18$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v18$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 34} true;
    v19$1 := (if p4$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[1bv1][0bv32] else v19$1);
    v19$2 := (if p4$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v19$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v20$1 := (if p4$1 then _HAVOC_bv32$1 else v20$1);
    v20$2 := (if p4$2 then _HAVOC_bv32$2 else v20$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p4$1, local_id_x$1, v20$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_87"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p4$2, local_id_x$2, v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p4$1 then v20$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v20$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$0_2;

  __partitioned_block_$0_2:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    $left_count.0$1, $right.0$1, $left.0$1, $mid.0$1, $right_count.0$1, $is_active_second.0$1 := v21$1, v22$1, v23$1, 0bv32, v24$1, 0bv32;
    $left_count.0$2, $right.0$2, $left.0$2, $mid.0$2, $right_count.0$2, $is_active_second.0$2 := v21$2, v22$2, v23$2, 0bv32, v24$2, 0bv32;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$7_0;

  __partitioned_block_$7_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b242 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b241 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b240 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assert {:tag "noread"} _b239 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b238 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b237 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b236 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assert {:tag "noread"} _b235 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b234 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b233 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b232 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "noread"} _b231 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b230 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b229 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b228 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "noread"} _b227 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b226 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b225 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b224 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assert {:tag "noread"} _b223 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b222 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b221 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b220 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assert {:tag "noread"} _b219 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b218 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b217 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b216 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assert {:tag "noread"} _b215 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b214 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> _WATCHED_OFFSET == BV32_ADD(1bv32, local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(1bv32, BV32_ADD(local_id_x$1, group_size_x)) || _WATCHED_OFFSET == BV32_ADD(1bv32, local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(1bv32, local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(1bv32, local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(1bv32, local_id_x$1);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b213 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b212 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "noread"} _b211 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b210 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b209 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b208 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assert {:tag "noread"} _b207 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assert {:tag "predicatedEquality"} _b206 ==> p6$1 && p6$2 ==> v126$1 == v126$2;
    assert {:tag "predicatedEquality"} _b205 ==> p6$1 && p6$2 ==> v125$1 == v125$2;
    assert {:tag "predicatedEquality"} _b204 ==> p6$1 && p6$2 ==> v124$1 == v124$2;
    assert {:tag "predicatedEquality"} _b203 ==> p6$1 && p6$2 ==> v123$1 == v123$2;
    assert {:tag "predicatedEquality"} _b202 ==> p6$1 && p6$2 ==> v122$1 == v122$2;
    assert {:tag "predicatedEquality"} _b201 ==> p6$1 && p6$2 ==> v121$1 == v121$2;
    assert {:tag "predicatedEquality"} _b200 ==> p6$1 && p6$2 ==> v120$1 == v120$2;
    assert {:tag "predicatedEquality"} _b199 ==> p6$1 && p6$2 ==> v119$1 == v119$2;
    assert {:tag "predicatedEquality"} _b198 ==> p6$1 && p6$2 ==> v118$1 == v118$2;
    assert {:tag "predicatedEquality"} _b197 ==> p6$1 && p6$2 ==> v117$1 == v117$2;
    assert {:tag "predicatedEquality"} _b196 ==> p6$1 && p6$2 ==> v116$1 == v116$2;
    assert {:tag "predicatedEquality"} _b195 ==> p6$1 && p6$2 ==> v115$1 == v115$2;
    assert {:tag "predicatedEquality"} _b194 ==> p6$1 && p6$2 ==> v114$1 == v114$2;
    assert {:tag "predicatedEquality"} _b193 ==> p6$1 && p6$2 ==> v113$1 == v113$2;
    assert {:tag "predicatedEquality"} _b192 ==> p6$1 && p6$2 ==> v111$1 == v111$2;
    assert {:tag "predicatedEquality"} _b191 ==> p6$1 && p6$2 ==> v112$1 == v112$2;
    assert {:tag "predicatedEquality"} _b190 ==> p6$1 && p6$2 ==> v110$1 == v110$2;
    assert {:tag "predicatedEquality"} _b189 ==> p6$1 && p6$2 ==> v109$1 == v109$2;
    assert {:tag "predicatedEquality"} _b188 ==> p6$1 && p6$2 ==> v108$1 == v108$2;
    assert {:tag "predicatedEquality"} _b187 ==> p6$1 && p6$2 ==> v107$1 == v107$2;
    assert {:tag "predicatedEquality"} _b186 ==> p6$1 && p6$2 ==> v106$1 == v106$2;
    assert {:tag "predicatedEquality"} _b185 ==> p6$1 && p6$2 ==> v105$1 == v105$2;
    assert {:tag "predicatedEquality"} _b184 ==> p6$1 && p6$2 ==> v99$1 == v99$2;
    assert {:tag "predicatedEquality"} _b183 ==> p6$1 && p6$2 ==> v98$1 == v98$2;
    assert {:tag "predicatedEquality"} _b182 ==> p6$1 && p6$2 ==> v97$1 == v97$2;
    assert {:tag "predicatedEquality"} _b181 ==> p6$1 && p6$2 ==> v96$1 == v96$2;
    assert {:tag "predicatedEquality"} _b180 ==> p6$1 && p6$2 ==> v95$1 == v95$2;
    assert {:tag "predicatedEquality"} _b179 ==> p6$1 && p6$2 ==> v92$1 == v92$2;
    assert {:tag "predicatedEquality"} _b178 ==> p6$1 && p6$2 ==> v91$1 == v91$2;
    assert {:tag "predicatedEquality"} _b177 ==> p6$1 && p6$2 ==> v90$1 == v90$2;
    assert {:tag "predicatedEquality"} _b176 ==> p6$1 && p6$2 ==> v89$1 == v89$2;
    assert {:tag "predicatedEquality"} _b175 ==> p6$1 && p6$2 ==> v86$1 == v86$2;
    assert {:tag "predicatedEquality"} _b174 ==> p6$1 && p6$2 ==> v82$1 == v82$2;
    assert {:tag "predicatedEquality"} _b173 ==> p6$1 && p6$2 ==> v79$1 == v79$2;
    assert {:tag "predicatedEquality"} _b172 ==> p6$1 && p6$2 ==> v78$1 == v78$2;
    assert {:tag "predicatedEquality"} _b171 ==> p6$1 && p6$2 ==> v77$1 == v77$2;
    assert {:tag "predicatedEquality"} _b170 ==> p6$1 && p6$2 ==> v76$1 == v76$2;
    assert {:tag "predicatedEquality"} _b169 ==> p6$1 && p6$2 ==> v73$1 == v73$2;
    assert {:tag "predicatedEquality"} _b168 ==> p6$1 && p6$2 ==> v69$1 == v69$2;
    assert {:tag "predicatedEquality"} _b167 ==> p6$1 && p6$2 ==> v68$1 == v68$2;
    assert {:tag "predicatedEquality"} _b166 ==> p6$1 && p6$2 ==> v65$1 == v65$2;
    assert {:tag "predicatedEquality"} _b165 ==> p6$1 && p6$2 ==> v64$1 == v64$2;
    assert {:tag "predicatedEquality"} _b164 ==> p6$1 && p6$2 ==> v63$1 == v63$2;
    assert {:tag "predicatedEquality"} _b163 ==> p6$1 && p6$2 ==> v62$1 == v62$2;
    assert {:tag "predicatedEquality"} _b162 ==> p6$1 && p6$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b161 ==> p6$1 && p6$2 ==> v55$1 == v55$2;
    assert {:tag "predicatedEquality"} _b160 ==> p6$1 && p6$2 ==> v54$1 == v54$2;
    assert {:tag "predicatedEquality"} _b159 ==> p6$1 && p6$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b158 ==> p6$1 && p6$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b157 ==> p6$1 && p6$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b156 ==> p6$1 && p6$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b155 ==> p6$1 && p6$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b154 ==> p6$1 && p6$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b153 ==> p6$1 && p6$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b152 ==> p6$1 && p6$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b151 ==> p6$1 && p6$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b150 ==> p6$1 && p6$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b149 ==> p6$1 && p6$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b148 ==> p6$1 && p6$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b147 ==> p6$1 && p6$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b146 ==> p6$1 && p6$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b145 ==> p6$1 && p6$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b144 ==> p6$1 && p6$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b143 ==> p6$1 && p6$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b142 ==> p6$1 && p6$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b141 ==> p6$1 && p6$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b140 ==> p6$1 && p6$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b139 ==> p6$1 && p6$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b138 ==> p6$1 && p6$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b137 ==> p6$1 && p6$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b136 ==> p6$1 && p6$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b135 ==> p6$1 && p6$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b134 ==> p6$1 && p6$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b133 ==> p6$1 && p6$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b132 ==> p6$1 && p6$2 ==> v102$1 == v102$2;
    assert {:tag "predicatedEquality"} _b131 ==> p6$1 && p6$2 ==> v104$1 == v104$2;
    assert {:tag "predicatedEquality"} _b130 ==> p6$1 && p6$2 ==> v103$1 == v103$2;
    assert {:tag "predicatedEquality"} _b129 ==> p6$1 && p6$2 ==> v101$1 == v101$2;
    assert {:tag "predicatedEquality"} _b128 ==> p6$1 && p6$2 ==> v100$1 == v100$2;
    assert {:tag "predicatedEquality"} _b127 ==> p6$1 && p6$2 ==> $.01$1 == $.01$2;
    assert {:tag "predicatedEquality"} _b126 ==> p6$1 && p6$2 ==> $d1.i.0$1 == $d1.i.0$2;
    assert {:tag "predicatedEquality"} _b125 ==> p6$1 && p6$2 ==> $offset.i.1$1 == $offset.i.1$2;
    assert {:tag "predicatedEquality"} _b124 ==> p6$1 && p6$2 ==> $d.i.0$1 == $d.i.0$2;
    assert {:tag "predicatedEquality"} _b123 ==> p6$1 && p6$2 ==> $offset.i.0$1 == $offset.i.0$2;
    assert {:tag "predicatedEquality"} _b122 ==> p6$1 && p6$2 ==> $is_active_second.2$1 == $is_active_second.2$2;
    assert {:tag "predicatedEquality"} _b121 ==> p6$1 && p6$2 ==> $mid.3$1 == $mid.3$2;
    assert {:tag "predicatedEquality"} _b120 ==> p6$1 && p6$2 ==> $mid_count.0$1 == $mid_count.0$2;
    assert {:tag "predicatedEquality"} _b119 ==> p6$1 && p6$2 ==> $is_active_second.3$1 == $is_active_second.3$2;
    assert {:tag "predicatedEquality"} _b118 ==> p6$1 && p6$2 ==> $mid.4$1 == $mid.4$2;
    assert {:tag "predicatedEquality"} _b117 ==> p6$1 && p6$2 ==> $mid_count.1$1 == $mid_count.1$2;
    assert {:tag "predicatedEquality"} _b116 ==> p6$1 && p6$2 ==> $mid.i.i7.i.0$1 == $mid.i.i7.i.0$2;
    assert {:tag "predicatedEquality"} _b115 ==> p6$1 && p6$2 ==> $6$1 == $6$2;
    assert {:tag "predicatedEquality"} _b114 ==> p6$1 && p6$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b113 ==> p6$1 && p6$2 ==> $mid.i.i1.i.0$1 == $mid.i.i1.i.0$2;
    assert {:tag "predicatedEquality"} _b112 ==> p6$1 && p6$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b111 ==> p6$1 && p6$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b110 ==> p6$1 && p6$2 ==> $is_active_second.1$1 == $is_active_second.1$2;
    assert {:tag "predicatedEquality"} _b109 ==> p6$1 && p6$2 ==> $mid.i.i.i.0$1 == $mid.i.i.i.0$2;
    assert {:tag "predicatedEquality"} _b108 ==> p6$1 && p6$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b107 ==> p6$1 && p6$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b106 ==> p6$1 && p6$2 ==> $is_active_second.4$1 == $is_active_second.4$2;
    assert {:tag "predicatedEquality"} _b105 ==> p6$1 && p6$2 ==> $mid.5$1 == $mid.5$2;
    assert {:tag "predicatedEquality"} _b104 ==> p6$1 && p6$2 ==> $mid_count.2$1 == $mid_count.2$2;
    assert {:tag "predicatedEquality"} _b103 ==> p6$1 && p6$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b102 ==> p6$1 && p6$2 ==> $k.i.0$1 == $k.i.0$2;
    assert {:tag "predicatedEquality"} _b101 ==> p6$1 && p6$2 ==> $count.i.1$1 == $count.i.1$2;
    assert {:tag "predicatedEquality"} _b100 ==> p6$1 && p6$2 ==> $delta.i.1$1 == $delta.i.1$2;
    assert {:tag "predicatedEquality"} _b99 ==> p6$1 && p6$2 ==> $count.i.2$1 == $count.i.2$2;
    assert {:tag "predicatedEquality"} _b98 ==> p6$1 && p6$2 ==> $delta.i.2$1 == $delta.i.2$2;
    assert {:tag "predicatedEquality"} _b97 ==> p6$1 && p6$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b96 ==> p6$1 && p6$2 ==> $rem.i.0$1 == $rem.i.0$2;
    assert {:tag "predicatedEquality"} _b95 ==> p6$1 && p6$2 ==> $count.i.0$1 == $count.i.0$2;
    assert {:tag "predicatedEquality"} _b94 ==> p6$1 && p6$2 ==> $delta.i.0$1 == $delta.i.0$2;
    assert {:tag "predicatedEquality"} _b93 ==> p6$1 && p6$2 ==> $mid.1$1 == $mid.1$2;
    assert {:tag "predicatedEquality"} _b92 ==> p6$1 && p6$2 ==> $mid.i.i.0$1 == $mid.i.i.0$2;
    assert {:tag "predicatedEquality"} _b91 ==> p6$1 && p6$2 ==> $right_count.1$1 == $right_count.1$2;
    assert {:tag "predicatedEquality"} _b90 ==> p6$1 && p6$2 ==> $mid.2$1 == $mid.2$2;
    assert {:tag "predicatedEquality"} _b89 ==> p6$1 && p6$2 ==> $left.1$1 == $left.1$2;
    assert {:tag "predicatedEquality"} _b88 ==> p6$1 && p6$2 ==> $right.1$1 == $right.1$2;
    assert {:tag "predicatedEquality"} _b87 ==> p6$1 && p6$2 ==> $left_count.1$1 == $left_count.1$2;
    assert {:tag "predicatedEquality"} _b86 ==> p6$1 && p6$2 ==> $is_active_second.0$1 == $is_active_second.0$2;
    assert {:tag "predicatedEquality"} _b85 ==> p6$1 && p6$2 ==> $right_count.0$1 == $right_count.0$2;
    assert {:tag "predicatedEquality"} _b84 ==> p6$1 && p6$2 ==> $mid.0$1 == $mid.0$2;
    assert {:tag "predicatedEquality"} _b83 ==> p6$1 && p6$2 ==> $left.0$1 == $left.0$2;
    assert {:tag "predicatedEquality"} _b82 ==> p6$1 && p6$2 ==> $right.0$1 == $right.0$2;
    assert {:tag "predicatedEquality"} _b81 ==> p6$1 && p6$2 ==> $left_count.0$1 == $left_count.0$2;
    assert {:tag "loopPredicateEquality"} _b80 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2;
    assert {:tag "loopPredicateEquality"} _b79 ==> p6$1 == p6$2;
    assert {:tag "pow2NotZero"} _b78 ==> v109$2 != 0bv32;
    assert {:tag "pow2"} _b77 ==> v109$2 == 0bv32 || BV32_AND(v109$2, BV32_SUB(v109$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b76 ==> v109$1 != 0bv32;
    assert {:tag "pow2"} _b75 ==> v109$1 == 0bv32 || BV32_AND(v109$1, BV32_SUB(v109$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b74 ==> v102$2 != 0bv32;
    assert {:tag "pow2"} _b73 ==> v102$2 == 0bv32 || BV32_AND(v102$2, BV32_SUB(v102$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b72 ==> v102$1 != 0bv32;
    assert {:tag "pow2"} _b71 ==> v102$1 == 0bv32 || BV32_AND(v102$1, BV32_SUB(v102$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b70 ==> $d1.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b69 ==> $d1.i.0$2 == 0bv32 || BV32_AND($d1.i.0$2, BV32_SUB($d1.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b68 ==> $d1.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b67 ==> $d1.i.0$1 == 0bv32 || BV32_AND($d1.i.0$1, BV32_SUB($d1.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b66 ==> $offset.i.1$2 != 0bv32;
    assert {:tag "pow2"} _b65 ==> $offset.i.1$2 == 0bv32 || BV32_AND($offset.i.1$2, BV32_SUB($offset.i.1$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b64 ==> $offset.i.1$1 != 0bv32;
    assert {:tag "pow2"} _b63 ==> $offset.i.1$1 == 0bv32 || BV32_AND($offset.i.1$1, BV32_SUB($offset.i.1$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b62 ==> $d.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b61 ==> $d.i.0$2 == 0bv32 || BV32_AND($d.i.0$2, BV32_SUB($d.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b60 ==> $d.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b59 ==> $d.i.0$1 == 0bv32 || BV32_AND($d.i.0$1, BV32_SUB($d.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b58 ==> $offset.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b57 ==> $offset.i.0$2 == 0bv32 || BV32_AND($offset.i.0$2, BV32_SUB($offset.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b56 ==> $offset.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b55 ==> $offset.i.0$1 == 0bv32 || BV32_AND($offset.i.0$1, BV32_SUB($offset.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b0 ==> 1bv32 != v36$1 ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b0 ==> 1bv32 != v36$2 ==> p6$2;
    assert {:block_sourceloc} {:sourceloc_num 39} p6$1 ==> true;
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p6$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p6$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v25$1 := (if p6$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v25$1);
    v25$2 := (if p6$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v25$2);
    v26$1 := (if p6$1 then BV32_ULT(local_id_x$1, v25$1) else v26$1);
    v26$2 := (if p6$2 then BV32_ULT(local_id_x$2, v25$2) else v26$2);
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
    p16$1 := false;
    p16$2 := false;
    p65$1 := false;
    p65$2 := false;
    p69$1 := false;
    p69$2 := false;
    p81$1 := false;
    p81$2 := false;
    p82$1 := false;
    p82$2 := false;
    p83$1 := false;
    p83$2 := false;
    p8$1 := (if p6$1 && v26$1 then v26$1 else p8$1);
    p8$2 := (if p6$2 && v26$2 then v26$2 else p8$2);
    p7$1 := (if p6$1 && !v26$1 then !v26$1 else p7$1);
    p7$2 := (if p6$2 && !v26$2 then !v26$2 else p7$2);
    $left_count.1$1, $right.1$1, $left.1$1, $mid.2$1, $right_count.1$1 := (if p7$1 then $left_count.0$1 else $left_count.1$1), (if p7$1 then $right.0$1 else $right.1$1), (if p7$1 then $left.0$1 else $left.1$1), (if p7$1 then $mid.0$1 else $mid.2$1), (if p7$1 then $right_count.0$1 else $right_count.1$1);
    $left_count.1$2, $right.1$2, $left.1$2, $mid.2$2, $right_count.1$2 := (if p7$2 then $left_count.0$2 else $left_count.1$2), (if p7$2 then $right.0$2 else $right.1$2), (if p7$2 then $left.0$2 else $left.1$2), (if p7$2 then $mid.0$2 else $mid.2$2), (if p7$2 then $right_count.0$2 else $right_count.1$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p8$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p8$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    v27$1 := (if p8$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] else v27$1);
    v27$2 := (if p8$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v27$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p8$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p8$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    v28$1 := (if p8$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] else v28$1);
    v28$2 := (if p8$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v28$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p8$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p8$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    v29$1 := (if p8$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] else v29$1);
    v29$2 := (if p8$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v29$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p8$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p8$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    v30$1 := (if p8$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] else v30$1);
    v30$2 := (if p8$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v30$2);
    v31$1 := (if p8$1 then FLT32(v28$1, v27$1) || FLT32(v27$1, v28$1) || FUNO32(v27$1, v28$1) else v31$1);
    v31$2 := (if p8$2 then FLT32(v28$2, v27$2) || FLT32(v27$2, v28$2) || FUNO32(v27$2, v28$2) else v31$2);
    p9$1 := (if p8$1 && v31$1 then v31$1 else p9$1);
    p9$2 := (if p8$2 && v31$2 then v31$2 else p9$2);
    p12$1 := (if p8$1 && !v31$1 then !v31$1 else p12$1);
    p12$2 := (if p8$2 && !v31$2 then !v31$2 else p12$2);
    call {:sourceloc_num 47} v32$1, v32$2 := $_Z6sign_ff(p9$1, v27$1, p9$2, v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 48} v33$1, v33$2 := $_Z6sign_ff(p9$1, v28$1, p9$2, v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v34$1 := (if p9$1 then v32$1 == v33$1 else v34$1);
    v34$2 := (if p9$2 then v32$2 == v33$2 else v34$2);
    p11$1 := (if p9$1 && v34$1 then v34$1 else p11$1);
    p11$2 := (if p9$2 && v34$2 then v34$2 else p11$2);
    p10$1 := (if p9$1 && !v34$1 then !v34$1 else p10$1);
    p10$2 := (if p9$2 && !v34$2 then !v34$2 else p10$2);
    $mid.i.i.0$1 := (if p10$1 then FMUL32(FADD32(v27$1, v28$1), 1056964608bv32) else $mid.i.i.0$1);
    $mid.i.i.0$2 := (if p10$2 then FMUL32(FADD32(v27$2, v28$2), 1056964608bv32) else $mid.i.i.0$2);
    $mid.i.i.0$1 := (if p11$1 then FADD32(v27$1, FMUL32(FSUB32(v28$1, v27$1), 1056964608bv32)) else $mid.i.i.0$1);
    $mid.i.i.0$2 := (if p11$2 then FADD32(v27$2, FMUL32(FSUB32(v28$2, v27$2), 1056964608bv32)) else $mid.i.i.0$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p9$1, 0bv32, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p9$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p9$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32] := (if p9$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p9$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    $mid.1$1 := (if p9$1 then $mid.i.i.0$1 else $mid.1$1);
    $mid.1$2 := (if p9$2 then $mid.i.i.0$2 else $mid.1$2);
    v35$1 := (if p12$1 then BV32_UGT(BV32_SUB(v30$1, v29$1), 1bv32) else v35$1);
    v35$2 := (if p12$2 then BV32_UGT(BV32_SUB(v30$2, v29$2), 1bv32) else v35$2);
    p14$1 := (if p12$1 && v35$1 then v35$1 else p14$1);
    p14$2 := (if p12$2 && v35$2 then v35$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p14$1, 0bv32, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p14$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p14$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32] := (if p14$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p14$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    $mid.1$1 := (if p12$1 then $mid.0$1 else $mid.1$1);
    $mid.1$2 := (if p12$2 then $mid.0$2 else $mid.1$2);
    $left_count.1$1, $right.1$1, $left.1$1, $mid.2$1, $right_count.1$1 := (if p8$1 then v29$1 else $left_count.1$1), (if p8$1 then v28$1 else $right.1$1), (if p8$1 then v27$1 else $left.1$1), (if p8$1 then $mid.1$1 else $mid.2$1), (if p8$1 then v30$1 else $right_count.1$1);
    $left_count.1$2, $right.1$2, $left.1$2, $mid.2$2, $right_count.1$2 := (if p8$2 then v29$2 else $left_count.1$2), (if p8$2 then v28$2 else $right.1$2), (if p8$2 then v27$2 else $left.1$2), (if p8$2 then $mid.1$2 else $mid.2$2), (if p8$2 then v30$2 else $right_count.1$2);
    goto __partitioned_block_$7_1;

  __partitioned_block_$7_1:
    call {:sourceloc_num 59} $bugle_barrier_duplicated_2(1bv1, 1bv1, p6$1, p6$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p6$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 60} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p6$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} true;
    v36$1 := (if p6$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32] else v36$1);
    v36$2 := (if p6$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v36$2);
    v37$1 := (if p6$1 then 1bv32 == v36$1 else v37$1);
    v37$2 := (if p6$2 then 1bv32 == v36$2 else v37$2);
    p6$1 := (if p6$1 && v37$1 then !v37$1 else p6$1);
    p6$2 := (if p6$2 && v37$2 then !v37$2 else p6$2);
    p15$1 := (if p6$1 && !v37$1 then !v37$1 else p15$1);
    p15$2 := (if p6$2 && !v37$2 then !v37$2 else p15$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p15$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p15$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v38$1 := (if p15$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v38$1);
    v38$2 := (if p15$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v38$2);
    $delta.i.0$1, $count.i.0$1, $rem.i.0$1, $i.i.0$1 := (if p15$1 then 1065353216bv32 else $delta.i.0$1), (if p15$1 then 0bv32 else $count.i.0$1), (if p15$1 then $n else $rem.i.0$1), (if p15$1 then 0bv32 else $i.i.0$1);
    $delta.i.0$2, $count.i.0$2, $rem.i.0$2, $i.i.0$2 := (if p15$2 then 1065353216bv32 else $delta.i.0$2), (if p15$2 then 0bv32 else $count.i.0$2), (if p15$2 then $n else $rem.i.0$2), (if p15$2 then 0bv32 else $i.i.0$2);
    p16$1 := (if p15$1 then true else p16$1);
    p16$2 := (if p15$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0 := _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0 := _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto __partitioned_block_$18_0;

  __partitioned_block_$18_0:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b275 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0 == _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "disabledMaintainsInstrumentation"} _b274 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$__partitioned_block_$18_0 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b273 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b272 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "noread"} _b271 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "disabledMaintainsInstrumentation"} _b270 ==> !p15$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0 == _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "disabledMaintainsInstrumentation"} _b269 ==> !p15$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$__partitioned_block_$18_0 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b268 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b267 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "noread"} _b266 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "predicatedEquality"} _b265 ==> p16$1 && p16$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b264 ==> p16$1 && p16$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b263 ==> p16$1 && p16$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b262 ==> p16$1 && p16$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b261 ==> p16$1 && p16$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b260 ==> p16$1 && p16$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b259 ==> p16$1 && p16$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b258 ==> p16$1 && p16$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b257 ==> p16$1 && p16$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b256 ==> p16$1 && p16$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b255 ==> p16$1 && p16$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b254 ==> p16$1 && p16$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b253 ==> p16$1 && p16$2 ==> $k.i.0$1 == $k.i.0$2;
    assert {:tag "predicatedEquality"} _b252 ==> p16$1 && p16$2 ==> $count.i.1$1 == $count.i.1$2;
    assert {:tag "predicatedEquality"} _b251 ==> p16$1 && p16$2 ==> $delta.i.1$1 == $delta.i.1$2;
    assert {:tag "predicatedEquality"} _b250 ==> p16$1 && p16$2 ==> $count.i.2$1 == $count.i.2$2;
    assert {:tag "predicatedEquality"} _b249 ==> p16$1 && p16$2 ==> $delta.i.2$1 == $delta.i.2$2;
    assert {:tag "predicatedEquality"} _b248 ==> p16$1 && p16$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b247 ==> p16$1 && p16$2 ==> $rem.i.0$1 == $rem.i.0$2;
    assert {:tag "predicatedEquality"} _b246 ==> p16$1 && p16$2 ==> $count.i.0$1 == $count.i.0$2;
    assert {:tag "predicatedEquality"} _b245 ==> p16$1 && p16$2 ==> $delta.i.0$1 == $delta.i.0$2;
    assert {:tag "loopPredicateEquality"} _b244 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p16$1 == p16$2;
    assert {:tag "loopPredicateEquality"} _b243 ==> p16$1 == p16$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p15"} true;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b13 ==> 1bv32 != v36$1 && BV32_ULT($i.i.0$1, $n) ==> p16$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b13 ==> 1bv32 != v36$2 && BV32_ULT($i.i.0$2, $n) ==> p16$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p16$1 ==> _b12 ==> p16$1 ==> 1bv32 != v36$1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p16$2 ==> _b12 ==> p16$2 ==> 1bv32 != v36$2;
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b11 ==> BV32_UGE($rem.i.0$1, $n);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b11 ==> BV32_UGE($rem.i.0$2, $n);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b10 ==> BV32_ULE($rem.i.0$1, $n);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b10 ==> BV32_ULE($rem.i.0$2, $n);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b9 ==> BV32_SGE($rem.i.0$1, $n);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b9 ==> BV32_SGE($rem.i.0$2, $n);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b8 ==> BV32_SLE($rem.i.0$1, $n);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b8 ==> BV32_SLE($rem.i.0$2, $n);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b7 ==> BV32_UGE($i.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b7 ==> BV32_UGE($i.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b6 ==> BV32_ULE($i.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b6 ==> BV32_ULE($i.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b5 ==> BV32_SGE($i.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b5 ==> BV32_SGE($i.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p16$1 ==> _b4 ==> BV32_SLE($i.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p16$2 ==> _b4 ==> BV32_SLE($i.i.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p16$1 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.i.0$1, 0bv32) == BV32_SUB($i.i.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p16$2 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.i.0$2, 0bv32) == BV32_SUB($i.i.0$1, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p16$1 ==> _b2 ==> BV32_SUB($i.i.0$1, 0bv32) == BV32_SUB($i.i.0$2, 0bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p16$2 ==> _b2 ==> BV32_SUB($i.i.0$2, 0bv32) == BV32_SUB($i.i.0$1, 0bv32);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p16$1 ==> _b1 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $i.i.0$1) == BV32_AND(BV32_SUB(group_size_x, 1bv32), 0bv32);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p16$2 ==> _b1 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $i.i.0$2) == BV32_AND(BV32_SUB(group_size_x, 1bv32), 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 64} p16$1 ==> true;
    v39$1 := (if p16$1 then BV32_ULT($i.i.0$1, $n) else v39$1);
    v39$2 := (if p16$2 then BV32_ULT($i.i.0$2, $n) else v39$2);
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
    p35$1 := false;
    p35$2 := false;
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
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p46$1 := false;
    p46$2 := false;
    p47$1 := false;
    p47$2 := false;
    p48$1 := false;
    p48$2 := false;
    p49$1 := false;
    p49$2 := false;
    p50$1 := false;
    p50$2 := false;
    p51$1 := false;
    p51$2 := false;
    p52$1 := false;
    p52$2 := false;
    p53$1 := false;
    p53$2 := false;
    p54$1 := false;
    p54$2 := false;
    p55$1 := false;
    p55$2 := false;
    p56$1 := false;
    p56$2 := false;
    p57$1 := false;
    p57$2 := false;
    p58$1 := false;
    p58$2 := false;
    p59$1 := false;
    p59$2 := false;
    p60$1 := false;
    p60$2 := false;
    p61$1 := false;
    p61$2 := false;
    p62$1 := false;
    p62$2 := false;
    p63$1 := false;
    p63$2 := false;
    p64$1 := false;
    p64$2 := false;
    p77$1 := false;
    p77$2 := false;
    p78$1 := false;
    p78$2 := false;
    p79$1 := false;
    p79$2 := false;
    p80$1 := false;
    p80$2 := false;
    p17$1 := (if p16$1 && v39$1 then v39$1 else p17$1);
    p17$2 := (if p16$2 && v39$2 then v39$2 else p17$2);
    p16$1 := (if p16$1 && !v39$1 then v39$1 else p16$1);
    p16$2 := (if p16$2 && !v39$2 then v39$2 else p16$2);
    goto __partitioned_block_$18_1;

  __partitioned_block_$18_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_11(1bv1, 1bv1, p17$1, p17$2);
    v40$1 := (if p17$1 then BV32_ULT(BV32_ADD($i.i.0$1, local_id_x$1), $n) else v40$1);
    v40$2 := (if p17$2 then BV32_ULT(BV32_ADD($i.i.0$2, local_id_x$2), $n) else v40$2);
    p19$1 := (if p17$1 && v40$1 then v40$1 else p19$1);
    p19$2 := (if p17$2 && v40$2 then v40$2 else p19$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v41$1 := (if p19$1 then _HAVOC_bv32$1 else v41$1);
    v41$2 := (if p19$2 then _HAVOC_bv32$2 else v41$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p19$1, local_id_x$1, v41$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p19$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 69} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p19$2, local_id_x$2, v41$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p19$1 then v41$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p19$2 then v41$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v42$1 := (if p19$1 then _HAVOC_bv32$1 else v42$1);
    v42$2 := (if p19$2 then _HAVOC_bv32$2 else v42$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p19$1, local_id_x$1, v42$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p19$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p19$2, local_id_x$2, v42$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p19$1 then v42$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p19$2 then v42$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$18_2;

  __partitioned_block_$18_2:
    call {:sourceloc_num 73} $bugle_barrier_duplicated_12(1bv1, 1bv1, p17$1, p17$2);
    v43$1 := (if p17$1 then BV32_ULT(local_id_x$1, v38$1) else v43$1);
    v43$2 := (if p17$2 then BV32_ULT(local_id_x$2, v38$2) else v43$2);
    p21$1 := (if p17$1 && v43$1 then v43$1 else p21$1);
    p21$2 := (if p17$2 && v43$2 then v43$2 else p21$2);
    p20$1 := (if p17$1 && !v43$1 then !v43$1 else p20$1);
    p20$2 := (if p17$2 && !v43$2 then !v43$2 else p20$2);
    $delta.i.2$1, $count.i.2$1 := (if p20$1 then $delta.i.0$1 else $delta.i.2$1), (if p20$1 then $count.i.0$1 else $count.i.2$1);
    $delta.i.2$2, $count.i.2$2 := (if p20$2 then $delta.i.0$2 else $delta.i.2$2), (if p20$2 then $count.i.0$2 else $count.i.2$2);
    $delta.i.1$1, $count.i.1$1, $k.i.0$1 := (if p21$1 then $delta.i.0$1 else $delta.i.1$1), (if p21$1 then $count.i.0$1 else $count.i.1$1), (if p21$1 then 0bv32 else $k.i.0$1);
    $delta.i.1$2, $count.i.1$2, $k.i.0$2 := (if p21$2 then $delta.i.0$2 else $delta.i.1$2), (if p21$2 then $count.i.0$2 else $count.i.1$2), (if p21$2 then 0bv32 else $k.i.0$2);
    p22$1 := (if p21$1 then true else p22$1);
    p22$2 := (if p21$2 then true else p22$2);
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$$23 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$$23 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $23;

  $23:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b277 ==> !p21$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right$ghost$$23 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assert {:tag "disabledMaintainsInstrumentation"} _b276 ==> !p21$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left$ghost$$23 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p22"} {:dominator_predicate "p21"} true;
    assert p22$1 ==> p16$1;
    assert p22$2 ==> p16$2;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b54 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> BV32_ULT(local_id_x$1, v38$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b53 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> BV32_ULT($i.i.0$1, $n);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b52 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b51 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> BV32_ULT(local_id_x$1, v38$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> BV32_ULT($i.i.0$1, $n);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b48 ==> 1bv32 != v36$1 && BV32_ULT($i.i.0$1, $n) && BV32_ULT(local_id_x$1, v38$1) && BV32_ULT($k.i.0$1, $0$1) ==> p22$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b48 ==> 1bv32 != v36$2 && BV32_ULT($i.i.0$2, $n) && BV32_ULT(local_id_x$2, v38$2) && BV32_ULT($k.i.0$2, $0$2) ==> p22$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p22$1 ==> _b47 ==> p22$1 ==> 1bv32 != v36$1 && BV32_ULT($i.i.0$1, $n) && BV32_ULT(local_id_x$1, v38$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p22$2 ==> _b47 ==> p22$2 ==> 1bv32 != v36$2 && BV32_ULT($i.i.0$2, $n) && BV32_ULT(local_id_x$2, v38$2);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b46 ==> BV32_UGE($k.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b46 ==> BV32_UGE($k.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b45 ==> BV32_ULE($k.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b45 ==> BV32_ULE($k.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b44 ==> BV32_SGE($k.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b44 ==> BV32_SGE($k.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p22$1 ==> _b43 ==> BV32_SLE($k.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p22$2 ==> _b43 ==> BV32_SLE($k.i.0$2, 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 75} p22$1 ==> true;
    v44$1 := (if p22$1 then BV32_ULT($rem.i.0$1, group_size_x) else v44$1);
    v44$2 := (if p22$2 then BV32_ULT($rem.i.0$2, group_size_x) else v44$2);
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p24$1 := (if p22$1 && v44$1 then v44$1 else p24$1);
    p24$2 := (if p22$2 && v44$2 then v44$2 else p24$2);
    p23$1 := (if p22$1 && !v44$1 then !v44$1 else p23$1);
    p23$2 := (if p22$2 && !v44$2 then !v44$2 else p23$2);
    $0$1 := (if p23$1 then group_size_x else $0$1);
    $0$2 := (if p23$2 then group_size_x else $0$2);
    $0$1 := (if p24$1 then $rem.i.0$1 else $0$1);
    $0$2 := (if p24$2 then $rem.i.0$2 else $0$2);
    v45$1 := (if p22$1 then BV32_ULT($k.i.0$1, $0$1) else v45$1);
    v45$2 := (if p22$2 then BV32_ULT($k.i.0$2, $0$2) else v45$2);
    p25$1 := (if p22$1 && v45$1 then v45$1 else p25$1);
    p25$2 := (if p22$2 && v45$2 then v45$2 else p25$2);
    p22$1 := (if p22$1 && !v45$1 then v45$1 else p22$1);
    p22$2 := (if p22$2 && !v45$2 then v45$2 else p22$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p25$1, $k.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p25$2, $k.i.0$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    v46$1 := (if p25$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][$k.i.0$1] else v46$1);
    v46$2 := (if p25$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v46$2);
    call {:sourceloc} {:sourceloc_num 81} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p25$1, $k.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 81} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p25$2, $k.i.0$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    v47$1 := (if p25$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][$k.i.0$1] else v47$1);
    v47$2 := (if p25$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v47$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p25$1, $k.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][$k.i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 82} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p25$2, $k.i.0$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    v48$1 := (if p25$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][$k.i.0$1] else v48$1);
    v48$2 := (if p25$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$k.i.0$2] else v48$2);
    v49$1 := (if p25$1 then FSUB32(FSUB32(v46$1, $mid.2$1), FDIV32(FMUL32(v47$1, v48$1), $delta.i.1$1)) else v49$1);
    v49$2 := (if p25$2 then FSUB32(FSUB32(v46$2, $mid.2$2), FDIV32(FMUL32(v47$2, v48$2), $delta.i.1$2)) else v49$2);
    $delta.i.1$1, $count.i.1$1, $k.i.0$1 := (if p25$1 then v49$1 else $delta.i.1$1), (if p25$1 then BV32_ADD($count.i.1$1, (if FLT32(v49$1, 0bv32) then 1bv32 else 0bv32)) else $count.i.1$1), (if p25$1 then BV32_ADD($k.i.0$1, 1bv32) else $k.i.0$1);
    $delta.i.1$2, $count.i.1$2, $k.i.0$2 := (if p25$2 then v49$2 else $delta.i.1$2), (if p25$2 then BV32_ADD($count.i.1$2, (if FLT32(v49$2, 0bv32) then 1bv32 else 0bv32)) else $count.i.1$2), (if p25$2 then BV32_ADD($k.i.0$2, 1bv32) else $k.i.0$2);
    p22$1 := (if p25$1 then true else p22$1);
    p22$2 := (if p25$2 then true else p22$2);
    goto $23.backedge, $23.tail;

  $23.tail:
    assume !p22$1 && !p22$2;
    $delta.i.2$1, $count.i.2$1 := (if p21$1 then $delta.i.1$1 else $delta.i.2$1), (if p21$1 then $count.i.1$1 else $count.i.2$1);
    $delta.i.2$2, $count.i.2$2 := (if p21$2 then $delta.i.1$2 else $delta.i.2$2), (if p21$2 then $count.i.1$2 else $count.i.2$2);
    $delta.i.0$1, $count.i.0$1, $rem.i.0$1, $i.i.0$1 := (if p17$1 then $delta.i.2$1 else $delta.i.0$1), (if p17$1 then $count.i.2$1 else $count.i.0$1), (if p17$1 then BV32_SUB($rem.i.0$1, group_size_x) else $rem.i.0$1), (if p17$1 then BV32_ADD($i.i.0$1, group_size_x) else $i.i.0$1);
    $delta.i.0$2, $count.i.0$2, $rem.i.0$2, $i.i.0$2 := (if p17$2 then $delta.i.2$2 else $delta.i.0$2), (if p17$2 then $count.i.2$2 else $count.i.0$2), (if p17$2 then BV32_SUB($rem.i.0$2, group_size_x) else $rem.i.0$2), (if p17$2 then BV32_ADD($i.i.0$2, group_size_x) else $i.i.0$2);
    p16$1 := (if p17$1 then true else p16$1);
    p16$2 := (if p17$2 then true else p16$2);
    goto $18.backedge, __partitioned_block_$18.tail_0;

  __partitioned_block_$18.tail_0:
    assume !p16$1 && !p16$2;
    goto __partitioned_block_$18.tail_1;

  __partitioned_block_$18.tail_1:
    call {:sourceloc_num 86} $bugle_barrier_duplicated_3(1bv1, 1bv1, p15$1, p15$2);
    call {:sourceloc} {:sourceloc_num 87} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p15$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 87} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p15$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v50$1 := (if p15$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v50$1);
    v50$2 := (if p15$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v50$2);
    v51$1 := (if p15$1 then BV32_ULT(local_id_x$1, v50$1) else v51$1);
    v51$2 := (if p15$2 then BV32_ULT(local_id_x$2, v50$2) else v51$2);
    p27$1 := (if p15$1 && v51$1 then v51$1 else p27$1);
    p27$2 := (if p15$2 && v51$2 then v51$2 else p27$2);
    p26$1 := (if p15$1 && !v51$1 then !v51$1 else p26$1);
    p26$2 := (if p15$2 && !v51$2 then !v51$2 else p26$2);
    $mid_count.2$1, $mid.5$1, $is_active_second.4$1 := (if p26$1 then $count.i.0$1 else $mid_count.2$1), (if p26$1 then $mid.2$1 else $mid.5$1), (if p26$1 then $is_active_second.0$1 else $is_active_second.4$1);
    $mid_count.2$2, $mid.5$2, $is_active_second.4$2 := (if p26$2 then $count.i.0$2 else $mid_count.2$2), (if p26$2 then $mid.2$2 else $mid.5$2), (if p26$2 then $is_active_second.0$2 else $is_active_second.4$2);
    v52$1 := (if p27$1 then FLT32($right.1$1, $left.1$1) || FLT32($left.1$1, $right.1$1) || FUNO32($left.1$1, $right.1$1) else v52$1);
    v52$2 := (if p27$2 then FLT32($right.1$2, $left.1$2) || FLT32($left.1$2, $right.1$2) || FUNO32($left.1$2, $right.1$2) else v52$2);
    p28$1 := (if p27$1 && v52$1 then v52$1 else p28$1);
    p28$2 := (if p27$2 && v52$2 then v52$2 else p28$2);
    p60$1 := (if p27$1 && !v52$1 then !v52$1 else p60$1);
    p60$2 := (if p27$2 && !v52$2 then !v52$2 else p60$2);
    call {:sourceloc} {:sourceloc_num 90} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p28$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 90} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p28$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v53$1 := (if p28$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v53$1);
    v53$2 := (if p28$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v53$2);
    v54$1 := (if p28$1 then $left_count.1$1 != $count.i.0$1 else v54$1);
    v54$2 := (if p28$2 then $left_count.1$2 != $count.i.0$2 else v54$2);
    p29$1 := (if p28$1 && v54$1 then v54$1 else p29$1);
    p29$2 := (if p28$2 && v54$2 then v54$2 else p29$2);
    p41$1 := (if p28$1 && !v54$1 then !v54$1 else p41$1);
    p41$2 := (if p28$2 && !v54$2 then !v54$2 else p41$2);
    v55$1 := (if p29$1 then $count.i.0$1 != $right_count.1$1 else v55$1);
    v55$2 := (if p29$2 then $count.i.0$2 != $right_count.1$2 else v55$2);
    p30$1 := (if p29$1 && v55$1 then v55$1 else p30$1);
    p30$2 := (if p29$2 && v55$2 then v55$2 else p30$2);
    p41$1 := (if p29$1 && !v55$1 then !v55$1 else p41$1);
    p41$2 := (if p29$2 && !v55$2 then !v55$2 else p41$2);
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p30$1, local_id_x$1, $left_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p30$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p30$2, local_id_x$2, $left_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p30$1 then $left_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p30$2 then $left_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 94} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p30$1, local_id_x$1, $count.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p30$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 94} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p30$2, local_id_x$2, $count.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p30$1 then $count.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p30$2 then $count.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 95} v56$1, v56$2 := $abs(p30$1, FSUB32($mid.2$1, $left.1$1), p30$2, FSUB32($mid.2$2, $left.1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 96} v57$1, v57$2 := $abs(p30$1, $left.1$1, p30$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 97} v58$1, v58$2 := $abs(p30$1, $mid.2$1, p30$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v59$1 := (if p30$1 then FLT32(v57$1, v58$1) else v59$1);
    v59$2 := (if p30$2 then FLT32(v57$2, v58$2) else v59$2);
    p32$1 := (if p30$1 && v59$1 then v59$1 else p32$1);
    p32$2 := (if p30$2 && v59$2 then v59$2 else p32$2);
    p31$1 := (if p30$1 && !v59$1 then !v59$1 else p31$1);
    p31$2 := (if p30$2 && !v59$2 then !v59$2 else p31$2);
    call {:sourceloc_num 101} v61$1, v61$2 := $abs(p31$1, $left.1$1, p31$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $1$1 := (if p31$1 then v61$1 else $1$1);
    $1$2 := (if p31$2 then v61$2 else $1$2);
    call {:sourceloc_num 99} v60$1, v60$2 := $abs(p32$1, $mid.2$1, p32$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $1$1 := (if p32$1 then v60$1 else $1$1);
    $1$2 := (if p32$2 then v60$2 else $1$2);
    v62$1 := (if p30$1 then FMUL32($1$1, $precision) else v62$1);
    v62$2 := (if p30$2 then FMUL32($1$2, $precision) else v62$2);
    v63$1 := (if p30$1 then FP32_CONV64(v56$1) else v63$1);
    v63$2 := (if p30$2 then FP32_CONV64(v56$2) else v63$2);
    v64$1 := (if p30$1 then FLT64(4063729574967324274bv64, FP32_CONV64(v62$1)) else v64$1);
    v64$2 := (if p30$2 then FLT64(4063729574967324274bv64, FP32_CONV64(v62$2)) else v64$2);
    p34$1 := (if p30$1 && v64$1 then v64$1 else p34$1);
    p34$2 := (if p30$2 && v64$2 then v64$2 else p34$2);
    p33$1 := (if p30$1 && !v64$1 then !v64$1 else p33$1);
    p33$2 := (if p30$2 && !v64$2 then !v64$2 else p33$2);
    $2$1 := (if p33$1 then 4063729574967324274bv64 else $2$1);
    $2$2 := (if p33$2 then 4063729574967324274bv64 else $2$2);
    $2$1 := (if p34$1 then FP32_CONV64(v62$1) else $2$1);
    $2$2 := (if p34$2 then FP32_CONV64(v62$2) else $2$2);
    v65$1 := (if p30$1 then FEQ64(v63$1, $2$1) || FLT64(v63$1, $2$1) else v65$1);
    v65$2 := (if p30$2 then FEQ64(v63$2, $2$2) || FLT64(v63$2, $2$2) else v65$2);
    p36$1 := (if p30$1 && v65$1 then v65$1 else p36$1);
    p36$2 := (if p30$2 && v65$2 then v65$2 else p36$2);
    p35$1 := (if p30$1 && !v65$1 then !v65$1 else p35$1);
    p35$2 := (if p30$2 && !v65$2 then !v65$2 else p35$2);
    call {:sourceloc} {:sourceloc_num 115} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p35$1, local_id_x$1, $left.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p35$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 115} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p35$2, local_id_x$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p35$1 then $left.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p35$2 then $left.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 116} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p35$1, local_id_x$1, $mid.2$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p35$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 116} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 116} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p35$2, local_id_x$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p35$1 then $mid.2$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p35$2 then $mid.2$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 107} v66$1, v66$2 := $_Z6sign_ff(p36$1, $left.1$1, p36$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 108} v67$1, v67$2 := $_Z6sign_ff(p36$1, $mid.2$1, p36$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v68$1 := (if p36$1 then v66$1 == v67$1 else v68$1);
    v68$2 := (if p36$2 then v66$2 == v67$2 else v68$2);
    p38$1 := (if p36$1 && v68$1 then v68$1 else p38$1);
    p38$2 := (if p36$2 && v68$2 then v68$2 else p38$2);
    p37$1 := (if p36$1 && !v68$1 then !v68$1 else p37$1);
    p37$2 := (if p36$2 && !v68$2 then !v68$2 else p37$2);
    $mid.i.i.i.0$1 := (if p37$1 then FMUL32(FADD32($left.1$1, $mid.2$1), 1056964608bv32) else $mid.i.i.i.0$1);
    $mid.i.i.i.0$2 := (if p37$2 then FMUL32(FADD32($left.1$2, $mid.2$2), 1056964608bv32) else $mid.i.i.i.0$2);
    $mid.i.i.i.0$1 := (if p38$1 then FADD32($left.1$1, FMUL32(FSUB32($mid.2$1, $left.1$1), 1056964608bv32)) else $mid.i.i.i.0$1);
    $mid.i.i.i.0$2 := (if p38$2 then FADD32($left.1$2, FMUL32(FSUB32($mid.2$2, $left.1$2), 1056964608bv32)) else $mid.i.i.i.0$2);
    call {:sourceloc} {:sourceloc_num 112} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p36$1, local_id_x$1, $mid.i.i.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p36$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 112} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 112} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p36$2, local_id_x$2, $mid.i.i.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p36$1 then $mid.i.i.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p36$2 then $mid.i.i.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p36$1, local_id_x$1, $mid.i.i.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p36$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p36$2, local_id_x$2, $mid.i.i.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p36$1 then $mid.i.i.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p36$2 then $mid.i.i.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p30$1, BV32_ADD(1bv32, local_id_x$1), 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p30$2, BV32_ADD(1bv32, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p30$2, BV32_ADD(1bv32, local_id_x$2), 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)] := (if p30$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)] := (if p30$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p30$1, 0bv32, 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p30$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p30$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32] := (if p30$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p30$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    $is_active_second.1$1 := (if p30$1 then 1bv32 else $is_active_second.1$1);
    $is_active_second.1$2 := (if p30$2 then 1bv32 else $is_active_second.1$2);
    p41$1 := (if p39$1 then true else p41$1);
    p41$2 := (if p39$2 then true else p41$2);
    p41$1 := (if p40$1 then true else p41$1);
    p41$2 := (if p40$2 then true else p41$2);
    call {:sourceloc} {:sourceloc_num 121} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p41$1, BV32_ADD(1bv32, local_id_x$1), 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p41$2, BV32_ADD(1bv32, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 121} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 121} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p41$2, BV32_ADD(1bv32, local_id_x$2), 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)] := (if p41$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)] := (if p41$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)]);
    v69$1 := (if p41$1 then $left_count.1$1 != $count.i.0$1 else v69$1);
    v69$2 := (if p41$2 then $left_count.1$2 != $count.i.0$2 else v69$2);
    p42$1 := (if p41$1 && v69$1 then v69$1 else p42$1);
    p42$2 := (if p41$2 && v69$2 then v69$2 else p42$2);
    p51$1 := (if p41$1 && !v69$1 then !v69$1 else p51$1);
    p51$2 := (if p41$2 && !v69$2 then !v69$2 else p51$2);
    call {:sourceloc} {:sourceloc_num 123} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p42$1, local_id_x$1, $left_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p42$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 123} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 123} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p42$2, local_id_x$2, $left_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p42$1 then $left_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p42$2 then $left_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p42$1, local_id_x$1, $count.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p42$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p42$2, local_id_x$2, $count.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p42$1 then $count.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p42$2 then $count.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 125} v70$1, v70$2 := $abs(p42$1, FSUB32($mid.2$1, $left.1$1), p42$2, FSUB32($mid.2$2, $left.1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 126} v71$1, v71$2 := $abs(p42$1, $left.1$1, p42$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 127} v72$1, v72$2 := $abs(p42$1, $mid.2$1, p42$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v73$1 := (if p42$1 then FLT32(v71$1, v72$1) else v73$1);
    v73$2 := (if p42$2 then FLT32(v71$2, v72$2) else v73$2);
    p44$1 := (if p42$1 && v73$1 then v73$1 else p44$1);
    p44$2 := (if p42$2 && v73$2 then v73$2 else p44$2);
    p43$1 := (if p42$1 && !v73$1 then !v73$1 else p43$1);
    p43$2 := (if p42$2 && !v73$2 then !v73$2 else p43$2);
    call {:sourceloc_num 131} v75$1, v75$2 := $abs(p43$1, $left.1$1, p43$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $3$1 := (if p43$1 then v75$1 else $3$1);
    $3$2 := (if p43$2 then v75$2 else $3$2);
    call {:sourceloc_num 129} v74$1, v74$2 := $abs(p44$1, $mid.2$1, p44$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $3$1 := (if p44$1 then v74$1 else $3$1);
    $3$2 := (if p44$2 then v74$2 else $3$2);
    v76$1 := (if p42$1 then FMUL32($3$1, $precision) else v76$1);
    v76$2 := (if p42$2 then FMUL32($3$2, $precision) else v76$2);
    v77$1 := (if p42$1 then FP32_CONV64(v70$1) else v77$1);
    v77$2 := (if p42$2 then FP32_CONV64(v70$2) else v77$2);
    v78$1 := (if p42$1 then FLT64(4063729574967324274bv64, FP32_CONV64(v76$1)) else v78$1);
    v78$2 := (if p42$2 then FLT64(4063729574967324274bv64, FP32_CONV64(v76$2)) else v78$2);
    p46$1 := (if p42$1 && v78$1 then v78$1 else p46$1);
    p46$2 := (if p42$2 && v78$2 then v78$2 else p46$2);
    p45$1 := (if p42$1 && !v78$1 then !v78$1 else p45$1);
    p45$2 := (if p42$2 && !v78$2 then !v78$2 else p45$2);
    $4$1 := (if p45$1 then 4063729574967324274bv64 else $4$1);
    $4$2 := (if p45$2 then 4063729574967324274bv64 else $4$2);
    $4$1 := (if p46$1 then FP32_CONV64(v76$1) else $4$1);
    $4$2 := (if p46$2 then FP32_CONV64(v76$2) else $4$2);
    v79$1 := (if p42$1 then FEQ64(v77$1, $4$1) || FLT64(v77$1, $4$1) else v79$1);
    v79$2 := (if p42$2 then FEQ64(v77$2, $4$2) || FLT64(v77$2, $4$2) else v79$2);
    p48$1 := (if p42$1 && v79$1 then v79$1 else p48$1);
    p48$2 := (if p42$2 && v79$2 then v79$2 else p48$2);
    p47$1 := (if p42$1 && !v79$1 then !v79$1 else p47$1);
    p47$2 := (if p42$2 && !v79$2 then !v79$2 else p47$2);
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p47$1, local_id_x$1, $left.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p47$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p47$2, local_id_x$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p47$1 then $left.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p47$2 then $left.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p47$1, local_id_x$1, $mid.2$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p47$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p47$2, local_id_x$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p47$1 then $mid.2$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p47$2 then $mid.2$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 137} v80$1, v80$2 := $_Z6sign_ff(p48$1, $left.1$1, p48$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 138} v81$1, v81$2 := $_Z6sign_ff(p48$1, $mid.2$1, p48$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v82$1 := (if p48$1 then v80$1 == v81$1 else v82$1);
    v82$2 := (if p48$2 then v80$2 == v81$2 else v82$2);
    p50$1 := (if p48$1 && v82$1 then v82$1 else p50$1);
    p50$2 := (if p48$2 && v82$2 then v82$2 else p50$2);
    p49$1 := (if p48$1 && !v82$1 then !v82$1 else p49$1);
    p49$2 := (if p48$2 && !v82$2 then !v82$2 else p49$2);
    $mid.i.i1.i.0$1 := (if p49$1 then FMUL32(FADD32($left.1$1, $mid.2$1), 1056964608bv32) else $mid.i.i1.i.0$1);
    $mid.i.i1.i.0$2 := (if p49$2 then FMUL32(FADD32($left.1$2, $mid.2$2), 1056964608bv32) else $mid.i.i1.i.0$2);
    $mid.i.i1.i.0$1 := (if p50$1 then FADD32($left.1$1, FMUL32(FSUB32($mid.2$1, $left.1$1), 1056964608bv32)) else $mid.i.i1.i.0$1);
    $mid.i.i1.i.0$2 := (if p50$2 then FADD32($left.1$2, FMUL32(FSUB32($mid.2$2, $left.1$2), 1056964608bv32)) else $mid.i.i1.i.0$2);
    call {:sourceloc} {:sourceloc_num 142} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p48$1, local_id_x$1, $mid.i.i1.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p48$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 142} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p48$2, local_id_x$2, $mid.i.i1.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p48$1 then $mid.i.i1.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p48$2 then $mid.i.i1.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 143} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p48$1, local_id_x$1, $mid.i.i1.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p48$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 143} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 143} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p48$2, local_id_x$2, $mid.i.i1.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p48$1 then $mid.i.i1.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p48$2 then $mid.i.i1.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p51$1, local_id_x$1, $count.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p51$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p51$2, local_id_x$2, $count.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p51$1 then $count.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p51$2 then $count.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p51$1, local_id_x$1, $right_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p51$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p51$2, local_id_x$2, $right_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p51$1 then $right_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p51$2 then $right_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 151} v83$1, v83$2 := $abs(p51$1, FSUB32($right.1$1, $mid.2$1), p51$2, FSUB32($right.1$2, $mid.2$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 152} v84$1, v84$2 := $abs(p51$1, $mid.2$1, p51$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 153} v85$1, v85$2 := $abs(p51$1, $right.1$1, p51$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v86$1 := (if p51$1 then FLT32(v84$1, v85$1) else v86$1);
    v86$2 := (if p51$2 then FLT32(v84$2, v85$2) else v86$2);
    p53$1 := (if p51$1 && v86$1 then v86$1 else p53$1);
    p53$2 := (if p51$2 && v86$2 then v86$2 else p53$2);
    p52$1 := (if p51$1 && !v86$1 then !v86$1 else p52$1);
    p52$2 := (if p51$2 && !v86$2 then !v86$2 else p52$2);
    call {:sourceloc_num 157} v88$1, v88$2 := $abs(p52$1, $mid.2$1, p52$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $5$1 := (if p52$1 then v88$1 else $5$1);
    $5$2 := (if p52$2 then v88$2 else $5$2);
    call {:sourceloc_num 155} v87$1, v87$2 := $abs(p53$1, $right.1$1, p53$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    $5$1 := (if p53$1 then v87$1 else $5$1);
    $5$2 := (if p53$2 then v87$2 else $5$2);
    v89$1 := (if p51$1 then FMUL32($5$1, $precision) else v89$1);
    v89$2 := (if p51$2 then FMUL32($5$2, $precision) else v89$2);
    v90$1 := (if p51$1 then FP32_CONV64(v83$1) else v90$1);
    v90$2 := (if p51$2 then FP32_CONV64(v83$2) else v90$2);
    v91$1 := (if p51$1 then FLT64(4063729574967324274bv64, FP32_CONV64(v89$1)) else v91$1);
    v91$2 := (if p51$2 then FLT64(4063729574967324274bv64, FP32_CONV64(v89$2)) else v91$2);
    p55$1 := (if p51$1 && v91$1 then v91$1 else p55$1);
    p55$2 := (if p51$2 && v91$2 then v91$2 else p55$2);
    p54$1 := (if p51$1 && !v91$1 then !v91$1 else p54$1);
    p54$2 := (if p51$2 && !v91$2 then !v91$2 else p54$2);
    $6$1 := (if p54$1 then 4063729574967324274bv64 else $6$1);
    $6$2 := (if p54$2 then 4063729574967324274bv64 else $6$2);
    $6$1 := (if p55$1 then FP32_CONV64(v89$1) else $6$1);
    $6$2 := (if p55$2 then FP32_CONV64(v89$2) else $6$2);
    v92$1 := (if p51$1 then FEQ64(v90$1, $6$1) || FLT64(v90$1, $6$1) else v92$1);
    v92$2 := (if p51$2 then FEQ64(v90$2, $6$2) || FLT64(v90$2, $6$2) else v92$2);
    p57$1 := (if p51$1 && v92$1 then v92$1 else p57$1);
    p57$2 := (if p51$2 && v92$2 then v92$2 else p57$2);
    p56$1 := (if p51$1 && !v92$1 then !v92$1 else p56$1);
    p56$2 := (if p51$2 && !v92$2 then !v92$2 else p56$2);
    call {:sourceloc} {:sourceloc_num 171} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p56$1, local_id_x$1, $mid.2$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p56$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 171} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 171} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p56$2, local_id_x$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p56$1 then $mid.2$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p56$2 then $mid.2$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 172} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p56$1, local_id_x$1, $right.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p56$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 172} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 172} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p56$2, local_id_x$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p56$1 then $right.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p56$2 then $right.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc_num 163} v93$1, v93$2 := $_Z6sign_ff(p57$1, $mid.2$1, p57$2, $mid.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    call {:sourceloc_num 164} v94$1, v94$2 := $_Z6sign_ff(p57$1, $right.1$1, p57$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6sign_ff"} true;
    v95$1 := (if p57$1 then v93$1 == v94$1 else v95$1);
    v95$2 := (if p57$2 then v93$2 == v94$2 else v95$2);
    p59$1 := (if p57$1 && v95$1 then v95$1 else p59$1);
    p59$2 := (if p57$2 && v95$2 then v95$2 else p59$2);
    p58$1 := (if p57$1 && !v95$1 then !v95$1 else p58$1);
    p58$2 := (if p57$2 && !v95$2 then !v95$2 else p58$2);
    $mid.i.i7.i.0$1 := (if p58$1 then FMUL32(FADD32($mid.2$1, $right.1$1), 1056964608bv32) else $mid.i.i7.i.0$1);
    $mid.i.i7.i.0$2 := (if p58$2 then FMUL32(FADD32($mid.2$2, $right.1$2), 1056964608bv32) else $mid.i.i7.i.0$2);
    $mid.i.i7.i.0$1 := (if p59$1 then FADD32($mid.2$1, FMUL32(FSUB32($right.1$1, $mid.2$1), 1056964608bv32)) else $mid.i.i7.i.0$1);
    $mid.i.i7.i.0$2 := (if p59$2 then FADD32($mid.2$2, FMUL32(FSUB32($right.1$2, $mid.2$2), 1056964608bv32)) else $mid.i.i7.i.0$2);
    call {:sourceloc} {:sourceloc_num 168} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p57$1, local_id_x$1, $mid.i.i7.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p57$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 168} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 168} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p57$2, local_id_x$2, $mid.i.i7.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p57$1 then $mid.i.i7.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p57$2 then $mid.i.i7.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 169} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p57$1, local_id_x$1, $mid.i.i7.i.0$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p57$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 169} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 169} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p57$2, local_id_x$2, $mid.i.i7.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p57$1 then $mid.i.i7.i.0$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p57$2 then $mid.i.i7.i.0$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $is_active_second.1$1 := (if p41$1 then 0bv32 else $is_active_second.1$1);
    $is_active_second.1$2 := (if p41$2 then 0bv32 else $is_active_second.1$2);
    $mid_count.1$1, $mid.4$1, $is_active_second.3$1 := (if p28$1 then $count.i.0$1 else $mid_count.1$1), (if p28$1 then $mid.2$1 else $mid.4$1), (if p28$1 then $is_active_second.1$1 else $is_active_second.3$1);
    $mid_count.1$2, $mid.4$2, $is_active_second.3$2 := (if p28$2 then $count.i.0$2 else $mid_count.1$2), (if p28$2 then $mid.2$2 else $mid.4$2), (if p28$2 then $is_active_second.1$2 else $is_active_second.3$2);
    call {:sourceloc} {:sourceloc_num 177} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p60$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 177} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 177} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p60$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v96$1 := (if p60$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v96$1);
    v96$2 := (if p60$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v96$2);
    v97$1 := (if p60$1 then BV32_SUB($right_count.1$1, $left_count.1$1) else v97$1);
    v97$2 := (if p60$2 then BV32_SUB($right_count.1$2, $left_count.1$2) else v97$2);
    v98$1 := (if p60$1 then 1bv32 == v97$1 else v98$1);
    v98$2 := (if p60$2 then 1bv32 == v97$2 else v98$2);
    p62$1 := (if p60$1 && v98$1 then v98$1 else p62$1);
    p62$2 := (if p60$2 && v98$2 then v98$2 else p62$2);
    p61$1 := (if p60$1 && !v98$1 then !v98$1 else p61$1);
    p61$2 := (if p60$2 && !v98$2 then !v98$2 else p61$2);
    v99$1 := (if p61$1 then BV32_ADD($left_count.1$1, BV32_LSHR(v97$1, 1bv32)) else v99$1);
    v99$2 := (if p61$2 then BV32_ADD($left_count.1$2, BV32_LSHR(v97$2, 1bv32)) else v99$2);
    call {:sourceloc} {:sourceloc_num 185} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p61$1, local_id_x$1, $left.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p61$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 185} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 185} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p61$2, local_id_x$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p61$1 then $left.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p61$2 then $left.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 186} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p61$1, local_id_x$1, $right.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p61$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 186} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 186} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p61$2, local_id_x$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p61$1 then $right.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p61$2 then $right.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 187} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p61$1, local_id_x$1, $left_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p61$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 187} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 187} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p61$2, local_id_x$2, $left_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p61$1 then $left_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p61$2 then $left_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 188} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p61$1, local_id_x$1, v99$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p61$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 188} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 188} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p61$2, local_id_x$2, v99$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p61$1 then v99$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p61$2 then v99$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 189} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p61$1, BV32_ADD(1bv32, local_id_x$1), 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p61$2, BV32_ADD(1bv32, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 189} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 189} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p61$2, BV32_ADD(1bv32, local_id_x$2), 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)] := (if p61$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)] := (if p61$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 190} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p61$1, 0bv32, 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p61$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 190} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 190} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p61$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32] := (if p61$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p61$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    $mid_count.0$1, $mid.3$1, $is_active_second.2$1 := (if p61$1 then v99$1 else $mid_count.0$1), (if p61$1 then $left.1$1 else $mid.3$1), (if p61$1 then 1bv32 else $is_active_second.2$1);
    $mid_count.0$2, $mid.3$2, $is_active_second.2$2 := (if p61$2 then v99$2 else $mid_count.0$2), (if p61$2 then $left.1$2 else $mid.3$2), (if p61$2 then 1bv32 else $is_active_second.2$2);
    call {:sourceloc} {:sourceloc_num 179} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p62$1, local_id_x$1, $left.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p62$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 179} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 179} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p62$2, local_id_x$2, $left.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] := (if p62$1 then $left.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p62$2 then $left.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 180} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p62$1, local_id_x$1, $right.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p62$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 180} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 180} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p62$2, local_id_x$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1] := (if p62$1 then $right.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p62$2 then $right.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 181} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p62$1, local_id_x$1, $left_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p62$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 181} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 181} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p62$2, local_id_x$2, $left_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1] := (if p62$1 then $left_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p62$2 then $left_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 182} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p62$1, local_id_x$1, $right_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p62$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 182} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p62$2, local_id_x$2, $right_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] := (if p62$1 then $right_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p62$2 then $right_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 183} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p62$1, BV32_ADD(1bv32, local_id_x$1), 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p62$2, BV32_ADD(1bv32, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 183} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 183} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p62$2, BV32_ADD(1bv32, local_id_x$2), 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)] := (if p62$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)] := (if p62$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)]);
    $mid_count.0$1, $mid.3$1, $is_active_second.2$1 := (if p62$1 then $count.i.0$1 else $mid_count.0$1), (if p62$1 then $mid.2$1 else $mid.3$1), (if p62$1 then 0bv32 else $is_active_second.2$1);
    $mid_count.0$2, $mid.3$2, $is_active_second.2$2 := (if p62$2 then $count.i.0$2 else $mid_count.0$2), (if p62$2 then $mid.2$2 else $mid.3$2), (if p62$2 then 0bv32 else $is_active_second.2$2);
    $mid_count.1$1, $mid.4$1, $is_active_second.3$1 := (if p60$1 then $mid_count.0$1 else $mid_count.1$1), (if p60$1 then $mid.3$1 else $mid.4$1), (if p60$1 then $is_active_second.2$1 else $is_active_second.3$1);
    $mid_count.1$2, $mid.4$2, $is_active_second.3$2 := (if p60$2 then $mid_count.0$2 else $mid_count.1$2), (if p60$2 then $mid.3$2 else $mid.4$2), (if p60$2 then $is_active_second.2$2 else $is_active_second.3$2);
    $mid_count.2$1, $mid.5$1, $is_active_second.4$1 := (if p27$1 then $mid_count.1$1 else $mid_count.2$1), (if p27$1 then $mid.4$1 else $mid.5$1), (if p27$1 then $is_active_second.3$1 else $is_active_second.4$1);
    $mid_count.2$2, $mid.5$2, $is_active_second.4$2 := (if p27$2 then $mid_count.1$2 else $mid_count.2$2), (if p27$2 then $mid.4$2 else $mid.5$2), (if p27$2 then $is_active_second.3$2 else $is_active_second.4$2);
    goto __partitioned_block_$18.tail_2;

  __partitioned_block_$18.tail_2:
    call {:sourceloc_num 193} $bugle_barrier_duplicated_4(1bv1, 1bv1, p15$1, p15$2);
    call {:sourceloc} {:sourceloc_num 194} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p15$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 194} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 194} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p15$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} true;
    v100$1 := (if p15$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32] else v100$1);
    v100$2 := (if p15$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v100$2);
    v101$1 := (if p15$1 then 1bv32 == v100$1 else v101$1);
    v101$2 := (if p15$2 then 1bv32 == v100$2 else v101$2);
    p64$1 := (if p15$1 && v101$1 then v101$1 else p64$1);
    p64$2 := (if p15$2 && v101$2 then v101$2 else p64$2);
    call {:sourceloc} {:sourceloc_num 196} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p64$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 196} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 196} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p64$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} true;
    v102$1 := (if p64$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32] else v102$1);
    v102$2 := (if p64$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v102$2);
    $offset.i.0$1, $d.i.0$1 := (if p64$1 then 1bv32 else $offset.i.0$1), (if p64$1 then BV32_LSHR(v102$1, 1bv32) else $d.i.0$1);
    $offset.i.0$2, $d.i.0$2 := (if p64$2 then 1bv32 else $offset.i.0$2), (if p64$2 then BV32_LSHR(v102$2, 1bv32) else $d.i.0$2);
    p65$1 := (if p64$1 then true else p65$1);
    p65$2 := (if p64$2 then true else p65$2);
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0 := _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$74_0;

  __partitioned_block_$74_0:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b299 ==> !p64$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0 == _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "disabledMaintainsInstrumentation"} _b298 ==> !p64$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$74_0 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "accessBreak"} _b297 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> local_id_x$1 == BV32_DIV(BV32_DIV(_WATCHED_OFFSET, $offset.i.0$1), 2bv32);
    assert {:tag "nowrite"} _b296 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "noread"} _b295 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "predicatedEquality"} _b294 ==> p65$1 && p65$2 ==> v107$1 == v107$2;
    assert {:tag "predicatedEquality"} _b293 ==> p65$1 && p65$2 ==> v106$1 == v106$2;
    assert {:tag "predicatedEquality"} _b292 ==> p65$1 && p65$2 ==> v105$1 == v105$2;
    assert {:tag "predicatedEquality"} _b291 ==> p65$1 && p65$2 ==> v104$1 == v104$2;
    assert {:tag "predicatedEquality"} _b290 ==> p65$1 && p65$2 ==> v103$1 == v103$2;
    assert {:tag "predicatedEquality"} _b289 ==> p65$1 && p65$2 ==> $d.i.0$1 == $d.i.0$2;
    assert {:tag "predicatedEquality"} _b288 ==> p65$1 && p65$2 ==> $offset.i.0$1 == $offset.i.0$2;
    assert {:tag "loopPredicateEquality"} _b287 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p65$1 == p65$2;
    assert {:tag "loopPredicateEquality"} _b286 ==> p65$1 == p65$2;
    assert {:tag "pow2NotZero"} _b285 ==> $d.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b284 ==> $d.i.0$2 == 0bv32 || BV32_AND($d.i.0$2, BV32_SUB($d.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b283 ==> $d.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b282 ==> $d.i.0$1 == 0bv32 || BV32_AND($d.i.0$1, BV32_SUB($d.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b281 ==> $offset.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b280 ==> $offset.i.0$2 == 0bv32 || BV32_AND($offset.i.0$2, BV32_SUB($offset.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b279 ==> $offset.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b278 ==> $offset.i.0$1 == 0bv32 || BV32_AND($offset.i.0$1, BV32_SUB($offset.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p65"} {:dominator_predicate "p64"} true;
    assert p65$1 ==> p6$1;
    assert p65$2 ==> p6$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 == v100$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 == v100$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b26 ==> 1bv32 != v36$1 && 1bv32 == v100$1 && BV32_SGT($d.i.0$1, 0bv32) ==> p65$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b26 ==> 1bv32 != v36$2 && 1bv32 == v100$2 && BV32_SGT($d.i.0$2, 0bv32) ==> p65$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p65$1 ==> _b25 ==> p65$1 ==> 1bv32 != v36$1 && 1bv32 == v100$1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p65$2 ==> _b25 ==> p65$2 ==> 1bv32 != v36$2 && 1bv32 == v100$2;
    assert {:tag "loopBound"} {:thread 1} p65$1 ==> _b24 ==> BV32_UGE($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "loopBound"} {:thread 2} p65$2 ==> _b24 ==> BV32_UGE($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "loopBound"} {:thread 1} p65$1 ==> _b23 ==> BV32_ULE($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "loopBound"} {:thread 2} p65$2 ==> _b23 ==> BV32_ULE($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "loopBound"} {:thread 1} p65$1 ==> _b22 ==> BV32_SGE($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "loopBound"} {:thread 2} p65$2 ==> _b22 ==> BV32_SGE($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "loopBound"} {:thread 1} p65$1 ==> _b21 ==> BV32_SLE($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "loopBound"} {:thread 2} p65$2 ==> _b21 ==> BV32_SLE($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p65$1 ==> _b20 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($d.i.0$1, BV32_LSHR(v102$1, 1bv32)) == BV32_SUB($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p65$2 ==> _b20 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($d.i.0$2, BV32_LSHR(v102$2, 1bv32)) == BV32_SUB($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p65$1 ==> _b19 ==> BV32_SUB($d.i.0$1, BV32_LSHR(v102$1, 1bv32)) == BV32_SUB($d.i.0$2, BV32_LSHR(v102$2, 1bv32));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p65$2 ==> _b19 ==> BV32_SUB($d.i.0$2, BV32_LSHR(v102$2, 1bv32)) == BV32_SUB($d.i.0$1, BV32_LSHR(v102$1, 1bv32));
    assert {:tag "guardNonNeg"} {:thread 1} p65$1 ==> _b18 ==> BV32_SLE(0bv32, $d.i.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p65$2 ==> _b18 ==> BV32_SLE(0bv32, $d.i.0$2);
    assert {:block_sourceloc} {:sourceloc_num 197} p65$1 ==> true;
    v103$1 := (if p65$1 then BV32_SGT($d.i.0$1, 0bv32) else v103$1);
    v103$2 := (if p65$2 then BV32_SGT($d.i.0$2, 0bv32) else v103$2);
    p66$1 := false;
    p66$2 := false;
    p67$1 := false;
    p67$2 := false;
    p68$1 := false;
    p68$2 := false;
    p66$1 := (if p65$1 && v103$1 then v103$1 else p66$1);
    p66$2 := (if p65$2 && v103$2 then v103$2 else p66$2);
    p65$1 := (if p65$1 && !v103$1 then v103$1 else p65$1);
    p65$2 := (if p65$2 && !v103$2 then v103$2 else p65$2);
    goto __partitioned_block_$74_1;

  __partitioned_block_$74_1:
    call {:sourceloc_num 199} $bugle_barrier_duplicated_10(1bv1, 1bv1, p66$1, p66$2);
    v104$1 := (if p66$1 then BV32_ULT(local_id_x$1, $d.i.0$1) else v104$1);
    v104$2 := (if p66$2 then BV32_ULT(local_id_x$2, $d.i.0$2) else v104$2);
    p68$1 := (if p66$1 && v104$1 then v104$1 else p68$1);
    p68$2 := (if p66$2 && v104$2 then v104$2 else p68$2);
    v105$1 := (if p68$1 then BV32_SUB(BV32_MUL($offset.i.0$1, BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 2bv32)), 1bv32) else v105$1);
    v105$2 := (if p68$2 then BV32_SUB(BV32_MUL($offset.i.0$2, BV32_ADD(BV32_MUL(2bv32, local_id_x$2), 2bv32)), 1bv32) else v105$2);
    call {:sourceloc} {:sourceloc_num 201} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$1, BV32_ADD(1bv32, v105$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v105$1)]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 201} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$2, BV32_ADD(1bv32, v105$2), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v105$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v106$1 := (if p68$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v105$1)] else v106$1);
    v106$2 := (if p68$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v105$2)] else v106$2);
    call {:sourceloc} {:sourceloc_num 202} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$1, BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$1, BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32)), 1bv32)), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$1, BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32)), 1bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 202} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$2, BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$2, BV32_ADD(BV32_MUL(2bv32, local_id_x$2), 1bv32)), 1bv32)), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$2, BV32_ADD(BV32_MUL(2bv32, local_id_x$2), 1bv32)), 1bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v107$1 := (if p68$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$1, BV32_ADD(BV32_MUL(2bv32, local_id_x$1), 1bv32)), 1bv32))] else v107$1);
    v107$2 := (if p68$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, BV32_SUB(BV32_MUL($offset.i.0$2, BV32_ADD(BV32_MUL(2bv32, local_id_x$2), 1bv32)), 1bv32))] else v107$2);
    call {:sourceloc} {:sourceloc_num 203} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$1, BV32_ADD(1bv32, v105$1), BV32_ADD(v106$1, v107$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v105$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$2, BV32_ADD(1bv32, v105$2));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 203} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 203} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p68$2, BV32_ADD(1bv32, v105$2), BV32_ADD(v106$2, v107$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v105$1)] := (if p68$1 then BV32_ADD(v106$1, v107$1) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v105$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v105$2)] := (if p68$2 then BV32_ADD(v106$2, v107$2) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v105$2)]);
    $offset.i.0$1, $d.i.0$1 := (if p66$1 then BV32_SHL($offset.i.0$1, 1bv32) else $offset.i.0$1), (if p66$1 then BV32_ASHR($d.i.0$1, 1bv32) else $d.i.0$1);
    $offset.i.0$2, $d.i.0$2 := (if p66$2 then BV32_SHL($offset.i.0$2, 1bv32) else $offset.i.0$2), (if p66$2 then BV32_ASHR($d.i.0$2, 1bv32) else $d.i.0$2);
    p65$1 := (if p66$1 then true else p65$1);
    p65$2 := (if p66$2 then true else p65$2);
    goto $74.backedge, $74.tail;

  $74.tail:
    assume !p65$1 && !p65$2;
    $offset.i.1$1, $d1.i.0$1 := (if p64$1 then $offset.i.0$1 else $offset.i.1$1), (if p64$1 then 2bv32 else $d1.i.0$1);
    $offset.i.1$2, $d1.i.0$2 := (if p64$2 then $offset.i.0$2 else $offset.i.1$2), (if p64$2 then 2bv32 else $d1.i.0$2);
    p69$1 := (if p64$1 then true else p69$1);
    p69$2 := (if p64$2 then true else p69$2);
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0 := _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0 := _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$79_0;

  __partitioned_block_$79_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b326 ==> !p64$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0 == _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "disabledMaintainsInstrumentation"} _b325 ==> !p64$1 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list$ghost$__partitioned_block_$79_0 == _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "nowrite"} _b324 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "noread"} _b323 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assert {:tag "predicatedEquality"} _b322 ==> p69$1 && p69$2 ==> v114$1 == v114$2;
    assert {:tag "predicatedEquality"} _b321 ==> p69$1 && p69$2 ==> v113$1 == v113$2;
    assert {:tag "predicatedEquality"} _b320 ==> p69$1 && p69$2 ==> v111$1 == v111$2;
    assert {:tag "predicatedEquality"} _b319 ==> p69$1 && p69$2 ==> v112$1 == v112$2;
    assert {:tag "predicatedEquality"} _b318 ==> p69$1 && p69$2 ==> v110$1 == v110$2;
    assert {:tag "predicatedEquality"} _b317 ==> p69$1 && p69$2 ==> v109$1 == v109$2;
    assert {:tag "predicatedEquality"} _b316 ==> p69$1 && p69$2 ==> v108$1 == v108$2;
    assert {:tag "predicatedEquality"} _b315 ==> p69$1 && p69$2 ==> $d1.i.0$1 == $d1.i.0$2;
    assert {:tag "predicatedEquality"} _b314 ==> p69$1 && p69$2 ==> $offset.i.1$1 == $offset.i.1$2;
    assert {:tag "loopPredicateEquality"} _b313 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p69$1 == p69$2;
    assert {:tag "loopPredicateEquality"} _b312 ==> p69$1 == p69$2;
    assert {:tag "pow2NotZero"} _b311 ==> v109$2 != 0bv32;
    assert {:tag "pow2"} _b310 ==> v109$2 == 0bv32 || BV32_AND(v109$2, BV32_SUB(v109$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b309 ==> v109$1 != 0bv32;
    assert {:tag "pow2"} _b308 ==> v109$1 == 0bv32 || BV32_AND(v109$1, BV32_SUB(v109$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b307 ==> $d1.i.0$2 != 0bv32;
    assert {:tag "pow2"} _b306 ==> $d1.i.0$2 == 0bv32 || BV32_AND($d1.i.0$2, BV32_SUB($d1.i.0$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b305 ==> $d1.i.0$1 != 0bv32;
    assert {:tag "pow2"} _b304 ==> $d1.i.0$1 == 0bv32 || BV32_AND($d1.i.0$1, BV32_SUB($d1.i.0$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b303 ==> $offset.i.1$2 != 0bv32;
    assert {:tag "pow2"} _b302 ==> $offset.i.1$2 == 0bv32 || BV32_AND($offset.i.1$2, BV32_SUB($offset.i.1$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b301 ==> $offset.i.1$1 != 0bv32;
    assert {:tag "pow2"} _b300 ==> $offset.i.1$1 == 0bv32 || BV32_AND($offset.i.1$1, BV32_SUB($offset.i.1$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p69"} {:dominator_predicate "p64"} true;
    assert p69$1 ==> p6$1;
    assert p69$2 ==> p6$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 == v100$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 == v100$1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list ==> 1bv32 != v36$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b38 ==> 1bv32 != v36$1 && 1bv32 == v100$1 && BV32_ULT($d1.i.0$1, v102$1) ==> p69$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b38 ==> 1bv32 != v36$2 && 1bv32 == v100$2 && BV32_ULT($d1.i.0$2, v102$2) ==> p69$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p69$1 ==> _b37 ==> p69$1 ==> 1bv32 != v36$1 && 1bv32 == v100$1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p69$2 ==> _b37 ==> p69$2 ==> 1bv32 != v36$2 && 1bv32 == v100$2;
    assert {:tag "loopBound"} {:thread 1} p69$1 ==> _b36 ==> BV32_UGE($d1.i.0$1, 2bv32);
    assert {:tag "loopBound"} {:thread 2} p69$2 ==> _b36 ==> BV32_UGE($d1.i.0$2, 2bv32);
    assert {:tag "loopBound"} {:thread 1} p69$1 ==> _b35 ==> BV32_ULE($d1.i.0$1, 2bv32);
    assert {:tag "loopBound"} {:thread 2} p69$2 ==> _b35 ==> BV32_ULE($d1.i.0$2, 2bv32);
    assert {:tag "loopBound"} {:thread 1} p69$1 ==> _b34 ==> BV32_SGE($d1.i.0$1, 2bv32);
    assert {:tag "loopBound"} {:thread 2} p69$2 ==> _b34 ==> BV32_SGE($d1.i.0$2, 2bv32);
    assert {:tag "loopBound"} {:thread 1} p69$1 ==> _b33 ==> BV32_SLE($d1.i.0$1, 2bv32);
    assert {:tag "loopBound"} {:thread 2} p69$2 ==> _b33 ==> BV32_SLE($d1.i.0$2, 2bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p69$1 ==> _b32 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($d1.i.0$1, 2bv32) == BV32_SUB($d1.i.0$2, 2bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p69$2 ==> _b32 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($d1.i.0$2, 2bv32) == BV32_SUB($d1.i.0$1, 2bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p69$1 ==> _b31 ==> BV32_SUB($d1.i.0$1, 2bv32) == BV32_SUB($d1.i.0$2, 2bv32);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p69$2 ==> _b31 ==> BV32_SUB($d1.i.0$2, 2bv32) == BV32_SUB($d1.i.0$1, 2bv32);
    assert {:block_sourceloc} {:sourceloc_num 206} p69$1 ==> true;
    v108$1 := (if p69$1 then BV32_ULT($d1.i.0$1, v102$1) else v108$1);
    v108$2 := (if p69$2 then BV32_ULT($d1.i.0$2, v102$2) else v108$2);
    p70$1 := false;
    p70$2 := false;
    p71$1 := false;
    p71$2 := false;
    p72$1 := false;
    p72$2 := false;
    p73$1 := false;
    p73$2 := false;
    p74$1 := false;
    p74$2 := false;
    p75$1 := false;
    p75$2 := false;
    p76$1 := false;
    p76$2 := false;
    p70$1 := (if p69$1 && v108$1 then v108$1 else p70$1);
    p70$2 := (if p69$2 && v108$2 then v108$2 else p70$2);
    p69$1 := (if p69$1 && !v108$1 then v108$1 else p69$1);
    p69$2 := (if p69$2 && !v108$2 then v108$2 else p69$2);
    v109$1 := (if p70$1 then BV32_LSHR($offset.i.1$1, 1bv32) else v109$1);
    v109$2 := (if p70$2 then BV32_LSHR($offset.i.1$2, 1bv32) else v109$2);
    goto __partitioned_block_$79_1;

  __partitioned_block_$79_1:
    call {:sourceloc_num 208} $bugle_barrier_duplicated_9(1bv1, 1bv1, p70$1, p70$2);
    v110$1 := (if p70$1 then BV32_ULT(local_id_x$1, BV32_SUB($d1.i.0$1, 1bv32)) else v110$1);
    v110$2 := (if p70$2 then BV32_ULT(local_id_x$2, BV32_SUB($d1.i.0$2, 1bv32)) else v110$2);
    p72$1 := (if p70$1 && v110$1 then v110$1 else p72$1);
    p72$2 := (if p70$2 && v110$2 then v110$2 else p72$2);
    v111$1 := (if p72$1 then BV32_SUB(BV32_MUL(v109$1, BV32_ADD(local_id_x$1, 1bv32)), 1bv32) else v111$1);
    v111$2 := (if p72$2 then BV32_SUB(BV32_MUL(v109$2, BV32_ADD(local_id_x$2, 1bv32)), 1bv32) else v111$2);
    v112$1 := (if p72$1 then BV32_ADD(v111$1, BV32_LSHR(v109$1, 1bv32)) else v112$1);
    v112$2 := (if p72$2 then BV32_ADD(v111$2, BV32_LSHR(v109$2, 1bv32)) else v112$2);
    call {:sourceloc} {:sourceloc_num 210} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$1, BV32_ADD(1bv32, v112$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v112$1)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 210} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 210} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$2, BV32_ADD(1bv32, v112$2), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v112$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v113$1 := (if p72$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v112$1)] else v113$1);
    v113$2 := (if p72$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v112$2)] else v113$2);
    call {:sourceloc} {:sourceloc_num 211} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$1, BV32_ADD(1bv32, v111$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v111$1)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 211} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 211} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$2, BV32_ADD(1bv32, v111$2), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v111$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v114$1 := (if p72$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v111$1)] else v114$1);
    v114$2 := (if p72$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v111$2)] else v114$2);
    call {:sourceloc} {:sourceloc_num 212} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$1, BV32_ADD(1bv32, v112$1), BV32_ADD(v113$1, v114$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v112$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$2, BV32_ADD(1bv32, v112$2));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 212} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 212} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p72$2, BV32_ADD(1bv32, v112$2), BV32_ADD(v113$2, v114$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v112$1)] := (if p72$1 then BV32_ADD(v113$1, v114$1) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, v112$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v112$2)] := (if p72$2 then BV32_ADD(v113$2, v114$2) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, v112$2)]);
    $offset.i.1$1, $d1.i.0$1 := (if p70$1 then v109$1 else $offset.i.1$1), (if p70$1 then BV32_SHL($d1.i.0$1, 1bv32) else $d1.i.0$1);
    $offset.i.1$2, $d1.i.0$2 := (if p70$2 then v109$2 else $offset.i.1$2), (if p70$2 then BV32_SHL($d1.i.0$2, 1bv32) else $d1.i.0$2);
    p69$1 := (if p70$1 then true else p69$1);
    p69$2 := (if p70$2 then true else p69$2);
    goto $79.backedge, __partitioned_block_$79.tail_0;

  __partitioned_block_$79.tail_0:
    assume !p69$1 && !p69$2;
    goto __partitioned_block_$79.tail_1;

  __partitioned_block_$79.tail_1:
    call {:sourceloc_num 215} $bugle_barrier_duplicated_8(1bv1, 1bv1, p64$1, p64$2);
    call {:sourceloc} {:sourceloc_num 216} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p64$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 216} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 216} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p64$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v115$1 := (if p64$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v115$1);
    v115$2 := (if p64$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v115$2);
    v116$1 := (if p64$1 then BV32_ULT(local_id_x$1, v115$1) else v116$1);
    v116$2 := (if p64$2 then BV32_ULT(local_id_x$2, v115$2) else v116$2);
    p74$1 := (if p64$1 && v116$1 then v116$1 else p74$1);
    p74$2 := (if p64$2 && v116$2 then v116$2 else p74$2);
    v117$1 := (if p74$1 then 1bv32 == $is_active_second.4$1 else v117$1);
    v117$2 := (if p74$2 then 1bv32 == $is_active_second.4$2 else v117$2);
    p76$1 := (if p74$1 && v117$1 then v117$1 else p76$1);
    p76$2 := (if p74$2 && v117$2 then v117$2 else p76$2);
    call {:sourceloc} {:sourceloc_num 219} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p76$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 219} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 219} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p76$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v118$1 := (if p76$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][local_id_x$1] else v118$1);
    v118$2 := (if p76$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v118$2);
    v119$1 := (if p76$1 then BV32_ADD(v115$1, v118$1) else v119$1);
    v119$2 := (if p76$2 then BV32_ADD(v115$2, v118$2) else v119$2);
    call {:sourceloc} {:sourceloc_num 220} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p76$1, v119$1, $mid.5$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][v119$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p76$2, v119$2);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 220} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 220} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p76$2, v119$2, $mid.5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][v119$1] := (if p76$1 then $mid.5$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][v119$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2] := (if p76$2 then $mid.5$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2]);
    call {:sourceloc} {:sourceloc_num 221} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p76$1, v119$1, $right.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][v119$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p76$2, v119$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 221} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 221} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(p76$2, v119$2, $right.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][v119$1] := (if p76$1 then $right.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[1bv1][v119$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2] := (if p76$2 then $right.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2]);
    call {:sourceloc} {:sourceloc_num 222} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p76$1, v119$1, $mid_count.2$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][v119$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p76$2, v119$2);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 222} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(p76$2, v119$2, $mid_count.2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][v119$1] := (if p76$1 then $mid_count.2$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[1bv1][v119$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2] := (if p76$2 then $mid_count.2$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2]);
    call {:sourceloc} {:sourceloc_num 223} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p76$1, v119$1, $right_count.1$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][v119$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p76$2, v119$2);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 223} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 223} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p76$2, v119$2, $right_count.1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][v119$1] := (if p76$1 then $right_count.1$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][v119$1]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2] := (if p76$2 then $right_count.1$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v119$2]);
    goto __partitioned_block_$79.tail_2;

  __partitioned_block_$79.tail_2:
    call {:sourceloc_num 226} $bugle_barrier_duplicated_5(1bv1, 1bv1, p15$1, p15$2);
    v120$1 := (if p15$1 then 0bv32 == local_id_x$1 else v120$1);
    v120$2 := (if p15$2 then 0bv32 == local_id_x$2 else v120$2);
    p78$1 := (if p15$1 && v120$1 then v120$1 else p78$1);
    p78$2 := (if p15$2 && v120$2 then v120$2 else p78$2);
    call {:sourceloc} {:sourceloc_num 228} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 228} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 228} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v121$1 := (if p78$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v121$1);
    v121$2 := (if p78$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v121$2);
    call {:sourceloc} {:sourceloc_num 229} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p78$1, v121$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][v121$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 229} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 229} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p78$2, v121$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v121$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    v122$1 := (if p78$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][v121$1] else v122$1);
    v122$2 := (if p78$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v121$2] else v122$2);
    call {:sourceloc} {:sourceloc_num 230} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 230} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 230} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v123$1 := (if p78$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v123$1);
    v123$2 := (if p78$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v123$2);
    call {:sourceloc} {:sourceloc_num 231} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$1, 0bv32, BV32_ADD(v123$1, v122$1), $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 231} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 231} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$2, 0bv32, BV32_ADD(v123$2, v122$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] := (if p78$1 then BV32_ADD(v123$1, v122$1) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p78$2 then BV32_ADD(v123$2, v122$2) else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 232} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 232} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 232} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(p78$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v124$1 := (if p78$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32] else v124$1);
    v124$2 := (if p78$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v124$2);
    v125$1 := (if p78$1 then 0bv32 == BV32_AND(v124$1, BV32_SUB(v124$1, 1bv32)) else v125$1);
    v125$2 := (if p78$2 then 0bv32 == BV32_AND(v124$2, BV32_SUB(v124$2, 1bv32)) else v125$2);
    p80$1 := (if p78$1 && v125$1 then v125$1 else p80$1);
    p80$2 := (if p78$2 && v125$2 then v125$2 else p80$2);
    p79$1 := (if p78$1 && !v125$1 then !v125$1 else p79$1);
    p79$2 := (if p78$2 && !v125$2 then !v125$2 else p79$2);
    v126$1 := (if p79$1 then FP32_CONV64(SI32_TO_FP32(v124$1)) else v126$1);
    v126$2 := (if p79$2 then FP32_CONV64(SI32_TO_FP32(v124$2)) else v126$2);
    call {:sourceloc_num 235} v127$1, v127$2 := $__bugle_frexp_exp(p79$1, v126$1, p79$2, v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__bugle_frexp_exp"} true;
    call {:sourceloc_num 236} v128$1, v128$2 := $__bugle_frexp_frac(p79$1, v126$1, p79$2, v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__bugle_frexp_frac"} true;
    $.01$1 := (if p79$1 then BV32_SHL(1bv32, v127$1) else $.01$1);
    $.01$2 := (if p79$2 then BV32_SHL(1bv32, v127$2) else $.01$2);
    $.01$1 := (if p80$1 then v124$1 else $.01$1);
    $.01$2 := (if p80$2 then v124$2 else $.01$2);
    call {:sourceloc} {:sourceloc_num 238} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p78$1, 0bv32, $.01$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p78$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 238} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 238} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(p78$2, 0bv32, $.01$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32] := (if p78$1 then $.01$1 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p78$2 then $.01$2 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 239} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p78$1, 0bv32, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p78$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 239} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 239} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(p78$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32] := (if p78$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p78$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    call {:sourceloc} {:sourceloc_num 240} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p78$1, 0bv32, 1bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p78$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 240} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 240} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(p78$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32] := (if p78$1 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[1bv1][0bv32]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p78$2 then 1bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$79.tail_3;

  __partitioned_block_$79.tail_3:
    call {:sourceloc_num 242} $bugle_barrier_duplicated_6(1bv1, 1bv1, p15$1, p15$2);
    call {:sourceloc} {:sourceloc_num 243} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$1, BV32_ADD(1bv32, local_id_x$1), 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$2, BV32_ADD(1bv32, local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 243} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 243} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$2, BV32_ADD(1bv32, local_id_x$2), 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)] := (if p15$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, local_id_x$1)]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)] := (if p15$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 244} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$1, BV32_ADD(1bv32, BV32_ADD(local_id_x$1, group_size_x)), 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, BV32_ADD(local_id_x$1, group_size_x))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$2, BV32_ADD(1bv32, BV32_ADD(local_id_x$2, group_size_x)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 244} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 244} _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(p15$2, BV32_ADD(1bv32, BV32_ADD(local_id_x$2, group_size_x)), 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} true;
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, BV32_ADD(local_id_x$1, group_size_x))] := (if p15$1 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[1bv1][BV32_ADD(1bv32, BV32_ADD(local_id_x$1, group_size_x))]);
    $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, BV32_ADD(local_id_x$2, group_size_x))] := (if p15$2 then 0bv32 else $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(1bv32, BV32_ADD(local_id_x$2, group_size_x))]);
    goto __partitioned_block_$79.tail_4;

  __partitioned_block_$79.tail_4:
    call {:sourceloc_num 245} $bugle_barrier_duplicated_7(1bv1, 1bv1, p15$1, p15$2);
    $left_count.0$1, $right.0$1, $left.0$1, $mid.0$1, $right_count.0$1, $is_active_second.0$1 := (if p15$1 then $left_count.1$1 else $left_count.0$1), (if p15$1 then $right.1$1 else $right.0$1), (if p15$1 then $left.1$1 else $left.0$1), (if p15$1 then $mid.5$1 else $mid.0$1), (if p15$1 then $right_count.1$1 else $right_count.0$1), (if p15$1 then $is_active_second.4$1 else $is_active_second.0$1);
    $left_count.0$2, $right.0$2, $left.0$2, $mid.0$2, $right_count.0$2, $is_active_second.0$2 := (if p15$2 then $left_count.1$2 else $left_count.0$2), (if p15$2 then $right.1$2 else $right.0$2), (if p15$2 then $left.1$2 else $left.0$2), (if p15$2 then $mid.5$2 else $mid.0$2), (if p15$2 then $right_count.1$2 else $right_count.0$2), (if p15$2 then $is_active_second.4$2 else $is_active_second.0$2);
    p6$1 := (if p15$1 then true else p6$1);
    p6$2 := (if p15$2 then true else p6$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p6$1 && !p6$2;
    call {:sourceloc} {:sourceloc_num 247} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(true, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 247} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 247} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(true, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} true;
    v129$1 := $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[1bv1][0bv32];
    v129$2 := $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32];
    v130$1 := BV32_ULT(local_id_x$1, v129$1);
    v130$2 := BV32_ULT(local_id_x$2, v129$2);
    p82$1 := (if v130$1 then v130$1 else p82$1);
    p82$2 := (if v130$2 then v130$2 else p82$2);
    call {:sourceloc} {:sourceloc_num 249} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(p82$1, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 249} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 249} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(p82$2, 0bv32, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} true;
    v131$1 := (if p82$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[1bv1][0bv32] else v131$1);
    v131$2 := (if p82$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v131$2);
    v132$1 := (if p82$1 then BV32_ADD(v131$1, local_id_x$1) else v132$1);
    v132$2 := (if p82$2 then BV32_ADD(v131$2, local_id_x$2) else v132$2);
    call {:sourceloc} {:sourceloc_num 250} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p82$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 250} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 250} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(p82$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} true;
    v133$1 := (if p82$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[1bv1][local_id_x$1] else v133$1);
    v133$2 := (if p82$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v133$2);
    call {:sourceloc} {:sourceloc_num 251} _LOG_WRITE_$$g_lambda(p82$1, v132$1, v133$1, $$g_lambda[v132$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_lambda(p82$2, v132$2);
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 251} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 251} _CHECK_WRITE_$$g_lambda(p82$2, v132$2, v133$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_lambda"} true;
    $$g_lambda[v132$1] := (if p82$1 then v133$1 else $$g_lambda[v132$1]);
    $$g_lambda[v132$2] := (if p82$2 then v133$2 else $$g_lambda[v132$2]);
    call {:sourceloc} {:sourceloc_num 252} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p82$1, local_id_x$1, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 252} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 252} _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(p82$2, local_id_x$2, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} true;
    v134$1 := (if p82$1 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[1bv1][local_id_x$1] else v134$1);
    v134$2 := (if p82$2 then $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v134$2);
    call {:sourceloc} {:sourceloc_num 253} _LOG_WRITE_$$g_pos(p82$1, v132$1, v134$1, $$g_pos[v132$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_pos(p82$2, v132$2);
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 253} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 253} _CHECK_WRITE_$$g_pos(p82$2, v132$2, v134$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_pos"} true;
    $$g_pos[v132$1] := (if p82$1 then v134$1 else $$g_pos[v132$1]);
    $$g_pos[v132$2] := (if p82$2 then v134$2 else $$g_pos[v132$2]);
    return;

  $7.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$7_0;

  $79.backedge:
    assume {:backedge} p69$1 || p69$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$79_0;

  $74.backedge:
    assume {:backedge} p65$1 || p65$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$74_0;

  $18.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto __partitioned_block_$18_0;

  $23.backedge:
    assume {:backedge} p22$1 || p22$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $23;
}



procedure {:source_name "abs"} $abs(_P$1: bool, $0$1: bv32, _P$2: bool, $0$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "_Z6sign_ff"} $_Z6sign_ff(_P$1: bool, $0$1: bv32, _P$2: bool, $0$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "__bugle_frexp_exp"} $__bugle_frexp_exp(_P$1: bool, $0$1: bv64, _P$2: bool, $0$2: bv64) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "__bugle_frexp_frac"} $__bugle_frexp_frac(_P$1: bool, $0$1: bv64, _P$2: bool, $0$2: bv64) returns ($ret$1: bv64, $ret$2: bv64);



axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 11bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

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
  requires $1 == 1bv1;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_8($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_9($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_10($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_11($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_12($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, $$g_lambda, $$g_pos, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b6: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

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

const _WATCHED_VALUE_$$g_d: bv32;

procedure {:inline 1} _LOG_READ_$$g_d(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_d;



implementation {:inline 1} _LOG_READ_$$g_d(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then true else _READ_HAS_OCCURRED_$$g_d);
    return;
}



procedure _CHECK_READ_$$g_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_d);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_d: bool;

procedure {:inline 1} _LOG_WRITE_$$g_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_d, _WRITE_READ_BENIGN_FLAG_$$g_d;



implementation {:inline 1} _LOG_WRITE_$$g_d(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then true else _WRITE_HAS_OCCURRED_$$g_d);
    _WRITE_READ_BENIGN_FLAG_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_d);
    return;
}



procedure _CHECK_WRITE_$$g_d(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d != _value);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_d != _value);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_d;



implementation {:inline 1} _LOG_ATOMIC_$$g_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_d);
    return;
}



procedure _CHECK_ATOMIC_$$g_d(_P: bool, _offset: bv32);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_d"} {:array "$$g_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_d := (if _P && _WRITE_HAS_OCCURRED_$$g_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_d);
    return;
}



const _WATCHED_VALUE_$$g_s: bv32;

procedure {:inline 1} _LOG_READ_$$g_s(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_s;



implementation {:inline 1} _LOG_READ_$$g_s(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then true else _READ_HAS_OCCURRED_$$g_s);
    return;
}



procedure _CHECK_READ_$$g_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_s);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_s: bool;

procedure {:inline 1} _LOG_WRITE_$$g_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_s, _WRITE_READ_BENIGN_FLAG_$$g_s;



implementation {:inline 1} _LOG_WRITE_$$g_s(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then true else _WRITE_HAS_OCCURRED_$$g_s);
    _WRITE_READ_BENIGN_FLAG_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_s);
    return;
}



procedure _CHECK_WRITE_$$g_s(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s != _value);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_s != _value);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_s(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_s;



implementation {:inline 1} _LOG_ATOMIC_$$g_s(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_s := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_s);
    return;
}



procedure _CHECK_ATOMIC_$$g_s(_P: bool, _offset: bv32);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_s"} {:array "$$g_s"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_s(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_s;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_s(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_s := (if _P && _WRITE_HAS_OCCURRED_$$g_s && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_s);
    return;
}



const _WATCHED_VALUE_$$blocks_mult: bv32;

procedure {:inline 1} _LOG_READ_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$blocks_mult;



implementation {:inline 1} _LOG_READ_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blocks_mult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult == _value then true else _READ_HAS_OCCURRED_$$blocks_mult);
    return;
}



procedure _CHECK_READ_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blocks_mult);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blocks_mult: bool;

procedure {:inline 1} _LOG_WRITE_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$blocks_mult, _WRITE_READ_BENIGN_FLAG_$$blocks_mult;



implementation {:inline 1} _LOG_WRITE_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blocks_mult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult == _value then true else _WRITE_HAS_OCCURRED_$$blocks_mult);
    _WRITE_READ_BENIGN_FLAG_$$blocks_mult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blocks_mult);
    return;
}



procedure _CHECK_WRITE_$$blocks_mult(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult != _value);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult != _value);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blocks_mult(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$blocks_mult;



implementation {:inline 1} _LOG_ATOMIC_$$blocks_mult(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blocks_mult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blocks_mult);
    return;
}



procedure _CHECK_ATOMIC_$$blocks_mult(_P: bool, _offset: bv32);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset);
  requires {:source_name "blocks_mult"} {:array "$$blocks_mult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blocks_mult(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$blocks_mult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blocks_mult(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blocks_mult := (if _P && _WRITE_HAS_OCCURRED_$$blocks_mult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blocks_mult);
    return;
}



const _WATCHED_VALUE_$$blocks_mult_sum: bv32;

procedure {:inline 1} _LOG_READ_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$blocks_mult_sum;



implementation {:inline 1} _LOG_READ_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blocks_mult_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult_sum == _value then true else _READ_HAS_OCCURRED_$$blocks_mult_sum);
    return;
}



procedure _CHECK_READ_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum: bool;

procedure {:inline 1} _LOG_WRITE_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$blocks_mult_sum, _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum;



implementation {:inline 1} _LOG_WRITE_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blocks_mult_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult_sum == _value then true else _WRITE_HAS_OCCURRED_$$blocks_mult_sum);
    _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult_sum == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum);
    return;
}



procedure _CHECK_WRITE_$$blocks_mult_sum(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult_sum != _value);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blocks_mult_sum != _value);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blocks_mult_sum(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum;



implementation {:inline 1} _LOG_ATOMIC_$$blocks_mult_sum(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blocks_mult_sum);
    return;
}



procedure _CHECK_ATOMIC_$$blocks_mult_sum(_P: bool, _offset: bv32);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset);
  requires {:source_name "blocks_mult_sum"} {:array "$$blocks_mult_sum"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum := (if _P && _WRITE_HAS_OCCURRED_$$blocks_mult_sum && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blocks_mult_sum);
    return;
}



const _WATCHED_VALUE_$$g_left: bv32;

procedure {:inline 1} _LOG_READ_$$g_left(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_left;



implementation {:inline 1} _LOG_READ_$$g_left(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then true else _READ_HAS_OCCURRED_$$g_left);
    return;
}



procedure _CHECK_READ_$$g_left(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_left);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_left: bool;

procedure {:inline 1} _LOG_WRITE_$$g_left(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_left, _WRITE_READ_BENIGN_FLAG_$$g_left;



implementation {:inline 1} _LOG_WRITE_$$g_left(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then true else _WRITE_HAS_OCCURRED_$$g_left);
    _WRITE_READ_BENIGN_FLAG_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_left);
    return;
}



procedure _CHECK_WRITE_$$g_left(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left != _value);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left != _value);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_left(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_left;



implementation {:inline 1} _LOG_ATOMIC_$$g_left(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_left := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_left);
    return;
}



procedure _CHECK_ATOMIC_$$g_left(_P: bool, _offset: bv32);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_left"} {:array "$$g_left"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_left;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_left := (if _P && _WRITE_HAS_OCCURRED_$$g_left && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_left);
    return;
}



const _WATCHED_VALUE_$$g_right: bv32;

procedure {:inline 1} _LOG_READ_$$g_right(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_right;



implementation {:inline 1} _LOG_READ_$$g_right(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then true else _READ_HAS_OCCURRED_$$g_right);
    return;
}



procedure _CHECK_READ_$$g_right(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_right);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_right: bool;

procedure {:inline 1} _LOG_WRITE_$$g_right(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_right, _WRITE_READ_BENIGN_FLAG_$$g_right;



implementation {:inline 1} _LOG_WRITE_$$g_right(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then true else _WRITE_HAS_OCCURRED_$$g_right);
    _WRITE_READ_BENIGN_FLAG_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_right);
    return;
}



procedure _CHECK_WRITE_$$g_right(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right != _value);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right != _value);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_right(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_right;



implementation {:inline 1} _LOG_ATOMIC_$$g_right(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_right := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_right);
    return;
}



procedure _CHECK_ATOMIC_$$g_right(_P: bool, _offset: bv32);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_right"} {:array "$$g_right"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_right;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_right := (if _P && _WRITE_HAS_OCCURRED_$$g_right && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_right);
    return;
}



const _WATCHED_VALUE_$$g_left_count: bv32;

procedure {:inline 1} _LOG_READ_$$g_left_count(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_left_count;



implementation {:inline 1} _LOG_READ_$$g_left_count(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_left_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left_count == _value then true else _READ_HAS_OCCURRED_$$g_left_count);
    return;
}



procedure _CHECK_READ_$$g_left_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_left_count);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_left_count: bool;

procedure {:inline 1} _LOG_WRITE_$$g_left_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_left_count, _WRITE_READ_BENIGN_FLAG_$$g_left_count;



implementation {:inline 1} _LOG_WRITE_$$g_left_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_left_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left_count == _value then true else _WRITE_HAS_OCCURRED_$$g_left_count);
    _WRITE_READ_BENIGN_FLAG_$$g_left_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left_count == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_left_count);
    return;
}



procedure _CHECK_WRITE_$$g_left_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left_count != _value);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_left_count != _value);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_left_count(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_left_count;



implementation {:inline 1} _LOG_ATOMIC_$$g_left_count(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_left_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_left_count);
    return;
}



procedure _CHECK_ATOMIC_$$g_left_count(_P: bool, _offset: bv32);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_left_count"} {:array "$$g_left_count"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left_count(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_left_count;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_left_count(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_left_count := (if _P && _WRITE_HAS_OCCURRED_$$g_left_count && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_left_count);
    return;
}



const _WATCHED_VALUE_$$g_right_count: bv32;

procedure {:inline 1} _LOG_READ_$$g_right_count(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_right_count;



implementation {:inline 1} _LOG_READ_$$g_right_count(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_right_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right_count == _value then true else _READ_HAS_OCCURRED_$$g_right_count);
    return;
}



procedure _CHECK_READ_$$g_right_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_right_count);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_right_count: bool;

procedure {:inline 1} _LOG_WRITE_$$g_right_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_right_count, _WRITE_READ_BENIGN_FLAG_$$g_right_count;



implementation {:inline 1} _LOG_WRITE_$$g_right_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_right_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right_count == _value then true else _WRITE_HAS_OCCURRED_$$g_right_count);
    _WRITE_READ_BENIGN_FLAG_$$g_right_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right_count == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_right_count);
    return;
}



procedure _CHECK_WRITE_$$g_right_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right_count != _value);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_right_count != _value);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_right_count(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_right_count;



implementation {:inline 1} _LOG_ATOMIC_$$g_right_count(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_right_count := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_right_count);
    return;
}



procedure _CHECK_ATOMIC_$$g_right_count(_P: bool, _offset: bv32);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_right_count"} {:array "$$g_right_count"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right_count(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_right_count;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_right_count(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_right_count := (if _P && _WRITE_HAS_OCCURRED_$$g_right_count && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_right_count);
    return;
}



const _WATCHED_VALUE_$$g_lambda: bv32;

procedure {:inline 1} _LOG_READ_$$g_lambda(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_lambda;



implementation {:inline 1} _LOG_READ_$$g_lambda(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_lambda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_lambda == _value then true else _READ_HAS_OCCURRED_$$g_lambda);
    return;
}



procedure _CHECK_READ_$$g_lambda(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_lambda);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_lambda: bool;

procedure {:inline 1} _LOG_WRITE_$$g_lambda(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_lambda, _WRITE_READ_BENIGN_FLAG_$$g_lambda;



implementation {:inline 1} _LOG_WRITE_$$g_lambda(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_lambda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_lambda == _value then true else _WRITE_HAS_OCCURRED_$$g_lambda);
    _WRITE_READ_BENIGN_FLAG_$$g_lambda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_lambda == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_lambda);
    return;
}



procedure _CHECK_WRITE_$$g_lambda(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_lambda != _value);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_lambda != _value);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_lambda(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_lambda;



implementation {:inline 1} _LOG_ATOMIC_$$g_lambda(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_lambda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_lambda);
    return;
}



procedure _CHECK_ATOMIC_$$g_lambda(_P: bool, _offset: bv32);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_lambda"} {:array "$$g_lambda"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_lambda(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_lambda;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_lambda(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_lambda := (if _P && _WRITE_HAS_OCCURRED_$$g_lambda && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_lambda);
    return;
}



const _WATCHED_VALUE_$$g_pos: bv32;

procedure {:inline 1} _LOG_READ_$$g_pos(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_pos;



implementation {:inline 1} _LOG_READ_$$g_pos(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then true else _READ_HAS_OCCURRED_$$g_pos);
    return;
}



procedure _CHECK_READ_$$g_pos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_pos);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_pos: bool;

procedure {:inline 1} _LOG_WRITE_$$g_pos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_pos, _WRITE_READ_BENIGN_FLAG_$$g_pos;



implementation {:inline 1} _LOG_WRITE_$$g_pos(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then true else _WRITE_HAS_OCCURRED_$$g_pos);
    _WRITE_READ_BENIGN_FLAG_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_pos);
    return;
}



procedure _CHECK_WRITE_$$g_pos(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos != _value);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_pos != _value);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_pos(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_pos;



implementation {:inline 1} _LOG_ATOMIC_$$g_pos(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_pos);
    return;
}



procedure _CHECK_ATOMIC_$$g_pos(_P: bool, _offset: bv32);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_pos"} {:array "$$g_pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_pos(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_pos(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_pos := (if _P && _WRITE_HAS_OCCURRED_$$g_pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_pos);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_start"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_end"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "c_block_offset_output"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_active"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_compaction_list"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "num_threads_compaction"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "all_threads_converged"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "compact_second_chunk"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_left_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count);
    return;
}



const _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;



implementation {:inline 1} _LOG_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count == _value then true else _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count);
    return;
}



procedure _CHECK_READ_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count, _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;



implementation {:inline 1} _LOG_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count);
    return;
}



procedure _CHECK_WRITE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_right_count"} {:array "$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_8($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_9($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_10($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_11($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_12($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon4;

  anon4:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon5;

  anon5:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon6;

  anon6:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon7;

  anon7:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon8;

  anon8:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon9;

  anon9:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon10;

  anon10:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon11;

  anon11:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon12;

  anon12:
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon25;

  anon25:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_lambda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_lambda;
    goto anon26;

  anon26:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_pos;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_pos;
    goto anon27;

  anon27:
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon30;

  anon30:
    havoc _TRACKING;
    return;

  anon33_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_lambda;
    goto anon29;

  anon29:
    havoc $$g_pos;
    goto anon30;

  anon32_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13c_block_start;
    goto anon14;

  anon14:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE11c_block_end;
    goto anon15;

  anon15:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21c_block_offset_output;
    goto anon16;

  anon16:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE18num_threads_active;
    goto anon17;

  anon17:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE17s_compaction_list;
    goto anon18;

  anon18:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE22num_threads_compaction;
    goto anon19;

  anon19:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE21all_threads_converged;
    goto anon20;

  anon20:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE20compact_second_chunk;
    goto anon21;

  anon21:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE6s_left;
    goto anon22;

  anon22:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE7s_right;
    goto anon23;

  anon23:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE12s_left_count;
    goto anon24;

  anon24:
    havoc $$_ZZ31bisectKernelLarge_MultIntervalsPfS_jPjS0_S_S_S0_S0_S_S0_fE13s_right_count;
    goto anon25;

  anon31_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

const {:existential true} _b196: bool;

const {:existential true} _b197: bool;

const {:existential true} _b198: bool;

const {:existential true} _b199: bool;

const {:existential true} _b200: bool;

const {:existential true} _b201: bool;

const {:existential true} _b202: bool;

const {:existential true} _b203: bool;

const {:existential true} _b204: bool;

const {:existential true} _b205: bool;

const {:existential true} _b206: bool;

const {:existential true} _b207: bool;

const {:existential true} _b208: bool;

const {:existential true} _b209: bool;

const {:existential true} _b210: bool;

const {:existential true} _b211: bool;

const {:existential true} _b212: bool;

const {:existential true} _b213: bool;

const {:existential true} _b214: bool;

const {:existential true} _b215: bool;

const {:existential true} _b216: bool;

const {:existential true} _b217: bool;

const {:existential true} _b218: bool;

const {:existential true} _b219: bool;

const {:existential true} _b220: bool;

const {:existential true} _b221: bool;

const {:existential true} _b222: bool;

const {:existential true} _b223: bool;

const {:existential true} _b224: bool;

const {:existential true} _b225: bool;

const {:existential true} _b226: bool;

const {:existential true} _b227: bool;

const {:existential true} _b228: bool;

const {:existential true} _b229: bool;

const {:existential true} _b230: bool;

const {:existential true} _b231: bool;

const {:existential true} _b232: bool;

const {:existential true} _b233: bool;

const {:existential true} _b234: bool;

const {:existential true} _b235: bool;

const {:existential true} _b236: bool;

const {:existential true} _b237: bool;

const {:existential true} _b238: bool;

const {:existential true} _b239: bool;

const {:existential true} _b240: bool;

const {:existential true} _b241: bool;

const {:existential true} _b242: bool;

const {:existential true} _b243: bool;

const {:existential true} _b244: bool;

const {:existential true} _b245: bool;

const {:existential true} _b246: bool;

const {:existential true} _b247: bool;

const {:existential true} _b248: bool;

const {:existential true} _b249: bool;

const {:existential true} _b250: bool;

const {:existential true} _b251: bool;

const {:existential true} _b252: bool;

const {:existential true} _b253: bool;

const {:existential true} _b254: bool;

const {:existential true} _b255: bool;

const {:existential true} _b256: bool;

const {:existential true} _b257: bool;

const {:existential true} _b258: bool;

const {:existential true} _b259: bool;

const {:existential true} _b260: bool;

const {:existential true} _b261: bool;

const {:existential true} _b262: bool;

const {:existential true} _b263: bool;

const {:existential true} _b264: bool;

const {:existential true} _b265: bool;

const {:existential true} _b266: bool;

const {:existential true} _b267: bool;

const {:existential true} _b268: bool;

const {:existential true} _b269: bool;

const {:existential true} _b270: bool;

const {:existential true} _b271: bool;

const {:existential true} _b272: bool;

const {:existential true} _b273: bool;

const {:existential true} _b274: bool;

const {:existential true} _b275: bool;

const {:existential true} _b276: bool;

const {:existential true} _b277: bool;

const {:existential true} _b278: bool;

const {:existential true} _b279: bool;

const {:existential true} _b280: bool;

const {:existential true} _b281: bool;

const {:existential true} _b282: bool;

const {:existential true} _b283: bool;

const {:existential true} _b284: bool;

const {:existential true} _b285: bool;

const {:existential true} _b286: bool;

const {:existential true} _b287: bool;

const {:existential true} _b288: bool;

const {:existential true} _b289: bool;

const {:existential true} _b290: bool;

const {:existential true} _b291: bool;

const {:existential true} _b292: bool;

const {:existential true} _b293: bool;

const {:existential true} _b294: bool;

const {:existential true} _b295: bool;

const {:existential true} _b296: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b297: bool;

const {:existential true} _b298: bool;

const {:existential true} _b299: bool;

const {:existential true} _b300: bool;

const {:existential true} _b301: bool;

const {:existential true} _b302: bool;

const {:existential true} _b303: bool;

const {:existential true} _b304: bool;

const {:existential true} _b305: bool;

const {:existential true} _b306: bool;

const {:existential true} _b307: bool;

const {:existential true} _b308: bool;

const {:existential true} _b309: bool;

const {:existential true} _b310: bool;

const {:existential true} _b311: bool;

const {:existential true} _b312: bool;

const {:existential true} _b313: bool;

const {:existential true} _b314: bool;

const {:existential true} _b315: bool;

const {:existential true} _b316: bool;

const {:existential true} _b317: bool;

const {:existential true} _b318: bool;

const {:existential true} _b319: bool;

const {:existential true} _b320: bool;

const {:existential true} _b321: bool;

const {:existential true} _b322: bool;

const {:existential true} _b323: bool;

const {:existential true} _b324: bool;

const {:existential true} _b325: bool;

const {:existential true} _b326: bool;
