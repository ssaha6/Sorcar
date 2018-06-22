type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$id"} {:global} {:elem_width 32} {:source_name "id"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$id: bool;

var {:source_name "od"} {:global} $$od: [bv32]bv32;

axiom {:array_info "$$od"} {:global} {:elem_width 32} {:source_name "od"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$od: bool;

axiom {:array_info "$$retval.i.i.561"} {:elem_width 32} {:source_name "retval.i.i.561"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.566"} {:elem_width 32} {:source_name "retval.i.566"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp57560"} {:elem_width 32} {:source_name "agg.tmp57560"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.537"} {:elem_width 32} {:source_name "retval.i.i.537"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.543"} {:elem_width 32} {:source_name "ref.tmp.i.543"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp50536"} {:elem_width 32} {:source_name "agg.tmp50536"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.515"} {:elem_width 32} {:source_name "retval.i.515"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.492"} {:elem_width 32} {:source_name "retval.i.i.492"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.498"} {:elem_width 32} {:source_name "ref.tmp.i.498"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp45491"} {:elem_width 32} {:source_name "agg.tmp45491"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.470"} {:elem_width 32} {:source_name "retval.i.470"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp31439"} {:elem_width 32} {:source_name "agg.tmp31439"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.420"} {:elem_width 32} {:source_name "retval.i.i.420"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.425"} {:elem_width 32} {:source_name "retval.i.425"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp32419"} {:elem_width 32} {:source_name "agg.tmp32419"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.396"} {:elem_width 32} {:source_name "retval.i.i.396"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.402"} {:elem_width 32} {:source_name "ref.tmp.i.402"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp28395"} {:elem_width 32} {:source_name "agg.tmp28395"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.374"} {:elem_width 32} {:source_name "retval.i.374"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.351"} {:elem_width 32} {:source_name "retval.i.i.351"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.357"} {:elem_width 32} {:source_name "ref.tmp.i.357"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp23350"} {:elem_width 32} {:source_name "agg.tmp23350"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.329"} {:elem_width 32} {:source_name "retval.i.329"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp13298"} {:elem_width 32} {:source_name "agg.tmp13298"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp56267"} {:elem_width 32} {:source_name "agg.tmp56267"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.246"} {:elem_width 32} {:source_name "retval.i.246"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.223"} {:elem_width 32} {:source_name "retval.i.i.223"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.229"} {:elem_width 32} {:source_name "ref.tmp.i.229"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp70222"} {:elem_width 32} {:source_name "agg.tmp70222"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.201"} {:elem_width 32} {:source_name "retval.i.201"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.182"} {:elem_width 32} {:source_name "retval.i.i.182"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i.188"} {:elem_width 32} {:source_name "ref.tmp.i.188"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp75181"} {:elem_width 32} {:source_name "agg.tmp75181"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.162"} {:elem_width 32} {:source_name "retval.i.i.162"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.167"} {:elem_width 32} {:source_name "retval.i.167"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp82161"} {:elem_width 32} {:source_name "agg.tmp82161"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.142"} {:elem_width 32} {:source_name "retval.i.i.142"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.147"} {:elem_width 32} {:source_name "retval.i.147"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp14141"} {:elem_width 32} {:source_name "agg.tmp14141"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i.127"} {:elem_width 32} {:source_name "retval.i.i.127"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp.i"} {:elem_width 32} {:source_name "ref.tmp.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp9126"} {:elem_width 32} {:source_name "agg.tmp9126"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.105"} {:elem_width 32} {:source_name "retval.i.105"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.i"} {:elem_width 32} {:source_name "retval.i.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i.98"} {:elem_width 32} {:source_name "retval.i.98"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp97"} {:elem_width 32} {:source_name "agg.tmp97"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp8190"} {:elem_width 32} {:source_name "agg.tmp8190"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$retval.i"} {:elem_width 32} {:source_name "retval.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$t"} {:elem_width 32} {:source_name "t"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$ref.tmp"} {:elem_width 32} {:source_name "ref.tmp"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp"} {:elem_width 32} {:source_name "agg.tmp"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp9"} {:elem_width 32} {:source_name "agg.tmp9"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp13"} {:elem_width 32} {:source_name "agg.tmp13"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp14"} {:elem_width 32} {:source_name "agg.tmp14"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp23"} {:elem_width 32} {:source_name "agg.tmp23"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp28"} {:elem_width 32} {:source_name "agg.tmp28"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp31"} {:elem_width 32} {:source_name "agg.tmp31"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp32"} {:elem_width 32} {:source_name "agg.tmp32"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp45"} {:elem_width 32} {:source_name "agg.tmp45"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp50"} {:elem_width 32} {:source_name "agg.tmp50"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp56"} {:elem_width 32} {:source_name "agg.tmp56"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp57"} {:elem_width 32} {:source_name "agg.tmp57"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp70"} {:elem_width 32} {:source_name "agg.tmp70"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp75"} {:elem_width 32} {:source_name "agg.tmp75"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp81"} {:elem_width 32} {:source_name "agg.tmp81"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$agg.tmp82"} {:elem_width 32} {:source_name "agg.tmp82"} {:source_elem_width 128} {:source_dimensions "1"} true;

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

function FMUL32(bv32, bv32) : bv32;

function FP32_TO_UI32(bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function UI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

procedure {:source_name "d_boxfilter_rgba_y"} {:kernel} $_Z18d_boxfilter_rgba_yPjS_iii($w: bv32, $h: bv32, $r: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $w == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $h == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$id && !_WRITE_HAS_OCCURRED_$$id && !_ATOMIC_HAS_OCCURRED_$$id;
  requires !_READ_HAS_OCCURRED_$$od && !_WRITE_HAS_OCCURRED_$$od && !_ATOMIC_HAS_OCCURRED_$$od;
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
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:source_name "d_boxfilter_rgba_y"} {:kernel} $_Z18d_boxfilter_rgba_yPjS_iii($w: bv32, $h: bv32, $r: bv32)
{
  var $y.0: bv32;
  var $y18.0: bv32;
  var $y40.0: bv32;
  var $y65.0: bv32;
  var v1: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v7: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v51$1: bv32;
  var v51$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v53$1: bv32;
  var v53$2: bv32;
  var v52$1: bv32;
  var v52$2: bv32;
  var v55$1: bv32;
  var v55$2: bv32;
  var v54$1: bv32;
  var v54$2: bv32;
  var v58$1: bv32;
  var v58$2: bv32;
  var v56$1: bv32;
  var v56$2: bv32;
  var v57$1: bv32;
  var v57$2: bv32;
  var v28: bool;
  var v77$1: bv32;
  var v77$2: bv32;
  var v72$1: bv32;
  var v72$2: bv32;
  var v75$1: bv32;
  var v75$2: bv32;
  var v76$1: bv32;
  var v76$2: bv32;
  var v73$1: bv32;
  var v73$2: bv32;
  var v70$1: bv32;
  var v70$2: bv32;
  var v74$1: bv32;
  var v74$2: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v85$1: bv32;
  var v85$2: bv32;
  var v83$1: bv32;
  var v83$2: bv32;
  var v78$1: bv32;
  var v78$2: bv32;
  var v87$1: bv32;
  var v87$2: bv32;
  var v79$1: bv32;
  var v79$2: bv32;
  var v82$1: bv32;
  var v82$2: bv32;
  var v86$1: bv32;
  var v86$2: bv32;
  var v80$1: bv32;
  var v80$2: bv32;
  var v81$1: bv32;
  var v81$2: bv32;
  var v84$1: bv32;
  var v84$2: bv32;
  var v92$1: bv32;
  var v92$2: bv32;
  var v91$1: bv32;
  var v91$2: bv32;
  var v88$1: bv32;
  var v88$2: bv32;
  var v95$1: bv32;
  var v95$2: bv32;
  var v94$1: bv32;
  var v94$2: bv32;
  var v89$1: bv32;
  var v89$2: bv32;
  var v93$1: bv32;
  var v93$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v101$1: bv32;
  var v101$2: bv32;
  var v102$1: bv32;
  var v102$2: bv32;
  var v103$1: bv32;
  var v103$2: bv32;
  var v97$1: bv32;
  var v97$2: bv32;
  var v104$1: bv32;
  var v104$2: bv32;
  var v105$1: bv32;
  var v105$2: bv32;
  var v98$1: bv32;
  var v98$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v96$1: bv32;
  var v96$2: bv32;
  var v62$1: bv32;
  var v62$2: bv32;
  var v63$1: bv32;
  var v63$2: bv32;
  var v66$1: bv32;
  var v66$2: bv32;
  var v59$1: bv32;
  var v59$2: bv32;
  var v60$1: bv32;
  var v60$2: bv32;
  var v64$1: bv32;
  var v64$2: bv32;
  var v61$1: bv32;
  var v61$2: bv32;
  var v65$1: bv32;
  var v65$2: bv32;
  var v67$1: bv32;
  var v67$2: bv32;
  var v69$1: bv32;
  var v69$2: bv32;
  var v68$1: bv32;
  var v68$2: bv32;
  var v90: bool;
  var v159$1: bv32;
  var v159$2: bv32;
  var v156$1: bv32;
  var v156$2: bv32;
  var v158$1: bv32;
  var v158$2: bv32;
  var v154$1: bv32;
  var v154$2: bv32;
  var v160$1: bv32;
  var v160$2: bv32;
  var v155$1: bv32;
  var v155$2: bv32;
  var v157$1: bv32;
  var v157$2: bv32;
  var v153$1: bv32;
  var v153$2: bv32;
  var v162$1: bv32;
  var v162$2: bv32;
  var v165$1: bv32;
  var v165$2: bv32;
  var v166$1: bv32;
  var v166$2: bv32;
  var v163$1: bv32;
  var v163$2: bv32;
  var v164$1: bv32;
  var v164$2: bv32;
  var v167$1: bv32;
  var v167$2: bv32;
  var v168$1: bv32;
  var v168$2: bv32;
  var v161$1: bv32;
  var v161$2: bv32;
  var v169$1: bv32;
  var v169$2: bv32;
  var v170$1: bv32;
  var v170$2: bv32;
  var v175$1: bv32;
  var v175$2: bv32;
  var v176$1: bv32;
  var v176$2: bv32;
  var v172$1: bv32;
  var v172$2: bv32;
  var v171$1: bv32;
  var v171$2: bv32;
  var v173$1: bv32;
  var v173$2: bv32;
  var v174$1: bv32;
  var v174$2: bv32;
  var v178$1: bv32;
  var v178$2: bv32;
  var v185$1: bv32;
  var v185$2: bv32;
  var v179$1: bv32;
  var v179$2: bv32;
  var v182$1: bv32;
  var v182$2: bv32;
  var v183$1: bv32;
  var v183$2: bv32;
  var v184$1: bv32;
  var v184$2: bv32;
  var v180$1: bv32;
  var v180$2: bv32;
  var v181$1: bv32;
  var v181$2: bv32;
  var v186$1: bv32;
  var v186$2: bv32;
  var v189$1: bv32;
  var v189$2: bv32;
  var v194$1: bv32;
  var v194$2: bv32;
  var v187$1: bv32;
  var v187$2: bv32;
  var v191$1: bv32;
  var v191$2: bv32;
  var v190$1: bv32;
  var v190$2: bv32;
  var v193$1: bv32;
  var v193$2: bv32;
  var v188$1: bv32;
  var v188$2: bv32;
  var v192$1: bv32;
  var v192$2: bv32;
  var v106$1: bv32;
  var v106$2: bv32;
  var v111$1: bv32;
  var v111$2: bv32;
  var v107$1: bv32;
  var v107$2: bv32;
  var v110$1: bv32;
  var v110$2: bv32;
  var v116$1: bv32;
  var v116$2: bv32;
  var v108$1: bv32;
  var v108$2: bv32;
  var v109$1: bv32;
  var v109$2: bv32;
  var v112$1: bv32;
  var v112$2: bv32;
  var v114$1: bv32;
  var v114$2: bv32;
  var v117$1: bv32;
  var v117$2: bv32;
  var v118$1: bv32;
  var v118$2: bv32;
  var v113$1: bv32;
  var v113$2: bv32;
  var v115$1: bv32;
  var v115$2: bv32;
  var v120$1: bv32;
  var v120$2: bv32;
  var v119$1: bv32;
  var v119$2: bv32;
  var v130$1: bv32;
  var v130$2: bv32;
  var v126$1: bv32;
  var v126$2: bv32;
  var v129$1: bv32;
  var v129$2: bv32;
  var v125$1: bv32;
  var v125$2: bv32;
  var v124$1: bv32;
  var v124$2: bv32;
  var v128$1: bv32;
  var v128$2: bv32;
  var v127$1: bv32;
  var v127$2: bv32;
  var v121$1: bv32;
  var v121$2: bv32;
  var v123$1: bv32;
  var v123$2: bv32;
  var v122$1: bv32;
  var v122$2: bv32;
  var v131$1: bv32;
  var v131$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v133$1: bv32;
  var v133$2: bv32;
  var v135$1: bv32;
  var v135$2: bv32;
  var v136$1: bv32;
  var v136$2: bv32;
  var v134$1: bv32;
  var v134$2: bv32;
  var v145$1: bv32;
  var v145$2: bv32;
  var v137$1: bv32;
  var v137$2: bv32;
  var v139$1: bv32;
  var v139$2: bv32;
  var v140$1: bv32;
  var v140$2: bv32;
  var v138$1: bv32;
  var v138$2: bv32;
  var v141$1: bv32;
  var v141$2: bv32;
  var v142$1: bv32;
  var v142$2: bv32;
  var v146$1: bv32;
  var v146$2: bv32;
  var v143$1: bv32;
  var v143$2: bv32;
  var v147$1: bv32;
  var v147$2: bv32;
  var v144$1: bv32;
  var v144$2: bv32;
  var v149$1: bv32;
  var v149$2: bv32;
  var v152$1: bv32;
  var v152$2: bv32;
  var v151$1: bv32;
  var v151$2: bv32;
  var v148$1: bv32;
  var v148$2: bv32;
  var v150$1: bv32;
  var v150$2: bv32;
  var v264: bool;
  var v177: bool;
  var v268$1: bv32;
  var v268$2: bv32;
  var v269$1: bv32;
  var v269$2: bv32;
  var v263$1: bv32;
  var v263$2: bv32;
  var v262$1: bv32;
  var v262$2: bv32;
  var v261$1: bv32;
  var v261$2: bv32;
  var v265$1: bv32;
  var v265$2: bv32;
  var v266$1: bv32;
  var v266$2: bv32;
  var v267$1: bv32;
  var v267$2: bv32;
  var v273$1: bv32;
  var v273$2: bv32;
  var v274$1: bv32;
  var v274$2: bv32;
  var v276$1: bv32;
  var v276$2: bv32;
  var v272$1: bv32;
  var v272$2: bv32;
  var v277$1: bv32;
  var v277$2: bv32;
  var v275$1: bv32;
  var v275$2: bv32;
  var v270$1: bv32;
  var v270$2: bv32;
  var v271$1: bv32;
  var v271$2: bv32;
  var v278$1: bv32;
  var v278$2: bv32;
  var v282$1: bv32;
  var v282$2: bv32;
  var v285$1: bv32;
  var v285$2: bv32;
  var v283$1: bv32;
  var v283$2: bv32;
  var v279$1: bv32;
  var v279$2: bv32;
  var v280$1: bv32;
  var v280$2: bv32;
  var v284$1: bv32;
  var v284$2: bv32;
  var v281$1: bv32;
  var v281$2: bv32;
  var v202$1: bv32;
  var v202$2: bv32;
  var v197$1: bv32;
  var v197$2: bv32;
  var v198$1: bv32;
  var v198$2: bv32;
  var v195$1: bv32;
  var v195$2: bv32;
  var v203$1: bv32;
  var v203$2: bv32;
  var v200$1: bv32;
  var v200$2: bv32;
  var v201$1: bv32;
  var v201$2: bv32;
  var v199$1: bv32;
  var v199$2: bv32;
  var v196$1: bv32;
  var v196$2: bv32;
  var v208$1: bv32;
  var v208$2: bv32;
  var v206$1: bv32;
  var v206$2: bv32;
  var v207$1: bv32;
  var v207$2: bv32;
  var v205$1: bv32;
  var v205$2: bv32;
  var v209$1: bv32;
  var v209$2: bv32;
  var v210$1: bv32;
  var v210$2: bv32;
  var v204$1: bv32;
  var v204$2: bv32;
  var v217$1: bv32;
  var v217$2: bv32;
  var v219$1: bv32;
  var v219$2: bv32;
  var v214$1: bv32;
  var v214$2: bv32;
  var v215$1: bv32;
  var v215$2: bv32;
  var v216$1: bv32;
  var v216$2: bv32;
  var v213$1: bv32;
  var v213$2: bv32;
  var v212$1: bv32;
  var v212$2: bv32;
  var v211$1: bv32;
  var v211$2: bv32;
  var v218$1: bv32;
  var v218$2: bv32;
  var v226$1: bv32;
  var v226$2: bv32;
  var v222$1: bv32;
  var v222$2: bv32;
  var v220$1: bv32;
  var v220$2: bv32;
  var v221$1: bv32;
  var v221$2: bv32;
  var v225$1: bv32;
  var v225$2: bv32;
  var v227$1: bv32;
  var v227$2: bv32;
  var v223$1: bv32;
  var v223$2: bv32;
  var v224$1: bv32;
  var v224$2: bv32;
  var v233$1: bv32;
  var v233$2: bv32;
  var v235$1: bv32;
  var v235$2: bv32;
  var v237$1: bv32;
  var v237$2: bv32;
  var v238$1: bv32;
  var v238$2: bv32;
  var v232$1: bv32;
  var v232$2: bv32;
  var v231$1: bv32;
  var v231$2: bv32;
  var v229$1: bv32;
  var v229$2: bv32;
  var v234$1: bv32;
  var v234$2: bv32;
  var v230$1: bv32;
  var v230$2: bv32;
  var v236$1: bv32;
  var v236$2: bv32;
  var v228$1: bv32;
  var v228$2: bv32;
  var v243$1: bv32;
  var v243$2: bv32;
  var v240$1: bv32;
  var v240$2: bv32;
  var v245$1: bv32;
  var v245$2: bv32;
  var v239$1: bv32;
  var v239$2: bv32;
  var v241$1: bv32;
  var v241$2: bv32;
  var v242$1: bv32;
  var v242$2: bv32;
  var v244$1: bv32;
  var v244$2: bv32;
  var v246$1: bv32;
  var v246$2: bv32;
  var v248$1: bv32;
  var v248$2: bv32;
  var v252$1: bv32;
  var v252$2: bv32;
  var v250$1: bv32;
  var v250$2: bv32;
  var v249$1: bv32;
  var v249$2: bv32;
  var v255$1: bv32;
  var v255$2: bv32;
  var v247$1: bv32;
  var v247$2: bv32;
  var v251$1: bv32;
  var v251$2: bv32;
  var v254$1: bv32;
  var v254$2: bv32;
  var v253$1: bv32;
  var v253$2: bv32;
  var v257$1: bv32;
  var v257$2: bv32;
  var v259$1: bv32;
  var v259$2: bv32;
  var v256$1: bv32;
  var v256$2: bv32;
  var v260$1: bv32;
  var v260$2: bv32;
  var v258$1: bv32;
  var v258$2: bv32;
  var v288$1: bv32;
  var v288$2: bv32;
  var v287$1: bv32;
  var v287$2: bv32;
  var v291$1: bv32;
  var v291$2: bv32;
  var v292$1: bv32;
  var v292$2: bv32;
  var v286$1: bv32;
  var v286$2: bv32;
  var v289$1: bv32;
  var v289$2: bv32;
  var v293$1: bv32;
  var v293$2: bv32;
  var v290$1: bv32;
  var v290$2: bv32;
  var v298$1: bv32;
  var v298$2: bv32;
  var v302$1: bv32;
  var v302$2: bv32;
  var v294$1: bv32;
  var v294$2: bv32;
  var v297$1: bv32;
  var v297$2: bv32;
  var v296$1: bv32;
  var v296$2: bv32;
  var v299$1: bv32;
  var v299$2: bv32;
  var v295$1: bv32;
  var v295$2: bv32;
  var v300$1: bv32;
  var v300$2: bv32;
  var v301$1: bv32;
  var v301$2: bv32;
  var v308$1: bv32;
  var v308$2: bv32;
  var v306$1: bv32;
  var v306$2: bv32;
  var v303$1: bv32;
  var v303$2: bv32;
  var v307$1: bv32;
  var v307$2: bv32;
  var v309$1: bv32;
  var v309$2: bv32;
  var v304$1: bv32;
  var v304$2: bv32;
  var v305$1: bv32;
  var v305$2: bv32;
  var v310$1: bv32;
  var v310$2: bv32;
  var v319$1: bv32;
  var v319$2: bv32;
  var v313$1: bv32;
  var v313$2: bv32;
  var v318$1: bv32;
  var v318$2: bv32;
  var v315$1: bv32;
  var v315$2: bv32;
  var v314$1: bv32;
  var v314$2: bv32;
  var v316$1: bv32;
  var v316$2: bv32;
  var v311$1: bv32;
  var v311$2: bv32;
  var v317$1: bv32;
  var v317$2: bv32;
  var v312$1: bv32;
  var v312$2: bv32;
  var v326$1: bv32;
  var v326$2: bv32;
  var v325$1: bv32;
  var v325$2: bv32;
  var v320$1: bv32;
  var v320$2: bv32;
  var v323$1: bv32;
  var v323$2: bv32;
  var v327$1: bv32;
  var v327$2: bv32;
  var v321$1: bv32;
  var v321$2: bv32;
  var v322$1: bv32;
  var v322$2: bv32;
  var v324$1: bv32;
  var v324$2: bv32;
  var v331$1: bv32;
  var v331$2: bv32;
  var v334$1: bv32;
  var v334$2: bv32;
  var v335$1: bv32;
  var v335$2: bv32;
  var v330$1: bv32;
  var v330$2: bv32;
  var v332$1: bv32;
  var v332$2: bv32;
  var v333$1: bv32;
  var v333$2: bv32;
  var v328$1: bv32;
  var v328$2: bv32;
  var v329$1: bv32;
  var v329$2: bv32;
  var v342$1: bv32;
  var v342$2: bv32;
  var v346$1: bv32;
  var v346$2: bv32;
  var v336$1: bv32;
  var v336$2: bv32;
  var v338$1: bv32;
  var v338$2: bv32;
  var v339$1: bv32;
  var v339$2: bv32;
  var v337$1: bv32;
  var v337$2: bv32;
  var v340$1: bv32;
  var v340$2: bv32;
  var v341$1: bv32;
  var v341$2: bv32;
  var v344$1: bv32;
  var v344$2: bv32;
  var v345$1: bv32;
  var v345$2: bv32;
  var v343$1: bv32;
  var v343$2: bv32;
  var v347$1: bv32;
  var v347$2: bv32;
  var v349$1: bv32;
  var v349$2: bv32;
  var v348$1: bv32;
  var v348$2: bv32;
  var v350$1: bv32;
  var v350$2: bv32;


  $entry:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := FDIV32(1065353216bv32, SI32_TO_FP32(BV32_ADD(BV32_SHL($r, 1bv32), 1bv32)));
    havoc v2$1, v2$2;
    $$retval.i$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v2$1, 255bv32)), 998277249bv32);
    $$retval.i$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v2$2, 255bv32)), 998277249bv32);
    $$retval.i$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v2$2, 24bv32), 255bv32)), 998277249bv32);
    v3$1 := $$retval.i$0bv32$1;
    v3$2 := $$retval.i$0bv32$2;
    v4$1 := $$retval.i$1bv32$1;
    v4$2 := $$retval.i$1bv32$2;
    v5$1 := $$retval.i$2bv32$1;
    v5$2 := $$retval.i$2bv32$2;
    v6$1 := $$retval.i$3bv32$1;
    v6$2 := $$retval.i$3bv32$2;
    $$agg.tmp$0bv32$1 := v3$1;
    $$agg.tmp$0bv32$2 := v3$2;
    $$agg.tmp$1bv32$1 := v4$1;
    $$agg.tmp$1bv32$2 := v4$2;
    $$agg.tmp$2bv32$1 := v5$1;
    $$agg.tmp$2bv32$2 := v5$2;
    $$agg.tmp$3bv32$1 := v6$1;
    $$agg.tmp$3bv32$2 := v6$2;
    v7 := SI32_TO_FP32($r);
    v8$1 := $$agg.tmp$0bv32$1;
    v8$2 := $$agg.tmp$0bv32$2;
    $$agg.tmp97$0bv32$1 := v8$1;
    $$agg.tmp97$0bv32$2 := v8$2;
    v9$1 := $$agg.tmp$1bv32$1;
    v9$2 := $$agg.tmp$1bv32$2;
    $$agg.tmp97$1bv32$1 := v9$1;
    $$agg.tmp97$1bv32$2 := v9$2;
    v10$1 := $$agg.tmp$2bv32$1;
    v10$2 := $$agg.tmp$2bv32$2;
    $$agg.tmp97$2bv32$1 := v10$1;
    $$agg.tmp97$2bv32$2 := v10$2;
    v11$1 := $$agg.tmp$3bv32$1;
    v11$2 := $$agg.tmp$3bv32$2;
    $$agg.tmp97$3bv32$1 := v11$1;
    $$agg.tmp97$3bv32$2 := v11$2;
    v12$1 := $$agg.tmp97$0bv32$1;
    v12$2 := $$agg.tmp97$0bv32$2;
    v13$1 := $$agg.tmp97$1bv32$1;
    v13$2 := $$agg.tmp97$1bv32$2;
    v14$1 := $$agg.tmp97$2bv32$1;
    v14$2 := $$agg.tmp97$2bv32$2;
    v15$1 := $$agg.tmp97$3bv32$1;
    v15$2 := $$agg.tmp97$3bv32$2;
    $$retval.i.i$0bv32$1 := FMUL32(v12$1, v7);
    $$retval.i.i$0bv32$2 := FMUL32(v12$2, v7);
    $$retval.i.i$1bv32$1 := FMUL32(v13$1, v7);
    $$retval.i.i$1bv32$2 := FMUL32(v13$2, v7);
    $$retval.i.i$2bv32$1 := FMUL32(v14$1, v7);
    $$retval.i.i$2bv32$2 := FMUL32(v14$2, v7);
    $$retval.i.i$3bv32$1 := FMUL32(v15$1, v7);
    $$retval.i.i$3bv32$2 := FMUL32(v15$2, v7);
    v16$1 := $$retval.i.i$0bv32$1;
    v16$2 := $$retval.i.i$0bv32$2;
    v17$1 := $$retval.i.i$1bv32$1;
    v17$2 := $$retval.i.i$1bv32$2;
    v18$1 := $$retval.i.i$2bv32$1;
    v18$2 := $$retval.i.i$2bv32$2;
    v19$1 := $$retval.i.i$3bv32$1;
    v19$2 := $$retval.i.i$3bv32$2;
    $$retval.i.98$0bv32$1 := v16$1;
    $$retval.i.98$0bv32$2 := v16$2;
    $$retval.i.98$1bv32$1 := v17$1;
    $$retval.i.98$1bv32$2 := v17$2;
    $$retval.i.98$2bv32$1 := v18$1;
    $$retval.i.98$2bv32$2 := v18$2;
    $$retval.i.98$3bv32$1 := v19$1;
    $$retval.i.98$3bv32$2 := v19$2;
    v20$1 := $$retval.i.98$0bv32$1;
    v20$2 := $$retval.i.98$0bv32$2;
    v21$1 := $$retval.i.98$1bv32$1;
    v21$2 := $$retval.i.98$1bv32$2;
    v22$1 := $$retval.i.98$2bv32$1;
    v22$2 := $$retval.i.98$2bv32$2;
    v23$1 := $$retval.i.98$3bv32$1;
    v23$2 := $$retval.i.98$3bv32$2;
    $$ref.tmp$0bv32$1 := v20$1;
    $$ref.tmp$0bv32$2 := v20$2;
    $$ref.tmp$1bv32$1 := v21$1;
    $$ref.tmp$1bv32$2 := v21$2;
    $$ref.tmp$2bv32$1 := v22$1;
    $$ref.tmp$2bv32$2 := v22$2;
    $$ref.tmp$3bv32$1 := v23$1;
    $$ref.tmp$3bv32$2 := v23$2;
    v24$1 := $$ref.tmp$0bv32$1;
    v24$2 := $$ref.tmp$0bv32$2;
    $$t$0bv32$1 := v24$1;
    $$t$0bv32$2 := v24$2;
    v25$1 := $$ref.tmp$1bv32$1;
    v25$2 := $$ref.tmp$1bv32$2;
    $$t$1bv32$1 := v25$1;
    $$t$1bv32$2 := v25$2;
    v26$1 := $$ref.tmp$2bv32$1;
    v26$2 := $$ref.tmp$2bv32$2;
    $$t$2bv32$1 := v26$1;
    $$t$2bv32$2 := v26$2;
    v27$1 := $$ref.tmp$3bv32$1;
    v27$2 := $$ref.tmp$3bv32$2;
    $$t$3bv32$1 := v27$1;
    $$t$3bv32$2 := v27$2;
    $y.0 := 0bv32;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 56} true;
    v28 := BV32_SLT($y.0, BV32_ADD($r, 1bv32));
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v28;
    v54$1 := $$t$0bv32$1;
    v54$2 := $$t$0bv32$2;
    $$agg.tmp14$0bv32$1 := v54$1;
    $$agg.tmp14$0bv32$2 := v54$2;
    v55$1 := $$t$1bv32$1;
    v55$2 := $$t$1bv32$2;
    $$agg.tmp14$1bv32$1 := v55$1;
    $$agg.tmp14$1bv32$2 := v55$2;
    v56$1 := $$t$2bv32$1;
    v56$2 := $$t$2bv32$2;
    $$agg.tmp14$2bv32$1 := v56$1;
    $$agg.tmp14$2bv32$2 := v56$2;
    v57$1 := $$t$3bv32$1;
    v57$2 := $$t$3bv32$2;
    $$agg.tmp14$3bv32$1 := v57$1;
    $$agg.tmp14$3bv32$2 := v57$2;
    v58$1 := $$agg.tmp14$0bv32$1;
    v58$2 := $$agg.tmp14$0bv32$2;
    $$agg.tmp14141$0bv32$1 := v58$1;
    $$agg.tmp14141$0bv32$2 := v58$2;
    v59$1 := $$agg.tmp14$1bv32$1;
    v59$2 := $$agg.tmp14$1bv32$2;
    $$agg.tmp14141$1bv32$1 := v59$1;
    $$agg.tmp14141$1bv32$2 := v59$2;
    v60$1 := $$agg.tmp14$2bv32$1;
    v60$2 := $$agg.tmp14$2bv32$2;
    $$agg.tmp14141$2bv32$1 := v60$1;
    $$agg.tmp14141$2bv32$2 := v60$2;
    v61$1 := $$agg.tmp14$3bv32$1;
    v61$2 := $$agg.tmp14$3bv32$2;
    $$agg.tmp14141$3bv32$1 := v61$1;
    $$agg.tmp14141$3bv32$2 := v61$2;
    v62$1 := $$agg.tmp14141$0bv32$1;
    v62$2 := $$agg.tmp14141$0bv32$2;
    v63$1 := $$agg.tmp14141$1bv32$1;
    v63$2 := $$agg.tmp14141$1bv32$2;
    v64$1 := $$agg.tmp14141$2bv32$1;
    v64$2 := $$agg.tmp14141$2bv32$2;
    v65$1 := $$agg.tmp14141$3bv32$1;
    v65$2 := $$agg.tmp14141$3bv32$2;
    $$retval.i.i.142$0bv32$1 := FMUL32(v62$1, v1);
    $$retval.i.i.142$0bv32$2 := FMUL32(v62$2, v1);
    $$retval.i.i.142$1bv32$1 := FMUL32(v63$1, v1);
    $$retval.i.i.142$1bv32$2 := FMUL32(v63$2, v1);
    $$retval.i.i.142$2bv32$1 := FMUL32(v64$1, v1);
    $$retval.i.i.142$2bv32$2 := FMUL32(v64$2, v1);
    $$retval.i.i.142$3bv32$1 := FMUL32(v65$1, v1);
    $$retval.i.i.142$3bv32$2 := FMUL32(v65$2, v1);
    v66$1 := $$retval.i.i.142$0bv32$1;
    v66$2 := $$retval.i.i.142$0bv32$2;
    v67$1 := $$retval.i.i.142$1bv32$1;
    v67$2 := $$retval.i.i.142$1bv32$2;
    v68$1 := $$retval.i.i.142$2bv32$1;
    v68$2 := $$retval.i.i.142$2bv32$2;
    v69$1 := $$retval.i.i.142$3bv32$1;
    v69$2 := $$retval.i.i.142$3bv32$2;
    $$retval.i.147$0bv32$1 := v66$1;
    $$retval.i.147$0bv32$2 := v66$2;
    $$retval.i.147$1bv32$1 := v67$1;
    $$retval.i.147$1bv32$2 := v67$2;
    $$retval.i.147$2bv32$1 := v68$1;
    $$retval.i.147$2bv32$2 := v68$2;
    $$retval.i.147$3bv32$1 := v69$1;
    $$retval.i.147$3bv32$2 := v69$2;
    v70$1 := $$retval.i.147$0bv32$1;
    v70$2 := $$retval.i.147$0bv32$2;
    v71$1 := $$retval.i.147$1bv32$1;
    v71$2 := $$retval.i.147$1bv32$2;
    v72$1 := $$retval.i.147$2bv32$1;
    v72$2 := $$retval.i.147$2bv32$2;
    v73$1 := $$retval.i.147$3bv32$1;
    v73$2 := $$retval.i.147$3bv32$2;
    $$agg.tmp13$0bv32$1 := v70$1;
    $$agg.tmp13$0bv32$2 := v70$2;
    $$agg.tmp13$1bv32$1 := v71$1;
    $$agg.tmp13$1bv32$2 := v71$2;
    $$agg.tmp13$2bv32$1 := v72$1;
    $$agg.tmp13$2bv32$2 := v72$2;
    $$agg.tmp13$3bv32$1 := v73$1;
    $$agg.tmp13$3bv32$2 := v73$2;
    v74$1 := $$agg.tmp13$0bv32$1;
    v74$2 := $$agg.tmp13$0bv32$2;
    $$agg.tmp13298$0bv32$1 := v74$1;
    $$agg.tmp13298$0bv32$2 := v74$2;
    v75$1 := $$agg.tmp13$1bv32$1;
    v75$2 := $$agg.tmp13$1bv32$2;
    $$agg.tmp13298$1bv32$1 := v75$1;
    $$agg.tmp13298$1bv32$2 := v75$2;
    v76$1 := $$agg.tmp13$2bv32$1;
    v76$2 := $$agg.tmp13$2bv32$2;
    $$agg.tmp13298$2bv32$1 := v76$1;
    $$agg.tmp13298$2bv32$2 := v76$2;
    v77$1 := $$agg.tmp13$3bv32$1;
    v77$2 := $$agg.tmp13$3bv32$2;
    $$agg.tmp13298$3bv32$1 := v77$1;
    $$agg.tmp13298$3bv32$2 := v77$2;
    v78$1 := $$agg.tmp13298$0bv32$1;
    v78$2 := $$agg.tmp13298$0bv32$2;
    call {:sourceloc_num 158} v79$1, v79$2 := $__saturatef(v78$1, v78$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp13298$0bv32$1 := v79$1;
    $$agg.tmp13298$0bv32$2 := v79$2;
    v80$1 := $$agg.tmp13298$1bv32$1;
    v80$2 := $$agg.tmp13298$1bv32$2;
    call {:sourceloc_num 161} v81$1, v81$2 := $__saturatef(v80$1, v80$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp13298$1bv32$1 := v81$1;
    $$agg.tmp13298$1bv32$2 := v81$2;
    v82$1 := $$agg.tmp13298$2bv32$1;
    v82$2 := $$agg.tmp13298$2bv32$2;
    call {:sourceloc_num 164} v83$1, v83$2 := $__saturatef(v82$1, v82$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp13298$2bv32$1 := v83$1;
    $$agg.tmp13298$2bv32$2 := v83$2;
    v84$1 := $$agg.tmp13298$3bv32$1;
    v84$2 := $$agg.tmp13298$3bv32$2;
    call {:sourceloc_num 167} v85$1, v85$2 := $__saturatef(v84$1, v84$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp13298$3bv32$1 := v85$1;
    $$agg.tmp13298$3bv32$2 := v85$2;
    v86$1 := $$agg.tmp13298$3bv32$1;
    v86$2 := $$agg.tmp13298$3bv32$2;
    v87$1 := $$agg.tmp13298$2bv32$1;
    v87$2 := $$agg.tmp13298$2bv32$2;
    v88$1 := $$agg.tmp13298$1bv32$1;
    v88$2 := $$agg.tmp13298$1bv32$2;
    v89$1 := $$agg.tmp13298$0bv32$1;
    v89$2 := $$agg.tmp13298$0bv32$2;
    call {:sourceloc} {:sourceloc_num 173} _LOG_WRITE_$$od(true, v0$1, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v86$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v87$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v88$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v89$1, 1132396544bv32))), $$od[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 173} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 173} _CHECK_WRITE_$$od(true, v0$2, BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v86$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v87$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v88$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v89$2, 1132396544bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[v0$1] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v86$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v87$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v88$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v89$1, 1132396544bv32)));
    $$od[v0$2] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v86$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v87$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v88$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v89$2, 1132396544bv32)));
    $y18.0 := 1bv32;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.19;

  $for.cond.19:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessBreak"} _b18 ==> _WRITE_HAS_OCCURRED_$$od ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), BV32_ADD(BV32_MUL(0bv32, $w), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)));
    assert {:tag "accessUpperBoundBlock"} _b16 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), group_size_x), local_id_x$1));
    assert {:tag "accessLowerBoundBlock"} _b15 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($y18.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($y18.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($y18.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($y18.0, 1bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $y18.0);
    assert {:block_sourceloc} {:sourceloc_num 174} true;
    v90 := BV32_SLT($y18.0, BV32_ADD($r, 1bv32));
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v90;
    $y40.0 := BV32_ADD($r, 1bv32);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.42;

  $for.cond.42:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessBreak"} _b22 ==> _WRITE_HAS_OCCURRED_$$od ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b21 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), BV32_ADD(BV32_MUL(0bv32, $w), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)));
    assert {:tag "accessUpperBoundBlock"} _b20 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), group_size_x), local_id_x$1));
    assert {:tag "accessLowerBoundBlock"} _b19 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($y40.0, BV32_ADD($r, 1bv32));
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($y40.0, BV32_ADD($r, 1bv32));
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($y40.0, BV32_ADD($r, 1bv32));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($y40.0, BV32_ADD($r, 1bv32));
    assert {:tag "guardNonNeg"} {:thread 1} _b5 ==> BV32_SLE(0bv32, $y40.0);
    assert {:block_sourceloc} {:sourceloc_num 341} true;
    v177 := BV32_SLT($y40.0, BV32_SUB($h, $r));
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v177;
    $y65.0 := BV32_SUB($h, $r);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond.67;

  $for.cond.67:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessBreak"} _b26 ==> _WRITE_HAS_OCCURRED_$$od ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b25 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, $w), 1bv32), BV32_ADD(BV32_MUL(0bv32, $w), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)));
    assert {:tag "accessUpperBoundBlock"} _b24 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), group_size_x), local_id_x$1));
    assert {:tag "accessLowerBoundBlock"} _b23 ==> _WRITE_HAS_OCCURRED_$$od ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET);
    assert {:tag "loopBound"} {:thread 1} _b14 ==> BV32_UGE($y65.0, BV32_SUB($h, $r));
    assert {:tag "loopBound"} {:thread 1} _b13 ==> BV32_ULE($y65.0, BV32_SUB($h, $r));
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_SGE($y65.0, BV32_SUB($h, $r));
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_SLE($y65.0, BV32_SUB($h, $r));
    assert {:tag "guardNonNeg"} {:thread 1} _b10 ==> BV32_SLE(0bv32, $y65.0);
    assert {:block_sourceloc} {:sourceloc_num 508} true;
    v264 := BV32_SLT($y65.0, $h);
    goto $truebb2, $falsebb2;

  $falsebb2:
    assume {:partition} !v264;
    return;

  $truebb2:
    assume {:partition} v264;
    havoc v265$1, v265$2;
    $$retval.i.246$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v265$1, 255bv32)), 998277249bv32);
    $$retval.i.246$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v265$2, 255bv32)), 998277249bv32);
    $$retval.i.246$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.246$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.246$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.246$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.246$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.246$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v265$2, 24bv32), 255bv32)), 998277249bv32);
    v266$1 := $$retval.i.246$0bv32$1;
    v266$2 := $$retval.i.246$0bv32$2;
    v267$1 := $$retval.i.246$1bv32$1;
    v267$2 := $$retval.i.246$1bv32$2;
    v268$1 := $$retval.i.246$2bv32$1;
    v268$2 := $$retval.i.246$2bv32$2;
    v269$1 := $$retval.i.246$3bv32$1;
    v269$2 := $$retval.i.246$3bv32$2;
    $$agg.tmp70$0bv32$1 := v266$1;
    $$agg.tmp70$0bv32$2 := v266$2;
    $$agg.tmp70$1bv32$1 := v267$1;
    $$agg.tmp70$1bv32$2 := v267$2;
    $$agg.tmp70$2bv32$1 := v268$1;
    $$agg.tmp70$2bv32$2 := v268$2;
    $$agg.tmp70$3bv32$1 := v269$1;
    $$agg.tmp70$3bv32$2 := v269$2;
    v270$1 := $$agg.tmp70$0bv32$1;
    v270$2 := $$agg.tmp70$0bv32$2;
    $$agg.tmp70222$0bv32$1 := v270$1;
    $$agg.tmp70222$0bv32$2 := v270$2;
    v271$1 := $$agg.tmp70$1bv32$1;
    v271$2 := $$agg.tmp70$1bv32$2;
    $$agg.tmp70222$1bv32$1 := v271$1;
    $$agg.tmp70222$1bv32$2 := v271$2;
    v272$1 := $$agg.tmp70$2bv32$1;
    v272$2 := $$agg.tmp70$2bv32$2;
    $$agg.tmp70222$2bv32$1 := v272$1;
    $$agg.tmp70222$2bv32$2 := v272$2;
    v273$1 := $$agg.tmp70$3bv32$1;
    v273$2 := $$agg.tmp70$3bv32$2;
    $$agg.tmp70222$3bv32$1 := v273$1;
    $$agg.tmp70222$3bv32$2 := v273$2;
    v274$1 := $$t$0bv32$1;
    v274$2 := $$t$0bv32$2;
    v275$1 := $$agg.tmp70222$0bv32$1;
    v275$2 := $$agg.tmp70222$0bv32$2;
    v276$1 := $$t$1bv32$1;
    v276$2 := $$t$1bv32$2;
    v277$1 := $$agg.tmp70222$1bv32$1;
    v277$2 := $$agg.tmp70222$1bv32$2;
    v278$1 := $$t$2bv32$1;
    v278$2 := $$t$2bv32$2;
    v279$1 := $$agg.tmp70222$2bv32$1;
    v279$2 := $$agg.tmp70222$2bv32$2;
    v280$1 := $$t$3bv32$1;
    v280$2 := $$t$3bv32$2;
    v281$1 := $$agg.tmp70222$3bv32$1;
    v281$2 := $$agg.tmp70222$3bv32$2;
    $$retval.i.i.223$0bv32$1 := FADD32(v274$1, v275$1);
    $$retval.i.i.223$0bv32$2 := FADD32(v274$2, v275$2);
    $$retval.i.i.223$1bv32$1 := FADD32(v276$1, v277$1);
    $$retval.i.i.223$1bv32$2 := FADD32(v276$2, v277$2);
    $$retval.i.i.223$2bv32$1 := FADD32(v278$1, v279$1);
    $$retval.i.i.223$2bv32$2 := FADD32(v278$2, v279$2);
    $$retval.i.i.223$3bv32$1 := FADD32(v280$1, v281$1);
    $$retval.i.i.223$3bv32$2 := FADD32(v280$2, v281$2);
    v282$1 := $$retval.i.i.223$0bv32$1;
    v282$2 := $$retval.i.i.223$0bv32$2;
    v283$1 := $$retval.i.i.223$1bv32$1;
    v283$2 := $$retval.i.i.223$1bv32$2;
    v284$1 := $$retval.i.i.223$2bv32$1;
    v284$2 := $$retval.i.i.223$2bv32$2;
    v285$1 := $$retval.i.i.223$3bv32$1;
    v285$2 := $$retval.i.i.223$3bv32$2;
    $$ref.tmp.i.229$0bv32$1 := v282$1;
    $$ref.tmp.i.229$0bv32$2 := v282$2;
    $$ref.tmp.i.229$1bv32$1 := v283$1;
    $$ref.tmp.i.229$1bv32$2 := v283$2;
    $$ref.tmp.i.229$2bv32$1 := v284$1;
    $$ref.tmp.i.229$2bv32$2 := v284$2;
    $$ref.tmp.i.229$3bv32$1 := v285$1;
    $$ref.tmp.i.229$3bv32$2 := v285$2;
    v286$1 := $$ref.tmp.i.229$0bv32$1;
    v286$2 := $$ref.tmp.i.229$0bv32$2;
    $$t$0bv32$1 := v286$1;
    $$t$0bv32$2 := v286$2;
    v287$1 := $$ref.tmp.i.229$1bv32$1;
    v287$2 := $$ref.tmp.i.229$1bv32$2;
    $$t$1bv32$1 := v287$1;
    $$t$1bv32$2 := v287$2;
    v288$1 := $$ref.tmp.i.229$2bv32$1;
    v288$2 := $$ref.tmp.i.229$2bv32$2;
    $$t$2bv32$1 := v288$1;
    $$t$2bv32$2 := v288$2;
    v289$1 := $$ref.tmp.i.229$3bv32$1;
    v289$2 := $$ref.tmp.i.229$3bv32$2;
    $$t$3bv32$1 := v289$1;
    $$t$3bv32$2 := v289$2;
    havoc v290$1, v290$2;
    $$retval.i.201$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v290$1, 255bv32)), 998277249bv32);
    $$retval.i.201$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v290$2, 255bv32)), 998277249bv32);
    $$retval.i.201$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.201$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.201$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.201$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.201$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.201$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v290$2, 24bv32), 255bv32)), 998277249bv32);
    v291$1 := $$retval.i.201$0bv32$1;
    v291$2 := $$retval.i.201$0bv32$2;
    v292$1 := $$retval.i.201$1bv32$1;
    v292$2 := $$retval.i.201$1bv32$2;
    v293$1 := $$retval.i.201$2bv32$1;
    v293$2 := $$retval.i.201$2bv32$2;
    v294$1 := $$retval.i.201$3bv32$1;
    v294$2 := $$retval.i.201$3bv32$2;
    $$agg.tmp75$0bv32$1 := v291$1;
    $$agg.tmp75$0bv32$2 := v291$2;
    $$agg.tmp75$1bv32$1 := v292$1;
    $$agg.tmp75$1bv32$2 := v292$2;
    $$agg.tmp75$2bv32$1 := v293$1;
    $$agg.tmp75$2bv32$2 := v293$2;
    $$agg.tmp75$3bv32$1 := v294$1;
    $$agg.tmp75$3bv32$2 := v294$2;
    v295$1 := $$agg.tmp75$0bv32$1;
    v295$2 := $$agg.tmp75$0bv32$2;
    $$agg.tmp75181$0bv32$1 := v295$1;
    $$agg.tmp75181$0bv32$2 := v295$2;
    v296$1 := $$agg.tmp75$1bv32$1;
    v296$2 := $$agg.tmp75$1bv32$2;
    $$agg.tmp75181$1bv32$1 := v296$1;
    $$agg.tmp75181$1bv32$2 := v296$2;
    v297$1 := $$agg.tmp75$2bv32$1;
    v297$2 := $$agg.tmp75$2bv32$2;
    $$agg.tmp75181$2bv32$1 := v297$1;
    $$agg.tmp75181$2bv32$2 := v297$2;
    v298$1 := $$agg.tmp75$3bv32$1;
    v298$2 := $$agg.tmp75$3bv32$2;
    $$agg.tmp75181$3bv32$1 := v298$1;
    $$agg.tmp75181$3bv32$2 := v298$2;
    v299$1 := $$t$0bv32$1;
    v299$2 := $$t$0bv32$2;
    v300$1 := $$agg.tmp75181$0bv32$1;
    v300$2 := $$agg.tmp75181$0bv32$2;
    v301$1 := $$t$1bv32$1;
    v301$2 := $$t$1bv32$2;
    v302$1 := $$agg.tmp75181$1bv32$1;
    v302$2 := $$agg.tmp75181$1bv32$2;
    v303$1 := $$t$2bv32$1;
    v303$2 := $$t$2bv32$2;
    v304$1 := $$agg.tmp75181$2bv32$1;
    v304$2 := $$agg.tmp75181$2bv32$2;
    v305$1 := $$t$3bv32$1;
    v305$2 := $$t$3bv32$2;
    v306$1 := $$agg.tmp75181$3bv32$1;
    v306$2 := $$agg.tmp75181$3bv32$2;
    $$retval.i.i.182$0bv32$1 := FSUB32(v299$1, v300$1);
    $$retval.i.i.182$0bv32$2 := FSUB32(v299$2, v300$2);
    $$retval.i.i.182$1bv32$1 := FSUB32(v301$1, v302$1);
    $$retval.i.i.182$1bv32$2 := FSUB32(v301$2, v302$2);
    $$retval.i.i.182$2bv32$1 := FSUB32(v303$1, v304$1);
    $$retval.i.i.182$2bv32$2 := FSUB32(v303$2, v304$2);
    $$retval.i.i.182$3bv32$1 := FSUB32(v305$1, v306$1);
    $$retval.i.i.182$3bv32$2 := FSUB32(v305$2, v306$2);
    v307$1 := $$retval.i.i.182$0bv32$1;
    v307$2 := $$retval.i.i.182$0bv32$2;
    v308$1 := $$retval.i.i.182$1bv32$1;
    v308$2 := $$retval.i.i.182$1bv32$2;
    v309$1 := $$retval.i.i.182$2bv32$1;
    v309$2 := $$retval.i.i.182$2bv32$2;
    v310$1 := $$retval.i.i.182$3bv32$1;
    v310$2 := $$retval.i.i.182$3bv32$2;
    $$ref.tmp.i.188$0bv32$1 := v307$1;
    $$ref.tmp.i.188$0bv32$2 := v307$2;
    $$ref.tmp.i.188$1bv32$1 := v308$1;
    $$ref.tmp.i.188$1bv32$2 := v308$2;
    $$ref.tmp.i.188$2bv32$1 := v309$1;
    $$ref.tmp.i.188$2bv32$2 := v309$2;
    $$ref.tmp.i.188$3bv32$1 := v310$1;
    $$ref.tmp.i.188$3bv32$2 := v310$2;
    v311$1 := $$ref.tmp.i.188$0bv32$1;
    v311$2 := $$ref.tmp.i.188$0bv32$2;
    $$t$0bv32$1 := v311$1;
    $$t$0bv32$2 := v311$2;
    v312$1 := $$ref.tmp.i.188$1bv32$1;
    v312$2 := $$ref.tmp.i.188$1bv32$2;
    $$t$1bv32$1 := v312$1;
    $$t$1bv32$2 := v312$2;
    v313$1 := $$ref.tmp.i.188$2bv32$1;
    v313$2 := $$ref.tmp.i.188$2bv32$2;
    $$t$2bv32$1 := v313$1;
    $$t$2bv32$2 := v313$2;
    v314$1 := $$ref.tmp.i.188$3bv32$1;
    v314$2 := $$ref.tmp.i.188$3bv32$2;
    $$t$3bv32$1 := v314$1;
    $$t$3bv32$2 := v314$2;
    v315$1 := $$t$0bv32$1;
    v315$2 := $$t$0bv32$2;
    $$agg.tmp82$0bv32$1 := v315$1;
    $$agg.tmp82$0bv32$2 := v315$2;
    v316$1 := $$t$1bv32$1;
    v316$2 := $$t$1bv32$2;
    $$agg.tmp82$1bv32$1 := v316$1;
    $$agg.tmp82$1bv32$2 := v316$2;
    v317$1 := $$t$2bv32$1;
    v317$2 := $$t$2bv32$2;
    $$agg.tmp82$2bv32$1 := v317$1;
    $$agg.tmp82$2bv32$2 := v317$2;
    v318$1 := $$t$3bv32$1;
    v318$2 := $$t$3bv32$2;
    $$agg.tmp82$3bv32$1 := v318$1;
    $$agg.tmp82$3bv32$2 := v318$2;
    v319$1 := $$agg.tmp82$0bv32$1;
    v319$2 := $$agg.tmp82$0bv32$2;
    $$agg.tmp82161$0bv32$1 := v319$1;
    $$agg.tmp82161$0bv32$2 := v319$2;
    v320$1 := $$agg.tmp82$1bv32$1;
    v320$2 := $$agg.tmp82$1bv32$2;
    $$agg.tmp82161$1bv32$1 := v320$1;
    $$agg.tmp82161$1bv32$2 := v320$2;
    v321$1 := $$agg.tmp82$2bv32$1;
    v321$2 := $$agg.tmp82$2bv32$2;
    $$agg.tmp82161$2bv32$1 := v321$1;
    $$agg.tmp82161$2bv32$2 := v321$2;
    v322$1 := $$agg.tmp82$3bv32$1;
    v322$2 := $$agg.tmp82$3bv32$2;
    $$agg.tmp82161$3bv32$1 := v322$1;
    $$agg.tmp82161$3bv32$2 := v322$2;
    v323$1 := $$agg.tmp82161$0bv32$1;
    v323$2 := $$agg.tmp82161$0bv32$2;
    v324$1 := $$agg.tmp82161$1bv32$1;
    v324$2 := $$agg.tmp82161$1bv32$2;
    v325$1 := $$agg.tmp82161$2bv32$1;
    v325$2 := $$agg.tmp82161$2bv32$2;
    v326$1 := $$agg.tmp82161$3bv32$1;
    v326$2 := $$agg.tmp82161$3bv32$2;
    $$retval.i.i.162$0bv32$1 := FMUL32(v323$1, v1);
    $$retval.i.i.162$0bv32$2 := FMUL32(v323$2, v1);
    $$retval.i.i.162$1bv32$1 := FMUL32(v324$1, v1);
    $$retval.i.i.162$1bv32$2 := FMUL32(v324$2, v1);
    $$retval.i.i.162$2bv32$1 := FMUL32(v325$1, v1);
    $$retval.i.i.162$2bv32$2 := FMUL32(v325$2, v1);
    $$retval.i.i.162$3bv32$1 := FMUL32(v326$1, v1);
    $$retval.i.i.162$3bv32$2 := FMUL32(v326$2, v1);
    v327$1 := $$retval.i.i.162$0bv32$1;
    v327$2 := $$retval.i.i.162$0bv32$2;
    v328$1 := $$retval.i.i.162$1bv32$1;
    v328$2 := $$retval.i.i.162$1bv32$2;
    v329$1 := $$retval.i.i.162$2bv32$1;
    v329$2 := $$retval.i.i.162$2bv32$2;
    v330$1 := $$retval.i.i.162$3bv32$1;
    v330$2 := $$retval.i.i.162$3bv32$2;
    $$retval.i.167$0bv32$1 := v327$1;
    $$retval.i.167$0bv32$2 := v327$2;
    $$retval.i.167$1bv32$1 := v328$1;
    $$retval.i.167$1bv32$2 := v328$2;
    $$retval.i.167$2bv32$1 := v329$1;
    $$retval.i.167$2bv32$2 := v329$2;
    $$retval.i.167$3bv32$1 := v330$1;
    $$retval.i.167$3bv32$2 := v330$2;
    v331$1 := $$retval.i.167$0bv32$1;
    v331$2 := $$retval.i.167$0bv32$2;
    v332$1 := $$retval.i.167$1bv32$1;
    v332$2 := $$retval.i.167$1bv32$2;
    v333$1 := $$retval.i.167$2bv32$1;
    v333$2 := $$retval.i.167$2bv32$2;
    v334$1 := $$retval.i.167$3bv32$1;
    v334$2 := $$retval.i.167$3bv32$2;
    $$agg.tmp81$0bv32$1 := v331$1;
    $$agg.tmp81$0bv32$2 := v331$2;
    $$agg.tmp81$1bv32$1 := v332$1;
    $$agg.tmp81$1bv32$2 := v332$2;
    $$agg.tmp81$2bv32$1 := v333$1;
    $$agg.tmp81$2bv32$2 := v333$2;
    $$agg.tmp81$3bv32$1 := v334$1;
    $$agg.tmp81$3bv32$2 := v334$2;
    v335$1 := $$agg.tmp81$0bv32$1;
    v335$2 := $$agg.tmp81$0bv32$2;
    $$agg.tmp8190$0bv32$1 := v335$1;
    $$agg.tmp8190$0bv32$2 := v335$2;
    v336$1 := $$agg.tmp81$1bv32$1;
    v336$2 := $$agg.tmp81$1bv32$2;
    $$agg.tmp8190$1bv32$1 := v336$1;
    $$agg.tmp8190$1bv32$2 := v336$2;
    v337$1 := $$agg.tmp81$2bv32$1;
    v337$2 := $$agg.tmp81$2bv32$2;
    $$agg.tmp8190$2bv32$1 := v337$1;
    $$agg.tmp8190$2bv32$2 := v337$2;
    v338$1 := $$agg.tmp81$3bv32$1;
    v338$2 := $$agg.tmp81$3bv32$2;
    $$agg.tmp8190$3bv32$1 := v338$1;
    $$agg.tmp8190$3bv32$2 := v338$2;
    v339$1 := $$agg.tmp8190$0bv32$1;
    v339$2 := $$agg.tmp8190$0bv32$2;
    call {:sourceloc_num 657} v340$1, v340$2 := $__saturatef(v339$1, v339$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp8190$0bv32$1 := v340$1;
    $$agg.tmp8190$0bv32$2 := v340$2;
    v341$1 := $$agg.tmp8190$1bv32$1;
    v341$2 := $$agg.tmp8190$1bv32$2;
    call {:sourceloc_num 660} v342$1, v342$2 := $__saturatef(v341$1, v341$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp8190$1bv32$1 := v342$1;
    $$agg.tmp8190$1bv32$2 := v342$2;
    v343$1 := $$agg.tmp8190$2bv32$1;
    v343$2 := $$agg.tmp8190$2bv32$2;
    call {:sourceloc_num 663} v344$1, v344$2 := $__saturatef(v343$1, v343$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp8190$2bv32$1 := v344$1;
    $$agg.tmp8190$2bv32$2 := v344$2;
    v345$1 := $$agg.tmp8190$3bv32$1;
    v345$2 := $$agg.tmp8190$3bv32$2;
    call {:sourceloc_num 666} v346$1, v346$2 := $__saturatef(v345$1, v345$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp8190$3bv32$1 := v346$1;
    $$agg.tmp8190$3bv32$2 := v346$2;
    v347$1 := $$agg.tmp8190$3bv32$1;
    v347$2 := $$agg.tmp8190$3bv32$2;
    v348$1 := $$agg.tmp8190$2bv32$1;
    v348$2 := $$agg.tmp8190$2bv32$2;
    v349$1 := $$agg.tmp8190$1bv32$1;
    v349$2 := $$agg.tmp8190$1bv32$2;
    v350$1 := $$agg.tmp8190$0bv32$1;
    v350$2 := $$agg.tmp8190$0bv32$2;
    call {:sourceloc} {:sourceloc_num 672} _LOG_WRITE_$$od(true, BV32_ADD(v0$1, BV32_MUL($y65.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v347$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v348$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v349$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v350$1, 1132396544bv32))), $$od[BV32_ADD(v0$1, BV32_MUL($y65.0, $w))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_ADD(v0$2, BV32_MUL($y65.0, $w)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 672} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 672} _CHECK_WRITE_$$od(true, BV32_ADD(v0$2, BV32_MUL($y65.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v347$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v348$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v349$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v350$2, 1132396544bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(v0$1, BV32_MUL($y65.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v347$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v348$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v349$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v350$1, 1132396544bv32)));
    $$od[BV32_ADD(v0$2, BV32_MUL($y65.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v347$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v348$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v349$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v350$2, 1132396544bv32)));
    $y65.0 := BV32_ADD($y65.0, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond.67;

  $truebb1:
    assume {:partition} v177;
    havoc v178$1, v178$2;
    $$retval.i.470$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v178$1, 255bv32)), 998277249bv32);
    $$retval.i.470$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v178$2, 255bv32)), 998277249bv32);
    $$retval.i.470$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.470$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.470$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.470$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.470$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.470$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v178$2, 24bv32), 255bv32)), 998277249bv32);
    v179$1 := $$retval.i.470$0bv32$1;
    v179$2 := $$retval.i.470$0bv32$2;
    v180$1 := $$retval.i.470$1bv32$1;
    v180$2 := $$retval.i.470$1bv32$2;
    v181$1 := $$retval.i.470$2bv32$1;
    v181$2 := $$retval.i.470$2bv32$2;
    v182$1 := $$retval.i.470$3bv32$1;
    v182$2 := $$retval.i.470$3bv32$2;
    $$agg.tmp45$0bv32$1 := v179$1;
    $$agg.tmp45$0bv32$2 := v179$2;
    $$agg.tmp45$1bv32$1 := v180$1;
    $$agg.tmp45$1bv32$2 := v180$2;
    $$agg.tmp45$2bv32$1 := v181$1;
    $$agg.tmp45$2bv32$2 := v181$2;
    $$agg.tmp45$3bv32$1 := v182$1;
    $$agg.tmp45$3bv32$2 := v182$2;
    v183$1 := $$agg.tmp45$0bv32$1;
    v183$2 := $$agg.tmp45$0bv32$2;
    $$agg.tmp45491$0bv32$1 := v183$1;
    $$agg.tmp45491$0bv32$2 := v183$2;
    v184$1 := $$agg.tmp45$1bv32$1;
    v184$2 := $$agg.tmp45$1bv32$2;
    $$agg.tmp45491$1bv32$1 := v184$1;
    $$agg.tmp45491$1bv32$2 := v184$2;
    v185$1 := $$agg.tmp45$2bv32$1;
    v185$2 := $$agg.tmp45$2bv32$2;
    $$agg.tmp45491$2bv32$1 := v185$1;
    $$agg.tmp45491$2bv32$2 := v185$2;
    v186$1 := $$agg.tmp45$3bv32$1;
    v186$2 := $$agg.tmp45$3bv32$2;
    $$agg.tmp45491$3bv32$1 := v186$1;
    $$agg.tmp45491$3bv32$2 := v186$2;
    v187$1 := $$t$0bv32$1;
    v187$2 := $$t$0bv32$2;
    v188$1 := $$agg.tmp45491$0bv32$1;
    v188$2 := $$agg.tmp45491$0bv32$2;
    v189$1 := $$t$1bv32$1;
    v189$2 := $$t$1bv32$2;
    v190$1 := $$agg.tmp45491$1bv32$1;
    v190$2 := $$agg.tmp45491$1bv32$2;
    v191$1 := $$t$2bv32$1;
    v191$2 := $$t$2bv32$2;
    v192$1 := $$agg.tmp45491$2bv32$1;
    v192$2 := $$agg.tmp45491$2bv32$2;
    v193$1 := $$t$3bv32$1;
    v193$2 := $$t$3bv32$2;
    v194$1 := $$agg.tmp45491$3bv32$1;
    v194$2 := $$agg.tmp45491$3bv32$2;
    $$retval.i.i.492$0bv32$1 := FADD32(v187$1, v188$1);
    $$retval.i.i.492$0bv32$2 := FADD32(v187$2, v188$2);
    $$retval.i.i.492$1bv32$1 := FADD32(v189$1, v190$1);
    $$retval.i.i.492$1bv32$2 := FADD32(v189$2, v190$2);
    $$retval.i.i.492$2bv32$1 := FADD32(v191$1, v192$1);
    $$retval.i.i.492$2bv32$2 := FADD32(v191$2, v192$2);
    $$retval.i.i.492$3bv32$1 := FADD32(v193$1, v194$1);
    $$retval.i.i.492$3bv32$2 := FADD32(v193$2, v194$2);
    v195$1 := $$retval.i.i.492$0bv32$1;
    v195$2 := $$retval.i.i.492$0bv32$2;
    v196$1 := $$retval.i.i.492$1bv32$1;
    v196$2 := $$retval.i.i.492$1bv32$2;
    v197$1 := $$retval.i.i.492$2bv32$1;
    v197$2 := $$retval.i.i.492$2bv32$2;
    v198$1 := $$retval.i.i.492$3bv32$1;
    v198$2 := $$retval.i.i.492$3bv32$2;
    $$ref.tmp.i.498$0bv32$1 := v195$1;
    $$ref.tmp.i.498$0bv32$2 := v195$2;
    $$ref.tmp.i.498$1bv32$1 := v196$1;
    $$ref.tmp.i.498$1bv32$2 := v196$2;
    $$ref.tmp.i.498$2bv32$1 := v197$1;
    $$ref.tmp.i.498$2bv32$2 := v197$2;
    $$ref.tmp.i.498$3bv32$1 := v198$1;
    $$ref.tmp.i.498$3bv32$2 := v198$2;
    v199$1 := $$ref.tmp.i.498$0bv32$1;
    v199$2 := $$ref.tmp.i.498$0bv32$2;
    $$t$0bv32$1 := v199$1;
    $$t$0bv32$2 := v199$2;
    v200$1 := $$ref.tmp.i.498$1bv32$1;
    v200$2 := $$ref.tmp.i.498$1bv32$2;
    $$t$1bv32$1 := v200$1;
    $$t$1bv32$2 := v200$2;
    v201$1 := $$ref.tmp.i.498$2bv32$1;
    v201$2 := $$ref.tmp.i.498$2bv32$2;
    $$t$2bv32$1 := v201$1;
    $$t$2bv32$2 := v201$2;
    v202$1 := $$ref.tmp.i.498$3bv32$1;
    v202$2 := $$ref.tmp.i.498$3bv32$2;
    $$t$3bv32$1 := v202$1;
    $$t$3bv32$2 := v202$2;
    havoc v203$1, v203$2;
    $$retval.i.515$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v203$1, 255bv32)), 998277249bv32);
    $$retval.i.515$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v203$2, 255bv32)), 998277249bv32);
    $$retval.i.515$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.515$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.515$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.515$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.515$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.515$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v203$2, 24bv32), 255bv32)), 998277249bv32);
    v204$1 := $$retval.i.515$0bv32$1;
    v204$2 := $$retval.i.515$0bv32$2;
    v205$1 := $$retval.i.515$1bv32$1;
    v205$2 := $$retval.i.515$1bv32$2;
    v206$1 := $$retval.i.515$2bv32$1;
    v206$2 := $$retval.i.515$2bv32$2;
    v207$1 := $$retval.i.515$3bv32$1;
    v207$2 := $$retval.i.515$3bv32$2;
    $$agg.tmp50$0bv32$1 := v204$1;
    $$agg.tmp50$0bv32$2 := v204$2;
    $$agg.tmp50$1bv32$1 := v205$1;
    $$agg.tmp50$1bv32$2 := v205$2;
    $$agg.tmp50$2bv32$1 := v206$1;
    $$agg.tmp50$2bv32$2 := v206$2;
    $$agg.tmp50$3bv32$1 := v207$1;
    $$agg.tmp50$3bv32$2 := v207$2;
    v208$1 := $$agg.tmp50$0bv32$1;
    v208$2 := $$agg.tmp50$0bv32$2;
    $$agg.tmp50536$0bv32$1 := v208$1;
    $$agg.tmp50536$0bv32$2 := v208$2;
    v209$1 := $$agg.tmp50$1bv32$1;
    v209$2 := $$agg.tmp50$1bv32$2;
    $$agg.tmp50536$1bv32$1 := v209$1;
    $$agg.tmp50536$1bv32$2 := v209$2;
    v210$1 := $$agg.tmp50$2bv32$1;
    v210$2 := $$agg.tmp50$2bv32$2;
    $$agg.tmp50536$2bv32$1 := v210$1;
    $$agg.tmp50536$2bv32$2 := v210$2;
    v211$1 := $$agg.tmp50$3bv32$1;
    v211$2 := $$agg.tmp50$3bv32$2;
    $$agg.tmp50536$3bv32$1 := v211$1;
    $$agg.tmp50536$3bv32$2 := v211$2;
    v212$1 := $$t$0bv32$1;
    v212$2 := $$t$0bv32$2;
    v213$1 := $$agg.tmp50536$0bv32$1;
    v213$2 := $$agg.tmp50536$0bv32$2;
    v214$1 := $$t$1bv32$1;
    v214$2 := $$t$1bv32$2;
    v215$1 := $$agg.tmp50536$1bv32$1;
    v215$2 := $$agg.tmp50536$1bv32$2;
    v216$1 := $$t$2bv32$1;
    v216$2 := $$t$2bv32$2;
    v217$1 := $$agg.tmp50536$2bv32$1;
    v217$2 := $$agg.tmp50536$2bv32$2;
    v218$1 := $$t$3bv32$1;
    v218$2 := $$t$3bv32$2;
    v219$1 := $$agg.tmp50536$3bv32$1;
    v219$2 := $$agg.tmp50536$3bv32$2;
    $$retval.i.i.537$0bv32$1 := FSUB32(v212$1, v213$1);
    $$retval.i.i.537$0bv32$2 := FSUB32(v212$2, v213$2);
    $$retval.i.i.537$1bv32$1 := FSUB32(v214$1, v215$1);
    $$retval.i.i.537$1bv32$2 := FSUB32(v214$2, v215$2);
    $$retval.i.i.537$2bv32$1 := FSUB32(v216$1, v217$1);
    $$retval.i.i.537$2bv32$2 := FSUB32(v216$2, v217$2);
    $$retval.i.i.537$3bv32$1 := FSUB32(v218$1, v219$1);
    $$retval.i.i.537$3bv32$2 := FSUB32(v218$2, v219$2);
    v220$1 := $$retval.i.i.537$0bv32$1;
    v220$2 := $$retval.i.i.537$0bv32$2;
    v221$1 := $$retval.i.i.537$1bv32$1;
    v221$2 := $$retval.i.i.537$1bv32$2;
    v222$1 := $$retval.i.i.537$2bv32$1;
    v222$2 := $$retval.i.i.537$2bv32$2;
    v223$1 := $$retval.i.i.537$3bv32$1;
    v223$2 := $$retval.i.i.537$3bv32$2;
    $$ref.tmp.i.543$0bv32$1 := v220$1;
    $$ref.tmp.i.543$0bv32$2 := v220$2;
    $$ref.tmp.i.543$1bv32$1 := v221$1;
    $$ref.tmp.i.543$1bv32$2 := v221$2;
    $$ref.tmp.i.543$2bv32$1 := v222$1;
    $$ref.tmp.i.543$2bv32$2 := v222$2;
    $$ref.tmp.i.543$3bv32$1 := v223$1;
    $$ref.tmp.i.543$3bv32$2 := v223$2;
    v224$1 := $$ref.tmp.i.543$0bv32$1;
    v224$2 := $$ref.tmp.i.543$0bv32$2;
    $$t$0bv32$1 := v224$1;
    $$t$0bv32$2 := v224$2;
    v225$1 := $$ref.tmp.i.543$1bv32$1;
    v225$2 := $$ref.tmp.i.543$1bv32$2;
    $$t$1bv32$1 := v225$1;
    $$t$1bv32$2 := v225$2;
    v226$1 := $$ref.tmp.i.543$2bv32$1;
    v226$2 := $$ref.tmp.i.543$2bv32$2;
    $$t$2bv32$1 := v226$1;
    $$t$2bv32$2 := v226$2;
    v227$1 := $$ref.tmp.i.543$3bv32$1;
    v227$2 := $$ref.tmp.i.543$3bv32$2;
    $$t$3bv32$1 := v227$1;
    $$t$3bv32$2 := v227$2;
    v228$1 := $$t$0bv32$1;
    v228$2 := $$t$0bv32$2;
    $$agg.tmp57$0bv32$1 := v228$1;
    $$agg.tmp57$0bv32$2 := v228$2;
    v229$1 := $$t$1bv32$1;
    v229$2 := $$t$1bv32$2;
    $$agg.tmp57$1bv32$1 := v229$1;
    $$agg.tmp57$1bv32$2 := v229$2;
    v230$1 := $$t$2bv32$1;
    v230$2 := $$t$2bv32$2;
    $$agg.tmp57$2bv32$1 := v230$1;
    $$agg.tmp57$2bv32$2 := v230$2;
    v231$1 := $$t$3bv32$1;
    v231$2 := $$t$3bv32$2;
    $$agg.tmp57$3bv32$1 := v231$1;
    $$agg.tmp57$3bv32$2 := v231$2;
    v232$1 := $$agg.tmp57$0bv32$1;
    v232$2 := $$agg.tmp57$0bv32$2;
    $$agg.tmp57560$0bv32$1 := v232$1;
    $$agg.tmp57560$0bv32$2 := v232$2;
    v233$1 := $$agg.tmp57$1bv32$1;
    v233$2 := $$agg.tmp57$1bv32$2;
    $$agg.tmp57560$1bv32$1 := v233$1;
    $$agg.tmp57560$1bv32$2 := v233$2;
    v234$1 := $$agg.tmp57$2bv32$1;
    v234$2 := $$agg.tmp57$2bv32$2;
    $$agg.tmp57560$2bv32$1 := v234$1;
    $$agg.tmp57560$2bv32$2 := v234$2;
    v235$1 := $$agg.tmp57$3bv32$1;
    v235$2 := $$agg.tmp57$3bv32$2;
    $$agg.tmp57560$3bv32$1 := v235$1;
    $$agg.tmp57560$3bv32$2 := v235$2;
    v236$1 := $$agg.tmp57560$0bv32$1;
    v236$2 := $$agg.tmp57560$0bv32$2;
    v237$1 := $$agg.tmp57560$1bv32$1;
    v237$2 := $$agg.tmp57560$1bv32$2;
    v238$1 := $$agg.tmp57560$2bv32$1;
    v238$2 := $$agg.tmp57560$2bv32$2;
    v239$1 := $$agg.tmp57560$3bv32$1;
    v239$2 := $$agg.tmp57560$3bv32$2;
    $$retval.i.i.561$0bv32$1 := FMUL32(v236$1, v1);
    $$retval.i.i.561$0bv32$2 := FMUL32(v236$2, v1);
    $$retval.i.i.561$1bv32$1 := FMUL32(v237$1, v1);
    $$retval.i.i.561$1bv32$2 := FMUL32(v237$2, v1);
    $$retval.i.i.561$2bv32$1 := FMUL32(v238$1, v1);
    $$retval.i.i.561$2bv32$2 := FMUL32(v238$2, v1);
    $$retval.i.i.561$3bv32$1 := FMUL32(v239$1, v1);
    $$retval.i.i.561$3bv32$2 := FMUL32(v239$2, v1);
    v240$1 := $$retval.i.i.561$0bv32$1;
    v240$2 := $$retval.i.i.561$0bv32$2;
    v241$1 := $$retval.i.i.561$1bv32$1;
    v241$2 := $$retval.i.i.561$1bv32$2;
    v242$1 := $$retval.i.i.561$2bv32$1;
    v242$2 := $$retval.i.i.561$2bv32$2;
    v243$1 := $$retval.i.i.561$3bv32$1;
    v243$2 := $$retval.i.i.561$3bv32$2;
    $$retval.i.566$0bv32$1 := v240$1;
    $$retval.i.566$0bv32$2 := v240$2;
    $$retval.i.566$1bv32$1 := v241$1;
    $$retval.i.566$1bv32$2 := v241$2;
    $$retval.i.566$2bv32$1 := v242$1;
    $$retval.i.566$2bv32$2 := v242$2;
    $$retval.i.566$3bv32$1 := v243$1;
    $$retval.i.566$3bv32$2 := v243$2;
    v244$1 := $$retval.i.566$0bv32$1;
    v244$2 := $$retval.i.566$0bv32$2;
    v245$1 := $$retval.i.566$1bv32$1;
    v245$2 := $$retval.i.566$1bv32$2;
    v246$1 := $$retval.i.566$2bv32$1;
    v246$2 := $$retval.i.566$2bv32$2;
    v247$1 := $$retval.i.566$3bv32$1;
    v247$2 := $$retval.i.566$3bv32$2;
    $$agg.tmp56$0bv32$1 := v244$1;
    $$agg.tmp56$0bv32$2 := v244$2;
    $$agg.tmp56$1bv32$1 := v245$1;
    $$agg.tmp56$1bv32$2 := v245$2;
    $$agg.tmp56$2bv32$1 := v246$1;
    $$agg.tmp56$2bv32$2 := v246$2;
    $$agg.tmp56$3bv32$1 := v247$1;
    $$agg.tmp56$3bv32$2 := v247$2;
    v248$1 := $$agg.tmp56$0bv32$1;
    v248$2 := $$agg.tmp56$0bv32$2;
    $$agg.tmp56267$0bv32$1 := v248$1;
    $$agg.tmp56267$0bv32$2 := v248$2;
    v249$1 := $$agg.tmp56$1bv32$1;
    v249$2 := $$agg.tmp56$1bv32$2;
    $$agg.tmp56267$1bv32$1 := v249$1;
    $$agg.tmp56267$1bv32$2 := v249$2;
    v250$1 := $$agg.tmp56$2bv32$1;
    v250$2 := $$agg.tmp56$2bv32$2;
    $$agg.tmp56267$2bv32$1 := v250$1;
    $$agg.tmp56267$2bv32$2 := v250$2;
    v251$1 := $$agg.tmp56$3bv32$1;
    v251$2 := $$agg.tmp56$3bv32$2;
    $$agg.tmp56267$3bv32$1 := v251$1;
    $$agg.tmp56267$3bv32$2 := v251$2;
    v252$1 := $$agg.tmp56267$0bv32$1;
    v252$2 := $$agg.tmp56267$0bv32$2;
    call {:sourceloc_num 490} v253$1, v253$2 := $__saturatef(v252$1, v252$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp56267$0bv32$1 := v253$1;
    $$agg.tmp56267$0bv32$2 := v253$2;
    v254$1 := $$agg.tmp56267$1bv32$1;
    v254$2 := $$agg.tmp56267$1bv32$2;
    call {:sourceloc_num 493} v255$1, v255$2 := $__saturatef(v254$1, v254$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp56267$1bv32$1 := v255$1;
    $$agg.tmp56267$1bv32$2 := v255$2;
    v256$1 := $$agg.tmp56267$2bv32$1;
    v256$2 := $$agg.tmp56267$2bv32$2;
    call {:sourceloc_num 496} v257$1, v257$2 := $__saturatef(v256$1, v256$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp56267$2bv32$1 := v257$1;
    $$agg.tmp56267$2bv32$2 := v257$2;
    v258$1 := $$agg.tmp56267$3bv32$1;
    v258$2 := $$agg.tmp56267$3bv32$2;
    call {:sourceloc_num 499} v259$1, v259$2 := $__saturatef(v258$1, v258$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp56267$3bv32$1 := v259$1;
    $$agg.tmp56267$3bv32$2 := v259$2;
    v260$1 := $$agg.tmp56267$3bv32$1;
    v260$2 := $$agg.tmp56267$3bv32$2;
    v261$1 := $$agg.tmp56267$2bv32$1;
    v261$2 := $$agg.tmp56267$2bv32$2;
    v262$1 := $$agg.tmp56267$1bv32$1;
    v262$2 := $$agg.tmp56267$1bv32$2;
    v263$1 := $$agg.tmp56267$0bv32$1;
    v263$2 := $$agg.tmp56267$0bv32$2;
    call {:sourceloc} {:sourceloc_num 505} _LOG_WRITE_$$od(true, BV32_ADD(v0$1, BV32_MUL($y40.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v260$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v261$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v262$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v263$1, 1132396544bv32))), $$od[BV32_ADD(v0$1, BV32_MUL($y40.0, $w))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_ADD(v0$2, BV32_MUL($y40.0, $w)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 505} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 505} _CHECK_WRITE_$$od(true, BV32_ADD(v0$2, BV32_MUL($y40.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v260$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v261$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v262$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v263$2, 1132396544bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(v0$1, BV32_MUL($y40.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v260$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v261$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v262$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v263$1, 1132396544bv32)));
    $$od[BV32_ADD(v0$2, BV32_MUL($y40.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v260$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v261$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v262$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v263$2, 1132396544bv32)));
    $y40.0 := BV32_ADD($y40.0, 1bv32);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.42;

  $truebb0:
    assume {:partition} v90;
    havoc v91$1, v91$2;
    $$retval.i.329$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v91$1, 255bv32)), 998277249bv32);
    $$retval.i.329$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v91$2, 255bv32)), 998277249bv32);
    $$retval.i.329$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.329$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.329$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.329$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.329$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.329$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v91$2, 24bv32), 255bv32)), 998277249bv32);
    v92$1 := $$retval.i.329$0bv32$1;
    v92$2 := $$retval.i.329$0bv32$2;
    v93$1 := $$retval.i.329$1bv32$1;
    v93$2 := $$retval.i.329$1bv32$2;
    v94$1 := $$retval.i.329$2bv32$1;
    v94$2 := $$retval.i.329$2bv32$2;
    v95$1 := $$retval.i.329$3bv32$1;
    v95$2 := $$retval.i.329$3bv32$2;
    $$agg.tmp23$0bv32$1 := v92$1;
    $$agg.tmp23$0bv32$2 := v92$2;
    $$agg.tmp23$1bv32$1 := v93$1;
    $$agg.tmp23$1bv32$2 := v93$2;
    $$agg.tmp23$2bv32$1 := v94$1;
    $$agg.tmp23$2bv32$2 := v94$2;
    $$agg.tmp23$3bv32$1 := v95$1;
    $$agg.tmp23$3bv32$2 := v95$2;
    v96$1 := $$agg.tmp23$0bv32$1;
    v96$2 := $$agg.tmp23$0bv32$2;
    $$agg.tmp23350$0bv32$1 := v96$1;
    $$agg.tmp23350$0bv32$2 := v96$2;
    v97$1 := $$agg.tmp23$1bv32$1;
    v97$2 := $$agg.tmp23$1bv32$2;
    $$agg.tmp23350$1bv32$1 := v97$1;
    $$agg.tmp23350$1bv32$2 := v97$2;
    v98$1 := $$agg.tmp23$2bv32$1;
    v98$2 := $$agg.tmp23$2bv32$2;
    $$agg.tmp23350$2bv32$1 := v98$1;
    $$agg.tmp23350$2bv32$2 := v98$2;
    v99$1 := $$agg.tmp23$3bv32$1;
    v99$2 := $$agg.tmp23$3bv32$2;
    $$agg.tmp23350$3bv32$1 := v99$1;
    $$agg.tmp23350$3bv32$2 := v99$2;
    v100$1 := $$t$0bv32$1;
    v100$2 := $$t$0bv32$2;
    v101$1 := $$agg.tmp23350$0bv32$1;
    v101$2 := $$agg.tmp23350$0bv32$2;
    v102$1 := $$t$1bv32$1;
    v102$2 := $$t$1bv32$2;
    v103$1 := $$agg.tmp23350$1bv32$1;
    v103$2 := $$agg.tmp23350$1bv32$2;
    v104$1 := $$t$2bv32$1;
    v104$2 := $$t$2bv32$2;
    v105$1 := $$agg.tmp23350$2bv32$1;
    v105$2 := $$agg.tmp23350$2bv32$2;
    v106$1 := $$t$3bv32$1;
    v106$2 := $$t$3bv32$2;
    v107$1 := $$agg.tmp23350$3bv32$1;
    v107$2 := $$agg.tmp23350$3bv32$2;
    $$retval.i.i.351$0bv32$1 := FADD32(v100$1, v101$1);
    $$retval.i.i.351$0bv32$2 := FADD32(v100$2, v101$2);
    $$retval.i.i.351$1bv32$1 := FADD32(v102$1, v103$1);
    $$retval.i.i.351$1bv32$2 := FADD32(v102$2, v103$2);
    $$retval.i.i.351$2bv32$1 := FADD32(v104$1, v105$1);
    $$retval.i.i.351$2bv32$2 := FADD32(v104$2, v105$2);
    $$retval.i.i.351$3bv32$1 := FADD32(v106$1, v107$1);
    $$retval.i.i.351$3bv32$2 := FADD32(v106$2, v107$2);
    v108$1 := $$retval.i.i.351$0bv32$1;
    v108$2 := $$retval.i.i.351$0bv32$2;
    v109$1 := $$retval.i.i.351$1bv32$1;
    v109$2 := $$retval.i.i.351$1bv32$2;
    v110$1 := $$retval.i.i.351$2bv32$1;
    v110$2 := $$retval.i.i.351$2bv32$2;
    v111$1 := $$retval.i.i.351$3bv32$1;
    v111$2 := $$retval.i.i.351$3bv32$2;
    $$ref.tmp.i.357$0bv32$1 := v108$1;
    $$ref.tmp.i.357$0bv32$2 := v108$2;
    $$ref.tmp.i.357$1bv32$1 := v109$1;
    $$ref.tmp.i.357$1bv32$2 := v109$2;
    $$ref.tmp.i.357$2bv32$1 := v110$1;
    $$ref.tmp.i.357$2bv32$2 := v110$2;
    $$ref.tmp.i.357$3bv32$1 := v111$1;
    $$ref.tmp.i.357$3bv32$2 := v111$2;
    v112$1 := $$ref.tmp.i.357$0bv32$1;
    v112$2 := $$ref.tmp.i.357$0bv32$2;
    $$t$0bv32$1 := v112$1;
    $$t$0bv32$2 := v112$2;
    v113$1 := $$ref.tmp.i.357$1bv32$1;
    v113$2 := $$ref.tmp.i.357$1bv32$2;
    $$t$1bv32$1 := v113$1;
    $$t$1bv32$2 := v113$2;
    v114$1 := $$ref.tmp.i.357$2bv32$1;
    v114$2 := $$ref.tmp.i.357$2bv32$2;
    $$t$2bv32$1 := v114$1;
    $$t$2bv32$2 := v114$2;
    v115$1 := $$ref.tmp.i.357$3bv32$1;
    v115$2 := $$ref.tmp.i.357$3bv32$2;
    $$t$3bv32$1 := v115$1;
    $$t$3bv32$2 := v115$2;
    havoc v116$1, v116$2;
    $$retval.i.374$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v116$1, 255bv32)), 998277249bv32);
    $$retval.i.374$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v116$2, 255bv32)), 998277249bv32);
    $$retval.i.374$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.374$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.374$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.374$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.374$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.374$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v116$2, 24bv32), 255bv32)), 998277249bv32);
    v117$1 := $$retval.i.374$0bv32$1;
    v117$2 := $$retval.i.374$0bv32$2;
    v118$1 := $$retval.i.374$1bv32$1;
    v118$2 := $$retval.i.374$1bv32$2;
    v119$1 := $$retval.i.374$2bv32$1;
    v119$2 := $$retval.i.374$2bv32$2;
    v120$1 := $$retval.i.374$3bv32$1;
    v120$2 := $$retval.i.374$3bv32$2;
    $$agg.tmp28$0bv32$1 := v117$1;
    $$agg.tmp28$0bv32$2 := v117$2;
    $$agg.tmp28$1bv32$1 := v118$1;
    $$agg.tmp28$1bv32$2 := v118$2;
    $$agg.tmp28$2bv32$1 := v119$1;
    $$agg.tmp28$2bv32$2 := v119$2;
    $$agg.tmp28$3bv32$1 := v120$1;
    $$agg.tmp28$3bv32$2 := v120$2;
    v121$1 := $$agg.tmp28$0bv32$1;
    v121$2 := $$agg.tmp28$0bv32$2;
    $$agg.tmp28395$0bv32$1 := v121$1;
    $$agg.tmp28395$0bv32$2 := v121$2;
    v122$1 := $$agg.tmp28$1bv32$1;
    v122$2 := $$agg.tmp28$1bv32$2;
    $$agg.tmp28395$1bv32$1 := v122$1;
    $$agg.tmp28395$1bv32$2 := v122$2;
    v123$1 := $$agg.tmp28$2bv32$1;
    v123$2 := $$agg.tmp28$2bv32$2;
    $$agg.tmp28395$2bv32$1 := v123$1;
    $$agg.tmp28395$2bv32$2 := v123$2;
    v124$1 := $$agg.tmp28$3bv32$1;
    v124$2 := $$agg.tmp28$3bv32$2;
    $$agg.tmp28395$3bv32$1 := v124$1;
    $$agg.tmp28395$3bv32$2 := v124$2;
    v125$1 := $$t$0bv32$1;
    v125$2 := $$t$0bv32$2;
    v126$1 := $$agg.tmp28395$0bv32$1;
    v126$2 := $$agg.tmp28395$0bv32$2;
    v127$1 := $$t$1bv32$1;
    v127$2 := $$t$1bv32$2;
    v128$1 := $$agg.tmp28395$1bv32$1;
    v128$2 := $$agg.tmp28395$1bv32$2;
    v129$1 := $$t$2bv32$1;
    v129$2 := $$t$2bv32$2;
    v130$1 := $$agg.tmp28395$2bv32$1;
    v130$2 := $$agg.tmp28395$2bv32$2;
    v131$1 := $$t$3bv32$1;
    v131$2 := $$t$3bv32$2;
    v132$1 := $$agg.tmp28395$3bv32$1;
    v132$2 := $$agg.tmp28395$3bv32$2;
    $$retval.i.i.396$0bv32$1 := FSUB32(v125$1, v126$1);
    $$retval.i.i.396$0bv32$2 := FSUB32(v125$2, v126$2);
    $$retval.i.i.396$1bv32$1 := FSUB32(v127$1, v128$1);
    $$retval.i.i.396$1bv32$2 := FSUB32(v127$2, v128$2);
    $$retval.i.i.396$2bv32$1 := FSUB32(v129$1, v130$1);
    $$retval.i.i.396$2bv32$2 := FSUB32(v129$2, v130$2);
    $$retval.i.i.396$3bv32$1 := FSUB32(v131$1, v132$1);
    $$retval.i.i.396$3bv32$2 := FSUB32(v131$2, v132$2);
    v133$1 := $$retval.i.i.396$0bv32$1;
    v133$2 := $$retval.i.i.396$0bv32$2;
    v134$1 := $$retval.i.i.396$1bv32$1;
    v134$2 := $$retval.i.i.396$1bv32$2;
    v135$1 := $$retval.i.i.396$2bv32$1;
    v135$2 := $$retval.i.i.396$2bv32$2;
    v136$1 := $$retval.i.i.396$3bv32$1;
    v136$2 := $$retval.i.i.396$3bv32$2;
    $$ref.tmp.i.402$0bv32$1 := v133$1;
    $$ref.tmp.i.402$0bv32$2 := v133$2;
    $$ref.tmp.i.402$1bv32$1 := v134$1;
    $$ref.tmp.i.402$1bv32$2 := v134$2;
    $$ref.tmp.i.402$2bv32$1 := v135$1;
    $$ref.tmp.i.402$2bv32$2 := v135$2;
    $$ref.tmp.i.402$3bv32$1 := v136$1;
    $$ref.tmp.i.402$3bv32$2 := v136$2;
    v137$1 := $$ref.tmp.i.402$0bv32$1;
    v137$2 := $$ref.tmp.i.402$0bv32$2;
    $$t$0bv32$1 := v137$1;
    $$t$0bv32$2 := v137$2;
    v138$1 := $$ref.tmp.i.402$1bv32$1;
    v138$2 := $$ref.tmp.i.402$1bv32$2;
    $$t$1bv32$1 := v138$1;
    $$t$1bv32$2 := v138$2;
    v139$1 := $$ref.tmp.i.402$2bv32$1;
    v139$2 := $$ref.tmp.i.402$2bv32$2;
    $$t$2bv32$1 := v139$1;
    $$t$2bv32$2 := v139$2;
    v140$1 := $$ref.tmp.i.402$3bv32$1;
    v140$2 := $$ref.tmp.i.402$3bv32$2;
    $$t$3bv32$1 := v140$1;
    $$t$3bv32$2 := v140$2;
    v141$1 := $$t$0bv32$1;
    v141$2 := $$t$0bv32$2;
    $$agg.tmp32$0bv32$1 := v141$1;
    $$agg.tmp32$0bv32$2 := v141$2;
    v142$1 := $$t$1bv32$1;
    v142$2 := $$t$1bv32$2;
    $$agg.tmp32$1bv32$1 := v142$1;
    $$agg.tmp32$1bv32$2 := v142$2;
    v143$1 := $$t$2bv32$1;
    v143$2 := $$t$2bv32$2;
    $$agg.tmp32$2bv32$1 := v143$1;
    $$agg.tmp32$2bv32$2 := v143$2;
    v144$1 := $$t$3bv32$1;
    v144$2 := $$t$3bv32$2;
    $$agg.tmp32$3bv32$1 := v144$1;
    $$agg.tmp32$3bv32$2 := v144$2;
    v145$1 := $$agg.tmp32$0bv32$1;
    v145$2 := $$agg.tmp32$0bv32$2;
    $$agg.tmp32419$0bv32$1 := v145$1;
    $$agg.tmp32419$0bv32$2 := v145$2;
    v146$1 := $$agg.tmp32$1bv32$1;
    v146$2 := $$agg.tmp32$1bv32$2;
    $$agg.tmp32419$1bv32$1 := v146$1;
    $$agg.tmp32419$1bv32$2 := v146$2;
    v147$1 := $$agg.tmp32$2bv32$1;
    v147$2 := $$agg.tmp32$2bv32$2;
    $$agg.tmp32419$2bv32$1 := v147$1;
    $$agg.tmp32419$2bv32$2 := v147$2;
    v148$1 := $$agg.tmp32$3bv32$1;
    v148$2 := $$agg.tmp32$3bv32$2;
    $$agg.tmp32419$3bv32$1 := v148$1;
    $$agg.tmp32419$3bv32$2 := v148$2;
    v149$1 := $$agg.tmp32419$0bv32$1;
    v149$2 := $$agg.tmp32419$0bv32$2;
    v150$1 := $$agg.tmp32419$1bv32$1;
    v150$2 := $$agg.tmp32419$1bv32$2;
    v151$1 := $$agg.tmp32419$2bv32$1;
    v151$2 := $$agg.tmp32419$2bv32$2;
    v152$1 := $$agg.tmp32419$3bv32$1;
    v152$2 := $$agg.tmp32419$3bv32$2;
    $$retval.i.i.420$0bv32$1 := FMUL32(v149$1, v1);
    $$retval.i.i.420$0bv32$2 := FMUL32(v149$2, v1);
    $$retval.i.i.420$1bv32$1 := FMUL32(v150$1, v1);
    $$retval.i.i.420$1bv32$2 := FMUL32(v150$2, v1);
    $$retval.i.i.420$2bv32$1 := FMUL32(v151$1, v1);
    $$retval.i.i.420$2bv32$2 := FMUL32(v151$2, v1);
    $$retval.i.i.420$3bv32$1 := FMUL32(v152$1, v1);
    $$retval.i.i.420$3bv32$2 := FMUL32(v152$2, v1);
    v153$1 := $$retval.i.i.420$0bv32$1;
    v153$2 := $$retval.i.i.420$0bv32$2;
    v154$1 := $$retval.i.i.420$1bv32$1;
    v154$2 := $$retval.i.i.420$1bv32$2;
    v155$1 := $$retval.i.i.420$2bv32$1;
    v155$2 := $$retval.i.i.420$2bv32$2;
    v156$1 := $$retval.i.i.420$3bv32$1;
    v156$2 := $$retval.i.i.420$3bv32$2;
    $$retval.i.425$0bv32$1 := v153$1;
    $$retval.i.425$0bv32$2 := v153$2;
    $$retval.i.425$1bv32$1 := v154$1;
    $$retval.i.425$1bv32$2 := v154$2;
    $$retval.i.425$2bv32$1 := v155$1;
    $$retval.i.425$2bv32$2 := v155$2;
    $$retval.i.425$3bv32$1 := v156$1;
    $$retval.i.425$3bv32$2 := v156$2;
    v157$1 := $$retval.i.425$0bv32$1;
    v157$2 := $$retval.i.425$0bv32$2;
    v158$1 := $$retval.i.425$1bv32$1;
    v158$2 := $$retval.i.425$1bv32$2;
    v159$1 := $$retval.i.425$2bv32$1;
    v159$2 := $$retval.i.425$2bv32$2;
    v160$1 := $$retval.i.425$3bv32$1;
    v160$2 := $$retval.i.425$3bv32$2;
    $$agg.tmp31$0bv32$1 := v157$1;
    $$agg.tmp31$0bv32$2 := v157$2;
    $$agg.tmp31$1bv32$1 := v158$1;
    $$agg.tmp31$1bv32$2 := v158$2;
    $$agg.tmp31$2bv32$1 := v159$1;
    $$agg.tmp31$2bv32$2 := v159$2;
    $$agg.tmp31$3bv32$1 := v160$1;
    $$agg.tmp31$3bv32$2 := v160$2;
    v161$1 := $$agg.tmp31$0bv32$1;
    v161$2 := $$agg.tmp31$0bv32$2;
    $$agg.tmp31439$0bv32$1 := v161$1;
    $$agg.tmp31439$0bv32$2 := v161$2;
    v162$1 := $$agg.tmp31$1bv32$1;
    v162$2 := $$agg.tmp31$1bv32$2;
    $$agg.tmp31439$1bv32$1 := v162$1;
    $$agg.tmp31439$1bv32$2 := v162$2;
    v163$1 := $$agg.tmp31$2bv32$1;
    v163$2 := $$agg.tmp31$2bv32$2;
    $$agg.tmp31439$2bv32$1 := v163$1;
    $$agg.tmp31439$2bv32$2 := v163$2;
    v164$1 := $$agg.tmp31$3bv32$1;
    v164$2 := $$agg.tmp31$3bv32$2;
    $$agg.tmp31439$3bv32$1 := v164$1;
    $$agg.tmp31439$3bv32$2 := v164$2;
    v165$1 := $$agg.tmp31439$0bv32$1;
    v165$2 := $$agg.tmp31439$0bv32$2;
    call {:sourceloc_num 323} v166$1, v166$2 := $__saturatef(v165$1, v165$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp31439$0bv32$1 := v166$1;
    $$agg.tmp31439$0bv32$2 := v166$2;
    v167$1 := $$agg.tmp31439$1bv32$1;
    v167$2 := $$agg.tmp31439$1bv32$2;
    call {:sourceloc_num 326} v168$1, v168$2 := $__saturatef(v167$1, v167$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp31439$1bv32$1 := v168$1;
    $$agg.tmp31439$1bv32$2 := v168$2;
    v169$1 := $$agg.tmp31439$2bv32$1;
    v169$2 := $$agg.tmp31439$2bv32$2;
    call {:sourceloc_num 329} v170$1, v170$2 := $__saturatef(v169$1, v169$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp31439$2bv32$1 := v170$1;
    $$agg.tmp31439$2bv32$2 := v170$2;
    v171$1 := $$agg.tmp31439$3bv32$1;
    v171$2 := $$agg.tmp31439$3bv32$2;
    call {:sourceloc_num 332} v172$1, v172$2 := $__saturatef(v171$1, v171$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__saturatef"} true;
    $$agg.tmp31439$3bv32$1 := v172$1;
    $$agg.tmp31439$3bv32$2 := v172$2;
    v173$1 := $$agg.tmp31439$3bv32$1;
    v173$2 := $$agg.tmp31439$3bv32$2;
    v174$1 := $$agg.tmp31439$2bv32$1;
    v174$2 := $$agg.tmp31439$2bv32$2;
    v175$1 := $$agg.tmp31439$1bv32$1;
    v175$2 := $$agg.tmp31439$1bv32$2;
    v176$1 := $$agg.tmp31439$0bv32$1;
    v176$2 := $$agg.tmp31439$0bv32$2;
    call {:sourceloc} {:sourceloc_num 338} _LOG_WRITE_$$od(true, BV32_ADD(v0$1, BV32_MUL($y18.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v173$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v174$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v175$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v176$1, 1132396544bv32))), $$od[BV32_ADD(v0$1, BV32_MUL($y18.0, $w))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_ADD(v0$2, BV32_MUL($y18.0, $w)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 338} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 338} _CHECK_WRITE_$$od(true, BV32_ADD(v0$2, BV32_MUL($y18.0, $w)), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v173$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v174$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v175$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v176$2, 1132396544bv32))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(v0$1, BV32_MUL($y18.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v173$1, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v174$1, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v175$1, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v176$1, 1132396544bv32)));
    $$od[BV32_ADD(v0$2, BV32_MUL($y18.0, $w))] := BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_UI32(FMUL32(v173$2, 1132396544bv32)), 24bv32), BV32_SHL(FP32_TO_UI32(FMUL32(v174$2, 1132396544bv32)), 16bv32)), BV32_SHL(FP32_TO_UI32(FMUL32(v175$2, 1132396544bv32)), 8bv32)), FP32_TO_UI32(FMUL32(v176$2, 1132396544bv32)));
    $y18.0 := BV32_ADD($y18.0, 1bv32);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.19;

  $truebb:
    assume {:partition} v28;
    havoc v29$1, v29$2;
    $$retval.i.105$0bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(v29$1, 255bv32)), 998277249bv32);
    $$retval.i.105$0bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(v29$2, 255bv32)), 998277249bv32);
    $$retval.i.105$1bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$1, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.105$1bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$2, 8bv32), 255bv32)), 998277249bv32);
    $$retval.i.105$2bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$1, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.105$2bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$2, 16bv32), 255bv32)), 998277249bv32);
    $$retval.i.105$3bv32$1 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$1, 24bv32), 255bv32)), 998277249bv32);
    $$retval.i.105$3bv32$2 := FMUL32(UI32_TO_FP32(BV32_AND(BV32_LSHR(v29$2, 24bv32), 255bv32)), 998277249bv32);
    v30$1 := $$retval.i.105$0bv32$1;
    v30$2 := $$retval.i.105$0bv32$2;
    v31$1 := $$retval.i.105$1bv32$1;
    v31$2 := $$retval.i.105$1bv32$2;
    v32$1 := $$retval.i.105$2bv32$1;
    v32$2 := $$retval.i.105$2bv32$2;
    v33$1 := $$retval.i.105$3bv32$1;
    v33$2 := $$retval.i.105$3bv32$2;
    $$agg.tmp9$0bv32$1 := v30$1;
    $$agg.tmp9$0bv32$2 := v30$2;
    $$agg.tmp9$1bv32$1 := v31$1;
    $$agg.tmp9$1bv32$2 := v31$2;
    $$agg.tmp9$2bv32$1 := v32$1;
    $$agg.tmp9$2bv32$2 := v32$2;
    $$agg.tmp9$3bv32$1 := v33$1;
    $$agg.tmp9$3bv32$2 := v33$2;
    v34$1 := $$agg.tmp9$0bv32$1;
    v34$2 := $$agg.tmp9$0bv32$2;
    $$agg.tmp9126$0bv32$1 := v34$1;
    $$agg.tmp9126$0bv32$2 := v34$2;
    v35$1 := $$agg.tmp9$1bv32$1;
    v35$2 := $$agg.tmp9$1bv32$2;
    $$agg.tmp9126$1bv32$1 := v35$1;
    $$agg.tmp9126$1bv32$2 := v35$2;
    v36$1 := $$agg.tmp9$2bv32$1;
    v36$2 := $$agg.tmp9$2bv32$2;
    $$agg.tmp9126$2bv32$1 := v36$1;
    $$agg.tmp9126$2bv32$2 := v36$2;
    v37$1 := $$agg.tmp9$3bv32$1;
    v37$2 := $$agg.tmp9$3bv32$2;
    $$agg.tmp9126$3bv32$1 := v37$1;
    $$agg.tmp9126$3bv32$2 := v37$2;
    v38$1 := $$t$0bv32$1;
    v38$2 := $$t$0bv32$2;
    v39$1 := $$agg.tmp9126$0bv32$1;
    v39$2 := $$agg.tmp9126$0bv32$2;
    v40$1 := $$t$1bv32$1;
    v40$2 := $$t$1bv32$2;
    v41$1 := $$agg.tmp9126$1bv32$1;
    v41$2 := $$agg.tmp9126$1bv32$2;
    v42$1 := $$t$2bv32$1;
    v42$2 := $$t$2bv32$2;
    v43$1 := $$agg.tmp9126$2bv32$1;
    v43$2 := $$agg.tmp9126$2bv32$2;
    v44$1 := $$t$3bv32$1;
    v44$2 := $$t$3bv32$2;
    v45$1 := $$agg.tmp9126$3bv32$1;
    v45$2 := $$agg.tmp9126$3bv32$2;
    $$retval.i.i.127$0bv32$1 := FADD32(v38$1, v39$1);
    $$retval.i.i.127$0bv32$2 := FADD32(v38$2, v39$2);
    $$retval.i.i.127$1bv32$1 := FADD32(v40$1, v41$1);
    $$retval.i.i.127$1bv32$2 := FADD32(v40$2, v41$2);
    $$retval.i.i.127$2bv32$1 := FADD32(v42$1, v43$1);
    $$retval.i.i.127$2bv32$2 := FADD32(v42$2, v43$2);
    $$retval.i.i.127$3bv32$1 := FADD32(v44$1, v45$1);
    $$retval.i.i.127$3bv32$2 := FADD32(v44$2, v45$2);
    v46$1 := $$retval.i.i.127$0bv32$1;
    v46$2 := $$retval.i.i.127$0bv32$2;
    v47$1 := $$retval.i.i.127$1bv32$1;
    v47$2 := $$retval.i.i.127$1bv32$2;
    v48$1 := $$retval.i.i.127$2bv32$1;
    v48$2 := $$retval.i.i.127$2bv32$2;
    v49$1 := $$retval.i.i.127$3bv32$1;
    v49$2 := $$retval.i.i.127$3bv32$2;
    $$ref.tmp.i$0bv32$1 := v46$1;
    $$ref.tmp.i$0bv32$2 := v46$2;
    $$ref.tmp.i$1bv32$1 := v47$1;
    $$ref.tmp.i$1bv32$2 := v47$2;
    $$ref.tmp.i$2bv32$1 := v48$1;
    $$ref.tmp.i$2bv32$2 := v48$2;
    $$ref.tmp.i$3bv32$1 := v49$1;
    $$ref.tmp.i$3bv32$2 := v49$2;
    v50$1 := $$ref.tmp.i$0bv32$1;
    v50$2 := $$ref.tmp.i$0bv32$2;
    $$t$0bv32$1 := v50$1;
    $$t$0bv32$2 := v50$2;
    v51$1 := $$ref.tmp.i$1bv32$1;
    v51$2 := $$ref.tmp.i$1bv32$2;
    $$t$1bv32$1 := v51$1;
    $$t$1bv32$2 := v51$2;
    v52$1 := $$ref.tmp.i$2bv32$1;
    v52$2 := $$ref.tmp.i$2bv32$2;
    $$t$2bv32$1 := v52$1;
    $$t$2bv32$2 := v52$2;
    v53$1 := $$ref.tmp.i$3bv32$1;
    v53$2 := $$ref.tmp.i$3bv32$2;
    $$t$3bv32$1 := v53$1;
    $$t$3bv32$2 := v53$2;
    $y.0 := BV32_ADD($y.0, 1bv32);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $for.cond;
}



