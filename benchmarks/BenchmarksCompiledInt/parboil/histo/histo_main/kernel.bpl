type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(_P$1: bool, x$1: [int]int, y$1: int, _P$2: bool, x$2: [int]int, y$2: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "sm_mappings"} {:global} $$sm_mappings: [int]int;

axiom {:array_info "$$sm_mappings"} {:global} {:elem_width 8} {:source_name "sm_mappings"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sm_mappings: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sm_mappings: bool;

axiom {:array_info "$$global_subhisto"} {:global} {:elem_width 32} {:source_name "global_subhisto"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$global_subhisto: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$global_subhisto: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$global_subhisto: bool;

axiom {:array_info "$$global_histo"} {:global} {:elem_width 32} {:source_name "global_histo"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$global_histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$global_histo: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$global_histo: bool;

axiom {:array_info "$$global_overflow"} {:global} {:elem_width 32} {:source_name "global_overflow"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$global_overflow: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$global_overflow: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$global_overflow: bool;

axiom {:array_info "$$histo_main_kernel.sub_histo"} {:group_shared} {:elem_width 32} {:source_name "sub_histo"} {:source_elem_width 32} {:source_dimensions "24,256"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,256"} _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,256"} _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,256"} _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo: bool;

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

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_LSHR(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function {:inline true} BV16_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "histo_main_kernel"} {:kernel} $histo_main_kernel($num_elements: int, $sm_range_min: int, $sm_range_max: int, $histo_height: int, $histo_width: int);
  requires !_READ_HAS_OCCURRED_$$sm_mappings && !_WRITE_HAS_OCCURRED_$$sm_mappings && !_ATOMIC_HAS_OCCURRED_$$sm_mappings;
  requires !_READ_HAS_OCCURRED_$$global_subhisto && !_WRITE_HAS_OCCURRED_$$global_subhisto && !_ATOMIC_HAS_OCCURRED_$$global_subhisto;
  requires !_READ_HAS_OCCURRED_$$global_histo && !_WRITE_HAS_OCCURRED_$$global_histo && !_ATOMIC_HAS_OCCURRED_$$global_histo;
  requires !_READ_HAS_OCCURRED_$$global_overflow && !_WRITE_HAS_OCCURRED_$$global_overflow && !_ATOMIC_HAS_OCCURRED_$$global_overflow;
  requires !_READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo && !_WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo && !_ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
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
  modifies _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo, _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo, _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo, _TRACKING, _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo, _ATOMIC_HAS_OCCURRED_$$global_overflow, _ATOMIC_HAS_OCCURRED_$$global_histo, _TRACKING, _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo, _ATOMIC_HAS_OCCURRED_$$global_subhisto;



implementation {:source_name "histo_main_kernel"} {:kernel} $histo_main_kernel($num_elements: int, $sm_range_min: int, $sm_range_max: int, $histo_height: int, $histo_width: int)
{
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $bin_plus_1_add.i.0$1: int;
  var $bin_plus_1_add.i.0$2: int;
  var $bin_plus_2_add.i.0$1: int;
  var $bin_plus_2_add.i.0$2: int;
  var $bin_plus_3_add.i.0$1: int;
  var $bin_plus_3_add.i.0$2: int;
  var $local_scan_load.0$1: int;
  var $local_scan_load.0$2: int;
  var $bin_plus_1_add.i.3$1: int;
  var $bin_plus_1_add.i.3$2: int;
  var $bin_plus_2_add.i.3$1: int;
  var $bin_plus_2_add.i.3$2: int;
  var $bin_plus_3_add.i.3$1: int;
  var $bin_plus_3_add.i.3$2: int;
  var $bin_plus_1_add.i.2$1: int;
  var $bin_plus_1_add.i.2$2: int;
  var $bin_plus_2_add.i.2$1: int;
  var $bin_plus_2_add.i.2$2: int;
  var $bin_plus_3_add.i.2$1: int;
  var $bin_plus_3_add.i.2$2: int;
  var $overflow_into_bin_plus_1.i.0$1: int;
  var $overflow_into_bin_plus_1.i.0$2: int;
  var $overflow_into_bin_plus_2.i.0$1: int;
  var $overflow_into_bin_plus_2.i.0$2: int;
  var $overflow_into_bin_plus_3.i.0$1: int;
  var $overflow_into_bin_plus_3.i.0$2: int;
  var $bin_plus_1_add.i.1$1: int;
  var $bin_plus_1_add.i.1$2: int;
  var $bin_plus_2_add.i.1$1: int;
  var $bin_plus_2_add.i.1$2: int;
  var $bin_plus_3_add.i.1$1: int;
  var $bin_plus_3_add.i.1$2: int;
  var $bin_plus_1_add.i24.0$1: int;
  var $bin_plus_1_add.i24.0$2: int;
  var $bin_plus_2_add.i25.0$1: int;
  var $bin_plus_2_add.i25.0$2: int;
  var $bin_plus_3_add.i26.0$1: int;
  var $bin_plus_3_add.i26.0$2: int;
  var $local_scan_load.1$1: int;
  var $local_scan_load.1$2: int;
  var $bin_plus_1_add.i24.3$1: int;
  var $bin_plus_1_add.i24.3$2: int;
  var $bin_plus_2_add.i25.3$1: int;
  var $bin_plus_2_add.i25.3$2: int;
  var $bin_plus_3_add.i26.3$1: int;
  var $bin_plus_3_add.i26.3$2: int;
  var $bin_plus_1_add.i24.2$1: int;
  var $bin_plus_1_add.i24.2$2: int;
  var $bin_plus_2_add.i25.2$1: int;
  var $bin_plus_2_add.i25.2$2: int;
  var $bin_plus_3_add.i26.2$1: int;
  var $bin_plus_3_add.i26.2$2: int;
  var $overflow_into_bin_plus_1.i18.0$1: int;
  var $overflow_into_bin_plus_1.i18.0$2: int;
  var $overflow_into_bin_plus_2.i19.0$1: int;
  var $overflow_into_bin_plus_2.i19.0$2: int;
  var $overflow_into_bin_plus_3.i20.0$1: int;
  var $overflow_into_bin_plus_3.i20.0$2: int;
  var $bin_plus_1_add.i24.1$1: int;
  var $bin_plus_1_add.i24.1$2: int;
  var $bin_plus_2_add.i25.1$1: int;
  var $bin_plus_2_add.i25.1$2: int;
  var $bin_plus_3_add.i26.1$1: int;
  var $bin_plus_3_add.i26.1$2: int;
  var $i.i28.0$1: int;
  var $i.i28.0$2: int;
  var v0: int;
  var v1: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v51$1: int;
  var v51$2: int;
  var v8$1: int;
  var v8$2: int;
  var v6$1: int;
  var v6$2: int;
  var v9$1: bool;
  var v9$2: bool;
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
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: int;
  var v22$2: int;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bool;
  var v32$2: bool;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: int;
  var v34$2: int;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: int;
  var v36$2: int;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: int;
  var v38$2: int;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: bool;
  var v43$2: bool;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: bool;
  var v48$2: bool;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: bool;
  var v62$2: bool;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: bool;
  var v65$2: bool;
  var v66$1: int;
  var v66$2: int;
  var v67$1: bool;
  var v67$2: bool;
  var v68$1: bool;
  var v68$2: bool;
  var v69$1: bool;
  var v69$2: bool;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: bool;
  var v72$2: bool;
  var v73$1: bool;
  var v73$2: bool;
  var v74$1: bool;
  var v74$2: bool;
  var v75$1: bool;
  var v75$2: bool;
  var v76$1: bool;
  var v76$2: bool;
  var v77$1: bool;
  var v77$2: bool;
  var v78$1: int;
  var v78$2: int;
  var v79$1: bool;
  var v79$2: bool;
  var v80$1: int;
  var v80$2: int;
  var v81$1: bool;
  var v81$2: bool;
  var v82$1: int;
  var v82$2: int;
  var v83$1: bool;
  var v83$2: bool;
  var v84$1: int;
  var v84$2: int;
  var v85$1: bool;
  var v85$2: bool;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var _abstracted_call_arg_0$1: int;
  var _abstracted_call_arg_0$2: int;
  var _abstracted_call_arg_1$1: int;
  var _abstracted_call_arg_1$2: int;
  var _abstracted_call_arg_2$1: int;
  var _abstracted_call_arg_2$2: int;
  var _abstracted_call_arg_3$1: int;
  var _abstracted_call_arg_3$2: int;
  var _abstracted_call_arg_4$1: int;
  var _abstracted_call_arg_4$2: int;
  var _abstracted_call_arg_5$1: int;
  var _abstracted_call_arg_5$2: int;
  var _abstracted_call_arg_6$1: int;
  var _abstracted_call_arg_6$2: int;
  var _abstracted_call_arg_7$1: int;
  var _abstracted_call_arg_7$2: int;
  var _abstracted_call_arg_8$1: int;
  var _abstracted_call_arg_8$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _ATOMIC_HAS_OCCURRED_$$global_histo$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$36: bool;
  var _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$36: bool;


  $0:
    v0 := group_size_x;
    v1 := num_groups_x;
    v2$1 := BV32_ADD($sm_range_min, group_id_y$1);
    v2$2 := BV32_ADD($sm_range_min, group_id_y$2);
    v3$1 := BV32_ADD(BV32_MUL(group_id_x$1, v0), local_id_x$1);
    v3$2 := BV32_ADD(BV32_MUL(group_id_x$2, v0), local_id_x$2);
    $i.i.0$1 := local_id_x$1;
    $i.i.0$2 := local_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p4$1 := false;
    p4$2 := false;
    p42$1 := false;
    p42$2 := false;
    p72$1 := false;
    p72$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b26 ==> _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($i.i.0$1, 6144) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($i.i.0$2, 6144) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($i.i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($i.i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($i.i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($i.i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($i.i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($i.i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($i.i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($i.i.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $i.i.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $i.i.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    assert {:originated_from_invariant} {:sourceloc_num 2} {:thread 1} p0$1 ==> (if BV32_UREM($i.i.0$1, group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 2} {:thread 2} p0$2 ==> (if BV32_UREM($i.i.0$2, group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    v4$1 := (if p0$1 then BV32_SLT($i.i.0$1, 6144) else v4$1);
    v4$2 := (if p0$2 then BV32_SLT($i.i.0$2, 6144) else v4$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p41$1 := false;
    p41$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_8$1 := (if p1$1 then _HAVOC_int$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p1$2 then _HAVOC_int$2 else _abstracted_call_arg_8$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$histo_main_kernel.sub_histo(p1$1, $i.i.0$1, 0, _abstracted_call_arg_8$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo(p1$2, $i.i.0$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$histo_main_kernel.sub_histo(p1$2, $i.i.0$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$histo_main_kernel.sub_histo"} true;
    $i.i.0$1 := (if p1$1 then BV32_ADD($i.i.0$1, group_size_x) else $i.i.0$1);
    $i.i.0$2 := (if p1$2 then BV32_ADD($i.i.0$2, group_size_x) else $i.i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, 0);
    v5$1 := group_id_y$1 == 0;
    v5$2 := group_id_y$2 == 0;
    p3$1 := (if v5$1 then v5$1 else p3$1);
    p3$2 := (if v5$2 then v5$2 else p3$2);
    p41$1 := (if !v5$1 then !v5$1 else p41$1);
    p41$2 := (if !v5$2 then !v5$2 else p41$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p3$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p3$2 then _HAVOC_int$2 else v6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p3$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p3$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p3$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p3$2 then _HAVOC_int$2 else v8$2);
    $bin_plus_1_add.i.0$1, $bin_plus_2_add.i.0$1, $bin_plus_3_add.i.0$1, $local_scan_load.0$1 := (if p3$1 then v6$1 else $bin_plus_1_add.i.0$1), (if p3$1 then v7$1 else $bin_plus_2_add.i.0$1), (if p3$1 then v8$1 else $bin_plus_3_add.i.0$1), (if p3$1 then v3$1 else $local_scan_load.0$1);
    $bin_plus_1_add.i.0$2, $bin_plus_2_add.i.0$2, $bin_plus_3_add.i.0$2, $local_scan_load.0$2 := (if p3$2 then v6$2 else $bin_plus_1_add.i.0$2), (if p3$2 then v7$2 else $bin_plus_2_add.i.0$2), (if p3$2 then v8$2 else $bin_plus_3_add.i.0$2), (if p3$2 then v3$2 else $local_scan_load.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _ATOMIC_HAS_OCCURRED_$$global_histo$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$global_histo;
    _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$global_overflow;
    _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b29 ==> !p3$1 ==> _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assert {:tag "disabledMaintainsInstrumentation"} _b28 ==> !p3$1 ==> _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$global_overflow;
    assert {:tag "disabledMaintainsInstrumentation"} _b27 ==> !p3$1 ==> _ATOMIC_HAS_OCCURRED_$$global_histo$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$global_histo;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b25 ==> group_id_y$1 == 0 && BV32_ULT($local_scan_load.0$1, $num_elements) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b25 ==> group_id_y$2 == 0 && BV32_ULT($local_scan_load.0$2, $num_elements) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b24 ==> p4$1 ==> group_id_y$1 == 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b24 ==> p4$2 ==> group_id_y$2 == 0;
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b23 ==> BV32_UGE($local_scan_load.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b23 ==> BV32_UGE($local_scan_load.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b22 ==> BV32_ULE($local_scan_load.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b22 ==> BV32_ULE($local_scan_load.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b21 ==> BV32_SGE($local_scan_load.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b21 ==> BV32_SGE($local_scan_load.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b20 ==> BV32_SLE($local_scan_load.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b20 ==> BV32_SLE($local_scan_load.0$2, v3$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b19 ==> $local_scan_load.0$1 mod BV32_MUL(group_size_x, num_groups_x) == v3$1 mod BV32_MUL(group_size_x, num_groups_x);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b19 ==> $local_scan_load.0$2 mod BV32_MUL(group_size_x, num_groups_x) == v3$2 mod BV32_MUL(group_size_x, num_groups_x);
    assert {:block_sourceloc} {:sourceloc_num 9} p4$1 ==> true;
    v9$1 := (if p4$1 then BV32_ULT($local_scan_load.0$1, $num_elements) else v9$1);
    v9$2 := (if p4$2 then BV32_ULT($local_scan_load.0$2, $num_elements) else v9$2);
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
    p5$1 := (if p4$1 && v9$1 then v9$1 else p5$1);
    p5$2 := (if p4$2 && v9$2 then v9$2 else p5$2);
    p4$1 := (if p4$1 && !v9$1 then v9$1 else p4$1);
    p4$2 := (if p4$2 && !v9$2 then v9$2 else p4$2);
    v10$1 := (if p5$1 then $$sm_mappings[BV32_MUL($local_scan_load.0$1, 4)] else v10$1);
    v10$2 := (if p5$2 then $$sm_mappings[BV32_MUL($local_scan_load.0$2, 4)] else v10$2);
    v11$1 := (if p5$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$1, 4), 1)] else v11$1);
    v11$2 := (if p5$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$2, 4), 1)] else v11$2);
    v12$1 := (if p5$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$1, 4), 2)] else v12$1);
    v12$2 := (if p5$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$2, 4), 2)] else v12$2);
    v13$1 := (if p5$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$1, 4), 3)] else v13$1);
    v13$2 := (if p5$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.0$2, 4), 3)] else v13$2);
    v14$1 := (if p5$1 then BV8_ZEXT32(v10$1) else v14$1);
    v14$2 := (if p5$2 then BV8_ZEXT32(v10$2) else v14$2);
    v15$1 := (if p5$1 then BV8_ZEXT32(v11$1) else v15$1);
    v15$2 := (if p5$2 then BV8_ZEXT32(v11$2) else v15$2);
    v16$1 := (if p5$1 then BV8_ZEXT32(v12$1) else v16$1);
    v16$2 := (if p5$2 then BV8_ZEXT32(v12$2) else v16$2);
    v17$1 := (if p5$1 then BV8_ZEXT32(v13$1) else v17$1);
    v17$2 := (if p5$2 then BV8_ZEXT32(v13$2) else v17$2);
    v18$1 := (if p5$1 then v14$1 == v2$1 else v18$1);
    v18$2 := (if p5$2 then v14$2 == v2$2 else v18$2);
    p7$1 := (if p5$1 && v18$1 then v18$1 else p7$1);
    p7$2 := (if p5$2 && v18$2 then v18$2 else p7$2);
    p6$1 := (if p5$1 && !v18$1 then !v18$1 else p6$1);
    p6$2 := (if p5$2 && !v18$2 then !v18$2 else p6$2);
    $bin_plus_1_add.i.3$1, $bin_plus_2_add.i.3$1, $bin_plus_3_add.i.3$1 := (if p6$1 then $bin_plus_1_add.i.0$1 else $bin_plus_1_add.i.3$1), (if p6$1 then $bin_plus_2_add.i.0$1 else $bin_plus_2_add.i.3$1), (if p6$1 then $bin_plus_3_add.i.0$1 else $bin_plus_3_add.i.3$1);
    $bin_plus_1_add.i.3$2, $bin_plus_2_add.i.3$2, $bin_plus_3_add.i.3$2 := (if p6$2 then $bin_plus_1_add.i.0$2 else $bin_plus_1_add.i.3$2), (if p6$2 then $bin_plus_2_add.i.0$2 else $bin_plus_2_add.i.3$2), (if p6$2 then $bin_plus_3_add.i.0$2 else $bin_plus_3_add.i.3$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_ATOMIC_$$histo_main_kernel.sub_histo(p7$1, BV32_SDIV(BV32_ADD(BV32_MUL(v15$1, 1024), BV32_MUL(v16$1, 4)), 4));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 16} _CHECK_ATOMIC_$$histo_main_kernel.sub_histo(p7$2, BV32_SDIV(BV32_ADD(BV32_MUL(v15$2, 1024), BV32_MUL(v16$2, 4)), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p7$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p7$2 then _HAVOC_int$2 else v19$2);
    v20$1 := (if p7$1 then BV32_AND(BV32_LSHR(v19$1, BV32_AND(v17$1, 31)), 255) else v20$1);
    v20$2 := (if p7$2 then BV32_AND(BV32_LSHR(v19$2, BV32_AND(v17$2, 31)), 255) else v20$2);
    v21$1 := (if p7$1 then v20$1 == 255 else v21$1);
    v21$2 := (if p7$2 then v20$2 == 255 else v21$2);
    p9$1 := (if p7$1 && v21$1 then v21$1 else p9$1);
    p9$2 := (if p7$2 && v21$2 then v21$2 else p9$2);
    p8$1 := (if p7$1 && !v21$1 then !v21$1 else p8$1);
    p8$2 := (if p7$2 && !v21$2 then !v21$2 else p8$2);
    $bin_plus_1_add.i.2$1, $bin_plus_2_add.i.2$1, $bin_plus_3_add.i.2$1 := (if p8$1 then $bin_plus_1_add.i.0$1 else $bin_plus_1_add.i.2$1), (if p8$1 then $bin_plus_2_add.i.0$1 else $bin_plus_2_add.i.2$1), (if p8$1 then $bin_plus_3_add.i.0$1 else $bin_plus_3_add.i.2$1);
    $bin_plus_1_add.i.2$2, $bin_plus_2_add.i.2$2, $bin_plus_3_add.i.2$2 := (if p8$2 then $bin_plus_1_add.i.0$2 else $bin_plus_1_add.i.2$2), (if p8$2 then $bin_plus_2_add.i.0$2 else $bin_plus_2_add.i.2$2), (if p8$2 then $bin_plus_3_add.i.0$2 else $bin_plus_3_add.i.2$2);
    v22$1 := (if p9$1 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v14$1, 24576), BV32_UDIV(v17$1, 8)), BV32_SHL(v16$1, 2)), BV32_SHL(v15$1, 10)) else v22$1);
    v22$2 := (if p9$2 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v14$2, 24576), BV32_UDIV(v17$2, 8)), BV32_SHL(v16$2, 2)), BV32_SHL(v15$2, 10)) else v22$2);
    v23$1 := (if p9$1 then BV32_ULT(v17$1, 24) else v23$1);
    v23$2 := (if p9$2 then BV32_ULT(v17$2, 24) else v23$2);
    v24$1 := (if p9$1 then BV32_ULT(v17$1, 16) else v24$1);
    v24$2 := (if p9$2 then BV32_ULT(v17$2, 16) else v24$2);
    v25$1 := (if p9$1 then BV32_ULT(v17$1, 8) else v25$1);
    v25$2 := (if p9$2 then BV32_ULT(v17$2, 8) else v25$2);
    v26$1 := (if p9$1 then BV32_AND(BV32_LSHR(v19$1, BV32_AND(BV32_ADD(v17$1, 8), 31)), 255) else v26$1);
    v26$2 := (if p9$2 then BV32_AND(BV32_LSHR(v19$2, BV32_AND(BV32_ADD(v17$2, 8), 31)), 255) else v26$2);
    v27$1 := (if p9$1 then BV32_AND(BV32_LSHR(v19$1, BV32_AND(BV32_ADD(v17$1, 16), 31)), 255) else v27$1);
    v27$2 := (if p9$2 then BV32_AND(BV32_LSHR(v19$2, BV32_AND(BV32_ADD(v17$2, 16), 31)), 255) else v27$2);
    p11$1 := (if p9$1 && v23$1 then v23$1 else p11$1);
    p11$2 := (if p9$2 && v23$2 then v23$2 else p11$2);
    p10$1 := (if p9$1 && !v23$1 then !v23$1 else p10$1);
    p10$2 := (if p9$2 && !v23$2 then !v23$2 else p10$2);
    $overflow_into_bin_plus_1.i.0$1 := (if p10$1 then 0 else $overflow_into_bin_plus_1.i.0$1);
    $overflow_into_bin_plus_1.i.0$2 := (if p10$2 then 0 else $overflow_into_bin_plus_1.i.0$2);
    v28$1 := (if p11$1 then v20$1 == 255 else v28$1);
    v28$2 := (if p11$2 then v20$2 == 255 else v28$2);
    p13$1 := (if p11$1 && v28$1 then v28$1 else p13$1);
    p13$2 := (if p11$2 && v28$2 then v28$2 else p13$2);
    p12$1 := (if p11$1 && !v28$1 then !v28$1 else p12$1);
    p12$2 := (if p11$2 && !v28$2 then !v28$2 else p12$2);
    $overflow_into_bin_plus_1.i.0$1 := (if p12$1 then 0 else $overflow_into_bin_plus_1.i.0$1);
    $overflow_into_bin_plus_1.i.0$2 := (if p12$2 then 0 else $overflow_into_bin_plus_1.i.0$2);
    $overflow_into_bin_plus_1.i.0$1 := (if p13$1 then 1 else $overflow_into_bin_plus_1.i.0$1);
    $overflow_into_bin_plus_1.i.0$2 := (if p13$2 then 1 else $overflow_into_bin_plus_1.i.0$2);
    p15$1 := (if p9$1 && v24$1 then v24$1 else p15$1);
    p15$2 := (if p9$2 && v24$2 then v24$2 else p15$2);
    p14$1 := (if p9$1 && !v24$1 then !v24$1 else p14$1);
    p14$2 := (if p9$2 && !v24$2 then !v24$2 else p14$2);
    $overflow_into_bin_plus_2.i.0$1 := (if p14$1 then 0 else $overflow_into_bin_plus_2.i.0$1);
    $overflow_into_bin_plus_2.i.0$2 := (if p14$2 then 0 else $overflow_into_bin_plus_2.i.0$2);
    v29$1 := (if p15$1 then v26$1 == 255 else v29$1);
    v29$2 := (if p15$2 then v26$2 == 255 else v29$2);
    p17$1 := (if p15$1 && v29$1 then v29$1 else p17$1);
    p17$2 := (if p15$2 && v29$2 then v29$2 else p17$2);
    p16$1 := (if p15$1 && !v29$1 then !v29$1 else p16$1);
    p16$2 := (if p15$2 && !v29$2 then !v29$2 else p16$2);
    $overflow_into_bin_plus_2.i.0$1 := (if p16$1 then 0 else $overflow_into_bin_plus_2.i.0$1);
    $overflow_into_bin_plus_2.i.0$2 := (if p16$2 then 0 else $overflow_into_bin_plus_2.i.0$2);
    $overflow_into_bin_plus_2.i.0$1 := (if p17$1 then 1 else $overflow_into_bin_plus_2.i.0$1);
    $overflow_into_bin_plus_2.i.0$2 := (if p17$2 then 1 else $overflow_into_bin_plus_2.i.0$2);
    p19$1 := (if p9$1 && v25$1 then v25$1 else p19$1);
    p19$2 := (if p9$2 && v25$2 then v25$2 else p19$2);
    p18$1 := (if p9$1 && !v25$1 then !v25$1 else p18$1);
    p18$2 := (if p9$2 && !v25$2 then !v25$2 else p18$2);
    $overflow_into_bin_plus_3.i.0$1 := (if p18$1 then 0 else $overflow_into_bin_plus_3.i.0$1);
    $overflow_into_bin_plus_3.i.0$2 := (if p18$2 then 0 else $overflow_into_bin_plus_3.i.0$2);
    v30$1 := (if p19$1 then v27$1 == 255 else v30$1);
    v30$2 := (if p19$2 then v27$2 == 255 else v30$2);
    p21$1 := (if p19$1 && v30$1 then v30$1 else p21$1);
    p21$2 := (if p19$2 && v30$2 then v30$2 else p21$2);
    p20$1 := (if p19$1 && !v30$1 then !v30$1 else p20$1);
    p20$2 := (if p19$2 && !v30$2 then !v30$2 else p20$2);
    $overflow_into_bin_plus_3.i.0$1 := (if p20$1 then 0 else $overflow_into_bin_plus_3.i.0$1);
    $overflow_into_bin_plus_3.i.0$2 := (if p20$2 then 0 else $overflow_into_bin_plus_3.i.0$2);
    $overflow_into_bin_plus_3.i.0$1 := (if p21$1 then 1 else $overflow_into_bin_plus_3.i.0$1);
    $overflow_into_bin_plus_3.i.0$2 := (if p21$2 then 1 else $overflow_into_bin_plus_3.i.0$2);
    v31$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_1.i.0$1, 1, 0) == 1 else v31$1);
    v31$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_1.i.0$2, 1, 0) == 1 else v31$2);
    p23$1 := (if p9$1 && v31$1 then v31$1 else p23$1);
    p23$2 := (if p9$2 && v31$2 then v31$2 else p23$2);
    p22$1 := (if p9$1 && !v31$1 then !v31$1 else p22$1);
    p22$2 := (if p9$2 && !v31$2 then !v31$2 else p22$2);
    $bin_plus_1_add.i.1$1 := (if p22$1 then $bin_plus_1_add.i.0$1 else $bin_plus_1_add.i.1$1);
    $bin_plus_1_add.i.1$2 := (if p22$2 then $bin_plus_1_add.i.0$2 else $bin_plus_1_add.i.1$2);
    $bin_plus_1_add.i.1$1 := (if p23$1 then (if BV32_ULT(v26$1, 255) then -1 else 255) else $bin_plus_1_add.i.1$1);
    $bin_plus_1_add.i.1$2 := (if p23$2 then (if BV32_ULT(v26$2, 255) then -1 else 255) else $bin_plus_1_add.i.1$2);
    v32$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_2.i.0$1, 1, 0) == 1 else v32$1);
    v32$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_2.i.0$2, 1, 0) == 1 else v32$2);
    p25$1 := (if p9$1 && v32$1 then v32$1 else p25$1);
    p25$2 := (if p9$2 && v32$2 then v32$2 else p25$2);
    p24$1 := (if p9$1 && !v32$1 then !v32$1 else p24$1);
    p24$2 := (if p9$2 && !v32$2 then !v32$2 else p24$2);
    $bin_plus_2_add.i.1$1 := (if p24$1 then $bin_plus_2_add.i.0$1 else $bin_plus_2_add.i.1$1);
    $bin_plus_2_add.i.1$2 := (if p24$2 then $bin_plus_2_add.i.0$2 else $bin_plus_2_add.i.1$2);
    $bin_plus_2_add.i.1$1 := (if p25$1 then (if BV32_ULT(v27$1, 255) then -1 else 255) else $bin_plus_2_add.i.1$1);
    $bin_plus_2_add.i.1$2 := (if p25$2 then (if BV32_ULT(v27$2, 255) then -1 else 255) else $bin_plus_2_add.i.1$2);
    v33$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_3.i.0$1, 1, 0) == 1 else v33$1);
    v33$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_3.i.0$2, 1, 0) == 1 else v33$2);
    p27$1 := (if p9$1 && v33$1 then v33$1 else p27$1);
    p27$2 := (if p9$2 && v33$2 then v33$2 else p27$2);
    p26$1 := (if p9$1 && !v33$1 then !v33$1 else p26$1);
    p26$2 := (if p9$2 && !v33$2 then !v33$2 else p26$2);
    $bin_plus_3_add.i.1$1 := (if p26$1 then $bin_plus_3_add.i.0$1 else $bin_plus_3_add.i.1$1);
    $bin_plus_3_add.i.1$2 := (if p26$2 then $bin_plus_3_add.i.0$2 else $bin_plus_3_add.i.1$2);
    $bin_plus_3_add.i.1$1 := (if p27$1 then (if BV32_ULT(BV32_AND(BV32_LSHR(v19$1, BV32_AND(BV32_ADD(v17$1, 24), 31)), 255), 255) then -1 else 255) else $bin_plus_3_add.i.1$1);
    $bin_plus_3_add.i.1$2 := (if p27$2 then (if BV32_ULT(BV32_AND(BV32_LSHR(v19$2, BV32_AND(BV32_ADD(v17$2, 24), 31)), 255), 255) then -1 else 255) else $bin_plus_3_add.i.1$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_ATOMIC_$$global_overflow(p9$1, BV32_SDIV(BV32_MUL(v22$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 33} _CHECK_ATOMIC_$$global_overflow(p9$2, BV32_SDIV(BV32_MUL(v22$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p9$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p9$2 then _HAVOC_int$2 else v34$2);
    v35$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_1.i.0$1, 1, 0) == 1 else v35$1);
    v35$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_1.i.0$2, 1, 0) == 1 else v35$2);
    p29$1 := (if p9$1 && v35$1 then v35$1 else p29$1);
    p29$2 := (if p9$2 && v35$2 then v35$2 else p29$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_ATOMIC_$$global_overflow(p29$1, BV32_SDIV(BV32_MUL(BV32_ADD(v22$1, 1), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 35} _CHECK_ATOMIC_$$global_overflow(p29$2, BV32_SDIV(BV32_MUL(BV32_ADD(v22$2, 1), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p29$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p29$2 then _HAVOC_int$2 else v36$2);
    v37$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_2.i.0$1, 1, 0) == 1 else v37$1);
    v37$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_2.i.0$2, 1, 0) == 1 else v37$2);
    p31$1 := (if p9$1 && v37$1 then v37$1 else p31$1);
    p31$2 := (if p9$2 && v37$2 then v37$2 else p31$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_ATOMIC_$$global_overflow(p31$1, BV32_SDIV(BV32_MUL(BV32_ADD(v22$1, 2), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 38} _CHECK_ATOMIC_$$global_overflow(p31$2, BV32_SDIV(BV32_MUL(BV32_ADD(v22$2, 2), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p31$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p31$2 then _HAVOC_int$2 else v38$2);
    v39$1 := (if p9$1 then BV_EXTRACT($overflow_into_bin_plus_3.i.0$1, 1, 0) == 1 else v39$1);
    v39$2 := (if p9$2 then BV_EXTRACT($overflow_into_bin_plus_3.i.0$2, 1, 0) == 1 else v39$2);
    p33$1 := (if p9$1 && v39$1 then v39$1 else p33$1);
    p33$2 := (if p9$2 && v39$2 then v39$2 else p33$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_ATOMIC_$$global_overflow(p33$1, BV32_SDIV(BV32_MUL(BV32_ADD(v22$1, 3), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 41} _CHECK_ATOMIC_$$global_overflow(p33$2, BV32_SDIV(BV32_MUL(BV32_ADD(v22$2, 3), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p33$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p33$2 then _HAVOC_int$2 else v40$2);
    $bin_plus_1_add.i.2$1, $bin_plus_2_add.i.2$1, $bin_plus_3_add.i.2$1 := (if p9$1 then $bin_plus_1_add.i.1$1 else $bin_plus_1_add.i.2$1), (if p9$1 then $bin_plus_2_add.i.1$1 else $bin_plus_2_add.i.2$1), (if p9$1 then $bin_plus_3_add.i.1$1 else $bin_plus_3_add.i.2$1);
    $bin_plus_1_add.i.2$2, $bin_plus_2_add.i.2$2, $bin_plus_3_add.i.2$2 := (if p9$2 then $bin_plus_1_add.i.1$2 else $bin_plus_1_add.i.2$2), (if p9$2 then $bin_plus_2_add.i.1$2 else $bin_plus_2_add.i.2$2), (if p9$2 then $bin_plus_3_add.i.1$2 else $bin_plus_3_add.i.2$2);
    $bin_plus_1_add.i.3$1, $bin_plus_2_add.i.3$1, $bin_plus_3_add.i.3$1 := (if p7$1 then $bin_plus_1_add.i.2$1 else $bin_plus_1_add.i.3$1), (if p7$1 then $bin_plus_2_add.i.2$1 else $bin_plus_2_add.i.3$1), (if p7$1 then $bin_plus_3_add.i.2$1 else $bin_plus_3_add.i.3$1);
    $bin_plus_1_add.i.3$2, $bin_plus_2_add.i.3$2, $bin_plus_3_add.i.3$2 := (if p7$2 then $bin_plus_1_add.i.2$2 else $bin_plus_1_add.i.3$2), (if p7$2 then $bin_plus_2_add.i.2$2 else $bin_plus_2_add.i.3$2), (if p7$2 then $bin_plus_3_add.i.2$2 else $bin_plus_3_add.i.3$2);
    v41$1 := (if p5$1 then BV8_ZEXT32(v10$1) else v41$1);
    v41$2 := (if p5$2 then BV8_ZEXT32(v10$2) else v41$2);
    v42$1 := (if p5$1 then BV32_ULT(v41$1, $sm_range_min) else v42$1);
    v42$2 := (if p5$2 then BV32_ULT(v41$2, $sm_range_min) else v42$2);
    p38$1 := (if p5$1 && v42$1 then v42$1 else p38$1);
    p38$2 := (if p5$2 && v42$2 then v42$2 else p38$2);
    p35$1 := (if p5$1 && !v42$1 then !v42$1 else p35$1);
    p35$2 := (if p5$2 && !v42$2 then !v42$2 else p35$2);
    p38$1 := (if p34$1 then true else p38$1);
    p38$2 := (if p34$2 then true else p38$2);
    v43$1 := (if p35$1 then BV32_UGT(v41$1, $sm_range_max) else v43$1);
    v43$2 := (if p35$2 then BV32_UGT(v41$2, $sm_range_max) else v43$2);
    p38$1 := (if p35$1 && v43$1 then v43$1 else p38$1);
    p38$2 := (if p35$2 && v43$2 then v43$2 else p38$2);
    p38$1 := (if p37$1 then true else p38$1);
    p38$2 := (if p37$2 then true else p38$2);
    v44$1 := (if p38$1 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v41$1, 24576), BV32_UDIV(BV8_ZEXT32(v13$1), 8)), BV32_SHL(BV8_ZEXT32(v12$1), 2)), BV32_SHL(BV8_ZEXT32(v11$1), 10)) else v44$1);
    v44$2 := (if p38$2 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v41$2, 24576), BV32_UDIV(BV8_ZEXT32(v13$2), 8)), BV32_SHL(BV8_ZEXT32(v12$2), 2)), BV32_SHL(BV8_ZEXT32(v11$2), 10)) else v44$2);
    v45$1 := (if p38$1 then BV32_UDIV(v44$1, 2) else v45$1);
    v45$2 := (if p38$2 then BV32_UDIV(v44$2, 2) else v45$2);
    v46$1 := (if p38$1 then (if BV32_UREM(v44$1, 2) == 1 then 16 else 0) else v46$1);
    v46$2 := (if p38$2 then (if BV32_UREM(v44$2, 2) == 1 then 16 else 0) else v46$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_ATOMIC_$$global_histo(p38$1, BV32_SDIV(BV32_MUL(v45$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 47} _CHECK_ATOMIC_$$global_histo(p38$2, BV32_SDIV(BV32_MUL(v45$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v47$1 := (if p38$1 then _HAVOC_int$1 else v47$1);
    v47$2 := (if p38$2 then _HAVOC_int$2 else v47$2);
    v48$1 := (if p38$1 then BV32_SLT(BV16_ZEXT32(BV_EXTRACT(BV32_AND(BV32_LSHR(v47$1, BV32_AND(v46$1, 31)), 65535), 16, 0)), 255) else v48$1);
    v48$2 := (if p38$2 then BV32_SLT(BV16_ZEXT32(BV_EXTRACT(BV32_AND(BV32_LSHR(v47$2, BV32_AND(v46$2, 31)), 65535), 16, 0)), 255) else v48$2);
    p40$1 := (if p38$1 && v48$1 then v48$1 else p40$1);
    p40$2 := (if p38$2 && v48$2 then v48$2 else p40$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_ATOMIC_$$global_histo(p40$1, BV32_SDIV(BV32_MUL(v45$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 49} _CHECK_ATOMIC_$$global_histo(p40$2, BV32_SDIV(BV32_MUL(v45$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p40$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p40$2 then _HAVOC_int$2 else v49$2);
    $bin_plus_1_add.i.0$1, $bin_plus_2_add.i.0$1, $bin_plus_3_add.i.0$1, $local_scan_load.0$1 := (if p5$1 then $bin_plus_1_add.i.3$1 else $bin_plus_1_add.i.0$1), (if p5$1 then $bin_plus_2_add.i.3$1 else $bin_plus_2_add.i.0$1), (if p5$1 then $bin_plus_3_add.i.3$1 else $bin_plus_3_add.i.0$1), (if p5$1 then BV32_ADD($local_scan_load.0$1, BV32_MUL(v0, v1)) else $local_scan_load.0$1);
    $bin_plus_1_add.i.0$2, $bin_plus_2_add.i.0$2, $bin_plus_3_add.i.0$2, $local_scan_load.0$2 := (if p5$2 then $bin_plus_1_add.i.3$2 else $bin_plus_1_add.i.0$2), (if p5$2 then $bin_plus_2_add.i.3$2 else $bin_plus_2_add.i.0$2), (if p5$2 then $bin_plus_3_add.i.3$2 else $bin_plus_3_add.i.0$2), (if p5$2 then BV32_ADD($local_scan_load.0$2, BV32_MUL(v0, v1)) else $local_scan_load.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p41$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p41$2 then _HAVOC_int$2 else v50$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p41$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p41$2 then _HAVOC_int$2 else v51$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p41$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p41$2 then _HAVOC_int$2 else v52$2);
    $bin_plus_1_add.i24.0$1, $bin_plus_2_add.i25.0$1, $bin_plus_3_add.i26.0$1, $local_scan_load.1$1 := (if p41$1 then v50$1 else $bin_plus_1_add.i24.0$1), (if p41$1 then v51$1 else $bin_plus_2_add.i25.0$1), (if p41$1 then v52$1 else $bin_plus_3_add.i26.0$1), (if p41$1 then v3$1 else $local_scan_load.1$1);
    $bin_plus_1_add.i24.0$2, $bin_plus_2_add.i25.0$2, $bin_plus_3_add.i26.0$2, $local_scan_load.1$2 := (if p41$2 then v50$2 else $bin_plus_1_add.i24.0$2), (if p41$2 then v51$2 else $bin_plus_2_add.i25.0$2), (if p41$2 then v52$2 else $bin_plus_3_add.i26.0$2), (if p41$2 then v3$2 else $local_scan_load.1$2);
    p42$1 := (if p41$1 then true else p42$1);
    p42$2 := (if p41$2 then true else p42$2);
    _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$36 := _ATOMIC_HAS_OCCURRED_$$global_overflow;
    _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$36 := _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $36;

  $36:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b31 ==> !p41$1 ==> _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo$ghost$$36 == _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assert {:tag "disabledMaintainsInstrumentation"} _b30 ==> !p41$1 ==> _ATOMIC_HAS_OCCURRED_$$global_overflow$ghost$$36 == _ATOMIC_HAS_OCCURRED_$$global_overflow;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p42"} {:dominator_predicate "p41"} true;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> group_id_y$1 != 0 && BV32_ULT($local_scan_load.1$1, $num_elements) ==> p42$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> group_id_y$2 != 0 && BV32_ULT($local_scan_load.1$2, $num_elements) ==> p42$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p42$1 ==> _b11 ==> p42$1 ==> group_id_y$1 != 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p42$2 ==> _b11 ==> p42$2 ==> group_id_y$2 != 0;
    assert {:tag "loopBound"} {:thread 1} p42$1 ==> _b10 ==> BV32_UGE($local_scan_load.1$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p42$2 ==> _b10 ==> BV32_UGE($local_scan_load.1$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p42$1 ==> _b9 ==> BV32_ULE($local_scan_load.1$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p42$2 ==> _b9 ==> BV32_ULE($local_scan_load.1$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p42$1 ==> _b8 ==> BV32_SGE($local_scan_load.1$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p42$2 ==> _b8 ==> BV32_SGE($local_scan_load.1$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p42$1 ==> _b7 ==> BV32_SLE($local_scan_load.1$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p42$2 ==> _b7 ==> BV32_SLE($local_scan_load.1$2, v3$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p42$1 ==> _b6 ==> $local_scan_load.1$1 mod BV32_MUL(group_size_x, num_groups_x) == v3$1 mod BV32_MUL(group_size_x, num_groups_x);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p42$2 ==> _b6 ==> $local_scan_load.1$2 mod BV32_MUL(group_size_x, num_groups_x) == v3$2 mod BV32_MUL(group_size_x, num_groups_x);
    assert {:block_sourceloc} {:sourceloc_num 54} p42$1 ==> true;
    v53$1 := (if p42$1 then BV32_ULT($local_scan_load.1$1, $num_elements) else v53$1);
    v53$2 := (if p42$2 then BV32_ULT($local_scan_load.1$2, $num_elements) else v53$2);
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
    p65$1 := false;
    p65$2 := false;
    p66$1 := false;
    p66$2 := false;
    p67$1 := false;
    p67$2 := false;
    p68$1 := false;
    p68$2 := false;
    p69$1 := false;
    p69$2 := false;
    p70$1 := false;
    p70$2 := false;
    p71$1 := false;
    p71$2 := false;
    p43$1 := (if p42$1 && v53$1 then v53$1 else p43$1);
    p43$2 := (if p42$2 && v53$2 then v53$2 else p43$2);
    p42$1 := (if p42$1 && !v53$1 then v53$1 else p42$1);
    p42$2 := (if p42$2 && !v53$2 then v53$2 else p42$2);
    v54$1 := (if p43$1 then $$sm_mappings[BV32_MUL($local_scan_load.1$1, 4)] else v54$1);
    v54$2 := (if p43$2 then $$sm_mappings[BV32_MUL($local_scan_load.1$2, 4)] else v54$2);
    v55$1 := (if p43$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$1, 4), 1)] else v55$1);
    v55$2 := (if p43$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$2, 4), 1)] else v55$2);
    v56$1 := (if p43$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$1, 4), 2)] else v56$1);
    v56$2 := (if p43$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$2, 4), 2)] else v56$2);
    v57$1 := (if p43$1 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$1, 4), 3)] else v57$1);
    v57$2 := (if p43$2 then $$sm_mappings[BV32_ADD(BV32_MUL($local_scan_load.1$2, 4), 3)] else v57$2);
    v58$1 := (if p43$1 then BV8_ZEXT32(v54$1) else v58$1);
    v58$2 := (if p43$2 then BV8_ZEXT32(v54$2) else v58$2);
    v59$1 := (if p43$1 then BV8_ZEXT32(v55$1) else v59$1);
    v59$2 := (if p43$2 then BV8_ZEXT32(v55$2) else v59$2);
    v60$1 := (if p43$1 then BV8_ZEXT32(v56$1) else v60$1);
    v60$2 := (if p43$2 then BV8_ZEXT32(v56$2) else v60$2);
    v61$1 := (if p43$1 then BV8_ZEXT32(v57$1) else v61$1);
    v61$2 := (if p43$2 then BV8_ZEXT32(v57$2) else v61$2);
    v62$1 := (if p43$1 then v58$1 == v2$1 else v62$1);
    v62$2 := (if p43$2 then v58$2 == v2$2 else v62$2);
    p45$1 := (if p43$1 && v62$1 then v62$1 else p45$1);
    p45$2 := (if p43$2 && v62$2 then v62$2 else p45$2);
    p44$1 := (if p43$1 && !v62$1 then !v62$1 else p44$1);
    p44$2 := (if p43$2 && !v62$2 then !v62$2 else p44$2);
    $bin_plus_1_add.i24.3$1, $bin_plus_2_add.i25.3$1, $bin_plus_3_add.i26.3$1 := (if p44$1 then $bin_plus_1_add.i24.0$1 else $bin_plus_1_add.i24.3$1), (if p44$1 then $bin_plus_2_add.i25.0$1 else $bin_plus_2_add.i25.3$1), (if p44$1 then $bin_plus_3_add.i26.0$1 else $bin_plus_3_add.i26.3$1);
    $bin_plus_1_add.i24.3$2, $bin_plus_2_add.i25.3$2, $bin_plus_3_add.i26.3$2 := (if p44$2 then $bin_plus_1_add.i24.0$2 else $bin_plus_1_add.i24.3$2), (if p44$2 then $bin_plus_2_add.i25.0$2 else $bin_plus_2_add.i25.3$2), (if p44$2 then $bin_plus_3_add.i26.0$2 else $bin_plus_3_add.i26.3$2);
    call {:sourceloc} {:sourceloc_num 61} _LOG_ATOMIC_$$histo_main_kernel.sub_histo(p45$1, BV32_SDIV(BV32_ADD(BV32_MUL(v59$1, 1024), BV32_MUL(v60$1, 4)), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 61} _CHECK_ATOMIC_$$histo_main_kernel.sub_histo(p45$2, BV32_SDIV(BV32_ADD(BV32_MUL(v59$2, 1024), BV32_MUL(v60$2, 4)), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v63$1 := (if p45$1 then _HAVOC_int$1 else v63$1);
    v63$2 := (if p45$2 then _HAVOC_int$2 else v63$2);
    v64$1 := (if p45$1 then BV32_AND(BV32_LSHR(v63$1, BV32_AND(v61$1, 31)), 255) else v64$1);
    v64$2 := (if p45$2 then BV32_AND(BV32_LSHR(v63$2, BV32_AND(v61$2, 31)), 255) else v64$2);
    v65$1 := (if p45$1 then v64$1 == 255 else v65$1);
    v65$2 := (if p45$2 then v64$2 == 255 else v65$2);
    p47$1 := (if p45$1 && v65$1 then v65$1 else p47$1);
    p47$2 := (if p45$2 && v65$2 then v65$2 else p47$2);
    p46$1 := (if p45$1 && !v65$1 then !v65$1 else p46$1);
    p46$2 := (if p45$2 && !v65$2 then !v65$2 else p46$2);
    $bin_plus_1_add.i24.2$1, $bin_plus_2_add.i25.2$1, $bin_plus_3_add.i26.2$1 := (if p46$1 then $bin_plus_1_add.i24.0$1 else $bin_plus_1_add.i24.2$1), (if p46$1 then $bin_plus_2_add.i25.0$1 else $bin_plus_2_add.i25.2$1), (if p46$1 then $bin_plus_3_add.i26.0$1 else $bin_plus_3_add.i26.2$1);
    $bin_plus_1_add.i24.2$2, $bin_plus_2_add.i25.2$2, $bin_plus_3_add.i26.2$2 := (if p46$2 then $bin_plus_1_add.i24.0$2 else $bin_plus_1_add.i24.2$2), (if p46$2 then $bin_plus_2_add.i25.0$2 else $bin_plus_2_add.i25.2$2), (if p46$2 then $bin_plus_3_add.i26.0$2 else $bin_plus_3_add.i26.2$2);
    v66$1 := (if p47$1 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v58$1, 24576), BV32_UDIV(v61$1, 8)), BV32_SHL(v60$1, 2)), BV32_SHL(v59$1, 10)) else v66$1);
    v66$2 := (if p47$2 then BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v58$2, 24576), BV32_UDIV(v61$2, 8)), BV32_SHL(v60$2, 2)), BV32_SHL(v59$2, 10)) else v66$2);
    v67$1 := (if p47$1 then BV32_ULT(v61$1, 24) else v67$1);
    v67$2 := (if p47$2 then BV32_ULT(v61$2, 24) else v67$2);
    v68$1 := (if p47$1 then BV32_ULT(v61$1, 16) else v68$1);
    v68$2 := (if p47$2 then BV32_ULT(v61$2, 16) else v68$2);
    v69$1 := (if p47$1 then BV32_ULT(v61$1, 8) else v69$1);
    v69$2 := (if p47$2 then BV32_ULT(v61$2, 8) else v69$2);
    v70$1 := (if p47$1 then BV32_AND(BV32_LSHR(v63$1, BV32_AND(BV32_ADD(v61$1, 8), 31)), 255) else v70$1);
    v70$2 := (if p47$2 then BV32_AND(BV32_LSHR(v63$2, BV32_AND(BV32_ADD(v61$2, 8), 31)), 255) else v70$2);
    v71$1 := (if p47$1 then BV32_AND(BV32_LSHR(v63$1, BV32_AND(BV32_ADD(v61$1, 16), 31)), 255) else v71$1);
    v71$2 := (if p47$2 then BV32_AND(BV32_LSHR(v63$2, BV32_AND(BV32_ADD(v61$2, 16), 31)), 255) else v71$2);
    p49$1 := (if p47$1 && v67$1 then v67$1 else p49$1);
    p49$2 := (if p47$2 && v67$2 then v67$2 else p49$2);
    p48$1 := (if p47$1 && !v67$1 then !v67$1 else p48$1);
    p48$2 := (if p47$2 && !v67$2 then !v67$2 else p48$2);
    $overflow_into_bin_plus_1.i18.0$1 := (if p48$1 then 0 else $overflow_into_bin_plus_1.i18.0$1);
    $overflow_into_bin_plus_1.i18.0$2 := (if p48$2 then 0 else $overflow_into_bin_plus_1.i18.0$2);
    v72$1 := (if p49$1 then v64$1 == 255 else v72$1);
    v72$2 := (if p49$2 then v64$2 == 255 else v72$2);
    p51$1 := (if p49$1 && v72$1 then v72$1 else p51$1);
    p51$2 := (if p49$2 && v72$2 then v72$2 else p51$2);
    p50$1 := (if p49$1 && !v72$1 then !v72$1 else p50$1);
    p50$2 := (if p49$2 && !v72$2 then !v72$2 else p50$2);
    $overflow_into_bin_plus_1.i18.0$1 := (if p50$1 then 0 else $overflow_into_bin_plus_1.i18.0$1);
    $overflow_into_bin_plus_1.i18.0$2 := (if p50$2 then 0 else $overflow_into_bin_plus_1.i18.0$2);
    $overflow_into_bin_plus_1.i18.0$1 := (if p51$1 then 1 else $overflow_into_bin_plus_1.i18.0$1);
    $overflow_into_bin_plus_1.i18.0$2 := (if p51$2 then 1 else $overflow_into_bin_plus_1.i18.0$2);
    p53$1 := (if p47$1 && v68$1 then v68$1 else p53$1);
    p53$2 := (if p47$2 && v68$2 then v68$2 else p53$2);
    p52$1 := (if p47$1 && !v68$1 then !v68$1 else p52$1);
    p52$2 := (if p47$2 && !v68$2 then !v68$2 else p52$2);
    $overflow_into_bin_plus_2.i19.0$1 := (if p52$1 then 0 else $overflow_into_bin_plus_2.i19.0$1);
    $overflow_into_bin_plus_2.i19.0$2 := (if p52$2 then 0 else $overflow_into_bin_plus_2.i19.0$2);
    v73$1 := (if p53$1 then v70$1 == 255 else v73$1);
    v73$2 := (if p53$2 then v70$2 == 255 else v73$2);
    p55$1 := (if p53$1 && v73$1 then v73$1 else p55$1);
    p55$2 := (if p53$2 && v73$2 then v73$2 else p55$2);
    p54$1 := (if p53$1 && !v73$1 then !v73$1 else p54$1);
    p54$2 := (if p53$2 && !v73$2 then !v73$2 else p54$2);
    $overflow_into_bin_plus_2.i19.0$1 := (if p54$1 then 0 else $overflow_into_bin_plus_2.i19.0$1);
    $overflow_into_bin_plus_2.i19.0$2 := (if p54$2 then 0 else $overflow_into_bin_plus_2.i19.0$2);
    $overflow_into_bin_plus_2.i19.0$1 := (if p55$1 then 1 else $overflow_into_bin_plus_2.i19.0$1);
    $overflow_into_bin_plus_2.i19.0$2 := (if p55$2 then 1 else $overflow_into_bin_plus_2.i19.0$2);
    p57$1 := (if p47$1 && v69$1 then v69$1 else p57$1);
    p57$2 := (if p47$2 && v69$2 then v69$2 else p57$2);
    p56$1 := (if p47$1 && !v69$1 then !v69$1 else p56$1);
    p56$2 := (if p47$2 && !v69$2 then !v69$2 else p56$2);
    $overflow_into_bin_plus_3.i20.0$1 := (if p56$1 then 0 else $overflow_into_bin_plus_3.i20.0$1);
    $overflow_into_bin_plus_3.i20.0$2 := (if p56$2 then 0 else $overflow_into_bin_plus_3.i20.0$2);
    v74$1 := (if p57$1 then v71$1 == 255 else v74$1);
    v74$2 := (if p57$2 then v71$2 == 255 else v74$2);
    p59$1 := (if p57$1 && v74$1 then v74$1 else p59$1);
    p59$2 := (if p57$2 && v74$2 then v74$2 else p59$2);
    p58$1 := (if p57$1 && !v74$1 then !v74$1 else p58$1);
    p58$2 := (if p57$2 && !v74$2 then !v74$2 else p58$2);
    $overflow_into_bin_plus_3.i20.0$1 := (if p58$1 then 0 else $overflow_into_bin_plus_3.i20.0$1);
    $overflow_into_bin_plus_3.i20.0$2 := (if p58$2 then 0 else $overflow_into_bin_plus_3.i20.0$2);
    $overflow_into_bin_plus_3.i20.0$1 := (if p59$1 then 1 else $overflow_into_bin_plus_3.i20.0$1);
    $overflow_into_bin_plus_3.i20.0$2 := (if p59$2 then 1 else $overflow_into_bin_plus_3.i20.0$2);
    v75$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_1.i18.0$1, 1, 0) == 1 else v75$1);
    v75$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_1.i18.0$2, 1, 0) == 1 else v75$2);
    p61$1 := (if p47$1 && v75$1 then v75$1 else p61$1);
    p61$2 := (if p47$2 && v75$2 then v75$2 else p61$2);
    p60$1 := (if p47$1 && !v75$1 then !v75$1 else p60$1);
    p60$2 := (if p47$2 && !v75$2 then !v75$2 else p60$2);
    $bin_plus_1_add.i24.1$1 := (if p60$1 then $bin_plus_1_add.i24.0$1 else $bin_plus_1_add.i24.1$1);
    $bin_plus_1_add.i24.1$2 := (if p60$2 then $bin_plus_1_add.i24.0$2 else $bin_plus_1_add.i24.1$2);
    $bin_plus_1_add.i24.1$1 := (if p61$1 then (if BV32_ULT(v70$1, 255) then -1 else 255) else $bin_plus_1_add.i24.1$1);
    $bin_plus_1_add.i24.1$2 := (if p61$2 then (if BV32_ULT(v70$2, 255) then -1 else 255) else $bin_plus_1_add.i24.1$2);
    v76$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_2.i19.0$1, 1, 0) == 1 else v76$1);
    v76$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_2.i19.0$2, 1, 0) == 1 else v76$2);
    p63$1 := (if p47$1 && v76$1 then v76$1 else p63$1);
    p63$2 := (if p47$2 && v76$2 then v76$2 else p63$2);
    p62$1 := (if p47$1 && !v76$1 then !v76$1 else p62$1);
    p62$2 := (if p47$2 && !v76$2 then !v76$2 else p62$2);
    $bin_plus_2_add.i25.1$1 := (if p62$1 then $bin_plus_2_add.i25.0$1 else $bin_plus_2_add.i25.1$1);
    $bin_plus_2_add.i25.1$2 := (if p62$2 then $bin_plus_2_add.i25.0$2 else $bin_plus_2_add.i25.1$2);
    $bin_plus_2_add.i25.1$1 := (if p63$1 then (if BV32_ULT(v71$1, 255) then -1 else 255) else $bin_plus_2_add.i25.1$1);
    $bin_plus_2_add.i25.1$2 := (if p63$2 then (if BV32_ULT(v71$2, 255) then -1 else 255) else $bin_plus_2_add.i25.1$2);
    v77$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_3.i20.0$1, 1, 0) == 1 else v77$1);
    v77$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_3.i20.0$2, 1, 0) == 1 else v77$2);
    p65$1 := (if p47$1 && v77$1 then v77$1 else p65$1);
    p65$2 := (if p47$2 && v77$2 then v77$2 else p65$2);
    p64$1 := (if p47$1 && !v77$1 then !v77$1 else p64$1);
    p64$2 := (if p47$2 && !v77$2 then !v77$2 else p64$2);
    $bin_plus_3_add.i26.1$1 := (if p64$1 then $bin_plus_3_add.i26.0$1 else $bin_plus_3_add.i26.1$1);
    $bin_plus_3_add.i26.1$2 := (if p64$2 then $bin_plus_3_add.i26.0$2 else $bin_plus_3_add.i26.1$2);
    $bin_plus_3_add.i26.1$1 := (if p65$1 then (if BV32_ULT(BV32_AND(BV32_LSHR(v63$1, BV32_AND(BV32_ADD(v61$1, 24), 31)), 255), 255) then -1 else 255) else $bin_plus_3_add.i26.1$1);
    $bin_plus_3_add.i26.1$2 := (if p65$2 then (if BV32_ULT(BV32_AND(BV32_LSHR(v63$2, BV32_AND(BV32_ADD(v61$2, 24), 31)), 255), 255) then -1 else 255) else $bin_plus_3_add.i26.1$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_ATOMIC_$$global_overflow(p47$1, BV32_SDIV(BV32_MUL(v66$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 78} _CHECK_ATOMIC_$$global_overflow(p47$2, BV32_SDIV(BV32_MUL(v66$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v78$1 := (if p47$1 then _HAVOC_int$1 else v78$1);
    v78$2 := (if p47$2 then _HAVOC_int$2 else v78$2);
    v79$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_1.i18.0$1, 1, 0) == 1 else v79$1);
    v79$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_1.i18.0$2, 1, 0) == 1 else v79$2);
    p67$1 := (if p47$1 && v79$1 then v79$1 else p67$1);
    p67$2 := (if p47$2 && v79$2 then v79$2 else p67$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_ATOMIC_$$global_overflow(p67$1, BV32_SDIV(BV32_MUL(BV32_ADD(v66$1, 1), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 80} _CHECK_ATOMIC_$$global_overflow(p67$2, BV32_SDIV(BV32_MUL(BV32_ADD(v66$2, 1), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v80$1 := (if p67$1 then _HAVOC_int$1 else v80$1);
    v80$2 := (if p67$2 then _HAVOC_int$2 else v80$2);
    v81$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_2.i19.0$1, 1, 0) == 1 else v81$1);
    v81$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_2.i19.0$2, 1, 0) == 1 else v81$2);
    p69$1 := (if p47$1 && v81$1 then v81$1 else p69$1);
    p69$2 := (if p47$2 && v81$2 then v81$2 else p69$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_ATOMIC_$$global_overflow(p69$1, BV32_SDIV(BV32_MUL(BV32_ADD(v66$1, 2), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 83} _CHECK_ATOMIC_$$global_overflow(p69$2, BV32_SDIV(BV32_MUL(BV32_ADD(v66$2, 2), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v82$1 := (if p69$1 then _HAVOC_int$1 else v82$1);
    v82$2 := (if p69$2 then _HAVOC_int$2 else v82$2);
    v83$1 := (if p47$1 then BV_EXTRACT($overflow_into_bin_plus_3.i20.0$1, 1, 0) == 1 else v83$1);
    v83$2 := (if p47$2 then BV_EXTRACT($overflow_into_bin_plus_3.i20.0$2, 1, 0) == 1 else v83$2);
    p71$1 := (if p47$1 && v83$1 then v83$1 else p71$1);
    p71$2 := (if p47$2 && v83$2 then v83$2 else p71$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_ATOMIC_$$global_overflow(p71$1, BV32_SDIV(BV32_MUL(BV32_ADD(v66$1, 3), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 86} _CHECK_ATOMIC_$$global_overflow(p71$2, BV32_SDIV(BV32_MUL(BV32_ADD(v66$2, 3), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_overflow"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v84$1 := (if p71$1 then _HAVOC_int$1 else v84$1);
    v84$2 := (if p71$2 then _HAVOC_int$2 else v84$2);
    $bin_plus_1_add.i24.2$1, $bin_plus_2_add.i25.2$1, $bin_plus_3_add.i26.2$1 := (if p47$1 then $bin_plus_1_add.i24.1$1 else $bin_plus_1_add.i24.2$1), (if p47$1 then $bin_plus_2_add.i25.1$1 else $bin_plus_2_add.i25.2$1), (if p47$1 then $bin_plus_3_add.i26.1$1 else $bin_plus_3_add.i26.2$1);
    $bin_plus_1_add.i24.2$2, $bin_plus_2_add.i25.2$2, $bin_plus_3_add.i26.2$2 := (if p47$2 then $bin_plus_1_add.i24.1$2 else $bin_plus_1_add.i24.2$2), (if p47$2 then $bin_plus_2_add.i25.1$2 else $bin_plus_2_add.i25.2$2), (if p47$2 then $bin_plus_3_add.i26.1$2 else $bin_plus_3_add.i26.2$2);
    $bin_plus_1_add.i24.3$1, $bin_plus_2_add.i25.3$1, $bin_plus_3_add.i26.3$1 := (if p45$1 then $bin_plus_1_add.i24.2$1 else $bin_plus_1_add.i24.3$1), (if p45$1 then $bin_plus_2_add.i25.2$1 else $bin_plus_2_add.i25.3$1), (if p45$1 then $bin_plus_3_add.i26.2$1 else $bin_plus_3_add.i26.3$1);
    $bin_plus_1_add.i24.3$2, $bin_plus_2_add.i25.3$2, $bin_plus_3_add.i26.3$2 := (if p45$2 then $bin_plus_1_add.i24.2$2 else $bin_plus_1_add.i24.3$2), (if p45$2 then $bin_plus_2_add.i25.2$2 else $bin_plus_2_add.i25.3$2), (if p45$2 then $bin_plus_3_add.i26.2$2 else $bin_plus_3_add.i26.3$2);
    $bin_plus_1_add.i24.0$1, $bin_plus_2_add.i25.0$1, $bin_plus_3_add.i26.0$1, $local_scan_load.1$1 := (if p43$1 then $bin_plus_1_add.i24.3$1 else $bin_plus_1_add.i24.0$1), (if p43$1 then $bin_plus_2_add.i25.3$1 else $bin_plus_2_add.i25.0$1), (if p43$1 then $bin_plus_3_add.i26.3$1 else $bin_plus_3_add.i26.0$1), (if p43$1 then BV32_ADD($local_scan_load.1$1, BV32_MUL(v0, v1)) else $local_scan_load.1$1);
    $bin_plus_1_add.i24.0$2, $bin_plus_2_add.i25.0$2, $bin_plus_3_add.i26.0$2, $local_scan_load.1$2 := (if p43$2 then $bin_plus_1_add.i24.3$2 else $bin_plus_1_add.i24.0$2), (if p43$2 then $bin_plus_2_add.i25.3$2 else $bin_plus_2_add.i25.0$2), (if p43$2 then $bin_plus_3_add.i26.3$2 else $bin_plus_3_add.i26.0$2), (if p43$2 then BV32_ADD($local_scan_load.1$2, BV32_MUL(v0, v1)) else $local_scan_load.1$2);
    p42$1 := (if p43$1 then true else p42$1);
    p42$2 := (if p43$2 then true else p42$2);
    goto $36.backedge, __partitioned_block_$36.tail_0;

  __partitioned_block_$36.tail_0:
    assume !p42$1 && !p42$2;
    goto __partitioned_block_$36.tail_1;

  __partitioned_block_$36.tail_1:
    call {:sourceloc_num 91} $bugle_barrier_duplicated_1(-1, 0);
    $i.i28.0$1 := local_id_x$1;
    $i.i28.0$2 := local_id_x$2;
    p72$1 := true;
    p72$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $64;

  $64:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b33 ==> _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b32 ==> _ATOMIC_HAS_OCCURRED_$$global_subhisto ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV32_SLT($i.i28.0$1, 6144) ==> p72$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV32_SLT($i.i28.0$2, 6144) ==> p72$2;
    assert {:tag "loopBound"} {:thread 1} p72$1 ==> _b17 ==> BV32_UGE($i.i28.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p72$2 ==> _b17 ==> BV32_UGE($i.i28.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p72$1 ==> _b16 ==> BV32_ULE($i.i28.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p72$2 ==> _b16 ==> BV32_ULE($i.i28.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p72$1 ==> _b15 ==> BV32_SGE($i.i28.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p72$2 ==> _b15 ==> BV32_SGE($i.i28.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p72$1 ==> _b14 ==> BV32_SLE($i.i28.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p72$2 ==> _b14 ==> BV32_SLE($i.i28.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p72$1 ==> _b13 ==> $i.i28.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p72$2 ==> _b13 ==> $i.i28.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 92} p72$1 ==> true;
    v85$1 := (if p72$1 then BV32_SLT($i.i28.0$1, 6144) else v85$1);
    v85$2 := (if p72$2 then BV32_SLT($i.i28.0$2, 6144) else v85$2);
    p73$1 := false;
    p73$2 := false;
    p73$1 := (if p72$1 && v85$1 then v85$1 else p73$1);
    p73$2 := (if p72$2 && v85$2 then v85$2 else p73$2);
    p72$1 := (if p72$1 && !v85$1 then v85$1 else p72$1);
    p72$2 := (if p72$2 && !v85$2 then v85$2 else p72$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_0$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$histo_main_kernel.sub_histo(p73$1, $i.i28.0$1, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 94} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_1$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$histo_main_kernel.sub_histo(p73$2, $i.i28.0$2, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v86$1 := (if p73$1 then _HAVOC_int$1 else v86$1);
    v86$2 := (if p73$2 then _HAVOC_int$2 else v86$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_ATOMIC_$$global_subhisto(p73$1, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$1, 4), 4)), 4));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 95} _CHECK_ATOMIC_$$global_subhisto(p73$2, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$2, 4), 4)), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_subhisto"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v87$1 := (if p73$1 then _HAVOC_int$1 else v87$1);
    v87$2 := (if p73$2 then _HAVOC_int$2 else v87$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_2$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 96} _LOG_READ_$$histo_main_kernel.sub_histo(p73$1, $i.i28.0$1, _abstracted_call_arg_2$1);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 96} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_3$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_3$2);
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 96} _CHECK_READ_$$histo_main_kernel.sub_histo(p73$2, $i.i28.0$2, _abstracted_call_arg_3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v88$1 := (if p73$1 then _HAVOC_int$1 else v88$1);
    v88$2 := (if p73$2 then _HAVOC_int$2 else v88$2);
    call {:sourceloc} {:sourceloc_num 97} _LOG_ATOMIC_$$global_subhisto(p73$1, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$1, 4), 4)), 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 97} _CHECK_ATOMIC_$$global_subhisto(p73$2, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$2, 4), 4)), 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_subhisto"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v89$1 := (if p73$1 then _HAVOC_int$1 else v89$1);
    v89$2 := (if p73$2 then _HAVOC_int$2 else v89$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_4$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$histo_main_kernel.sub_histo(p73$1, $i.i28.0$1, _abstracted_call_arg_4$1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 98} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_5$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_5$2);
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$histo_main_kernel.sub_histo(p73$2, $i.i28.0$2, _abstracted_call_arg_5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v90$1 := (if p73$1 then _HAVOC_int$1 else v90$1);
    v90$2 := (if p73$2 then _HAVOC_int$2 else v90$2);
    call {:sourceloc} {:sourceloc_num 99} _LOG_ATOMIC_$$global_subhisto(p73$1, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$1, 4), 4)), 8), 4));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 99} _CHECK_ATOMIC_$$global_subhisto(p73$2, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$2, 4), 4)), 8), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_subhisto"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v91$1 := (if p73$1 then _HAVOC_int$1 else v91$1);
    v91$2 := (if p73$2 then _HAVOC_int$2 else v91$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_6$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_6$2);
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$histo_main_kernel.sub_histo(p73$1, $i.i28.0$1, _abstracted_call_arg_6$1);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 100} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_7$1 := (if p73$1 then _HAVOC_int$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p73$2 then _HAVOC_int$2 else _abstracted_call_arg_7$2);
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$histo_main_kernel.sub_histo(p73$2, $i.i28.0$2, _abstracted_call_arg_7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$histo_main_kernel.sub_histo"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v92$1 := (if p73$1 then _HAVOC_int$1 else v92$1);
    v92$2 := (if p73$2 then _HAVOC_int$2 else v92$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_ATOMIC_$$global_subhisto(p73$1, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$1, 4), 4)), 12), 4));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 101} _CHECK_ATOMIC_$$global_subhisto(p73$2, BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 24576), 4), BV32_MUL(BV32_MUL($i.i28.0$2, 4), 4)), 12), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$global_subhisto"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v93$1 := (if p73$1 then _HAVOC_int$1 else v93$1);
    v93$2 := (if p73$2 then _HAVOC_int$2 else v93$2);
    $i.i28.0$1 := (if p73$1 then BV32_ADD($i.i28.0$1, group_size_x) else $i.i28.0$1);
    $i.i28.0$2 := (if p73$2 then BV32_ADD($i.i28.0$2, group_size_x) else $i.i28.0$2);
    p72$1 := (if p73$1 then true else p72$1);
    p72$2 := (if p73$2 then true else p72$2);
    goto $64.backedge, $64.tail;

  $64.tail:
    assume !p72$1 && !p72$2;
    return;

  $64.backedge:
    assume {:backedge} p72$1 || p72$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $64;

  $36.backedge:
    assume {:backedge} p42$1 || p42$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $36;

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $4;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 768 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 14 then 1 else 0) != 0;