procedure {:source_name "__saturatef"} $__saturatef($0$1: bv32, $0$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

var $$retval.i.i.561$0bv32$1: bv32;

var $$retval.i.i.561$0bv32$2: bv32;

var $$retval.i.i.561$1bv32$1: bv32;

var $$retval.i.i.561$1bv32$2: bv32;

var $$retval.i.i.561$2bv32$1: bv32;

var $$retval.i.i.561$2bv32$2: bv32;

var $$retval.i.i.561$3bv32$1: bv32;

var $$retval.i.i.561$3bv32$2: bv32;

var $$retval.i.566$0bv32$1: bv32;

var $$retval.i.566$0bv32$2: bv32;

var $$retval.i.566$1bv32$1: bv32;

var $$retval.i.566$1bv32$2: bv32;

var $$retval.i.566$2bv32$1: bv32;

var $$retval.i.566$2bv32$2: bv32;

var $$retval.i.566$3bv32$1: bv32;

var $$retval.i.566$3bv32$2: bv32;

var $$agg.tmp57560$0bv32$1: bv32;

var $$agg.tmp57560$0bv32$2: bv32;

var $$agg.tmp57560$1bv32$1: bv32;

var $$agg.tmp57560$1bv32$2: bv32;

var $$agg.tmp57560$2bv32$1: bv32;

var $$agg.tmp57560$2bv32$2: bv32;

var $$agg.tmp57560$3bv32$1: bv32;

var $$agg.tmp57560$3bv32$2: bv32;

var $$retval.i.i.537$0bv32$1: bv32;

var $$retval.i.i.537$0bv32$2: bv32;

var $$retval.i.i.537$1bv32$1: bv32;

var $$retval.i.i.537$1bv32$2: bv32;

var $$retval.i.i.537$2bv32$1: bv32;

var $$retval.i.i.537$2bv32$2: bv32;

var $$retval.i.i.537$3bv32$1: bv32;

var $$retval.i.i.537$3bv32$2: bv32;

var $$ref.tmp.i.543$0bv32$1: bv32;

var $$ref.tmp.i.543$0bv32$2: bv32;

var $$ref.tmp.i.543$1bv32$1: bv32;

var $$ref.tmp.i.543$1bv32$2: bv32;

var $$ref.tmp.i.543$2bv32$1: bv32;

var $$ref.tmp.i.543$2bv32$2: bv32;

var $$ref.tmp.i.543$3bv32$1: bv32;

var $$ref.tmp.i.543$3bv32$2: bv32;

var $$agg.tmp50536$0bv32$1: bv32;

var $$agg.tmp50536$0bv32$2: bv32;

var $$agg.tmp50536$1bv32$1: bv32;

var $$agg.tmp50536$1bv32$2: bv32;

var $$agg.tmp50536$2bv32$1: bv32;

var $$agg.tmp50536$2bv32$2: bv32;

var $$agg.tmp50536$3bv32$1: bv32;

var $$agg.tmp50536$3bv32$2: bv32;

var $$retval.i.515$0bv32$1: bv32;

var $$retval.i.515$0bv32$2: bv32;

var $$retval.i.515$1bv32$1: bv32;

var $$retval.i.515$1bv32$2: bv32;

var $$retval.i.515$2bv32$1: bv32;

var $$retval.i.515$2bv32$2: bv32;

var $$retval.i.515$3bv32$1: bv32;

var $$retval.i.515$3bv32$2: bv32;

var $$retval.i.i.492$0bv32$1: bv32;

var $$retval.i.i.492$0bv32$2: bv32;

var $$retval.i.i.492$1bv32$1: bv32;

var $$retval.i.i.492$1bv32$2: bv32;

var $$retval.i.i.492$2bv32$1: bv32;

var $$retval.i.i.492$2bv32$2: bv32;

var $$retval.i.i.492$3bv32$1: bv32;

var $$retval.i.i.492$3bv32$2: bv32;

var $$ref.tmp.i.498$0bv32$1: bv32;

var $$ref.tmp.i.498$0bv32$2: bv32;

var $$ref.tmp.i.498$1bv32$1: bv32;

var $$ref.tmp.i.498$1bv32$2: bv32;

var $$ref.tmp.i.498$2bv32$1: bv32;

var $$ref.tmp.i.498$2bv32$2: bv32;

var $$ref.tmp.i.498$3bv32$1: bv32;

var $$ref.tmp.i.498$3bv32$2: bv32;

var $$agg.tmp45491$0bv32$1: bv32;

var $$agg.tmp45491$0bv32$2: bv32;

var $$agg.tmp45491$1bv32$1: bv32;

var $$agg.tmp45491$1bv32$2: bv32;

var $$agg.tmp45491$2bv32$1: bv32;

var $$agg.tmp45491$2bv32$2: bv32;

var $$agg.tmp45491$3bv32$1: bv32;

var $$agg.tmp45491$3bv32$2: bv32;

var $$retval.i.470$0bv32$1: bv32;

var $$retval.i.470$0bv32$2: bv32;

var $$retval.i.470$1bv32$1: bv32;

var $$retval.i.470$1bv32$2: bv32;

var $$retval.i.470$2bv32$1: bv32;

var $$retval.i.470$2bv32$2: bv32;

var $$retval.i.470$3bv32$1: bv32;

var $$retval.i.470$3bv32$2: bv32;

var $$agg.tmp31439$0bv32$1: bv32;

var $$agg.tmp31439$0bv32$2: bv32;

var $$agg.tmp31439$1bv32$1: bv32;

var $$agg.tmp31439$1bv32$2: bv32;

var $$agg.tmp31439$2bv32$1: bv32;

var $$agg.tmp31439$2bv32$2: bv32;

var $$agg.tmp31439$3bv32$1: bv32;

var $$agg.tmp31439$3bv32$2: bv32;

var $$retval.i.i.420$0bv32$1: bv32;

var $$retval.i.i.420$0bv32$2: bv32;

var $$retval.i.i.420$1bv32$1: bv32;

var $$retval.i.i.420$1bv32$2: bv32;

var $$retval.i.i.420$2bv32$1: bv32;

var $$retval.i.i.420$2bv32$2: bv32;

var $$retval.i.i.420$3bv32$1: bv32;

var $$retval.i.i.420$3bv32$2: bv32;

var $$retval.i.425$0bv32$1: bv32;

var $$retval.i.425$0bv32$2: bv32;

var $$retval.i.425$1bv32$1: bv32;

var $$retval.i.425$1bv32$2: bv32;

var $$retval.i.425$2bv32$1: bv32;

var $$retval.i.425$2bv32$2: bv32;

var $$retval.i.425$3bv32$1: bv32;

var $$retval.i.425$3bv32$2: bv32;

var $$agg.tmp32419$0bv32$1: bv32;

var $$agg.tmp32419$0bv32$2: bv32;

var $$agg.tmp32419$1bv32$1: bv32;

var $$agg.tmp32419$1bv32$2: bv32;

var $$agg.tmp32419$2bv32$1: bv32;

var $$agg.tmp32419$2bv32$2: bv32;

var $$agg.tmp32419$3bv32$1: bv32;

var $$agg.tmp32419$3bv32$2: bv32;

var $$retval.i.i.396$0bv32$1: bv32;

var $$retval.i.i.396$0bv32$2: bv32;

var $$retval.i.i.396$1bv32$1: bv32;

var $$retval.i.i.396$1bv32$2: bv32;

var $$retval.i.i.396$2bv32$1: bv32;

var $$retval.i.i.396$2bv32$2: bv32;

var $$retval.i.i.396$3bv32$1: bv32;

var $$retval.i.i.396$3bv32$2: bv32;

var $$ref.tmp.i.402$0bv32$1: bv32;

var $$ref.tmp.i.402$0bv32$2: bv32;

var $$ref.tmp.i.402$1bv32$1: bv32;

var $$ref.tmp.i.402$1bv32$2: bv32;

var $$ref.tmp.i.402$2bv32$1: bv32;

var $$ref.tmp.i.402$2bv32$2: bv32;

var $$ref.tmp.i.402$3bv32$1: bv32;

var $$ref.tmp.i.402$3bv32$2: bv32;

var $$agg.tmp28395$0bv32$1: bv32;

var $$agg.tmp28395$0bv32$2: bv32;

var $$agg.tmp28395$1bv32$1: bv32;

var $$agg.tmp28395$1bv32$2: bv32;

var $$agg.tmp28395$2bv32$1: bv32;

var $$agg.tmp28395$2bv32$2: bv32;

var $$agg.tmp28395$3bv32$1: bv32;

var $$agg.tmp28395$3bv32$2: bv32;

var $$retval.i.374$0bv32$1: bv32;

var $$retval.i.374$0bv32$2: bv32;

var $$retval.i.374$1bv32$1: bv32;

var $$retval.i.374$1bv32$2: bv32;

var $$retval.i.374$2bv32$1: bv32;

var $$retval.i.374$2bv32$2: bv32;

var $$retval.i.374$3bv32$1: bv32;

var $$retval.i.374$3bv32$2: bv32;

var $$retval.i.i.351$0bv32$1: bv32;

var $$retval.i.i.351$0bv32$2: bv32;

var $$retval.i.i.351$1bv32$1: bv32;

var $$retval.i.i.351$1bv32$2: bv32;

var $$retval.i.i.351$2bv32$1: bv32;

var $$retval.i.i.351$2bv32$2: bv32;

var $$retval.i.i.351$3bv32$1: bv32;

var $$retval.i.i.351$3bv32$2: bv32;

var $$ref.tmp.i.357$0bv32$1: bv32;

var $$ref.tmp.i.357$0bv32$2: bv32;

var $$ref.tmp.i.357$1bv32$1: bv32;

var $$ref.tmp.i.357$1bv32$2: bv32;

var $$ref.tmp.i.357$2bv32$1: bv32;

var $$ref.tmp.i.357$2bv32$2: bv32;

var $$ref.tmp.i.357$3bv32$1: bv32;

var $$ref.tmp.i.357$3bv32$2: bv32;

var $$agg.tmp23350$0bv32$1: bv32;

var $$agg.tmp23350$0bv32$2: bv32;

var $$agg.tmp23350$1bv32$1: bv32;

var $$agg.tmp23350$1bv32$2: bv32;

var $$agg.tmp23350$2bv32$1: bv32;

var $$agg.tmp23350$2bv32$2: bv32;

var $$agg.tmp23350$3bv32$1: bv32;

var $$agg.tmp23350$3bv32$2: bv32;

var $$retval.i.329$0bv32$1: bv32;

var $$retval.i.329$0bv32$2: bv32;

var $$retval.i.329$1bv32$1: bv32;

var $$retval.i.329$1bv32$2: bv32;

var $$retval.i.329$2bv32$1: bv32;

var $$retval.i.329$2bv32$2: bv32;

var $$retval.i.329$3bv32$1: bv32;

var $$retval.i.329$3bv32$2: bv32;

var $$agg.tmp13298$0bv32$1: bv32;

var $$agg.tmp13298$0bv32$2: bv32;

var $$agg.tmp13298$1bv32$1: bv32;

var $$agg.tmp13298$1bv32$2: bv32;

var $$agg.tmp13298$2bv32$1: bv32;

var $$agg.tmp13298$2bv32$2: bv32;

var $$agg.tmp13298$3bv32$1: bv32;

var $$agg.tmp13298$3bv32$2: bv32;

var $$agg.tmp56267$0bv32$1: bv32;

var $$agg.tmp56267$0bv32$2: bv32;

var $$agg.tmp56267$1bv32$1: bv32;

var $$agg.tmp56267$1bv32$2: bv32;

var $$agg.tmp56267$2bv32$1: bv32;

var $$agg.tmp56267$2bv32$2: bv32;

var $$agg.tmp56267$3bv32$1: bv32;

var $$agg.tmp56267$3bv32$2: bv32;

var $$retval.i.246$0bv32$1: bv32;

var $$retval.i.246$0bv32$2: bv32;

var $$retval.i.246$1bv32$1: bv32;

var $$retval.i.246$1bv32$2: bv32;

var $$retval.i.246$2bv32$1: bv32;

var $$retval.i.246$2bv32$2: bv32;

var $$retval.i.246$3bv32$1: bv32;

var $$retval.i.246$3bv32$2: bv32;

var $$retval.i.i.223$0bv32$1: bv32;

var $$retval.i.i.223$0bv32$2: bv32;

var $$retval.i.i.223$1bv32$1: bv32;

var $$retval.i.i.223$1bv32$2: bv32;

var $$retval.i.i.223$2bv32$1: bv32;

var $$retval.i.i.223$2bv32$2: bv32;

var $$retval.i.i.223$3bv32$1: bv32;

var $$retval.i.i.223$3bv32$2: bv32;

var $$ref.tmp.i.229$0bv32$1: bv32;

var $$ref.tmp.i.229$0bv32$2: bv32;

var $$ref.tmp.i.229$1bv32$1: bv32;

var $$ref.tmp.i.229$1bv32$2: bv32;

var $$ref.tmp.i.229$2bv32$1: bv32;

var $$ref.tmp.i.229$2bv32$2: bv32;

var $$ref.tmp.i.229$3bv32$1: bv32;

var $$ref.tmp.i.229$3bv32$2: bv32;

var $$agg.tmp70222$0bv32$1: bv32;

var $$agg.tmp70222$0bv32$2: bv32;

var $$agg.tmp70222$1bv32$1: bv32;

var $$agg.tmp70222$1bv32$2: bv32;

var $$agg.tmp70222$2bv32$1: bv32;

var $$agg.tmp70222$2bv32$2: bv32;

var $$agg.tmp70222$3bv32$1: bv32;

var $$agg.tmp70222$3bv32$2: bv32;

var $$retval.i.201$0bv32$1: bv32;

var $$retval.i.201$0bv32$2: bv32;

var $$retval.i.201$1bv32$1: bv32;

var $$retval.i.201$1bv32$2: bv32;

var $$retval.i.201$2bv32$1: bv32;

var $$retval.i.201$2bv32$2: bv32;

var $$retval.i.201$3bv32$1: bv32;

var $$retval.i.201$3bv32$2: bv32;

var $$retval.i.i.182$0bv32$1: bv32;

var $$retval.i.i.182$0bv32$2: bv32;

var $$retval.i.i.182$1bv32$1: bv32;

var $$retval.i.i.182$1bv32$2: bv32;

var $$retval.i.i.182$2bv32$1: bv32;

var $$retval.i.i.182$2bv32$2: bv32;

var $$retval.i.i.182$3bv32$1: bv32;

var $$retval.i.i.182$3bv32$2: bv32;

var $$ref.tmp.i.188$0bv32$1: bv32;

var $$ref.tmp.i.188$0bv32$2: bv32;

var $$ref.tmp.i.188$1bv32$1: bv32;

var $$ref.tmp.i.188$1bv32$2: bv32;

var $$ref.tmp.i.188$2bv32$1: bv32;

var $$ref.tmp.i.188$2bv32$2: bv32;

var $$ref.tmp.i.188$3bv32$1: bv32;

var $$ref.tmp.i.188$3bv32$2: bv32;

var $$agg.tmp75181$0bv32$1: bv32;

var $$agg.tmp75181$0bv32$2: bv32;

var $$agg.tmp75181$1bv32$1: bv32;

var $$agg.tmp75181$1bv32$2: bv32;

var $$agg.tmp75181$2bv32$1: bv32;

var $$agg.tmp75181$2bv32$2: bv32;

var $$agg.tmp75181$3bv32$1: bv32;

var $$agg.tmp75181$3bv32$2: bv32;

var $$retval.i.i.162$0bv32$1: bv32;

var $$retval.i.i.162$0bv32$2: bv32;

var $$retval.i.i.162$1bv32$1: bv32;

var $$retval.i.i.162$1bv32$2: bv32;

var $$retval.i.i.162$2bv32$1: bv32;

var $$retval.i.i.162$2bv32$2: bv32;

var $$retval.i.i.162$3bv32$1: bv32;

var $$retval.i.i.162$3bv32$2: bv32;

var $$retval.i.167$0bv32$1: bv32;

var $$retval.i.167$0bv32$2: bv32;

var $$retval.i.167$1bv32$1: bv32;

var $$retval.i.167$1bv32$2: bv32;

var $$retval.i.167$2bv32$1: bv32;

var $$retval.i.167$2bv32$2: bv32;

var $$retval.i.167$3bv32$1: bv32;

var $$retval.i.167$3bv32$2: bv32;

var $$agg.tmp82161$0bv32$1: bv32;

var $$agg.tmp82161$0bv32$2: bv32;

var $$agg.tmp82161$1bv32$1: bv32;

var $$agg.tmp82161$1bv32$2: bv32;

var $$agg.tmp82161$2bv32$1: bv32;

var $$agg.tmp82161$2bv32$2: bv32;

var $$agg.tmp82161$3bv32$1: bv32;

var $$agg.tmp82161$3bv32$2: bv32;

var $$retval.i.i.142$0bv32$1: bv32;

var $$retval.i.i.142$0bv32$2: bv32;

var $$retval.i.i.142$1bv32$1: bv32;

var $$retval.i.i.142$1bv32$2: bv32;

var $$retval.i.i.142$2bv32$1: bv32;

var $$retval.i.i.142$2bv32$2: bv32;

var $$retval.i.i.142$3bv32$1: bv32;

var $$retval.i.i.142$3bv32$2: bv32;

var $$retval.i.147$0bv32$1: bv32;

var $$retval.i.147$0bv32$2: bv32;

var $$retval.i.147$1bv32$1: bv32;

var $$retval.i.147$1bv32$2: bv32;

var $$retval.i.147$2bv32$1: bv32;

var $$retval.i.147$2bv32$2: bv32;

var $$retval.i.147$3bv32$1: bv32;

var $$retval.i.147$3bv32$2: bv32;

var $$agg.tmp14141$0bv32$1: bv32;

var $$agg.tmp14141$0bv32$2: bv32;

var $$agg.tmp14141$1bv32$1: bv32;

var $$agg.tmp14141$1bv32$2: bv32;

var $$agg.tmp14141$2bv32$1: bv32;

var $$agg.tmp14141$2bv32$2: bv32;

var $$agg.tmp14141$3bv32$1: bv32;

var $$agg.tmp14141$3bv32$2: bv32;

var $$retval.i.i.127$0bv32$1: bv32;

var $$retval.i.i.127$0bv32$2: bv32;

var $$retval.i.i.127$1bv32$1: bv32;

var $$retval.i.i.127$1bv32$2: bv32;

var $$retval.i.i.127$2bv32$1: bv32;

var $$retval.i.i.127$2bv32$2: bv32;

var $$retval.i.i.127$3bv32$1: bv32;

var $$retval.i.i.127$3bv32$2: bv32;

var $$ref.tmp.i$0bv32$1: bv32;

var $$ref.tmp.i$0bv32$2: bv32;

var $$ref.tmp.i$1bv32$1: bv32;

var $$ref.tmp.i$1bv32$2: bv32;

var $$ref.tmp.i$2bv32$1: bv32;

var $$ref.tmp.i$2bv32$2: bv32;

var $$ref.tmp.i$3bv32$1: bv32;

var $$ref.tmp.i$3bv32$2: bv32;

var $$agg.tmp9126$0bv32$1: bv32;

var $$agg.tmp9126$0bv32$2: bv32;

var $$agg.tmp9126$1bv32$1: bv32;

var $$agg.tmp9126$1bv32$2: bv32;

var $$agg.tmp9126$2bv32$1: bv32;

var $$agg.tmp9126$2bv32$2: bv32;

var $$agg.tmp9126$3bv32$1: bv32;

var $$agg.tmp9126$3bv32$2: bv32;

var $$retval.i.105$0bv32$1: bv32;

var $$retval.i.105$0bv32$2: bv32;

var $$retval.i.105$1bv32$1: bv32;

var $$retval.i.105$1bv32$2: bv32;

var $$retval.i.105$2bv32$1: bv32;

var $$retval.i.105$2bv32$2: bv32;

var $$retval.i.105$3bv32$1: bv32;

var $$retval.i.105$3bv32$2: bv32;

var $$retval.i.i$0bv32$1: bv32;

var $$retval.i.i$0bv32$2: bv32;

var $$retval.i.i$1bv32$1: bv32;

var $$retval.i.i$1bv32$2: bv32;

var $$retval.i.i$2bv32$1: bv32;

var $$retval.i.i$2bv32$2: bv32;

var $$retval.i.i$3bv32$1: bv32;

var $$retval.i.i$3bv32$2: bv32;

var $$retval.i.98$0bv32$1: bv32;

var $$retval.i.98$0bv32$2: bv32;

var $$retval.i.98$1bv32$1: bv32;

var $$retval.i.98$1bv32$2: bv32;

var $$retval.i.98$2bv32$1: bv32;

var $$retval.i.98$2bv32$2: bv32;

var $$retval.i.98$3bv32$1: bv32;

var $$retval.i.98$3bv32$2: bv32;

var $$agg.tmp97$0bv32$1: bv32;

var $$agg.tmp97$0bv32$2: bv32;

var $$agg.tmp97$1bv32$1: bv32;

var $$agg.tmp97$1bv32$2: bv32;

var $$agg.tmp97$2bv32$1: bv32;

var $$agg.tmp97$2bv32$2: bv32;

var $$agg.tmp97$3bv32$1: bv32;

var $$agg.tmp97$3bv32$2: bv32;

var $$agg.tmp8190$0bv32$1: bv32;

var $$agg.tmp8190$0bv32$2: bv32;

var $$agg.tmp8190$1bv32$1: bv32;

var $$agg.tmp8190$1bv32$2: bv32;

var $$agg.tmp8190$2bv32$1: bv32;

var $$agg.tmp8190$2bv32$2: bv32;

var $$agg.tmp8190$3bv32$1: bv32;

var $$agg.tmp8190$3bv32$2: bv32;

var $$retval.i$0bv32$1: bv32;

var $$retval.i$0bv32$2: bv32;

var $$retval.i$1bv32$1: bv32;

var $$retval.i$1bv32$2: bv32;

var $$retval.i$2bv32$1: bv32;

var $$retval.i$2bv32$2: bv32;

var $$retval.i$3bv32$1: bv32;

var $$retval.i$3bv32$2: bv32;

var $$t$0bv32$1: bv32;

var $$t$0bv32$2: bv32;

var $$t$1bv32$1: bv32;

var $$t$1bv32$2: bv32;

var $$t$2bv32$1: bv32;

var $$t$2bv32$2: bv32;

var $$t$3bv32$1: bv32;

var $$t$3bv32$2: bv32;

var $$ref.tmp$0bv32$1: bv32;

var $$ref.tmp$0bv32$2: bv32;

var $$ref.tmp$1bv32$1: bv32;

var $$ref.tmp$1bv32$2: bv32;

var $$ref.tmp$2bv32$1: bv32;

var $$ref.tmp$2bv32$2: bv32;

var $$ref.tmp$3bv32$1: bv32;

var $$ref.tmp$3bv32$2: bv32;

var $$agg.tmp$0bv32$1: bv32;

var $$agg.tmp$0bv32$2: bv32;

var $$agg.tmp$1bv32$1: bv32;

var $$agg.tmp$1bv32$2: bv32;

var $$agg.tmp$2bv32$1: bv32;

var $$agg.tmp$2bv32$2: bv32;

var $$agg.tmp$3bv32$1: bv32;

var $$agg.tmp$3bv32$2: bv32;

var $$agg.tmp9$0bv32$1: bv32;

var $$agg.tmp9$0bv32$2: bv32;

var $$agg.tmp9$1bv32$1: bv32;

var $$agg.tmp9$1bv32$2: bv32;

var $$agg.tmp9$2bv32$1: bv32;

var $$agg.tmp9$2bv32$2: bv32;

var $$agg.tmp9$3bv32$1: bv32;

var $$agg.tmp9$3bv32$2: bv32;

var $$agg.tmp13$0bv32$1: bv32;

var $$agg.tmp13$0bv32$2: bv32;

var $$agg.tmp13$1bv32$1: bv32;

var $$agg.tmp13$1bv32$2: bv32;

var $$agg.tmp13$2bv32$1: bv32;

var $$agg.tmp13$2bv32$2: bv32;

var $$agg.tmp13$3bv32$1: bv32;

var $$agg.tmp13$3bv32$2: bv32;

var $$agg.tmp14$0bv32$1: bv32;

var $$agg.tmp14$0bv32$2: bv32;

var $$agg.tmp14$1bv32$1: bv32;

var $$agg.tmp14$1bv32$2: bv32;

var $$agg.tmp14$2bv32$1: bv32;

var $$agg.tmp14$2bv32$2: bv32;

var $$agg.tmp14$3bv32$1: bv32;

var $$agg.tmp14$3bv32$2: bv32;

var $$agg.tmp23$0bv32$1: bv32;

var $$agg.tmp23$0bv32$2: bv32;

var $$agg.tmp23$1bv32$1: bv32;

var $$agg.tmp23$1bv32$2: bv32;

var $$agg.tmp23$2bv32$1: bv32;

var $$agg.tmp23$2bv32$2: bv32;

var $$agg.tmp23$3bv32$1: bv32;

var $$agg.tmp23$3bv32$2: bv32;

var $$agg.tmp28$0bv32$1: bv32;

var $$agg.tmp28$0bv32$2: bv32;

var $$agg.tmp28$1bv32$1: bv32;

var $$agg.tmp28$1bv32$2: bv32;

var $$agg.tmp28$2bv32$1: bv32;

var $$agg.tmp28$2bv32$2: bv32;

var $$agg.tmp28$3bv32$1: bv32;

var $$agg.tmp28$3bv32$2: bv32;

var $$agg.tmp31$0bv32$1: bv32;

var $$agg.tmp31$0bv32$2: bv32;

var $$agg.tmp31$1bv32$1: bv32;

var $$agg.tmp31$1bv32$2: bv32;

var $$agg.tmp31$2bv32$1: bv32;

var $$agg.tmp31$2bv32$2: bv32;

var $$agg.tmp31$3bv32$1: bv32;

var $$agg.tmp31$3bv32$2: bv32;

var $$agg.tmp32$0bv32$1: bv32;

var $$agg.tmp32$0bv32$2: bv32;

var $$agg.tmp32$1bv32$1: bv32;

var $$agg.tmp32$1bv32$2: bv32;

var $$agg.tmp32$2bv32$1: bv32;

var $$agg.tmp32$2bv32$2: bv32;

var $$agg.tmp32$3bv32$1: bv32;

var $$agg.tmp32$3bv32$2: bv32;

var $$agg.tmp45$0bv32$1: bv32;

var $$agg.tmp45$0bv32$2: bv32;

var $$agg.tmp45$1bv32$1: bv32;

var $$agg.tmp45$1bv32$2: bv32;

var $$agg.tmp45$2bv32$1: bv32;

var $$agg.tmp45$2bv32$2: bv32;

var $$agg.tmp45$3bv32$1: bv32;

var $$agg.tmp45$3bv32$2: bv32;

var $$agg.tmp50$0bv32$1: bv32;

var $$agg.tmp50$0bv32$2: bv32;

var $$agg.tmp50$1bv32$1: bv32;

var $$agg.tmp50$1bv32$2: bv32;

var $$agg.tmp50$2bv32$1: bv32;

var $$agg.tmp50$2bv32$2: bv32;

var $$agg.tmp50$3bv32$1: bv32;

var $$agg.tmp50$3bv32$2: bv32;

var $$agg.tmp56$0bv32$1: bv32;

var $$agg.tmp56$0bv32$2: bv32;

var $$agg.tmp56$1bv32$1: bv32;

var $$agg.tmp56$1bv32$2: bv32;

var $$agg.tmp56$2bv32$1: bv32;

var $$agg.tmp56$2bv32$2: bv32;

var $$agg.tmp56$3bv32$1: bv32;

var $$agg.tmp56$3bv32$2: bv32;

var $$agg.tmp57$0bv32$1: bv32;

var $$agg.tmp57$0bv32$2: bv32;

var $$agg.tmp57$1bv32$1: bv32;

var $$agg.tmp57$1bv32$2: bv32;

var $$agg.tmp57$2bv32$1: bv32;

var $$agg.tmp57$2bv32$2: bv32;

var $$agg.tmp57$3bv32$1: bv32;

var $$agg.tmp57$3bv32$2: bv32;

var $$agg.tmp70$0bv32$1: bv32;

var $$agg.tmp70$0bv32$2: bv32;

var $$agg.tmp70$1bv32$1: bv32;

var $$agg.tmp70$1bv32$2: bv32;

var $$agg.tmp70$2bv32$1: bv32;

var $$agg.tmp70$2bv32$2: bv32;

var $$agg.tmp70$3bv32$1: bv32;

var $$agg.tmp70$3bv32$2: bv32;

var $$agg.tmp75$0bv32$1: bv32;

var $$agg.tmp75$0bv32$2: bv32;

var $$agg.tmp75$1bv32$1: bv32;

var $$agg.tmp75$1bv32$2: bv32;

var $$agg.tmp75$2bv32$1: bv32;

var $$agg.tmp75$2bv32$2: bv32;

var $$agg.tmp75$3bv32$1: bv32;

var $$agg.tmp75$3bv32$2: bv32;

var $$agg.tmp81$0bv32$1: bv32;

var $$agg.tmp81$0bv32$2: bv32;

var $$agg.tmp81$1bv32$1: bv32;

var $$agg.tmp81$1bv32$2: bv32;

var $$agg.tmp81$2bv32$1: bv32;

var $$agg.tmp81$2bv32$2: bv32;

var $$agg.tmp81$3bv32$1: bv32;

var $$agg.tmp81$3bv32$2: bv32;

var $$agg.tmp82$0bv32$1: bv32;

var $$agg.tmp82$0bv32$2: bv32;

var $$agg.tmp82$1bv32$1: bv32;

var $$agg.tmp82$1bv32$2: bv32;

var $$agg.tmp82$2bv32$1: bv32;

var $$agg.tmp82$2bv32$2: bv32;

var $$agg.tmp82$3bv32$1: bv32;

var $$agg.tmp82$3bv32$2: bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

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

const _WATCHED_VALUE_$$id: bv32;

procedure {:inline 1} _LOG_READ_$$id(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_READ_$$id(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _READ_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_READ_$$id(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$id);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$id: bool;

procedure {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$id, _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _WRITE_HAS_OCCURRED_$$id);
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



procedure _CHECK_WRITE_$$id(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_ATOMIC_$$id(_P: bool, _offset: bv32);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



const _WATCHED_VALUE_$$od: bv32;

procedure {:inline 1} _LOG_READ_$$od(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_READ_$$od(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _READ_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_READ_$$od(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$od);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$od: bool;

procedure {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _WRITE_HAS_OCCURRED_$$od);
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



procedure _CHECK_WRITE_$$od(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_ATOMIC_$$od(_P: bool, _offset: bv32);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;