axiom (if num_groups_y == 2 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies _TRACKING;



const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

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

const _WATCHED_VALUE_$$sm_mappings: int;

procedure {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_READ_$$sm_mappings(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _READ_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_READ_$$sm_mappings(_P: bool, _offset: int, _value: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sm_mappings: bool;

procedure {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sm_mappings, _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _LOG_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then true else _WRITE_HAS_OCCURRED_$$sm_mappings);
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



procedure _CHECK_WRITE_$$sm_mappings(_P: bool, _offset: int, _value: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sm_mappings != _value);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sm_mappings;



implementation {:inline 1} _LOG_ATOMIC_$$sm_mappings(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sm_mappings := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sm_mappings);
    return;
}



procedure _CHECK_ATOMIC_$$sm_mappings(_P: bool, _offset: int);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);
  requires {:source_name "sm_mappings"} {:array "$$sm_mappings"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sm_mappings;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sm_mappings(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sm_mappings := (if _P && _WRITE_HAS_OCCURRED_$$sm_mappings && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sm_mappings);
    return;
}



const _WATCHED_VALUE_$$global_subhisto: int;

procedure {:inline 1} _LOG_READ_$$global_subhisto(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$global_subhisto;



implementation {:inline 1} _LOG_READ_$$global_subhisto(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$global_subhisto := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_subhisto == _value then true else _READ_HAS_OCCURRED_$$global_subhisto);
    return;
}



procedure _CHECK_READ_$$global_subhisto(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$global_subhisto);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$global_subhisto: bool;

procedure {:inline 1} _LOG_WRITE_$$global_subhisto(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$global_subhisto, _WRITE_READ_BENIGN_FLAG_$$global_subhisto;



implementation {:inline 1} _LOG_WRITE_$$global_subhisto(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$global_subhisto := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_subhisto == _value then true else _WRITE_HAS_OCCURRED_$$global_subhisto);
    _WRITE_READ_BENIGN_FLAG_$$global_subhisto := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_subhisto == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$global_subhisto);
    return;
}



procedure _CHECK_WRITE_$$global_subhisto(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_subhisto != _value);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_subhisto != _value);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$global_subhisto(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$global_subhisto;



implementation {:inline 1} _LOG_ATOMIC_$$global_subhisto(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$global_subhisto := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$global_subhisto);
    return;
}



procedure _CHECK_ATOMIC_$$global_subhisto(_P: bool, _offset: int);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset);
  requires {:source_name "global_subhisto"} {:array "$$global_subhisto"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_subhisto(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$global_subhisto;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_subhisto(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$global_subhisto := (if _P && _WRITE_HAS_OCCURRED_$$global_subhisto && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$global_subhisto);
    return;
}



const _WATCHED_VALUE_$$global_histo: int;

procedure {:inline 1} _LOG_READ_$$global_histo(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$global_histo;



implementation {:inline 1} _LOG_READ_$$global_histo(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$global_histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_histo == _value then true else _READ_HAS_OCCURRED_$$global_histo);
    return;
}



procedure _CHECK_READ_$$global_histo(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$global_histo);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$global_histo: bool;

procedure {:inline 1} _LOG_WRITE_$$global_histo(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$global_histo, _WRITE_READ_BENIGN_FLAG_$$global_histo;



implementation {:inline 1} _LOG_WRITE_$$global_histo(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$global_histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_histo == _value then true else _WRITE_HAS_OCCURRED_$$global_histo);
    _WRITE_READ_BENIGN_FLAG_$$global_histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_histo == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$global_histo);
    return;
}



procedure _CHECK_WRITE_$$global_histo(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_histo != _value);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_histo != _value);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$global_histo(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$global_histo;



implementation {:inline 1} _LOG_ATOMIC_$$global_histo(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$global_histo := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$global_histo);
    return;
}



procedure _CHECK_ATOMIC_$$global_histo(_P: bool, _offset: int);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset);
  requires {:source_name "global_histo"} {:array "$$global_histo"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_histo(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$global_histo;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_histo(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$global_histo := (if _P && _WRITE_HAS_OCCURRED_$$global_histo && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$global_histo);
    return;
}



const _WATCHED_VALUE_$$global_overflow: int;

procedure {:inline 1} _LOG_READ_$$global_overflow(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$global_overflow;



implementation {:inline 1} _LOG_READ_$$global_overflow(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$global_overflow := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_overflow == _value then true else _READ_HAS_OCCURRED_$$global_overflow);
    return;
}



procedure _CHECK_READ_$$global_overflow(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$global_overflow);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$global_overflow: bool;

procedure {:inline 1} _LOG_WRITE_$$global_overflow(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$global_overflow, _WRITE_READ_BENIGN_FLAG_$$global_overflow;



implementation {:inline 1} _LOG_WRITE_$$global_overflow(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$global_overflow := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_overflow == _value then true else _WRITE_HAS_OCCURRED_$$global_overflow);
    _WRITE_READ_BENIGN_FLAG_$$global_overflow := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_overflow == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$global_overflow);
    return;
}



procedure _CHECK_WRITE_$$global_overflow(_P: bool, _offset: int, _value: int);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_overflow != _value);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$global_overflow != _value);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$global_overflow(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$global_overflow;



implementation {:inline 1} _LOG_ATOMIC_$$global_overflow(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$global_overflow := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$global_overflow);
    return;
}



procedure _CHECK_ATOMIC_$$global_overflow(_P: bool, _offset: int);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset);
  requires {:source_name "global_overflow"} {:array "$$global_overflow"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_overflow(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$global_overflow;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$global_overflow(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$global_overflow := (if _P && _WRITE_HAS_OCCURRED_$$global_overflow && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$global_overflow);
    return;
}



const _WATCHED_VALUE_$$histo_main_kernel.sub_histo: int;

procedure {:inline 1} _LOG_READ_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo;



implementation {:inline 1} _LOG_READ_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo_main_kernel.sub_histo == _value then true else _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo);
    return;
}



procedure _CHECK_READ_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo: bool;

procedure {:inline 1} _LOG_WRITE_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo, _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo;



implementation {:inline 1} _LOG_WRITE_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo_main_kernel.sub_histo == _value then true else _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo);
    _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo_main_kernel.sub_histo == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo);
    return;
}



procedure _CHECK_WRITE_$$histo_main_kernel.sub_histo(_P: bool, _offset: int, _value: int);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo_main_kernel.sub_histo != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$histo_main_kernel.sub_histo != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$histo_main_kernel.sub_histo(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;



implementation {:inline 1} _LOG_ATOMIC_$$histo_main_kernel.sub_histo(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo);
    return;
}



procedure _CHECK_ATOMIC_$$histo_main_kernel.sub_histo(_P: bool, _offset: int);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sub_histo"} {:array "$$histo_main_kernel.sub_histo"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo := (if _P && _WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$histo_main_kernel.sub_histo);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_subhisto;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_subhisto;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_subhisto;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_histo;
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_overflow;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_overflow;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_overflow;
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$histo_main_kernel.sub_histo;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_subhisto;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_subhisto;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_subhisto;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_histo;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_histo;
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$global_overflow;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$global_overflow;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$global_overflow;
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon5_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;
